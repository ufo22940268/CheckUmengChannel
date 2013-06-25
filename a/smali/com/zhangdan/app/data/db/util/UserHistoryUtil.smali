.class public Lcom/zhangdan/app/data/db/util/UserHistoryUtil;
.super Ljava/lang/Object;
.source "UserHistoryUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static query(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserHisInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 40
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserHisInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zhangdan/app/data/db/table/UserField;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 43
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    :cond_0
    const-string v0, "user_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, account:Ljava/lang/String;
    const-string v0, "pwd"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 47
    .local v11, pwd:Ljava/lang/String;
    new-instance v9, Lcom/zhangdan/app/data/model/UserHisInfo;

    invoke-direct {v9}, Lcom/zhangdan/app/data/model/UserHisInfo;-><init>()V

    .line 48
    .local v9, info:Lcom/zhangdan/app/data/model/UserHisInfo;
    invoke-virtual {v9, v6}, Lcom/zhangdan/app/data/model/UserHisInfo;->setAccount(Ljava/lang/String;)V

    .line 49
    invoke-static {v11}, Lcom/zhangdan/app/util/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object v12

    .line 50
    .local v12, pwdArray:[B
    if-eqz v12, :cond_1

    .line 51
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, v12, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/zhangdan/app/data/model/UserHisInfo;->setPwd(Ljava/lang/String;)V

    .line 53
    :cond_1
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 60
    .end local v6           #account:Ljava/lang/String;
    .end local v9           #info:Lcom/zhangdan/app/data/model/UserHisInfo;
    .end local v11           #pwd:Ljava/lang/String;
    .end local v12           #pwdArray:[B
    :cond_2
    if-eqz v7, :cond_3

    .line 61
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_3
    :goto_0
    return-object v10

    .line 56
    :catch_0
    move-exception v8

    .line 58
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    if-eqz v7, :cond_3

    .line 61
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 60
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 61
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "account"
    .parameter "pwd"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 20
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 21
    .local v8, value:Landroid/content/ContentValues;
    const-string v1, "pwd"

    invoke-virtual {v8, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v1, "user_name"

    invoke-virtual {v8, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v7, 0x0

    .line 24
    .local v7, isExists:Z
    sget-object v1, Lcom/zhangdan/app/data/db/table/UserField;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "user_name = ?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 26
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    const/4 v7, 0x1

    .line 29
    :cond_0
    if-eqz v6, :cond_1

    .line 30
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 32
    :cond_1
    if-eqz v7, :cond_3

    .line 33
    sget-object v1, Lcom/zhangdan/app/data/db/table/UserField;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "user_name = ?"

    new-array v3, v10, [Ljava/lang/String;

    aput-object p1, v3, v9

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 37
    :goto_0
    return-void

    .line 29
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 30
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 35
    :cond_3
    sget-object v1, Lcom/zhangdan/app/data/db/table/UserField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method
