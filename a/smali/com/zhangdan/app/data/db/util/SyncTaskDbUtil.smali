.class public Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;
.super Ljava/lang/Object;
.source "SyncTaskDbUtil.java"


# static fields
.field private static final TASK_BILL_RETURN:Ljava/lang/String; = "bill_return"

.field private static final TASK_DEL_MAIL_ACCOUNT:Ljava/lang/String; = "mail_account"

.field private static final TASK_DEL_RETURN_RECORD:Ljava/lang/String; = "del_return_record"

.field private static final TASK_SHOPPING_REMARK:Ljava/lang/String; = "shopping_remark"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteSyncTask(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "id"

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 229
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/SyncTaskField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method private static parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/SyncTaskInfo;
    .locals 6
    .parameter "c"

    .prologue
    .line 105
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 106
    .local v1, id:I
    const-string v5, "key"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, key:Ljava/lang/String;
    const-string v5, "val"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, val1:Ljava/lang/String;
    const-string v5, "val2"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, val2:Ljava/lang/String;
    new-instance v0, Lcom/zhangdan/app/data/model/SyncTaskInfo;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/SyncTaskInfo;-><init>()V

    .line 110
    .local v0, data:Lcom/zhangdan/app/data/model/SyncTaskInfo;
    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/SyncTaskInfo;->setId(I)V

    .line 111
    invoke-virtual {v0, v2}, Lcom/zhangdan/app/data/model/SyncTaskInfo;->setKey(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, v3}, Lcom/zhangdan/app/data/model/SyncTaskInfo;->setVal1(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/SyncTaskInfo;->setVal2(Ljava/lang/String;)V

    .line 114
    return-object v0
.end method

.method public static queryBillReturnSyncTask(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/SyncTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/SyncTaskField;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "task = \'bill_return\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 127
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/SyncTaskInfo;>;"
    :cond_0
    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/SyncTaskInfo;

    move-result-object v7

    .line 131
    .local v7, data:Lcom/zhangdan/app/data/model/SyncTaskInfo;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 136
    if-eqz v6, :cond_1

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 139
    .end local v7           #data:Lcom/zhangdan/app/data/model/SyncTaskInfo;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/SyncTaskInfo;>;"
    :cond_1
    :goto_0
    return-object v8

    .line 136
    :cond_2
    if-eqz v6, :cond_3

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v2

    .line 139
    goto :goto_0

    .line 136
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static queryDelMailAccountSyncTask(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/SyncTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/SyncTaskField;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "task = ? and key = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "mail_account"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 179
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/SyncTaskInfo;>;"
    :cond_0
    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/SyncTaskInfo;

    move-result-object v7

    .line 183
    .local v7, data:Lcom/zhangdan/app/data/model/SyncTaskInfo;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 188
    if-eqz v6, :cond_1

    .line 189
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 192
    .end local v7           #data:Lcom/zhangdan/app/data/model/SyncTaskInfo;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/SyncTaskInfo;>;"
    :cond_1
    :goto_0
    return-object v8

    .line 188
    :cond_2
    if-eqz v6, :cond_3

    .line 189
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v2

    .line 192
    goto :goto_0

    .line 188
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 189
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static queryDelReturnRecordTask(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/SyncTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 151
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/SyncTaskField;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "task = ? and key = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "del_return_record"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 153
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/SyncTaskInfo;>;"
    :cond_0
    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/SyncTaskInfo;

    move-result-object v7

    .line 157
    .local v7, data:Lcom/zhangdan/app/data/model/SyncTaskInfo;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 162
    if-eqz v6, :cond_1

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 166
    .end local v7           #data:Lcom/zhangdan/app/data/model/SyncTaskInfo;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/SyncTaskInfo;>;"
    :cond_1
    :goto_0
    return-object v8

    .line 162
    :cond_2
    if-eqz v6, :cond_3

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v2

    .line 166
    goto :goto_0

    .line 162
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static queryShoppingRemarkSyncTask(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/SyncTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 204
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/SyncTaskField;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "task = ? and key = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "shopping_remark"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 206
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/SyncTaskInfo;>;"
    :cond_0
    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/SyncTaskInfo;

    move-result-object v7

    .line 210
    .local v7, data:Lcom/zhangdan/app/data/model/SyncTaskInfo;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 215
    if-eqz v6, :cond_1

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 219
    .end local v7           #data:Lcom/zhangdan/app/data/model/SyncTaskInfo;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/SyncTaskInfo;>;"
    :cond_1
    :goto_0
    return-object v8

    .line 215
    :cond_2
    if-eqz v6, :cond_3

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v2

    .line 219
    goto :goto_0

    .line 215
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static saveBillReturnSyncTask(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "billId"
    .parameter "returnState"
    .parameter "billReturnLocalId"

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 43
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "task"

    const-string v3, "bill_return"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "key"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "val"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    const-string v2, "val2"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "last_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    sget-object v2, Lcom/zhangdan/app/data/db/table/SyncTaskField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 50
    return-void
.end method

.method public static saveDelMailAccountSyncTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "userId"
    .parameter "mailAutoId"

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "task"

    const-string v3, "mail_account"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "key"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "val"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "last_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    sget-object v2, Lcom/zhangdan/app/data/db/table/SyncTaskField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 85
    return-void
.end method

.method public static saveDelReturnRecordTask(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "userId"
    .parameter "id"

    .prologue
    .line 60
    const-string v2, "SyncTaskDbUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveDelReturnRecordTask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 62
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "task"

    const-string v3, "del_return_record"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "key"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "val"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v2, "last_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    sget-object v2, Lcom/zhangdan/app/data/db/table/SyncTaskField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 68
    return-void
.end method

.method public static saveShoppingRemarkSyncTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "userId"
    .parameter "shoppingRemarkLocalId"

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "task"

    const-string v3, "shopping_remark"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "key"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "val"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "last_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    sget-object v2, Lcom/zhangdan/app/data/db/table/SyncTaskField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 102
    return-void
.end method
