.class final enum Lcom/igexin/a/a/c/br;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x35

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->d(Lcom/igexin/a/a/c/r;)V

    iget-object v0, p1, Lcom/igexin/a/a/c/q;->c:Lcom/igexin/a/a/c/j;

    iput-boolean v1, v0, Lcom/igexin/a/a/c/j;->e:Z

    invoke-virtual {p1}, Lcom/igexin/a/a/c/q;->f()V

    sget-object v0, Lcom/igexin/a/a/c/br;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/a;->b([C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->f()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/a;->b(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/igexin/a/a/c/q;->f()V

    sget-object v0, Lcom/igexin/a/a/c/br;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->b(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :cond_2
    const-string v0, "PUBLIC"

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/igexin/a/a/c/br;->ac:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :cond_3
    const-string v0, "SYSTEM"

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/igexin/a/a/c/br;->ai:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->c(Lcom/igexin/a/a/c/r;)V

    iget-object v0, p1, Lcom/igexin/a/a/c/q;->c:Lcom/igexin/a/a/c/j;

    iput-boolean v1, v0, Lcom/igexin/a/a/c/j;->e:Z

    sget-object v0, Lcom/igexin/a/a/c/br;->an:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->b(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    nop

    :array_0
    .array-data 0x2
        0x9t 0x0t
        0xat 0x0t
        0xct 0x0t
        0x20t 0x0t
    .end array-data
.end method
