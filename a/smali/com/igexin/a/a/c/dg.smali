.class final enum Lcom/igexin/a/a/c/dg;
.super Lcom/igexin/a/a/c/bb;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/bb;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/igexin/a/a/c/h;

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/h;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->h()Lcom/igexin/a/a/b/i;

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->c()Lcom/igexin/a/a/c/bb;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->h()Lcom/igexin/a/a/b/i;

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->c()Lcom/igexin/a/a/c/bb;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    goto :goto_0
.end method
