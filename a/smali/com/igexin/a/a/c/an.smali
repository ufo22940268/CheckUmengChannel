.class final enum Lcom/igexin/a/a/c/an;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x1b

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 3

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/igexin/a/a/c/q;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->d()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->e()V

    sget-object v0, Lcom/igexin/a/a/c/an;->v:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_0
    iget-object v1, p1, Lcom/igexin/a/a/c/q;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "script"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/igexin/a/a/c/an;->C:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v1}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    :goto_1
    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(C)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/igexin/a/a/c/an;->v:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v1}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0x20 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch
.end method
