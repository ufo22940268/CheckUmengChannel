.class final enum Lcom/igexin/a/a/c/cu;
.super Lcom/igexin/a/a/c/bb;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/bb;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/igexin/a/a/c/bb;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/igexin/a/a/c/h;

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/h;)V

    :cond_0
    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/igexin/a/a/c/i;

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/i;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    check-cast p1, Lcom/igexin/a/a/c/m;

    invoke-virtual {p1}, Lcom/igexin/a/a/c/m;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v0, Lcom/igexin/a/a/c/cu;->g:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, p1, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/bb;)Z

    move-result v0

    goto :goto_1

    :cond_4
    const-string v3, "frameset"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    goto :goto_0

    :cond_5
    const-string v3, "frame"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    goto :goto_0

    :cond_6
    const-string v2, "noframes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/igexin/a/a/c/cu;->d:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, p1, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/bb;)Z

    move-result v0

    goto :goto_1

    :cond_7
    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/l;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/l;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "frameset"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->v()Lcom/igexin/a/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/a/b/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->h()Lcom/igexin/a/a/b/i;

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->v()Lcom/igexin/a/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/a/b/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "frameset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/igexin/a/a/c/cu;->t:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->v()Lcom/igexin/a/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/a/b/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v2

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    goto/16 :goto_1
.end method
