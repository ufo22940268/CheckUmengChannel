.class public Lcom/igexin/sdk/coordinator/SdkMsgService;
.super Landroid/app/Service;


# static fields
.field private static d:Lcom/igexin/sdk/coordinator/SdkMsgService;


# instance fields
.field public a:Lcom/igexin/sdk/aidl/i;

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/igexin/sdk/coordinator/SdkMsgService;->c:Ljava/lang/String;

    new-instance v0, Lcom/igexin/sdk/coordinator/e;

    invoke-direct {v0, p0}, Lcom/igexin/sdk/coordinator/e;-><init>(Lcom/igexin/sdk/coordinator/SdkMsgService;)V

    iput-object v0, p0, Lcom/igexin/sdk/coordinator/SdkMsgService;->a:Lcom/igexin/sdk/aidl/i;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/igexin/sdk/coordinator/d;)I
    .locals 8

    const/4 v1, 0x0

    const/4 v0, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check pkgname = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    if-eqz p0, :cond_2

    invoke-static {}, Lsdk/b/a/a/c/a;->a()Lsdk/b/a/a/c/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lsdk/b/a/a/c/a;->a(Ljava/lang/String;)Lcom/igexin/sdk/coordinator/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/sdk/coordinator/c;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "check expireTime = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "check nowTime = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-lez v3, :cond_1

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v2}, Lcom/igexin/sdk/coordinator/c;->e()Ljava/util/List;

    move-result-object v2

    move v0, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lsdk/c/a/c/a;->c()V

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public static a()Lcom/igexin/sdk/coordinator/SdkMsgService;
    .locals 1

    sget-object v0, Lcom/igexin/sdk/coordinator/SdkMsgService;->d:Lcom/igexin/sdk/coordinator/SdkMsgService;

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/sdk/coordinator/SdkMsgService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/coordinator/SdkMsgService;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

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

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/igexin/sdk/SdkMainService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.igexin.sdk.aidl.action."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v5, "appid"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

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

    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    new-instance v0, Lcom/igexin/sdk/e;

    invoke-direct {v0, p0}, Lcom/igexin/sdk/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/e;->a()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/igexin/sdk/coordinator/SdkMsgService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/coordinator/SdkMsgService;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b()Lcom/igexin/sdk/coordinator/SdkMsgService;
    .locals 1

    sget-object v0, Lcom/igexin/sdk/coordinator/SdkMsgService;->d:Lcom/igexin/sdk/coordinator/SdkMsgService;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/igexin/sdk/coordinator/SdkMsgService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/coordinator/SdkMsgService;->a:Lcom/igexin/sdk/aidl/i;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    sput-object p0, Lcom/igexin/sdk/coordinator/SdkMsgService;->d:Lcom/igexin/sdk/coordinator/SdkMsgService;

    invoke-virtual {p0}, Lcom/igexin/sdk/coordinator/SdkMsgService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/sdk/coordinator/SdkMsgService;->c:Ljava/lang/String;

    new-instance v0, Lcom/igexin/sdk/coordinator/f;

    invoke-direct {v0, p0}, Lcom/igexin/sdk/coordinator/f;-><init>(Lcom/igexin/sdk/coordinator/SdkMsgService;)V

    iput-object v0, p0, Lcom/igexin/sdk/coordinator/SdkMsgService;->b:Landroid/os/Handler;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/igexin/sdk/SdkMainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/igexin/sdk/coordinator/SdkMsgService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    if-eqz p1, :cond_0

    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "refreshls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "callback_pkgname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback_classname"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/igexin/sdk/coordinator/a;

    invoke-direct {v2}, Lcom/igexin/sdk/coordinator/a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/igexin/sdk/coordinator/a;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/igexin/sdk/coordinator/g;

    invoke-direct {v3, p0}, Lcom/igexin/sdk/coordinator/g;-><init>(Lcom/igexin/sdk/coordinator/SdkMsgService;)V

    invoke-virtual {v2, v3}, Lcom/igexin/sdk/coordinator/a;->a(Landroid/content/ServiceConnection;)V

    invoke-static {}, Lcom/igexin/sdk/coordinator/b;->a()Lcom/igexin/sdk/coordinator/b;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/igexin/sdk/coordinator/b;->a(Ljava/lang/String;Lcom/igexin/sdk/coordinator/a;)V

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p0, v0, v3}, Lcom/igexin/sdk/coordinator/SdkMsgService;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2}, Lcom/igexin/sdk/coordinator/a;->a()Landroid/content/ServiceConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v3, v0, v1}, Lcom/igexin/sdk/coordinator/SdkMsgService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
