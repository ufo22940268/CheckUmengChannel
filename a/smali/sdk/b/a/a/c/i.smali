.class Lsdk/b/a/a/c/i;
.super Lsdk/b/a/a/e/a/c;


# instance fields
.field final synthetic a:Lsdk/b/a/a/c/h;


# direct methods
.method constructor <init>(Lsdk/b/a/a/c/h;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lsdk/b/a/a/c/i;->a:Lsdk/b/a/a/c/h;

    invoke-direct {p0, p2}, Lsdk/b/a/a/e/a/c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lsdk/b/a/a/c/i;->a:Lsdk/b/a/a/c/h;

    iget-object v1, p0, Lsdk/b/a/a/c/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lsdk/b/a/a/c/h;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {}, Lsdk/b/a/a/c/h;->j()V

    iget-object v0, p0, Lsdk/b/a/a/c/i;->a:Lsdk/b/a/a/c/h;

    invoke-static {v0}, Lsdk/b/a/a/c/h;->a(Lsdk/b/a/a/c/h;)V

    sget-object v0, Lsdk/b/a/a/c/h;->D:Ljava/util/HashMap;

    invoke-static {v0}, Lsdk/b/a/a/c/h;->a(Ljava/util/HashMap;)V

    return-void
.end method
