.class final Lcom/umeng/common/net/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/umeng/common/net/f;


# direct methods
.method constructor <init>(Lcom/umeng/common/net/f;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/common/net/h;->a:Lcom/umeng/common/net/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/umeng/common/net/f;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownloadAgent.handleMessage("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/umeng/common/a;->b()V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/umeng/common/net/h;->a:Lcom/umeng/common/net/f;

    invoke-static {v0}, Lcom/umeng/common/net/f;->a(Lcom/umeng/common/net/f;)Lcom/umeng/common/net/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/common/net/h;->a:Lcom/umeng/common/net/f;

    invoke-static {v0}, Lcom/umeng/common/net/f;->a(Lcom/umeng/common/net/f;)Lcom/umeng/common/net/s;

    iget v0, p1, Landroid/os/Message;->arg1:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/umeng/common/net/h;->a:Lcom/umeng/common/net/f;

    invoke-static {v0}, Lcom/umeng/common/net/f;->c(Lcom/umeng/common/net/f;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/common/net/h;->a:Lcom/umeng/common/net/f;

    invoke-static {v1}, Lcom/umeng/common/net/f;->b(Lcom/umeng/common/net/f;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/umeng/common/net/h;->a:Lcom/umeng/common/net/f;

    invoke-static {v0}, Lcom/umeng/common/net/f;->a(Lcom/umeng/common/net/f;)Lcom/umeng/common/net/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/umeng/common/net/h;->a:Lcom/umeng/common/net/f;

    invoke-static {v0}, Lcom/umeng/common/net/f;->a(Lcom/umeng/common/net/f;)Lcom/umeng/common/net/s;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "filename"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/umeng/common/net/s;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/umeng/common/net/f;->b()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadAgent.handleMessage("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/umeng/common/a;->b()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/umeng/common/net/h;->a:Lcom/umeng/common/net/f;

    invoke-static {v0}, Lcom/umeng/common/net/f;->a(Lcom/umeng/common/net/f;)Lcom/umeng/common/net/s;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/umeng/common/net/s;->a(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/umeng/common/net/h;->a:Lcom/umeng/common/net/f;

    invoke-static {v0}, Lcom/umeng/common/net/f;->a(Lcom/umeng/common/net/f;)Lcom/umeng/common/net/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/umeng/common/net/s;->a(I)V

    invoke-static {}, Lcom/umeng/common/net/f;->b()Ljava/lang/String;

    invoke-static {}, Lcom/umeng/common/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
