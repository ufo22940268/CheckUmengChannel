.class final Lcom/baidu/location/w;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:J

.field private final c:J

.field private final d:J

.field private e:Landroid/content/Context;

.field private f:Landroid/os/Handler;

.field private g:Landroid/net/wifi/WifiManager;

.field private h:Lcom/baidu/location/y;

.field private i:Lcom/baidu/location/x;

.field private j:Lcom/baidu/location/z;

.field private k:J

.field private l:J

.field private m:Z

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/reflect/Method;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "baidu_location_service"

    sput-object v0, Lcom/baidu/location/w;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    const-wide/16 v0, 0xbb8

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/baidu/location/w;->b:J

    iput-wide v0, p0, Lcom/baidu/location/w;->c:J

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/baidu/location/w;->d:J

    iput-object v2, p0, Lcom/baidu/location/w;->f:Landroid/os/Handler;

    iput-object v2, p0, Lcom/baidu/location/w;->g:Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/baidu/location/w;->h:Lcom/baidu/location/y;

    iput-object v2, p0, Lcom/baidu/location/w;->i:Lcom/baidu/location/x;

    iput-object v2, p0, Lcom/baidu/location/w;->j:Lcom/baidu/location/z;

    iput-wide v4, p0, Lcom/baidu/location/w;->k:J

    iput-wide v4, p0, Lcom/baidu/location/w;->l:J

    iput-boolean v3, p0, Lcom/baidu/location/w;->m:Z

    iput-object v2, p0, Lcom/baidu/location/w;->n:Ljava/lang/Object;

    iput-object v2, p0, Lcom/baidu/location/w;->o:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/w;->p:Z

    iput-boolean v3, p0, Lcom/baidu/location/w;->q:Z

    iput-boolean v3, p0, Lcom/baidu/location/w;->r:Z

    iput-boolean v3, p0, Lcom/baidu/location/w;->s:Z

    iput-object p1, p0, Lcom/baidu/location/w;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/location/w;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/w;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/w;->q:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/location/w;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/w;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/location/w;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/w;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/location/w;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/w;->e:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/location/w;->q:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/baidu/location/w;->q:Z

    iget-object v0, p0, Lcom/baidu/location/w;->f:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/location/aa;

    invoke-direct {v1, p0, v3}, Lcom/baidu/location/aa;-><init>(Lcom/baidu/location/w;B)V

    sget v2, Lcom/baidu/location/ak;->K:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/baidu/location/w;->s:Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/baidu/location/w;->q:Z

    goto :goto_1
.end method

.method static synthetic d(Lcom/baidu/location/w;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/location/w;->g:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/w;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v4, Lcom/baidu/location/z;

    iget-wide v5, p0, Lcom/baidu/location/w;->k:J

    invoke-direct {v4, p0, v0, v5, v6}, Lcom/baidu/location/z;-><init>(Lcom/baidu/location/w;Ljava/util/List;J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/w;->k:J

    iget-object v0, p0, Lcom/baidu/location/w;->j:Lcom/baidu/location/z;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/baidu/location/w;->j:Lcom/baidu/location/z;

    iget-object v0, v4, Lcom/baidu/location/z;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    iget-object v0, v5, Lcom/baidu/location/z;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v5, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, v4, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    iget-object v0, v4, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v0, v5, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    iget-object v0, v5, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_3

    :cond_2
    iput-object v4, p0, Lcom/baidu/location/w;->j:Lcom/baidu/location/z;

    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/w;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/w;->m:Z

    if-ne v0, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/w;->e:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/w;->g:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/baidu/location/y;

    invoke-direct {v0, p0, v2}, Lcom/baidu/location/y;-><init>(Lcom/baidu/location/w;B)V

    iput-object v0, p0, Lcom/baidu/location/w;->h:Lcom/baidu/location/y;

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/w;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/location/w;->h:Lcom/baidu/location/y;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/baidu/location/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/x;-><init>(Lcom/baidu/location/w;B)V

    iput-object v0, p0, Lcom/baidu/location/w;->i:Lcom/baidu/location/x;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iput-boolean v4, p0, Lcom/baidu/location/w;->m:Z

    sget-object v0, Lcom/baidu/location/w;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    :try_start_1
    const-string v0, "android.net.wifi.WifiManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mService"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/location/w;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/baidu/location/w;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/w;->n:Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/location/w;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/w;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mserviceClass : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const-string v1, "startScan"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/w;->o:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/baidu/location/w;->o:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    sget-object v0, Lcom/baidu/location/w;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/w;->o:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/w;->i:Lcom/baidu/location/x;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/x;-><init>(Lcom/baidu/location/w;B)V

    iput-object v0, p0, Lcom/baidu/location/w;->i:Lcom/baidu/location/x;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/baidu/location/w;->m:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/w;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/location/w;->h:Lcom/baidu/location/y;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object v2, p0, Lcom/baidu/location/w;->h:Lcom/baidu/location/y;

    iput-object v2, p0, Lcom/baidu/location/w;->g:Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/baidu/location/w;->i:Lcom/baidu/location/x;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/w;->m:Z

    sget-object v0, Lcom/baidu/location/w;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final d()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/w;->l:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-wide v0, p0, Lcom/baidu/location/w;->l:J

    invoke-virtual {p0}, Lcom/baidu/location/w;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public final e()Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/baidu/location/w;->g:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/baidu/location/w;->k:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0xbb8

    cmp-long v2, v5, v7

    if-lez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/w;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/baidu/location/w;->o:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/baidu/location/w;->n:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/baidu/location/w;->o:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/baidu/location/w;->n:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/baidu/location/w;->p:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iput-wide v3, p0, Lcom/baidu/location/w;->k:J

    sget-object v2, Lcom/baidu/location/w;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/baidu/location/w;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/baidu/location/w;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/location/w;->k:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/w;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final g()Lcom/baidu/location/z;
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/baidu/location/w;->j:Lcom/baidu/location/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/w;->j:Lcom/baidu/location/z;

    invoke-virtual {v0}, Lcom/baidu/location/z;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/w;->g:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/baidu/location/z;

    iget-object v1, p0, Lcom/baidu/location/w;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/location/z;-><init>(Lcom/baidu/location/w;Ljava/util/List;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/baidu/location/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/baidu/location/z;-><init>(Lcom/baidu/location/w;Ljava/util/List;J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/w;->j:Lcom/baidu/location/z;

    goto :goto_0
.end method

.method public final h()Lcom/baidu/location/z;
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/baidu/location/w;->j:Lcom/baidu/location/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/w;->j:Lcom/baidu/location/z;

    invoke-virtual {v0}, Lcom/baidu/location/z;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/w;->g:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/baidu/location/z;

    iget-object v1, p0, Lcom/baidu/location/w;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/location/z;-><init>(Lcom/baidu/location/w;Ljava/util/List;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/baidu/location/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/baidu/location/z;-><init>(Lcom/baidu/location/w;Ljava/util/List;J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/w;->j:Lcom/baidu/location/z;

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/w;->s:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
