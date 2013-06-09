.class final Lcom/baidu/location/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/location/e;


# direct methods
.method private constructor <init>(Lcom/baidu/location/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/e;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/h;-><init>(Lcom/baidu/location/e;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    invoke-static {v0, p1}, Lcom/baidu/location/e;->a(Lcom/baidu/location/e;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    invoke-static {v0, p1}, Lcom/baidu/location/e;->b(Lcom/baidu/location/e;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    invoke-static {v0, p1}, Lcom/baidu/location/e;->c(Lcom/baidu/location/e;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    invoke-static {v0, p1}, Lcom/baidu/location/e;->d(Lcom/baidu/location/e;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    invoke-static {v0, p1}, Lcom/baidu/location/e;->e(Lcom/baidu/location/e;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    invoke-static {v0, p1}, Lcom/baidu/location/e;->f(Lcom/baidu/location/e;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->j(Lcom/baidu/location/e;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->k(Lcom/baidu/location/e;)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->l(Lcom/baidu/location/e;)V

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->m(Lcom/baidu/location/e;)V

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->n(Lcom/baidu/location/e;)V

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->o(Lcom/baidu/location/e;)V

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->e(Lcom/baidu/location/e;)Lcom/baidu/location/k;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/location/k;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/e;->b(Lcom/baidu/location/e;Z)Z

    goto :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->e(Lcom/baidu/location/e;)Lcom/baidu/location/k;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/location/k;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/e;->b(Lcom/baidu/location/e;Z)Z

    goto :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    const/16 v1, 0x15

    invoke-static {v0, p1, v1}, Lcom/baidu/location/e;->a(Lcom/baidu/location/e;Landroid/os/Message;I)V

    goto :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    const/16 v1, 0x1a

    invoke-static {v0, p1, v1}, Lcom/baidu/location/e;->a(Lcom/baidu/location/e;Landroid/os/Message;I)V

    goto :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/baidu/location/h;->a:Lcom/baidu/location/e;

    invoke-static {v0, p1}, Lcom/baidu/location/e;->g(Lcom/baidu/location/e;Landroid/os/Message;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_7
        0x3 -> :sswitch_0
        0x4 -> :sswitch_9
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_b
        0x8 -> :sswitch_1
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_8
        0xc -> :sswitch_a
        0x15 -> :sswitch_e
        0x1a -> :sswitch_f
        0x1b -> :sswitch_10
        0x36 -> :sswitch_c
        0x37 -> :sswitch_d
    .end sparse-switch
.end method
