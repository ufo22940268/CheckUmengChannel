.class public final Lsdk/b/a/a/e/a/a;
.super Lsdk/c/a/e/d;


# instance fields
.field protected a:Landroid/database/sqlite/SQLiteDatabase;

.field protected b:Landroid/database/Cursor;

.field c:Landroid/content/Context;

.field d:Ljava/util/List;

.field e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsdk/c/a/e/d;-><init>(I)V

    iput-object p1, p0, Lsdk/b/a/a/e/a/a;->c:Landroid/content/Context;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsdk/b/a/a/e/a/a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/b/a/a/e/a/a;->e:Z

    return-void
.end method

.method public final a(Lsdk/b/a/a/c/f;)V
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/e/a/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()I
    .locals 1

    const v0, -0x7ffffff8

    return v0
.end method

.method public final c()V
    .locals 4

    const/4 v3, 0x5

    invoke-super {p0}, Lsdk/c/a/e/d;->c()V

    iget-object v0, p0, Lsdk/b/a/a/e/a/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lsdk/b/a/a/e/a/d;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lsdk/b/a/a/e/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lsdk/b/a/a/e/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lsdk/b/a/a/e/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS config"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/b/a/a/e/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS configimsi"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/b/a/a/e/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS unSendData"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/b/a/a/e/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS tempSendData"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/b/a/a/e/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS ca"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lsdk/b/a/a/e/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/c/f;

    iget-object v2, p0, Lsdk/b/a/a/e/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v0, v2}, Lsdk/b/a/a/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lsdk/b/a/a/e/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    iget-object v0, p0, Lsdk/b/a/a/e/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/c/f;

    iget-boolean v2, p0, Lsdk/b/a/a/e/a/a;->e:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsdk/b/a/a/e/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v0, v2}, Lsdk/b/a/a/c/f;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lsdk/b/a/a/e/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lsdk/b/a/a/e/a/a;->b:Landroid/database/Cursor;

    invoke-interface {v0, v2, v3}, Lsdk/b/a/a/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lsdk/c/a/c/a;->b()V

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    new-instance v1, Lsdk/b/a/a/e/a/b;

    invoke-direct {v1}, Lsdk/b/a/a/e/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lsdk/c/a/b/d;->d()V

    return-void
.end method

.method public final d()V
    .locals 1

    invoke-super {p0}, Lsdk/c/a/e/d;->d()V

    iget-object v0, p0, Lsdk/b/a/a/e/a/a;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lsdk/b/a/a/e/a/a;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0}, Lsdk/c/a/e/d;->e()V

    iput-boolean v0, p0, Lsdk/b/a/a/e/a/a;->z:Z

    iput-boolean v0, p0, Lsdk/b/a/a/e/a/a;->G:Z

    return-void
.end method

.method protected final f()V
    .locals 0

    invoke-static {}, Lsdk/b/a/a/e/a/d;->a()V

    return-void
.end method
