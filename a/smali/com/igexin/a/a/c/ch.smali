.class final enum Lcom/igexin/a/a/c/ch;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 1

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->c()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/igexin/a/a/c/a;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->c(Lcom/igexin/a/a/c/r;)V

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->f()V

    const v0, 0xfffd

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(C)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/igexin/a/a/c/k;

    invoke-direct {v0}, Lcom/igexin/a/a/c/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/g;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xffff -> :sswitch_1
    .end sparse-switch
.end method
