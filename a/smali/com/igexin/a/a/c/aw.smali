.class final enum Lcom/igexin/a/a/c/aw;
.super Lcom/igexin/a/a/c/ar;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/igexin/a/a/c/ar;-><init>(Ljava/lang/String;ILcom/igexin/a/a/c/as;)V

    return-void
.end method

.method private b(Lcom/igexin/a/a/c/aq;Lcom/igexin/a/a/c/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/igexin/a/a/c/aq;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/aq;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/a/a/c/aw;->c:Lcom/igexin/a/a/c/ar;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/aq;->a(Lcom/igexin/a/a/c/ar;)V

    return-void
.end method


# virtual methods
.method a(Lcom/igexin/a/a/c/aq;Lcom/igexin/a/a/c/a;)V
    .locals 3

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/igexin/a/a/c/aq;->b:Lcom/igexin/a/a/c/an;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/igexin/a/a/c/an;->b(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/igexin/a/a/c/aq;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->d()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, p1, p2}, Lcom/igexin/a/a/c/aw;->b(Lcom/igexin/a/a/c/aq;Lcom/igexin/a/a/c/a;)V

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Lcom/igexin/a/a/c/aq;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/igexin/a/a/c/aw;->H:Lcom/igexin/a/a/c/ar;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/aq;->a(Lcom/igexin/a/a/c/ar;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/igexin/a/a/c/aw;->b(Lcom/igexin/a/a/c/aq;Lcom/igexin/a/a/c/a;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/igexin/a/a/c/aq;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/igexin/a/a/c/aw;->P:Lcom/igexin/a/a/c/ar;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/aq;->a(Lcom/igexin/a/a/c/ar;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/igexin/a/a/c/aw;->b(Lcom/igexin/a/a/c/aq;Lcom/igexin/a/a/c/a;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/igexin/a/a/c/aq;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/igexin/a/a/c/aq;->c()V

    sget-object v0, Lcom/igexin/a/a/c/aw;->a:Lcom/igexin/a/a/c/ar;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/aq;->a(Lcom/igexin/a/a/c/ar;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/igexin/a/a/c/aw;->b(Lcom/igexin/a/a/c/aq;Lcom/igexin/a/a/c/a;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0x20 -> :sswitch_0
        0x2f -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method
