.class final enum Lcom/igexin/a/a/c/cn;
.super Lcom/igexin/a/a/c/bb;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/bb;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private static a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/ck;)Z
    .locals 2

    new-instance v0, Lcom/igexin/a/a/c/l;

    const-string v1, "colgroup"

    invoke-direct {v0, v1}, Lcom/igexin/a/a/c/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/ck;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/ck;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 4

    const/4 v1, 0x1

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

    iget-object v2, p1, Lcom/igexin/a/a/c/g;->a:Lcom/igexin/a/a/c/o;

    invoke-virtual {v2}, Lcom/igexin/a/a/c/o;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/igexin/a/a/c/cn;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/ck;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    check-cast p1, Lcom/igexin/a/a/c/i;

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/i;)V

    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    goto :goto_1

    :pswitch_3
    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/m;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/m;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/igexin/a/a/c/cn;->g:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, p1, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/bb;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v3, "col"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Lcom/igexin/a/a/c/cn;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/ck;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/l;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/l;->i()Ljava/lang/String;

    move-result-object v0

    const-string v2, "colgroup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->v()Lcom/igexin/a/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/a/b/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->h()Lcom/igexin/a/a/b/i;

    sget-object v0, Lcom/igexin/a/a/c/cn;->i:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    goto :goto_1

    :cond_4
    invoke-static {p1, p2}, Lcom/igexin/a/a/c/cn;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/ck;)Z

    move-result v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->v()Lcom/igexin/a/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/a/b/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto/16 :goto_0

    :cond_5
    invoke-static {p1, p2}, Lcom/igexin/a/a/c/cn;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/ck;)Z

    move-result v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
