.class final Lcom/baidu/location/v;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/baidu/location/t;


# direct methods
.method public constructor <init>(Lcom/baidu/location/t;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/v;->a:Lcom/baidu/location/t;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/v;->a:Lcom/baidu/location/t;

    iget-object v1, p0, Lcom/baidu/location/v;->a:Lcom/baidu/location/t;

    invoke-static {v1}, Lcom/baidu/location/t;->c(Lcom/baidu/location/t;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/t;->a(Lcom/baidu/location/t;Landroid/telephony/CellLocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/v;->a:Lcom/baidu/location/t;

    invoke-static {v0}, Lcom/baidu/location/t;->a(Lcom/baidu/location/t;)Lcom/baidu/location/u;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/v;->a:Lcom/baidu/location/t;

    invoke-static {v0}, Lcom/baidu/location/t;->a(Lcom/baidu/location/t;)Lcom/baidu/location/u;

    move-result-object v0

    iget-char v0, v0, Lcom/baidu/location/u;->g:C

    const/16 v1, 0x67

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/baidu/location/v;->a:Lcom/baidu/location/t;

    invoke-static {v0}, Lcom/baidu/location/t;->a(Lcom/baidu/location/t;)Lcom/baidu/location/u;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/u;->f:I

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "===== cell singal strength changed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/location/v;->a:Lcom/baidu/location/t;

    invoke-static {v1}, Lcom/baidu/location/t;->a(Lcom/baidu/location/t;)Lcom/baidu/location/u;

    move-result-object v1

    iget v1, v1, Lcom/baidu/location/u;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v0, p0, Lcom/baidu/location/v;->a:Lcom/baidu/location/t;

    invoke-static {v0}, Lcom/baidu/location/t;->d(Lcom/baidu/location/t;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/v;->a:Lcom/baidu/location/t;

    invoke-static {v0}, Lcom/baidu/location/t;->d(Lcom/baidu/location/t;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/v;->a:Lcom/baidu/location/t;

    invoke-static {v0}, Lcom/baidu/location/t;->a(Lcom/baidu/location/t;)Lcom/baidu/location/u;

    move-result-object v0

    iget-char v0, v0, Lcom/baidu/location/u;->g:C

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/v;->a:Lcom/baidu/location/t;

    invoke-static {v0}, Lcom/baidu/location/t;->a(Lcom/baidu/location/t;)Lcom/baidu/location/u;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/u;->f:I

    goto :goto_0
.end method
