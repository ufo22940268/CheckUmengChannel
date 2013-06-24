.class public Lcom/zhangdan/app/data/db/util/UpgradeMgr;
.super Ljava/lang/Object;
.source "UpgradeMgr.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/zhangdan/app/data/db/OldDbHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v1, "/data/data/com.zhangdan.app/databases/zhangdan.db"

    .line 28
    .local v1, oldDbPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, dbFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v2, Lcom/zhangdan/app/data/db/OldDbHelper;

    invoke-direct {v2, p1}, Lcom/zhangdan/app/data/db/OldDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zhangdan/app/data/db/util/UpgradeMgr;->mDbHelper:Lcom/zhangdan/app/data/db/OldDbHelper;

    .line 33
    iput-object p1, p0, Lcom/zhangdan/app/data/db/util/UpgradeMgr;->mContext:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method public readOldUserInfo()Lcom/zhangdan/app/data/model/UserInfo;
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 40
    iget-object v1, p0, Lcom/zhangdan/app/data/db/util/UpgradeMgr;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/data/db/util/UpgradeMgr;->mDbHelper:Lcom/zhangdan/app/data/db/OldDbHelper;

    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v10

    .line 43
    :cond_1
    const-string v1, "SysMaster"

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/data/db/util/UpgradeMgr;->tableIsExist(Ljava/lang/String;)Z

    move-result v9

    .line 44
    .local v9, isTableExists:Z
    if-eqz v9, :cond_0

    .line 47
    iget-object v1, p0, Lcom/zhangdan/app/data/db/util/UpgradeMgr;->mDbHelper:Lcom/zhangdan/app/data/db/OldDbHelper;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/db/OldDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 48
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 49
    .local v8, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 51
    .local v10, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    :try_start_0
    const-string v1, "SysMaster"

    const/4 v2, 0x0

    const-string v3, "type = \'key\' and name = \'CurrentUserInfo\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 52
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    const-string v1, "val"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 54
    .local v11, val:Ljava/lang/String;
    invoke-static {v11}, Lcom/zhangdan/app/api/AccountApi;->parseUserSuiInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v10

    .line 56
    if-eqz v10, :cond_2

    .line 57
    iget-object v1, p0, Lcom/zhangdan/app/data/db/util/UpgradeMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, v11}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->saveUserInfo(Landroid/content/Context;Ljava/lang/String;)Z

    .line 60
    .end local v11           #val:Ljava/lang/String;
    :cond_2
    const-string v1, "SysMaster"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    if-eqz v8, :cond_3

    .line 64
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 65
    const/4 v8, 0x0

    .line 67
    :cond_3
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 69
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 63
    if-eqz v8, :cond_4

    .line 64
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 65
    const/4 v8, 0x0

    .line 67
    :cond_4
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 69
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_5

    .line 64
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 65
    const/4 v8, 0x0

    .line 67
    :cond_5
    if-eqz v0, :cond_6

    .line 68
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 69
    const/4 v0, 0x0

    :cond_6
    throw v1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zhangdan/app/data/db/util/UpgradeMgr;->mDbHelper:Lcom/zhangdan/app/data/db/OldDbHelper;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/zhangdan/app/data/db/util/UpgradeMgr;->mDbHelper:Lcom/zhangdan/app/data/db/OldDbHelper;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/db/OldDbHelper;->close()V

    .line 121
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/data/db/util/UpgradeMgr;->mDbHelper:Lcom/zhangdan/app/data/db/OldDbHelper;

    .line 122
    return-void
.end method

.method public tableIsExist(Ljava/lang/String;)Z
    .locals 7
    .parameter "tableName"

    .prologue
    const/4 v5, 0x0

    .line 82
    const/4 v3, 0x0

    .line 83
    .local v3, result:Z
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return v5

    .line 86
    :cond_0
    const/4 v2, 0x0

    .line 87
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 89
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/zhangdan/app/data/db/util/UpgradeMgr;->mDbHelper:Lcom/zhangdan/app/data/db/OldDbHelper;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/db/OldDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select count(*) as c from Sqlite_master  where type =\'table\' and name =\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, sql:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 95
    .local v0, count:I
    if-lez v0, :cond_1

    .line 96
    const/4 v3, 0x1

    .line 102
    .end local v0           #count:I
    :cond_1
    if-eqz v1, :cond_2

    .line 103
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 104
    const/4 v1, 0x0

    .line 106
    :cond_2
    if-eqz v2, :cond_3

    .line 107
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 108
    const/4 v2, 0x0

    .end local v4           #sql:Ljava/lang/String;
    :cond_3
    :goto_1
    move v5, v3

    .line 111
    goto :goto_0

    .line 100
    :catch_0
    move-exception v5

    .line 102
    if-eqz v1, :cond_4

    .line 103
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 104
    const/4 v1, 0x0

    .line 106
    :cond_4
    if-eqz v2, :cond_3

    .line 107
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 108
    const/4 v2, 0x0

    goto :goto_1

    .line 102
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_5

    .line 103
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 104
    const/4 v1, 0x0

    .line 106
    :cond_5
    if-eqz v2, :cond_6

    .line 107
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 108
    const/4 v2, 0x0

    :cond_6
    throw v5
.end method
