.class public Lcom/zhangdan/app/location/BaiduLocation;
.super Ljava/lang/Object;
.source "BaiduLocation.java"

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/location/BaiduLocation$LocationListener;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/zhangdan/app/location/BaiduLocation; = null

.field public static final INTERVAL:I = 0x2710

.field private static mInstanceLock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/location/BaiduLocation$LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationClient:Lcom/baidu/location/LocationClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/zhangdan/app/location/BaiduLocation;->INSTANCE:Lcom/zhangdan/app/location/BaiduLocation;

    .line 53
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/zhangdan/app/location/BaiduLocation;->mInstanceLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mListenerList:Ljava/util/List;

    .line 70
    iput-object p1, p0, Lcom/zhangdan/app/location/BaiduLocation;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0, p1}, Lcom/zhangdan/app/location/BaiduLocation;->initLocationClient(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zhangdan/app/location/BaiduLocation;
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    sget-object v0, Lcom/zhangdan/app/location/BaiduLocation;->INSTANCE:Lcom/zhangdan/app/location/BaiduLocation;

    if-nez v0, :cond_1

    .line 58
    :try_start_0
    sget-object v0, Lcom/zhangdan/app/location/BaiduLocation;->mInstanceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 59
    sget-object v0, Lcom/zhangdan/app/location/BaiduLocation;->INSTANCE:Lcom/zhangdan/app/location/BaiduLocation;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/zhangdan/app/location/BaiduLocation;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/app/location/BaiduLocation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zhangdan/app/location/BaiduLocation;->INSTANCE:Lcom/zhangdan/app/location/BaiduLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    sget-object v0, Lcom/zhangdan/app/location/BaiduLocation;->mInstanceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 66
    :cond_1
    sget-object v0, Lcom/zhangdan/app/location/BaiduLocation;->INSTANCE:Lcom/zhangdan/app/location/BaiduLocation;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/zhangdan/app/location/BaiduLocation;->mInstanceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private initLocationClient(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    new-instance v1, Lcom/baidu/location/LocationClient;

    invoke-direct {v1, p1}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zhangdan/app/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 76
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 77
    .local v0, option:Lcom/baidu/location/LocationClientOption;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    .line 78
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 79
    const-string v1, "all"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setAddrType(Ljava/lang/String;)V

    .line 80
    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/zhangdan/app/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 82
    iget-object v1, p0, Lcom/zhangdan/app/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, p0}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 83
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/zhangdan/app/location/BaiduLocation;->stop()V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0, p0}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 137
    :cond_1
    return-void
.end method

.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 11
    .parameter "bdLocation"

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    const-string v1, "BaiduLocation"

    const-string v9, "bdLocation = null"

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    .line 146
    .local v2, lng:D
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    .line 147
    .local v4, lat:D
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCity()Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, city:Ljava/lang/String;
    const-string v1, "BaiduLocation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "location:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",position"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {v6}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v9, 0x2

    if-le v1, v9, :cond_1

    const-string v1, "\u5e02"

    invoke-virtual {v6, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 152
    :cond_1
    invoke-static {v6}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/zhangdan/app/location/BaiduLocation;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getCurrCity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 156
    :goto_1
    iget-object v1, p0, Lcom/zhangdan/app/location/BaiduLocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/zhangdan/app/ZhangdanApplication;

    .line 157
    .local v7, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v7, v6}, Lcom/zhangdan/app/ZhangdanApplication;->setCurrentCity(Ljava/lang/String;)V

    .line 158
    iget-object v9, p0, Lcom/zhangdan/app/location/BaiduLocation;->mListenerList:Ljava/util/List;

    monitor-enter v9

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/app/location/BaiduLocation;->mListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/location/BaiduLocation$LocationListener;

    .local v0, listener:Lcom/zhangdan/app/location/BaiduLocation$LocationListener;
    move-object v1, p1

    .line 160
    invoke-interface/range {v0 .. v6}, Lcom/zhangdan/app/location/BaiduLocation$LocationListener;->onLocationChanged(Lcom/baidu/location/BDLocation;DDLjava/lang/String;)V

    goto :goto_2

    .line 162
    .end local v0           #listener:Lcom/zhangdan/app/location/BaiduLocation$LocationListener;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 155
    .end local v7           #app:Lcom/zhangdan/app/ZhangdanApplication;
    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/location/BaiduLocation;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setCurrCity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 162
    .restart local v7       #app:Lcom/zhangdan/app/ZhangdanApplication;
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public onReceivePoi(Lcom/baidu/location/BDLocation;)V
    .locals 0
    .parameter "bdLocation"

    .prologue
    .line 168
    return-void
.end method

.method public registerListener(Lcom/zhangdan/app/location/BaiduLocation$LocationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/location/BaiduLocation;->mListenerList:Ljava/util/List;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestLoction()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->requestLocation()I

    .line 125
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    .line 107
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 116
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/zhangdan/app/location/BaiduLocation$LocationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/zhangdan/app/location/BaiduLocation;->mListenerList:Ljava/util/List;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/location/BaiduLocation;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 97
    monitor-exit v1

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
