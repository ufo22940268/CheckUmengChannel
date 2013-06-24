.class public Lcom/zhangdan/banka/location/BaiduLocation;
.super Ljava/lang/Object;
.source "BaiduLocation.java"

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/banka/location/BaiduLocation$LocationListener;
    }
.end annotation


# static fields
.field public static final INTERVAL:I = 0x1388


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/zhangdan/banka/location/BaiduLocation$LocationListener;

.field private mLocationClient:Lcom/baidu/location/LocationClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 33
    iput-object v0, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mListener:Lcom/zhangdan/banka/location/BaiduLocation$LocationListener;

    .line 36
    iput-object p1, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Lcom/zhangdan/banka/location/BaiduLocation;->initLocationClient(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private initLocationClient(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    new-instance v1, Lcom/baidu/location/LocationClient;

    invoke-direct {v1, p1}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 42
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 43
    .local v0, option:Lcom/baidu/location/LocationClientOption;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    .line 44
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 45
    const-string v1, "all"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setAddrType(Ljava/lang/String;)V

    .line 46
    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 48
    iget-object v1, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, p0}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 8
    .parameter "bdLocation"

    .prologue
    .line 83
    if-nez p1, :cond_1

    .line 84
    const-string v0, "BaiduLocation"

    const-string v6, "bdLocation = null"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    .line 88
    .local v1, lng:D
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v3

    .line 89
    .local v3, lat:D
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCity()Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, city:Ljava/lang/String;
    const-string v0, "BaiduLocation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "location:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",position"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mListener:Lcom/zhangdan/banka/location/BaiduLocation$LocationListener;

    if-eqz v0, :cond_0

    .line 92
    invoke-static {v5}, Lcom/zhangdan/banka/utils/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v6, 0x2

    if-le v0, v6, :cond_2

    const-string v0, "\u5e02"

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mListener:Lcom/zhangdan/banka/location/BaiduLocation$LocationListener;

    invoke-interface/range {v0 .. v5}, Lcom/zhangdan/banka/location/BaiduLocation$LocationListener;->onLocationChanged(DDLjava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivePoi(Lcom/baidu/location/BDLocation;)V
    .locals 0
    .parameter "bdLocation"

    .prologue
    .line 101
    return-void
.end method

.method public requestLoction()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->requestLocation()I

    .line 68
    :cond_0
    return-void
.end method

.method public setListener(Lcom/zhangdan/banka/location/BaiduLocation$LocationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mListener:Lcom/zhangdan/banka/location/BaiduLocation$LocationListener;

    .line 53
    return-void
.end method

.method public startLocation()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    .line 62
    :cond_0
    return-void
.end method

.method public stopLocation()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0, p0}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 76
    iget-object v0, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/banka/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 79
    :cond_0
    return-void
.end method
