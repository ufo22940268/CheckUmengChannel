.class final enum Lcom/igexin/a/a/c/cq;
.super Lcom/igexin/a/a/c/bb;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/bb;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private static a(Lcom/igexin/a/a/c/aa;)V
    .locals 2

    const-string v0, "td"

    invoke-virtual {p0, v0}, Lcom/igexin/a/a/c/aa;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/igexin/a/a/c/l;

    const-string v1, "td"

    invoke-direct {v0, v1}, Lcom/igexin/a/a/c/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/igexin/a/a/c/l;

    const-string v1, "th"

    invoke-direct {v0, v1}, Lcom/igexin/a/a/c/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    goto :goto_0
.end method

.method private static b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 1

    sget-object v0, Lcom/igexin/a/a/c/cq;->g:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p1, p0, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/bb;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/l;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/l;->i()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "td"

    aput-object v4, v3, v1

    const-string v4, "th"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    sget-object v0, Lcom/igexin/a/a/c/cq;->n:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->r()V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->v()Lcom/igexin/a/a/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/a/a/b/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    :cond_1
    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->c(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->t()V

    sget-object v0, Lcom/igexin/a/a/c/cq;->n:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "body"

    aput-object v4, v3, v1

    const-string v4, "caption"

    aput-object v4, v3, v2

    const-string v4, "col"

    aput-object v4, v3, v5

    const-string v4, "colgroup"

    aput-object v4, v3, v6

    const-string v4, "html"

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "table"

    aput-object v4, v3, v1

    const-string v4, "tbody"

    aput-object v4, v3, v2

    const-string v2, "tfoot"

    aput-object v2, v3, v5

    const-string v2, "thead"

    aput-object v2, v3, v6

    const-string v2, "tr"

    aput-object v2, v3, v7

    invoke-static {v0, v3}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {p2}, Lcom/igexin/a/a/c/cq;->a(Lcom/igexin/a/a/c/aa;)V

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-static {p1, p2}, Lcom/igexin/a/a/c/cq;->b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/m;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/m;->i()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "caption"

    aput-object v4, v3, v1

    const-string v4, "col"

    aput-object v4, v3, v2

    const-string v2, "colgroup"

    aput-object v2, v3, v5

    const-string v2, "tbody"

    aput-object v2, v3, v6

    const-string v2, "td"

    aput-object v2, v3, v7

    const/4 v2, 0x5

    const-string v4, "tfoot"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "th"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "thead"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "tr"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "td"

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "th"

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    goto/16 :goto_0

    :cond_7
    invoke-static {p2}, Lcom/igexin/a/a/c/cq;->a(Lcom/igexin/a/a/c/aa;)V

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    goto/16 :goto_0

    :cond_8
    invoke-static {p1, p2}, Lcom/igexin/a/a/c/cq;->b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    goto/16 :goto_0
.end method