.class final enum Lcom/igexin/a/a/c/cl;
.super Lcom/igexin/a/a/c/bb;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/bb;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/igexin/a/a/c/da;->a:[I

    iget-object v3, p1, Lcom/igexin/a/a/c/g;->a:Lcom/igexin/a/a/c/o;

    invoke-virtual {v3}, Lcom/igexin/a/a/c/o;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/c/h;

    invoke-static {v0}, Lcom/igexin/a/a/c/bb;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->v()Lcom/igexin/a/a/b/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/a/a/b/i;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "table"

    aput-object v6, v5, v1

    const-string v6, "tbody"

    aput-object v6, v5, v2

    const/4 v6, 0x2

    const-string v7, "tfoot"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "thead"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "tr"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, v2}, Lcom/igexin/a/a/c/aa;->b(Z)V

    sget-object v4, Lcom/igexin/a/a/c/cl;->g:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0, v4}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/bb;)Z

    invoke-virtual {p2, v1}, Lcom/igexin/a/a/c/aa;->b(Z)V

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/igexin/a/a/c/h;

    invoke-virtual {p1}, Lcom/igexin/a/a/c/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/a/a/c/bb;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/igexin/a/a/c/cl;->g:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0, v4}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/bb;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/h;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->p()V

    :cond_4
    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->c()Lcom/igexin/a/a/c/bb;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
