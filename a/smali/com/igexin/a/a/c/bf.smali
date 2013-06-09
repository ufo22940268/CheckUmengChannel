.class final enum Lcom/igexin/a/a/c/bf;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x2a

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 3

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->e()V

    new-instance v0, Lcom/igexin/a/a/c/i;

    invoke-direct {v0}, Lcom/igexin/a/a/c/i;-><init>()V

    iget-object v1, v0, Lcom/igexin/a/a/c/i;->b:Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    invoke-virtual {p2, v2}, Lcom/igexin/a/a/c/a;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/g;)V

    sget-object v0, Lcom/igexin/a/a/c/bf;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->b(Lcom/igexin/a/a/c/r;)V

    return-void
.end method
