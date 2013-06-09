.class final Lsdk/download/p;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lsdk/download/o;


# direct methods
.method constructor <init>(Lsdk/download/o;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lsdk/download/p;->a:Lsdk/download/o;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msg.what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lsdk/download/p;->a:Lsdk/download/o;

    iget-object v0, v0, Lsdk/download/o;->c:Lsdk/download/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsdk/download/p;->a:Lsdk/download/o;

    iget-object v0, v0, Lsdk/download/o;->e:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsdk/download/p;->a:Lsdk/download/o;

    iget-object v0, v0, Lsdk/download/o;->c:Lsdk/download/n;

    iget-object v1, p0, Lsdk/download/p;->a:Lsdk/download/o;

    iget-object v1, v1, Lsdk/download/o;->e:Ljava/util/Collection;

    invoke-interface {v0, v1}, Lsdk/download/n;->a(Ljava/util/Collection;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
