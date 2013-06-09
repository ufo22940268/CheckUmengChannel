.class final enum Lcom/igexin/a/a/c/de;
.super Lcom/igexin/a/a/c/bb;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/bb;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private static b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 2

    new-instance v0, Lcom/igexin/a/a/c/m;

    const-string v1, "body"

    invoke-direct {v0, v1}, Lcom/igexin/a/a/c/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/aa;->a(Z)V

    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/igexin/a/a/c/bb;->a(Lcom/igexin/a/a/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/igexin/a/a/c/h;

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/h;)V

    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/igexin/a/a/c/i;

    invoke-virtual {p2, p1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/i;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/m;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/m;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Lcom/igexin/a/a/c/de;->g:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, p1, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/bb;)Z

    move-result v0

    goto :goto_1

    :cond_3
    const-string v4, "body"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    invoke-virtual {p2, v1}, Lcom/igexin/a/a/c/aa;->a(Z)V

    sget-object v0, Lcom/igexin/a/a/c/de;->g:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    goto :goto_0

    :cond_4
    const-string v4, "frameset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/m;)Lcom/igexin/a/a/b/i;

    sget-object v0, Lcom/igexin/a/a/c/de;->s:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/bb;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "base"

    aput-object v4, v0, v1

    const-string v4, "basefont"

    aput-object v4, v0, v2

    const-string v4, "bgsound"

    aput-object v4, v0, v5

    const/4 v4, 0x3

    const-string v5, "link"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "meta"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "noframes"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "script"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "style"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, "title"

    aput-object v5, v0, v4

    invoke-static {v3, v0}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/aa;->n()Lcom/igexin/a/a/b/i;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/b/i;)V

    sget-object v1, Lcom/igexin/a/a/c/de;->d:Lcom/igexin/a/a/c/bb;

    invoke-virtual {p2, p1, v1}, Lcom/igexin/a/a/c/aa;->a(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/bb;)Z

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/aa;->d(Lcom/igexin/a/a/b/i;)Z

    goto/16 :goto_0

    :cond_6
    const-string v0, "head"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    goto/16 :goto_1

    :cond_7
    invoke-static {p1, p2}, Lcom/igexin/a/a/c/de;->b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/igexin/a/a/c/g;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/a/c/l;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/l;->i()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "body"

    aput-object v4, v3, v1

    const-string v4, "html"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/igexin/a/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1, p2}, Lcom/igexin/a/a/c/de;->b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p2, p0}, Lcom/igexin/a/a/c/aa;->b(Lcom/igexin/a/a/c/bb;)V

    move v0, v1

    goto/16 :goto_1

    :cond_a
    invoke-static {p1, p2}, Lcom/igexin/a/a/c/de;->b(Lcom/igexin/a/a/c/g;Lcom/igexin/a/a/c/aa;)Z

    goto/16 :goto_0
.end method
