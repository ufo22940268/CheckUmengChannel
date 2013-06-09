.class final enum Lcom/igexin/a/a/c/s;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 1

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->c()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/a;->a([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lcom/igexin/a/a/c/s;->b:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->b(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/igexin/a/a/c/s;->h:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->b(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->c(Lcom/igexin/a/a/c/r;)V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->d()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(C)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/igexin/a/a/c/k;

    invoke-direct {v0}, Lcom/igexin/a/a/c/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/g;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0xffff -> :sswitch_3
    .end sparse-switch

    :array_0
    .array-data 0x2
        0x26t 0x0t
        0x3ct 0x0t
        0x0t 0x0t
    .end array-data
.end method
