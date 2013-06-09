.class final enum Lcom/igexin/a/a/c/cc;
.super Lcom/igexin/a/a/c/bb;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/igexin/a/a/c/bb;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/igexin/a/a/c/bb;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Lcom/igexin/a/a/c/i;

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/i;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast p1, Lcom/igexin/a/a/c/j;

    new-instance v1, Lcom/igexin/a/a/b/h;

    iget-object v2, p1, Lcom/igexin/a/a/c/j;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/igexin/a/a/c/j;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/igexin/a/a/c/j;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/igexin/a/a/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->e()Lcom/igexin/a/a/b/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/igexin/a/a/b/e;->a(Lcom/igexin/a/a/b/l;)Lcom/igexin/a/a/b/i;

    iget-boolean v1, p1, Lcom/igexin/a/a/c/j;->e:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->e()Lcom/igexin/a/a/b/e;

    move-result-object v1

    sget-object v2, Lcom/igexin/a/a/b/g;->b:Lcom/igexin/a/a/b/g;

    invoke-virtual {v1, v2}, Lcom/igexin/a/a/b/e;->a(Lcom/igexin/a/a/b/g;)Lcom/igexin/a/a/b/e;

    :cond_2
    sget-object v1, Lcom/igexin/a/a/c/cc;->b:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/igexin/a/a/c/cc;->b:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    goto :goto_0
.end method
