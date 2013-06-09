.class final enum Lcom/igexin/a/a/c/dc;
.super Lcom/igexin/a/a/c/bb;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/bb;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private static a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/ck;)Z
    .locals 2

    new-instance v0, Lcom/igexin/a/a/c/l;

    const-string v1, "head"

    invoke-direct {v0, v1}, Lcom/igexin/a/a/c/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/ck;->a(Lcom/igexin/a/a/c/g;)Z

    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/ck;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 8

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/igexin/a/a/c/bb;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/igexin/a/a/c/h;

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/h;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/igexin/a/a/c/da;->a:[I

    iget-object v3, p1, Lcom/igexin/a/a/c/g;->a:Lcom/igexin/a/a/c/o;

    invoke-virtual {v3}, Lcom/igexin/a/a/c/o;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/igexin/a/a/c/dc;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/ck;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/igexin/a/a/c/i;

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/i;)V

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v2

    goto :goto_0

    :pswitch_2
    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/m;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/m;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Lcom/igexin/a/a/c/dc;->g:Lcom/igexin/a/a/c/bb;

    invoke-virtual {v0, p1, p2}, Lcom/igexin/a/a/c/bb;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "base"

    aput-object v5, v4, v2

    const-string v5, "basefont"

    aput-object v5, v4, v1

    const-string v5, "bgsound"

    aput-object v5, v4, v7

    const-string v5, "command"

    aput-object v5, v4, v6

    const/4 v5, 0x4

    const-string v6, "link"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    move-result-object v0

    const-string v2, "base"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "href"

    invoke-virtual {v0, v2}, Lcom/igexin/a/a/b/i;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/b/i;)V

    goto :goto_1

    :cond_3
    const-string v4, "meta"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    goto :goto_1

    :cond_4
    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    iget-object v0, p2, Lcom/igexin/a/a/c/aa;->c:Lcom/igexin/a/a/c/q;

    sget-object v2, Lcom/igexin/a/a/c/r;->c:Lcom/igexin/a/a/c/r;

    invoke-virtual {v0, v2}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->b()V

    sget-object v0, Lcom/igexin/a/a/c/bb;->h:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    goto :goto_1

    :cond_5
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "noframes"

    aput-object v5, v4, v2

    const-string v5, "style"

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v0, p2}, Lcom/igexin/a/a/c/bb;->a(Lcom/igexin/a/a/c/m;Lcom/igexin/a/a/c/aa;)V

    goto/16 :goto_1

    :cond_6
    const-string v4, "noscript"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    sget-object v0, Lcom/igexin/a/a/c/dc;->e:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    goto/16 :goto_1

    :cond_7
    const-string v4, "script"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    iget-object v0, p2, Lcom/igexin/a/a/c/aa;->c:Lcom/igexin/a/a/c/q;

    sget-object v2, Lcom/igexin/a/a/c/r;->f:Lcom/igexin/a/a/c/r;

    invoke-virtual {v0, v2}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->b()V

    sget-object v0, Lcom/igexin/a/a/c/dc;->h:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    goto/16 :goto_1

    :cond_8
    const-string v0, "head"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v2

    goto/16 :goto_0

    :cond_9
    invoke-static {p1, p2}, Lcom/igexin/a/a/c/dc;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/ck;)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_3
    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/l;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/l;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "head"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->h()Lcom/igexin/a/a/b/i;

    sget-object v0, Lcom/igexin/a/a/c/dc;->f:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    goto/16 :goto_1

    :cond_a
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "body"

    aput-object v4, v3, v2

    const-string v4, "html"

    aput-object v4, v3, v1

    const-string v1, "br"

    aput-object v1, v3, v7

    invoke-static {v0, v3}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1, p2}, Lcom/igexin/a/a/c/dc;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/ck;)Z

    move-result v0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
