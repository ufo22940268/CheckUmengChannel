.class public Lcom/zhangdan/app/ZhangdanApplication;
.super Landroid/app/Application;
.source "ZhangdanApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/ZhangdanApplication$MyGeneralListener;
    }
.end annotation


# static fields
.field public static IS_USER_PRESENT:Z

.field public static RUN_TO_BACKGROUND_TIME:J

.field private static mImageManager:Lcom/novoda/imageloader/core/ImageManager;


# instance fields
.field public mBMapMan:Lcom/baidu/mapapi/BMapManager;

.field private mCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrUserInfo:Lcom/zhangdan/app/data/model/UserInfo;

.field private mCurrentCity:Ljava/lang/String;

.field private mDataManager:Lcom/zhangdan/app/global/DataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/zhangdan/app/ZhangdanApplication;->RUN_TO_BACKGROUND_TIME:J

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zhangdan/app/ZhangdanApplication;->IS_USER_PRESENT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->mCacheMap:Ljava/util/Map;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    .line 146
    return-void
.end method

.method public static getImageLoader()Lcom/novoda/imageloader/core/ImageManager;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/zhangdan/app/ZhangdanApplication;->mImageManager:Lcom/novoda/imageloader/core/ImageManager;

    return-object v0
.end method

.method private initConfig()V
    .locals 1

    .prologue
    .line 137
    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/preferential/data/AppConfig;->channelName:Ljava/lang/String;

    .line 138
    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/preferential/data/AppConfig;->versionName:Ljava/lang/String;

    .line 139
    return-void
.end method

.method private initSn()V
    .locals 1

    .prologue
    .line 142
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/UUIDUtils;->generate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/utils/CommonMethod;->initSn(Ljava/lang/String;)V

    .line 143
    return-void
.end method


# virtual methods
.method public addCacheObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->mCacheMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public clearDataCache()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->mCurrUserInfo:Lcom/zhangdan/app/data/model/UserInfo;

    .line 126
    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->mDataManager:Lcom/zhangdan/app/global/DataManager;

    invoke-virtual {v0}, Lcom/zhangdan/app/global/DataManager;->clearCache()V

    .line 127
    return-void
.end method

.method public getCacheObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->mCacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->mCurrUserInfo:Lcom/zhangdan/app/data/model/UserInfo;

    return-object v0
.end method

.method public getCurrentCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->mCurrentCity:Ljava/lang/String;

    return-object v0
.end method

.method public getDataManager()Lcom/zhangdan/app/global/DataManager;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->mDataManager:Lcom/zhangdan/app/global/DataManager;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 58
    const-string v0, "ZhangdanApplication"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Lcom/zhangdan/app/global/DataManager;

    invoke-direct {v0}, Lcom/zhangdan/app/global/DataManager;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->mDataManager:Lcom/zhangdan/app/global/DataManager;

    .line 61
    new-instance v0, Lcom/novoda/imageloader/core/ImageManager;

    new-instance v1, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;

    invoke-direct {v1}, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;-><init>()V

    new-instance v2, Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    invoke-direct {v2, p0}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->withCacheManager(Lcom/novoda/imageloader/core/cache/CacheManager;)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->build(Landroid/content/Context;)Lcom/novoda/imageloader/core/LoaderSettings;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/novoda/imageloader/core/ImageManager;-><init>(Landroid/content/Context;Lcom/novoda/imageloader/core/LoaderSettings;)V

    sput-object v0, Lcom/zhangdan/app/ZhangdanApplication;->mImageManager:Lcom/novoda/imageloader/core/ImageManager;

    .line 65
    invoke-direct {p0}, Lcom/zhangdan/app/ZhangdanApplication;->initConfig()V

    .line 66
    invoke-direct {p0}, Lcom/zhangdan/app/ZhangdanApplication;->initSn()V

    .line 67
    return-void
.end method

.method public onTerminate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 72
    const-string v0, "ZhangdanApplication"

    const-string v1, "onTerminate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-object v2, p0, Lcom/zhangdan/app/ZhangdanApplication;->mDataManager:Lcom/zhangdan/app/global/DataManager;

    .line 74
    iput-object v2, p0, Lcom/zhangdan/app/ZhangdanApplication;->mCurrUserInfo:Lcom/zhangdan/app/data/model/UserInfo;

    .line 75
    iput-object v2, p0, Lcom/zhangdan/app/ZhangdanApplication;->mDataManager:Lcom/zhangdan/app/global/DataManager;

    .line 77
    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    .line 79
    iput-object v2, p0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    .line 81
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 82
    return-void
.end method

.method public reloadDataOnRestore()V
    .locals 4

    .prologue
    .line 113
    iget-object v2, p0, Lcom/zhangdan/app/ZhangdanApplication;->mDataManager:Lcom/zhangdan/app/global/DataManager;

    invoke-virtual {v2}, Lcom/zhangdan/app/global/DataManager;->isLoadDataDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-static {p0}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->getCurrentUserInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, userInfo:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/api/AccountApi;->parseUserSuiInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v0

    .line 118
    .local v0, loginInfo:Lcom/zhangdan/app/data/model/UserInfo;
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/ZhangdanApplication;->setCurrUserInfo(Lcom/zhangdan/app/data/model/UserInfo;)V

    .line 119
    if-eqz v0, :cond_0

    .line 121
    iget-object v2, p0, Lcom/zhangdan/app/ZhangdanApplication;->mDataManager:Lcom/zhangdan/app/global/DataManager;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/zhangdan/app/global/DataManager;->initData(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeCacheObject(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->mCacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public setCurrUserInfo(Lcom/zhangdan/app/data/model/UserInfo;)V
    .locals 0
    .parameter "userInfo"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/zhangdan/app/ZhangdanApplication;->mCurrUserInfo:Lcom/zhangdan/app/data/model/UserInfo;

    .line 94
    return-void
.end method

.method public setCurrentCity(Ljava/lang/String;)V
    .locals 0
    .parameter "currentCity"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zhangdan/app/ZhangdanApplication;->mCurrentCity:Ljava/lang/String;

    .line 53
    return-void
.end method
