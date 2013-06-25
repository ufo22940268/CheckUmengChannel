.class public Lcom/igexin/slavesdk/MessageManager;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/igexin/slavesdk/MessageManager;


# instance fields
.field a:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/ServiceConnection;

.field public tService:Lcom/igexin/sdk/aidl/IGexinMainService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.igexin.sdk.aidl.packagename"

    iput-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->a:Ljava/lang/String;

    new-instance v0, Lcom/igexin/slavesdk/a;

    invoke-direct {v0, p0}, Lcom/igexin/slavesdk/a;-><init>(Lcom/igexin/slavesdk/MessageManager;)V

    iput-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->d:Landroid/content/ServiceConnection;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->d:Landroid/content/ServiceConnection;

    invoke-direct {p0, p1, p2, v0}, Lcom/igexin/slavesdk/MessageManager;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/igexin/sdk/SdkMainService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, p3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    iget-object v1, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    iput-object p2, p0, Lcom/igexin/slavesdk/MessageManager;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/igexin/slavesdk/MessageManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/igexin/slavesdk/MessageManager;
    .locals 1

    sget-object v0, Lcom/igexin/slavesdk/MessageManager;->b:Lcom/igexin/slavesdk/MessageManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/slavesdk/MessageManager;

    invoke-direct {v0}, Lcom/igexin/slavesdk/MessageManager;-><init>()V

    sput-object v0, Lcom/igexin/slavesdk/MessageManager;->b:Lcom/igexin/slavesdk/MessageManager;

    :cond_0
    sget-object v0, Lcom/igexin/slavesdk/MessageManager;->b:Lcom/igexin/slavesdk/MessageManager;

    return-object v0
.end method


# virtual methods
.method public bindPhoneAddress(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    invoke-interface {v0}, Lcom/igexin/sdk/aidl/IGexinMainService;->bindPhoneAddress()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNetstat(Landroid/content/Context;Lcom/igexin/sdk/aidl/GexinSdkNetstat;)Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    invoke-interface {v0, p2}, Lcom/igexin/sdk/aidl/IGexinMainService;->getNetstat(Lcom/igexin/sdk/aidl/GexinSdkNetstat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPhoneAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    invoke-interface {v0}, Lcom/igexin/sdk/aidl/IGexinMainService;->getPhoneAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/igexin/slavesdk/MessageManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    invoke-interface {v1}, Lcom/igexin/sdk/aidl/IGexinMainService;->getVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    iget-object v1, p0, Lcom/igexin/slavesdk/MessageManager;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/igexin/slavesdk/MessageManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "appid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "appsecret"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "appkey"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "appkey"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/igexin/sdk/SdkMainService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.igexin.sdk.aidl.action."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "appid"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appsecret"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appkey"

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "action"

    const-string v2, "com.igexin.action.initialize"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "packageName"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "op_app"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iput-object v5, p0, Lcom/igexin/slavesdk/MessageManager;->a:Ljava/lang/String;

    iput-object v5, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/igexin/slavesdk/MessageManager;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    new-instance v0, Lcom/igexin/sdk/b;

    invoke-direct {v0, p1}, Lcom/igexin/sdk/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/b;->a()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public sendMessage(Landroid/content/Context;Ljava/lang/String;[B)Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    invoke-interface {v0, p2, p3}, Lcom/igexin/sdk/aidl/IGexinMainService;->sendMessage(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setHeartbeatInterval(Landroid/content/Context;I)Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    invoke-interface {v0, p2}, Lcom/igexin/sdk/aidl/IGexinMainService;->setHeartbeatInterval(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLogEnable(Landroid/content/Context;Z)V
    .locals 1

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    invoke-interface {v0, p2}, Lcom/igexin/sdk/aidl/IGexinMainService;->setLogEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSilentTime(Landroid/content/Context;II)Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    invoke-interface {v0, p2, p3}, Lcom/igexin/sdk/aidl/IGexinMainService;->setSilentTime(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setTag(Landroid/content/Context;[Lcom/igexin/sdk/aidl/Tag;)I
    .locals 1

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    const/16 v0, 0x4e24

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    invoke-interface {v0, p2}, Lcom/igexin/sdk/aidl/IGexinMainService;->setTag([Lcom/igexin/sdk/aidl/Tag;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/16 v0, 0x4e25

    goto :goto_0
.end method

.method public stopService(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/igexin/slavesdk/MessageManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/igexin/slavesdk/MessageManager;->tService:Lcom/igexin/sdk/aidl/IGexinMainService;

    invoke-interface {v0}, Lcom/igexin/sdk/aidl/IGexinMainService;->stopService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
