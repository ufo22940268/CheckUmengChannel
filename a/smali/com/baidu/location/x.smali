.class final Lcom/baidu/location/x;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/baidu/location/w;


# direct methods
.method private constructor <init>(Lcom/baidu/location/w;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/x;->a:Lcom/baidu/location/w;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/w;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/x;-><init>(Lcom/baidu/location/w;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/x;->a:Lcom/baidu/location/w;

    invoke-static {v0}, Lcom/baidu/location/w;->b(Lcom/baidu/location/w;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/x;->a:Lcom/baidu/location/w;

    invoke-static {v0}, Lcom/baidu/location/w;->c(Lcom/baidu/location/w;)V

    goto :goto_0
.end method
