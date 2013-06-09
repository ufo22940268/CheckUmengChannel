.class final enum Lcom/igexin/a/a/c/cp;
.super Lcom/igexin/a/a/c/bb;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/bb;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private static a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/ck;)Z
    .locals 2

    new-instance v0, Lcom/igexin/a/a/c/l;

    const-string v1, "tr"

    invoke-direct {v0, v1}, Lcom/igexin/a/a/c/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/ck;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/ck;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 1

    sget-object v0, Lcom/igexin/a/a/c/cp;->i:Lcom/igexin/a/a/c/bb;

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

    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/m;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/m;->i()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "th"

    aput-object v5, v4, v1

    const-string v5, "td"

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->l()V

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    sget-object v0, Lcom/igexin/a/a/c/cp;->o:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->u()V

    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x7

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

    const/4 v1, 0x6

    const-string v2, "tr"

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/igexin/a/a/c/cp;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/ck;)Z

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lcom/igexin/a/a/c/cp;->b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/l;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/l;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->l()V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->h()Lcom/igexin/a/a/b/i;

    sget-object v0, Lcom/igexin/a/a/c/cp;->m:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    goto :goto_0

    :cond_4
    const-string v3, "table"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p1, p2}, Lcom/igexin/a/a/c/cp;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/ck;)Z

    move-result v0

    goto :goto_1

    :cond_5
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "tbody"

    aput-object v4, v3, v1

    const-string v4, "tfoot"

    aput-object v4, v3, v2

    const-string v4, "thead"

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    goto/16 :goto_1

    :cond_6
    new-instance v0, Lcom/igexin/a/a/c/l;

    const-string v1, "tr"

    invoke-direct {v0, v1}, Lcom/igexin/a/a/c/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x7

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

    invoke-static {v0, v3}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    goto/16 :goto_1

    :cond_8
    invoke-static {p1, p2}, Lcom/igexin/a/a/c/cp;->b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    goto/16 :goto_1

    :cond_9
    invoke-static {p1, p2}, Lcom/igexin/a/a/c/cp;->b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    goto/16 :goto_1
.end method
