.class Lcom/igexin/sdk/i;
.super Lcom/igexin/sdk/aidl/e;


# instance fields
.field final synthetic a:Lcom/igexin/sdk/SdkMainService;


# direct methods
.method constructor <init>(Lcom/igexin/sdk/SdkMainService;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/i;->a:Lcom/igexin/sdk/SdkMainService;

    invoke-direct {p0}, Lcom/igexin/sdk/aidl/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bindPhoneAddress()Z
    .locals 1

    invoke-static {}, Lcom/igexin/sdk/GexinSdk;->bindPhoneAddress()Z

    move-result v0

    return v0
.end method

.method public getNetstat(Lcom/igexin/sdk/aidl/GexinSdkNetstat;)V
    .locals 2

    invoke-static {}, Lcom/igexin/b/c;->a()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/sdk/aidl/GexinSdkNetstat;->inboundBytes:J

    invoke-static {}, Lcom/igexin/b/c;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/sdk/aidl/GexinSdkNetstat;->outboundBytes:J

    return-void
.end method

.method public getPhoneAddress()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/igexin/sdk/GexinSdk;->getPhoneAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/igexin/sdk/GexinSdk;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p3, Lsdk/b/a/a/c/d;->m:Ljava/lang/String;

    sput-object p2, Lsdk/b/a/a/c/d;->o:Ljava/lang/String;

    sput-object p1, Lsdk/b/a/a/c/d;->n:Ljava/lang/String;

    return-void
.end method

.method public sendMessage(Ljava/lang/String;[B)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/igexin/sdk/GexinSdk;->sendMessage(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public setHeartbeatInterval(I)Z
    .locals 1

    invoke-static {p1}, Lcom/igexin/sdk/GexinSdk;->setHeartbeatInterval(I)Z

    move-result v0

    return v0
.end method

.method public setLogEnable(Z)V
    .locals 0

    invoke-static {p1}, Lcom/igexin/sdk/GexinSdk;->setLogEnable(Z)V

    return-void
.end method

.method public setSilentTime(II)Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/i;->a:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/igexin/sdk/GexinSdk;->setSilentTime(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setTag([Lcom/igexin/sdk/aidl/Tag;)I
    .locals 1

    invoke-static {p1}, Lcom/igexin/sdk/GexinSdk;->setTag([Lcom/igexin/sdk/Tag;)I

    move-result v0

    return v0
.end method

.method public stopService()V
    .locals 3

    const-string v0, "GexinMainService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->w()Lcom/igexin/sdk/SdkMainService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->w()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->w()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->w()Lcom/igexin/sdk/SdkMainService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/sdk/SdkMainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/sdk/GexinSdk;->stopService(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
