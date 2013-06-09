.class final Lsdk/b/a/a/c/c;
.super Lsdk/b/a/a/e/a/c;


# instance fields
.field final synthetic a:Lsdk/b/a/a/c/a;


# direct methods
.method constructor <init>(Lsdk/b/a/a/c/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/c/c;->a:Lsdk/b/a/a/c/a;

    invoke-direct {p0, p2}, Lsdk/b/a/a/e/a/c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lsdk/b/a/a/c/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ca"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
