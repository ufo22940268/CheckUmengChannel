.class public Lcom/zhangdan/preferential/utils/WeiboKeeper;
.super Ljava/lang/Object;
.source "WeiboKeeper.java"


# static fields
.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_PORTRAIT_URL:Ljava/lang/String; = "protraitUrl"

.field public static final KEY_YOUHUI_UID:Ljava/lang/String; = "youhui_uid"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/WeiboKeeper;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private getPrefName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/WeiboKeeper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zhangdan/preferential/utils/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v0

    .line 30
    .local v0, token:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const/4 v1, 0x0

    .line 33
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/zhangdan/preferential/utils/WeiboKeeper;->getPrefName()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, prefName:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 62
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/zhangdan/preferential/utils/WeiboKeeper;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 59
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public keepWeiboInfo(Lcom/zhangdan/preferential/data/model/WeiboInfo;)Z
    .locals 5
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-direct {p0}, Lcom/zhangdan/preferential/utils/WeiboKeeper;->getPrefName()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, prefName:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 49
    :goto_0
    return v3

    .line 43
    :cond_0
    iget-object v4, p0, Lcom/zhangdan/preferential/utils/WeiboKeeper;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 44
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "name"

    iget-object v4, p1, Lcom/zhangdan/preferential/data/model/WeiboInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    const-string v3, "protraitUrl"

    iget-object v4, p1, Lcom/zhangdan/preferential/data/model/WeiboInfo;->portraitUrl:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    const-string v3, "youhui_uid"

    iget-object v4, p1, Lcom/zhangdan/preferential/data/model/WeiboInfo;->youhuiUid:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public readYouhuiUid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/zhangdan/preferential/utils/WeiboKeeper;->readYouhuiWeiboInfo()Lcom/zhangdan/preferential/data/model/WeiboInfo;

    move-result-object v0

    .line 80
    .local v0, info:Lcom/zhangdan/preferential/data/model/WeiboInfo;
    if-nez v0, :cond_0

    .line 81
    const/4 v1, 0x0

    .line 83
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/zhangdan/preferential/data/model/WeiboInfo;->youhuiUid:Ljava/lang/String;

    goto :goto_0
.end method

.method readYouhuiWeiboInfo()Lcom/zhangdan/preferential/data/model/WeiboInfo;
    .locals 5

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/zhangdan/preferential/utils/WeiboKeeper;->getPrefName()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, prefName:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 70
    :cond_0
    new-instance v0, Lcom/zhangdan/preferential/data/model/WeiboInfo;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/WeiboInfo;-><init>()V

    .line 71
    .local v0, info:Lcom/zhangdan/preferential/data/model/WeiboInfo;
    iget-object v3, p0, Lcom/zhangdan/preferential/utils/WeiboKeeper;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v3, "name"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/zhangdan/preferential/data/model/WeiboInfo;->name:Ljava/lang/String;

    .line 73
    const-string v3, "protraitUrl"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/zhangdan/preferential/data/model/WeiboInfo;->portraitUrl:Ljava/lang/String;

    .line 74
    const-string v3, "youhui_uid"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/zhangdan/preferential/data/model/WeiboInfo;->youhuiUid:Ljava/lang/String;

    goto :goto_0
.end method
