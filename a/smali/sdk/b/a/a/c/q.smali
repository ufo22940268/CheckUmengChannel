.class final Lsdk/b/a/a/c/q;
.super Lsdk/b/a/a/e/a/c;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lsdk/b/a/a/c/o;


# direct methods
.method constructor <init>(Lsdk/b/a/a/c/o;Landroid/content/Context;Landroid/content/ContentValues;J)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/c/q;->b:Lsdk/b/a/a/c/o;

    iput-wide p4, p0, Lsdk/b/a/a/c/q;->a:J

    invoke-direct {p0, p2, p3}, Lsdk/b/a/a/e/a/c;-><init>(Landroid/content/Context;Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lsdk/b/a/a/c/q;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "unSendData"

    const-string v2, "id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p0, Lsdk/b/a/a/c/q;->a:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
