.class public Lsdk/b/a/a/c/o;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/b/a/a/c/f;


# static fields
.field private static a:Lsdk/b/a/a/c/o;


# instance fields
.field private b:Lcom/igexin/sdk/SdkMainService;

.field private c:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/igexin/sdk/SdkMainService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsdk/b/a/a/c/o;->b:Lcom/igexin/sdk/SdkMainService;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lsdk/b/a/a/c/o;->c:Ljava/util/List;

    return-void
.end method

.method private a(I)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lsdk/b/a/a/c/o;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/b/q;

    invoke-virtual {v0}, Lsdk/b/a/a/b/q;->c()B

    move-result v0

    if-ne v0, p1, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Lsdk/b/a/a/b/q;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    invoke-virtual {p0}, Lsdk/b/a/a/b/q;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "data"

    invoke-virtual {p0}, Lsdk/b/a/a/b/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {p0}, Lsdk/b/a/a/b/q;->c()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const-string v1, "time"

    invoke-virtual {p0}, Lsdk/b/a/a/b/q;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static a()Lsdk/b/a/a/c/o;
    .locals 1

    sget-object v0, Lsdk/b/a/a/c/o;->a:Lsdk/b/a/a/c/o;

    return-object v0
.end method

.method public static a(Lcom/igexin/sdk/SdkMainService;)Lsdk/b/a/a/c/o;
    .locals 1

    sget-object v0, Lsdk/b/a/a/c/o;->a:Lsdk/b/a/a/c/o;

    if-nez v0, :cond_0

    new-instance v0, Lsdk/b/a/a/c/o;

    invoke-direct {v0, p0}, Lsdk/b/a/a/c/o;-><init>(Lcom/igexin/sdk/SdkMainService;)V

    sput-object v0, Lsdk/b/a/a/c/o;->a:Lsdk/b/a/a/c/o;

    :cond_0
    sget-object v0, Lsdk/b/a/a/c/o;->a:Lsdk/b/a/a/c/o;

    return-object v0
.end method

.method private b(J)Lsdk/b/a/a/b/q;
    .locals 4

    iget-object v0, p0, Lsdk/b/a/a/c/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/b/q;

    invoke-virtual {v0}, Lsdk/b/a/a/b/q;->a()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table if not exists unSendData (id integer primary key,data text,type integer,time integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 10

    :try_start_0
    const-string v0, "select id,data,type,time from unSendData"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    if-eqz p2, :cond_2

    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-byte v4, v0

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iget-object v9, p0, Lsdk/b/a/a/c/o;->c:Ljava/util/List;

    new-instance v0, Lsdk/b/a/a/b/q;

    invoke-direct/range {v0 .. v6}, Lsdk/b/a/a/b/q;-><init>(JLjava/lang/String;BJ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long v3, v7, v5

    const-wide/32 v5, 0x5265c00

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    invoke-virtual {p0, v1, v2}, Lsdk/b/a/a/c/o;->a(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public a(J)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Lsdk/b/a/a/c/o;->b(J)Lsdk/b/a/a/b/q;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lsdk/b/a/a/c/o;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsdk/b/a/a/c/o;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v8, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    new-instance v0, Lsdk/b/a/a/c/q;

    iget-object v2, p0, Lsdk/b/a/a/c/o;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-static {v1}, Lsdk/b/a/a/c/o;->a(Lsdk/b/a/a/b/q;)Landroid/content/ContentValues;

    move-result-object v3

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lsdk/b/a/a/c/q;-><init>(Lsdk/b/a/a/c/o;Landroid/content/Context;Landroid/content/ContentValues;J)V

    invoke-virtual {v8, v0, v6, v7}, Lsdk/c/a/b/d;->a(Lsdk/c/a/e/d;ZZ)Z

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/c/o;->c:Ljava/util/List;

    return-object v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public b(Lsdk/b/a/a/b/q;)V
    .locals 5

    const/16 v2, 0xf

    const/4 v1, 0x3

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lsdk/b/a/a/c/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lsdk/b/a/a/b/q;->c()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :pswitch_0
    iget-object v0, p0, Lsdk/b/a/a/c/o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsdk/b/a/a/c/o;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    new-instance v1, Lsdk/b/a/a/c/p;

    iget-object v2, p0, Lsdk/b/a/a/c/o;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-static {p1}, Lsdk/b/a/a/c/o;->a(Lsdk/b/a/a/b/q;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lsdk/b/a/a/c/p;-><init>(Lsdk/b/a/a/c/o;Landroid/content/Context;Landroid/content/ContentValues;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Lsdk/c/a/b/d;->a(Lsdk/c/a/e/d;ZZ)Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v4}, Lsdk/b/a/a/c/o;->a(I)I

    move-result v0

    if-lt v0, v4, :cond_2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lsdk/b/a/a/c/o;->a(I)I

    move-result v0

    if-lt v0, v1, :cond_2

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1}, Lsdk/b/a/a/c/o;->a(I)I

    move-result v0

    if-lt v0, v2, :cond_2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lsdk/b/a/a/c/o;->a(I)I

    move-result v0

    if-lt v0, v1, :cond_2

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lsdk/b/a/a/c/o;->a(I)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
