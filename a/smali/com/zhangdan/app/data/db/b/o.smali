.class public final Lcom/zhangdan/app/data/db/b/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zhangdan/app/data/db/a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/data/data/com.zhangdan.app/databases/zhangdan.db"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/zhangdan/app/data/db/a;

    invoke-direct {v0, p1}, Lcom/zhangdan/app/data/db/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/data/db/b/o;->a:Lcom/zhangdan/app/data/db/a;

    iput-object p1, p0, Lcom/zhangdan/app/data/db/b/o;->b:Landroid/content/Context;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/zhangdan/app/data/db/b/o;->a:Lcom/zhangdan/app/data/db/a;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/db/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select count(*) as c from Sqlite_master  where type =\'table\' and name =\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-lez v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v2, v1

    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/zhangdan/app/data/model/l;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/data/db/b/o;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/data/db/b/o;->a:Lcom/zhangdan/app/data/db/a;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v8

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "SysMaster"

    invoke-direct {p0, v0}, Lcom/zhangdan/app/data/db/b/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v8

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/data/db/b/o;->a:Lcom/zhangdan/app/data/db/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/db/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const-string v1, "SysMaster"

    const/4 v2, 0x0

    const-string v3, "type = \'key\' and name = \'CurrentUserInfo\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_9

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "val"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/b/a;->a(Ljava/lang/String;)Lcom/zhangdan/app/data/model/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    if-eqz v8, :cond_3

    :try_start_2
    iget-object v3, p0, Lcom/zhangdan/app/data/db/b/o;->b:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/zhangdan/app/data/db/b/n;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    move-object v1, v8

    :goto_1
    :try_start_3
    const-string v3, "SysMaster"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v8

    :goto_2
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v8

    :goto_3
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v1, v8

    move-object v8, v2

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v8

    move-object v8, v2

    goto :goto_2

    :catch_3
    move-exception v3

    move-object v8, v2

    goto :goto_2

    :cond_9
    move-object v1, v8

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/db/b/o;->a:Lcom/zhangdan/app/data/db/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/data/db/b/o;->a:Lcom/zhangdan/app/data/db/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/db/a;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/data/db/b/o;->a:Lcom/zhangdan/app/data/db/a;

    return-void
.end method
