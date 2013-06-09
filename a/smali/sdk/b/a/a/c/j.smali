.class final Lsdk/b/a/a/c/j;
.super Lsdk/b/a/a/e/a/c;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lsdk/b/a/a/e/a/c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lsdk/b/a/a/c/h;->a()Lsdk/b/a/a/c/h;

    iget-object v0, p0, Lsdk/b/a/a/c/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x12

    const-string v2, "lastOfflineTime"

    sget-wide v3, Lsdk/b/a/a/c/h;->r:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lsdk/b/a/a/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
