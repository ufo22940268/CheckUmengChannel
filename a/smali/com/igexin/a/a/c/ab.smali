.class final enum Lcom/igexin/a/a/c/ab;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 1

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->d()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v0, "<"

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->e()V

    sget-object v0, Lcom/igexin/a/a/c/ab;->f:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1}, Lcom/igexin/a/a/c/q;->g()V

    sget-object v0, Lcom/igexin/a/a/c/ab;->r:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "<!"

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/a/a/c/ab;->t:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method
