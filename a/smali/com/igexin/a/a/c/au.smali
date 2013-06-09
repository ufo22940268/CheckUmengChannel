.class final enum Lcom/igexin/a/a/c/au;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x21

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

    :goto_0
    iget-object v0, p1, Lcom/igexin/a/a/c/q;->b:Lcom/igexin/a/a/c/n;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/n;->g()V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->e()V

    sget-object v0, Lcom/igexin/a/a/c/au;->I:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    :goto_1
    :sswitch_0
    return-void

    :sswitch_1
    sget-object v0, Lcom/igexin/a/a/c/au;->P:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Lcom/igexin/a/a/c/q;->c()V

    sget-object v0, Lcom/igexin/a/a/c/au;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->c(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->d(Lcom/igexin/a/a/c/r;)V

    sget-object v0, Lcom/igexin/a/a/c/au;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->c(Lcom/igexin/a/a/c/r;)V

    iget-object v1, p1, Lcom/igexin/a/a/c/q;->b:Lcom/igexin/a/a/c/n;

    invoke-virtual {v1}, Lcom/igexin/a/a/c/n;->g()V

    iget-object v1, p1, Lcom/igexin/a/a/c/q;->b:Lcom/igexin/a/a/c/n;

    invoke-virtual {v1, v0}, Lcom/igexin/a/a/c/n;->b(C)V

    sget-object v0, Lcom/igexin/a/a/c/au;->I:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_5
        0x27 -> :sswitch_5
        0x2f -> :sswitch_1
        0x3c -> :sswitch_5
        0x3d -> :sswitch_5
        0x3e -> :sswitch_2
        0xffff -> :sswitch_4
    .end sparse-switch
.end method
