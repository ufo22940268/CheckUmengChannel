.class final enum Lcom/igexin/a/a/c/av;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x22

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 2

    const/16 v0, 0xb

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/a;->a([C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/igexin/a/a/c/q;->b:Lcom/igexin/a/a/c/n;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/igexin/a/a/c/n;->c(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->d()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lcom/igexin/a/a/c/av;->J:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/igexin/a/a/c/av;->P:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/igexin/a/a/c/av;->K:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/igexin/a/a/c/q;->c()V

    sget-object v0, Lcom/igexin/a/a/c/av;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->c(Lcom/igexin/a/a/c/r;)V

    iget-object v0, p1, Lcom/igexin/a/a/c/q;->b:Lcom/igexin/a/a/c/n;

    const v1, 0xfffd

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/n;->b(C)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->d(Lcom/igexin/a/a/c/r;)V

    sget-object v0, Lcom/igexin/a/a/c/av;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->c(Lcom/igexin/a/a/c/r;)V

    iget-object v1, p1, Lcom/igexin/a/a/c/q;->b:Lcom/igexin/a/a/c/n;

    invoke-virtual {v1, v0}, Lcom/igexin/a/a/c/n;->b(C)V

    goto :goto_0

    nop

    :array_0
    .array-data 0x2
        0x9t 0x0t
        0xat 0x0t
        0xct 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x0t 0x0t
        0x22t 0x0t
        0x27t 0x0t
        0x3ct 0x0t
    .end array-data

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_6
        0x27 -> :sswitch_6
        0x2f -> :sswitch_1
        0x3c -> :sswitch_6
        0x3d -> :sswitch_2
        0x3e -> :sswitch_3
        0xffff -> :sswitch_5
    .end sparse-switch
.end method
