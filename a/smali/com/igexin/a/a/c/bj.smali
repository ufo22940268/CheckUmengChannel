.class final enum Lcom/igexin/a/a/c/bj;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x2e

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 2

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->c()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p1, Lcom/igexin/a/a/c/q;->d:Lcom/igexin/a/a/c/i;

    iget-object v0, v0, Lcom/igexin/a/a/c/i;->b:Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p2, v1}, Lcom/igexin/a/a/c/a;->a([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lcom/igexin/a/a/c/bj;->V:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->b(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->c(Lcom/igexin/a/a/c/r;)V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->f()V

    iget-object v0, p1, Lcom/igexin/a/a/c/q;->d:Lcom/igexin/a/a/c/i;

    iget-object v0, v0, Lcom/igexin/a/a/c/i;->b:Ljava/lang/StringBuilder;

    const v1, 0xfffd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->d(Lcom/igexin/a/a/c/r;)V

    invoke-virtual {p1}, Lcom/igexin/a/a/c/q;->d()V

    sget-object v0, Lcom/igexin/a/a/c/bj;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch

    :array_0
    .array-data 0x2
        0x2dt 0x0t
        0x0t 0x0t
    .end array-data
.end method
