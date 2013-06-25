.class public Lcom/zhangdan/preferential/utils/LocationGenerator;
.super Ljava/lang/Object;
.source "LocationGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/utils/LocationGenerator$MyLocationListenner;
    }
.end annotation


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mCurrenctPos:Lcom/zhangdan/preferential/data/model/Position;

.field private mLocationClient:Lcom/baidu/location/LocationClient;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .parameter "application"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/LocationGenerator;->mApplication:Landroid/app/Application;

    .line 34
    new-instance v0, Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/zhangdan/preferential/utils/LocationGenerator;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/LocationGenerator;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 35
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/LocationGenerator;->mLocationClient:Lcom/baidu/location/LocationClient;

    new-instance v1, Lcom/zhangdan/preferential/utils/LocationGenerator$MyLocationListenner;

    invoke-direct {v1, p0}, Lcom/zhangdan/preferential/utils/LocationGenerator$MyLocationListenner;-><init>(Lcom/zhangdan/preferential/utils/LocationGenerator;)V

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 36
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/LocationGenerator;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/zhangdan/preferential/utils/PositionUtils;->setLocationOption(Lcom/baidu/location/LocationClient;)V

    .line 37
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/LocationGenerator;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/preferential/utils/LocationGenerator;)Lcom/baidu/location/LocationClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/LocationGenerator;->mLocationClient:Lcom/baidu/location/LocationClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/preferential/utils/LocationGenerator;Lcom/baidu/location/BDLocation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/LocationGenerator;->setPosition(Lcom/baidu/location/BDLocation;)V

    return-void
.end method

.method private declared-synchronized setPosition(Lcom/baidu/location/BDLocation;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/zhangdan/preferential/data/model/Position;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Position;-><init>()V

    .line 54
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    .line 55
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    .line 57
    iput-object v0, p0, Lcom/zhangdan/preferential/utils/LocationGenerator;->mCurrenctPos:Lcom/zhangdan/preferential/data/model/Position;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 53
    .end local v0           #pos:Lcom/zhangdan/preferential/data/model/Position;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getPosition()Lcom/zhangdan/preferential/data/model/Position;
    .locals 2

    .prologue
    .line 42
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/LocationGenerator;->mCurrenctPos:Lcom/zhangdan/preferential/data/model/Position;

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/LocationGenerator;->mCurrenctPos:Lcom/zhangdan/preferential/data/model/Position;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
