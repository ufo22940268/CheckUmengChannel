.class final enum Lcom/igexin/a/a/c/v;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 2

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Z)Lcom/igexin/a/a/c/n;

    iget-object v0, p1, Lcom/igexin/a/a/c/q;->b:Lcom/igexin/a/a/c/n;

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->c()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/n;->a(C)V

    iget-object v0, p1, Lcom/igexin/a/a/c/q;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->c()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/igexin/a/a/c/v;->m:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->b(Lcom/igexin/a/a/c/r;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "</"

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/a/a/c/v;->c:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0
.end method
