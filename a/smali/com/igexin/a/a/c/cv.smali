.class final enum Lcom/igexin/a/a/c/cv;
.super Lcom/igexin/a/a/c/bb;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/bb;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private static b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 1

    const-string v0, "html"

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/aa;->a(Ljava/lang/String;)Lcom/igexin/a/a/b/i;

    sget-object v0, Lcom/igexin/a/a/c/cv;->c:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/igexin/a/a/c/i;

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/i;)V

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/igexin/a/a/c/bb;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/m;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/m;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/igexin/a/a/c/m;

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    sget-object v0, Lcom/igexin/a/a/c/cv;->c:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/l;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/l;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "head"

    aput-object v4, v3, v1

    const-string v4, "body"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string v4, "html"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "br"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1, p2}, Lcom/igexin/a/a/c/cv;->b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-static {p1, p2}, Lcom/igexin/a/a/c/cv;->b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    move-result v0

    goto :goto_0
.end method
