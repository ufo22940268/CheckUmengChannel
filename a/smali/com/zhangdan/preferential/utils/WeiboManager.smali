.class public Lcom/zhangdan/preferential/utils/WeiboManager;
.super Ljava/lang/Object;
.source "WeiboManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WeiboManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParser:Lcom/zhangdan/preferential/utils/JsonParser;

.field private mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

.field private mWeibo:Lcom/weibo/sdk/android/Weibo;

.field private mWeiboKeeper:Lcom/zhangdan/preferential/utils/WeiboKeeper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "4101037885"

    const-string v1, "http://www.51zhangdan.com/service/user/sinalogin.ashx"

    invoke-static {v0, v1}, Lcom/weibo/sdk/android/Weibo;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/Weibo;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/WeiboManager;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    .line 55
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/WeiboManager;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/zhangdan/preferential/utils/WeiboKeeper;

    invoke-direct {v0, p1}, Lcom/zhangdan/preferential/utils/WeiboKeeper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/WeiboManager;->mWeiboKeeper:Lcom/zhangdan/preferential/utils/WeiboKeeper;

    .line 57
    new-instance v0, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/WeiboManager;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    .line 58
    new-instance v0, Lcom/zhangdan/preferential/utils/JsonParser;

    invoke-direct {v0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/WeiboManager;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/preferential/utils/WeiboManager;)Lcom/zhangdan/preferential/utils/JsonParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/WeiboManager;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/preferential/utils/WeiboManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/WeiboManager;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getZhangdanBanks(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Bank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, banks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Bank;>;"
    iget-object v4, p0, Lcom/zhangdan/preferential/utils/WeiboManager;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/zhangdan/app/data/db/util/UserBankDbUtil;->loadAllUserBankInfos(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 116
    .local v3, infos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 117
    .local v2, info:Lcom/zhangdan/app/data/model/UserBankInfo;
    new-instance v4, Lcom/zhangdan/preferential/data/model/Bank;

    invoke-direct {v4, v2}, Lcom/zhangdan/preferential/data/model/Bank;-><init>(Lcom/zhangdan/app/data/model/UserBankInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v2           #info:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_0
    return-object v0
.end method

.method public getZhangdanUserInfo()Lcom/zhangdan/app/data/model/UserInfo;
    .locals 3

    .prologue
    .line 107
    iget-object v2, p0, Lcom/zhangdan/preferential/utils/WeiboManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->getCurrentUserInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, userInfo:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/api/AccountApi;->parseUserSuiInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v0

    .line 109
    .local v0, info:Lcom/zhangdan/app/data/model/UserInfo;
    return-object v0
.end method

.method public markPromFav(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "youhuiUid"
    .parameter "promId"

    .prologue
    const/4 v4, 0x1

    .line 95
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/WeiboManager;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-virtual {v1, p1, p2}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getSavePromRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 96
    .local v0, req:Lorg/json/JSONObject;
    new-instance v1, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;

    const v2, 0x7f0701ef

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;-><init>(Lcom/zhangdan/preferential/utils/WeiboManager;I)V

    new-array v2, v4, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return v4
.end method

.method public markShopFav(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "shopId"
    .parameter "youhuiUid"

    .prologue
    const/4 v4, 0x1

    .line 62
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/WeiboManager;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-virtual {v1, p2, p1}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getSaveShopRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 63
    .local v0, req:Lorg/json/JSONObject;
    new-instance v1, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;

    const v2, 0x7f0701ef

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;-><init>(Lcom/zhangdan/preferential/utils/WeiboManager;I)V

    new-array v2, v4, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    return v4
.end method

.method public unmarkPromFav(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "youhuiUid"
    .parameter "promId"

    .prologue
    const/4 v4, 0x1

    .line 101
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/WeiboManager;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-virtual {v1, p1, p2}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getUnsavePromRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 102
    .local v0, req:Lorg/json/JSONObject;
    new-instance v1, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;

    const v2, 0x7f0701f0

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;-><init>(Lcom/zhangdan/preferential/utils/WeiboManager;I)V

    new-array v2, v4, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    return v4
.end method

.method public unmarkShopFav(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "shopId"
    .parameter "youhuiUid"

    .prologue
    const/4 v4, 0x1

    .line 68
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/WeiboManager;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-virtual {v1, p2, p1}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getUnsaveShopRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    .local v0, req:Lorg/json/JSONObject;
    new-instance v1, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;

    const v2, 0x7f0701f0

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;-><init>(Lcom/zhangdan/preferential/utils/WeiboManager;I)V

    new-array v2, v4, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/utils/WeiboManager$ToastTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    return v4
.end method
