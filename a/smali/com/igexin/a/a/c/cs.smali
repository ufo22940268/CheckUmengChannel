.class final enum Lcom/igexin/a/a/c/cs;
.super Lcom/igexin/a/a/c/bb;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/bb;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/m;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/m;->i()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "caption"

    aput-object v3, v2, v1

    const-string v3, "table"

    aput-object v3, v2, v5

    const-string v3, "tbody"

    aput-object v3, v2, v6

    const-string v3, "tfoot"

    aput-object v3, v2, v7

    const-string v3, "thead"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "tr"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "td"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "th"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    new-instance v0, Lcom/igexin/a/a/c/l;

    const-string v1, "select"

    invoke-direct {v0, v1}, Lcom/igexin/a/a/c/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/l;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/l;->i()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "caption"

    aput-object v3, v2, v1

    const-string v3, "table"

    aput-object v3, v2, v5

    const-string v3, "tbody"

    aput-object v3, v2, v6

    const-string v3, "tfoot"

    aput-object v3, v2, v7

    const-string v3, "thead"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "tr"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "td"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "th"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/l;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/l;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/igexin/a/a/c/l;

    const-string v1, "select"

    invoke-direct {v0, v1}, Lcom/igexin/a/a/c/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/igexin/a/a/c/cs;->p:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, p1, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/bb;)Z

    move-result v0

    goto :goto_0
.end method
