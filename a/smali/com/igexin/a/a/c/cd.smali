.class final enum Lcom/igexin/a/a/c/cd;
.super Lcom/igexin/a/a/c/r;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x3f

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/a/a/c/r;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/igexin/a/a/c/q;Lcom/igexin/a/a/c/a;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/igexin/a/a/c/a;->d()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p1, Lcom/igexin/a/a/c/q;->c:Lcom/igexin/a/a/c/j;

    iget-object v1, v1, Lcom/igexin/a/a/c/j;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lcom/igexin/a/a/c/cd;->am:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->c(Lcom/igexin/a/a/c/r;)V

    iget-object v0, p1, Lcom/igexin/a/a/c/q;->c:Lcom/igexin/a/a/c/j;

    iget-object v0, v0, Lcom/igexin/a/a/c/j;->d:Ljava/lang/StringBuilder;

    const v1, 0xfffd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->c(Lcom/igexin/a/a/c/r;)V

    iget-object v0, p1, Lcom/igexin/a/a/c/q;->c:Lcom/igexin/a/a/c/j;

    iput-boolean v1, v0, Lcom/igexin/a/a/c/j;->e:Z

    invoke-virtual {p1}, Lcom/igexin/a/a/c/q;->f()V

    sget-object v0, Lcom/igexin/a/a/c/cd;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, p0}, Lcom/igexin/a/a/c/q;->d(Lcom/igexin/a/a/c/r;)V

    iget-object v0, p1, Lcom/igexin/a/a/c/q;->c:Lcom/igexin/a/a/c/j;

    iput-boolean v1, v0, Lcom/igexin/a/a/c/j;->e:Z

    invoke-virtual {p1}, Lcom/igexin/a/a/c/q;->f()V

    sget-object v0, Lcom/igexin/a/a/c/cd;->a:Lcom/igexin/a/a/c/r;

    invoke-virtual {p1, v0}, Lcom/igexin/a/a/c/q;->a(Lcom/igexin/a/a/c/r;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x27 -> :sswitch_0
        0x3e -> :sswitch_2
        0xffff -> :sswitch_3
    .end sparse-switch
.end method
