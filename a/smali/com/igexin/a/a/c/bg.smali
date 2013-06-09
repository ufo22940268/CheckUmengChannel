.class final enum Lcom/igexin/a/a/c/bg;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x2b

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 1

    const-string v0, "--"

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/igexin/a/a/c/i;

    invoke-direct {v0}, Lcom/igexin/a/a/c/i;-><init>()V

    iput-object v0, p1, Lcom/igexin/a/a/c/q;->d:Lcom/igexin/a/a/c/i;

    sget-object v0, Lcom/igexin/a/a/c/bg;->S:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "DOCTYPE"

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/igexin/a/a/c/bg;->Y:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :cond_1
    const-string v0, "[CDATA["

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/igexin/a/a/c/bg;->ao:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->c(Lcom/igexin/a/a/c/r;)V

    sget-object v0, Lcom/igexin/a/a/c/bg;->Q:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->b(Lcom/igexin/a/a/c/r;)V

    goto :goto_0
.end method
