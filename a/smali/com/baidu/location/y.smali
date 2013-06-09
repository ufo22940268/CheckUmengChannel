.class final Lcom/baidu/location/y;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/baidu/location/w;


# direct methods
.method private constructor <init>(Lcom/baidu/location/w;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/y;->a:Lcom/baidu/location/w;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/w;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/y;-><init>(Lcom/baidu/location/w;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/y;->a:Lcom/baidu/location/w;

    invoke-static {v0}, Lcom/baidu/location/w;->b(Lcom/baidu/location/w;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/y;->a:Lcom/baidu/location/w;

    invoke-static {v0}, Lcom/baidu/location/w;->d(Lcom/baidu/location/w;)V

    iget-object v0, p0, Lcom/baidu/location/y;->a:Lcom/baidu/location/w;

    invoke-static {v0}, Lcom/baidu/location/w;->b(Lcom/baidu/location/w;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {}, Lcom/baidu/location/w;->j()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    goto :goto_0
.end method
