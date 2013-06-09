.class public final Lsdk/b/a/a/e/a/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "gxsdkdb.db"

    sput-object v0, Lsdk/b/a/a/e/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    sget-object v0, Lsdk/b/a/a/e/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Lsdk/b/a/a/e/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lsdk/c/a/c/a;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_______________________ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lsdk/b/a/a/e/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    sget-object v0, Lsdk/b/a/a/e/a/d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lsdk/b/a/a/e/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    sget-object v0, Lsdk/b/a/a/e/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lsdk/b/a/a/e/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_______________________ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lsdk/b/a/a/e/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    sget-object v0, Lsdk/b/a/a/e/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    sput-object v0, Lsdk/b/a/a/e/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-void
.end method
