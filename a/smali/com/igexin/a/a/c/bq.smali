.class final enum Lcom/igexin/a/a/c/bq;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x34

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

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/igexin/a/a/c/q;->c:Lcom/igexin/a/a/c/j;

    iget-object v1, v1, Lcom/igexin/a/a/c/j;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->d()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p1, Lcom/igexin/a/a/c/q;->c:Lcom/igexin/a/a/c/j;

    iget-object v1, v1, Lcom/igexin/a/a/c/j;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Lcom/igexin/a/a/c/q;->f()V

    sget-object v0, Lcom/igexin/a/a/c/bq;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/igexin/a/a/c/bq;->ab:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->c(Lcom/igexin/a/a/c/r;)V

    iget-object v0, p1, Lcom/igexin/a/a/c/q;->c:Lcom/igexin/a/a/c/j;

    iget-object v0, v0, Lcom/igexin/a/a/c/j;->b:Ljava/lang/StringBuilder;

    const v1, 0xfffd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->d(Lcom/igexin/a/a/c/r;)V

    iget-object v0, p1, Lcom/igexin/a/a/c/q;->c:Lcom/igexin/a/a/c/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/igexin/a/a/c/j;->e:Z

    invoke-virtual {p1}, Lcom/igexin/a/a/c/q;->f()V

    sget-object v0, Lcom/igexin/a/a/c/bq;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0x20 -> :sswitch_1
        0x3e -> :sswitch_0
        0xffff -> :sswitch_3
    .end sparse-switch
.end method
