.class final enum Lcom/igexin/a/a/c/cg;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x42

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 1

    const-string v0, "]]>"

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Ljava/lang/String;)V

    const-string v0, "]]>"

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)Z

    sget-object v0, Lcom/igexin/a/a/c/cg;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    return-void
.end method
