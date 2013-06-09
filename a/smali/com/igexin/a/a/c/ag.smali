.class final enum Lcom/igexin/a/a/c/ag;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 2

    const/16 v1, 0x2d

    invoke-virtual {p2, v1}, Lcom/igexin/a/a/c/a;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/igexin/a/a/c/q;->a(C)V

    sget-object v0, Lcom/igexin/a/a/c/ag;->x:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->b(Lcom/igexin/a/a/c/r;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/igexin/a/a/c/ag;->f:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0
.end method
