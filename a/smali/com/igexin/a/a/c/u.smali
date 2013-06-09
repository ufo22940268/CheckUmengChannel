.class final enum Lcom/igexin/a/a/c/u;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 2

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/a;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/igexin/a/a/c/q;->g()V

    sget-object v0, Lcom/igexin/a/a/c/u;->l:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->b(Lcom/igexin/a/a/c/r;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/igexin/a/a/c/q;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/igexin/a/a/c/l;

    invoke-virtual {p1}, Lcom/igexin/a/a/c/q;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/igexin/a/a/c/l;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/igexin/a/a/c/q;->b:Lcom/igexin/a/a/c/n;

    invoke-virtual {p1}, Lcom/igexin/a/a/c/q;->c()V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->e()V

    sget-object v0, Lcom/igexin/a/a/c/u;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :cond_1
    const-string v0, "<"

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/a/a/c/u;->c:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0
.end method
