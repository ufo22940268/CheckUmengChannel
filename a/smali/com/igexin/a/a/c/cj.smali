.class final enum Lcom/igexin/a/a/c/cj;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 1

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->d(Lcom/igexin/a/a/c/r;)V

    const-string v0, "</"

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/a/a/c/cj;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Z)Lcom/igexin/a/a/c/n;

    sget-object v0, Lcom/igexin/a/a/c/cj;->j:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/a;->b(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->c(Lcom/igexin/a/a/c/r;)V

    sget-object v0, Lcom/igexin/a/a/c/cj;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->b(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->c(Lcom/igexin/a/a/c/r;)V

    sget-object v0, Lcom/igexin/a/a/c/cj;->Q:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->b(Lcom/igexin/a/a/c/r;)V

    goto :goto_0
.end method
