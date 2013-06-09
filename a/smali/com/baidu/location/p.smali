.class final Lcom/baidu/location/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/baidu/location/n;


# direct methods
.method private constructor <init>(Lcom/baidu/location/n;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/p;->a:Lcom/baidu/location/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/n;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/p;-><init>(Lcom/baidu/location/n;)V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/p;->a:Lcom/baidu/location/n;

    invoke-static {v0, p1}, Lcom/baidu/location/n;->a(Lcom/baidu/location/n;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/p;->a:Lcom/baidu/location/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/n;->a(Lcom/baidu/location/n;Z)Z

    iget-object v0, p0, Lcom/baidu/location/p;->a:Lcom/baidu/location/n;

    invoke-static {v0}, Lcom/baidu/location/n;->a(Lcom/baidu/location/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/p;->a:Lcom/baidu/location/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/n;->b(Lcom/baidu/location/n;Z)V

    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/p;->a:Lcom/baidu/location/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/n;->a(Lcom/baidu/location/n;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/p;->a:Lcom/baidu/location/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/n;->b(Lcom/baidu/location/n;Z)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/baidu/location/p;->a:Lcom/baidu/location/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/n;->a(Lcom/baidu/location/n;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/p;->a:Lcom/baidu/location/n;

    invoke-static {v0, v3}, Lcom/baidu/location/n;->b(Lcom/baidu/location/n;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/location/p;->a:Lcom/baidu/location/n;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/baidu/location/n;->a(Lcom/baidu/location/n;J)J

    iget-object v0, p0, Lcom/baidu/location/p;->a:Lcom/baidu/location/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/n;->a(Lcom/baidu/location/n;Z)Z

    iget-object v0, p0, Lcom/baidu/location/p;->a:Lcom/baidu/location/n;

    invoke-static {v0, v3}, Lcom/baidu/location/n;->b(Lcom/baidu/location/n;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/baidu/location/p;->a:Lcom/baidu/location/n;

    invoke-static {v0, v3}, Lcom/baidu/location/n;->a(Lcom/baidu/location/n;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
