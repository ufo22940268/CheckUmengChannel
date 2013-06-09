.class final enum Lcom/igexin/a/a/c/b;
.super Lcom/igexin/a/a/c/bb;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/bb;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->v()Lcom/igexin/a/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/a/b/i;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "table"

    aput-object v2, v1, v4

    const-string v2, "tbody"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "tfoot"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "thead"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "tr"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v5}, Lcom/igexin/a/a/c/aa;->b(Z)V

    sget-object v0, Lcom/igexin/a/a/c/b;->g:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, p1, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/bb;)Z

    move-result v0

    invoke-virtual {p2, v4}, Lcom/igexin/a/a/c/aa;->b(Z)V

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/igexin/a/a/c/b;->g:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, p1, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/bb;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->p()V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->b()V

    sget-object v0, Lcom/igexin/a/a/c/b;->j:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/igexin/a/a/c/i;

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/i;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/m;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/m;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "caption"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->j()V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->u()V

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    sget-object v0, Lcom/igexin/a/a/c/b;->k:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/igexin/a/a/c/b;->b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    goto :goto_0

    :cond_4
    const-string v4, "colgroup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->j()V

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    sget-object v0, Lcom/igexin/a/a/c/b;->l:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    goto :goto_1

    :cond_5
    const-string v4, "col"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v0, Lcom/igexin/a/a/c/m;

    const-string v1, "colgroup"

    invoke-direct {v0, v1}, Lcom/igexin/a/a/c/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    goto :goto_0

    :cond_6
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "tbody"

    aput-object v5, v4, v2

    const-string v5, "tfoot"

    aput-object v5, v4, v1

    const-string v5, "thead"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->j()V

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    sget-object v0, Lcom/igexin/a/a/c/b;->m:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    goto :goto_1

    :cond_7
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "td"

    aput-object v5, v4, v2

    const-string v5, "th"

    aput-object v5, v4, v1

    const-string v5, "tr"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v0, Lcom/igexin/a/a/c/m;

    const-string v1, "tbody"

    invoke-direct {v0, v1}, Lcom/igexin/a/a/c/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    goto/16 :goto_0

    :cond_8
    const-string v4, "table"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    new-instance v0, Lcom/igexin/a/a/c/l;

    const-string v1, "table"

    invoke-direct {v0, v1}, Lcom/igexin/a/a/c/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    goto/16 :goto_0

    :cond_9
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "style"

    aput-object v5, v4, v2

    const-string v5, "script"

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/igexin/a/a/c/b;->d:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, p1, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/bb;)Z

    move-result v0

    goto/16 :goto_0

    :cond_a
    const-string v1, "input"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/igexin/a/a/c/m;->d:Lcom/igexin/a/a/b/b;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lcom/igexin/a/a/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hidden"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/igexin/a/a/c/b;->b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    goto/16 :goto_1

    :cond_c
    const-string v1, "form"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->o()Lcom/igexin/a/a/b/i;

    move-result-object v1

    if-eqz v1, :cond_d

    move v0, v2

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->g(Lcom/igexin/a/a/b/i;)V

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/igexin/a/a/c/b;->b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->c()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/l;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/l;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "table"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v2

    goto/16 :goto_0

    :cond_10
    const-string v0, "table"

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->c(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->m()V

    goto/16 :goto_1

    :cond_11
    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "body"

    aput-object v4, v3, v2

    const-string v4, "caption"

    aput-object v4, v3, v1

    const-string v1, "col"

    aput-object v1, v3, v6

    const-string v1, "colgroup"

    aput-object v1, v3, v7

    const/4 v1, 0x4

    const-string v4, "html"

    aput-object v4, v3, v1

    const/4 v1, 0x5

    const-string v4, "tbody"

    aput-object v4, v3, v1

    const/4 v1, 0x6

    const-string v4, "td"

    aput-object v4, v3, v1

    const/4 v1, 0x7

    const-string v4, "tfoot"

    aput-object v4, v3, v1

    const/16 v1, 0x8

    const-string v4, "th"

    aput-object v4, v3, v1

    const/16 v1, 0x9

    const-string v4, "thead"

    aput-object v4, v3, v1

    const/16 v1, 0xa

    const-string v4, "tr"

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v2

    goto/16 :goto_0

    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/igexin/a/a/c/b;->b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->v()Lcom/igexin/a/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/a/b/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    :cond_14
    move v0, v1

    goto/16 :goto_0
.end method
