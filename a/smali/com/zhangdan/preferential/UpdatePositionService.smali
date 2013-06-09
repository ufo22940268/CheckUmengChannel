.class public Lcom/zhangdan/preferential/UpdatePositionService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/zhangdan/preferential/a/i;

.field private b:Lcom/baidu/mapapi/LocationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/zhangdan/preferential/bu;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/bu;-><init>(Lcom/zhangdan/preferential/UpdatePositionService;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/UpdatePositionService;->b:Lcom/baidu/mapapi/LocationListener;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/UpdatePositionService;)Lcom/zhangdan/preferential/a/i;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/UpdatePositionService;->a:Lcom/zhangdan/preferential/a/i;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    new-instance v0, Lcom/zhangdan/preferential/a/i;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/i;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/UpdatePositionService;->a:Lcom/zhangdan/preferential/a/i;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/UpdatePositionService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    new-instance v1, Lcom/baidu/mapapi/BMapManager;

    invoke-direct {v1, v0}, Lcom/baidu/mapapi/BMapManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    const-string v2, "118A822A3605D14F287715C841F9490DB6CB2379"

    new-instance v3, Lcom/zhangdan/app/a;

    invoke-direct {v3}, Lcom/zhangdan/app/a;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mapapi/BMapManager;->init(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v1}, Lcom/baidu/mapapi/BMapManager;->start()Z

    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v1}, Lcom/baidu/mapapi/BMapManager;->getLocationManager()Lcom/baidu/mapapi/MKLocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/UpdatePositionService;->b:Lcom/baidu/mapapi/LocationListener;

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/MKLocationManager;->requestLocationUpdates(Lcom/baidu/mapapi/LocationListener;)V

    iget-object v0, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->getLocationManager()Lcom/baidu/mapapi/MKLocationManager;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/MKLocationManager;->setNotifyInternal(II)Z

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/UpdatePositionService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    iget-object v0, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->getLocationManager()Lcom/baidu/mapapi/MKLocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/UpdatePositionService;->b:Lcom/baidu/mapapi/LocationListener;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MKLocationManager;->requestLocationUpdates(Lcom/baidu/mapapi/LocationListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-virtual {p0}, Lcom/zhangdan/preferential/UpdatePositionService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v1}, Lcom/baidu/mapapi/BMapManager;->getLocationManager()Lcom/baidu/mapapi/MKLocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/UpdatePositionService;->b:Lcom/baidu/mapapi/LocationListener;

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/MKLocationManager;->removeUpdates(Lcom/baidu/mapapi/LocationListener;)V

    iget-object v0, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->stop()Z

    return-void
.end method
