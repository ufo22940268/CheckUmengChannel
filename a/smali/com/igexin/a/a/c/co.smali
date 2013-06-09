.class final enum Lcom/igexin/a/a/c/co;
.super Lcom/igexin/a/a/c/bb;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/bb;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 2

    const-string v0, "tbody"

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "thead"

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tfoot"

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->k()V

    new-instance v0, Lcom/igexin/a/a/c/l;

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->v()Lcom/igexin/a/a/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/a/a/b/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/igexin/a/a/c/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    goto :goto_0
.end method

.method private static c(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 1

    sget-object v0, Lcom/igexin/a/a/c/co;->i:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p1, p0, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/bb;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/igexin/a/a/c/da;->a:[I

    iget-object v3, p1, Lcom/igexin/a/a/c/g;->a:Lcom/igexin/a/a/c/o;

    invoke-virtual {v3}, Lcom/igexin/a/a/c/o;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/igexin/a/a/c/co;->c(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/m;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/m;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->k()V

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    sget-object v0, Lcom/igexin/a/a/c/co;->n:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "th"

    aput-object v5, v4, v1

    const-string v5, "td"

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    new-instance v1, Lcom/igexin/a/a/c/m;

    const-string v2, "tr"

    invoke-direct {v1, v2}, Lcom/igexin/a/a/c/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "caption"

    aput-object v4, v0, v1

    const-string v1, "col"

    aput-object v1, v0, v2

    const-string v1, "colgroup"

    aput-object v1, v0, v6

    const-string v1, "tbody"

    aput-object v1, v0, v7

    const-string v1, "tfoot"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "thead"

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/igexin/a/a/c/co;->b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/igexin/a/a/c/co;->c(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/l;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/l;->i()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "tbody"

    aput-object v4, v3, v1

    const-string v4, "tfoot"

    aput-object v4, v3, v2

    const-string v4, "thead"

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->k()V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->h()Lcom/igexin/a/a/b/i;

    sget-object v0, Lcom/igexin/a/a/c/co;->i:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    goto/16 :goto_1

    :cond_4
    const-string v3, "table"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/igexin/a/a/c/co;->b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "body"

    aput-object v4, v3, v1

    const-string v4, "caption"

    aput-object v4, v3, v2

    const-string v2, "col"

    aput-object v2, v3, v6

    const-string v2, "colgroup"

    aput-object v2, v3, v7

    const-string v2, "html"

    aput-object v2, v3, v8

    const/4 v2, 0x5

    const-string v4, "td"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "th"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "tr"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    invoke-static {p1, p2}, Lcom/igexin/a/a/c/co;->c(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
