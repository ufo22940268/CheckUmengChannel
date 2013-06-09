.class final enum Lcom/igexin/a/a/c/be;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x29

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 2

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->d()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->c(Lcom/igexin/a/a/c/r;)V

    sget-object v0, Lcom/igexin/a/a/c/be;->H:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Lcom/igexin/a/a/c/q;->b:Lcom/igexin/a/a/c/n;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/igexin/a/a/c/n;->c:Z

    invoke-virtual {p1}, Lcom/igexin/a/a/c/q;->c()V

    sget-object v0, Lcom/igexin/a/a/c/be;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->d(Lcom/igexin/a/a/c/r;)V

    sget-object v0, Lcom/igexin/a/a/c/be;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e -> :sswitch_0
        0xffff -> :sswitch_1
    .end sparse-switch
.end method
