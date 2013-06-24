.class public Lcom/zhangdan/app/activities/newimport/OldUserLoginView;
.super Ljava/lang/Object;
.source "OldUserLoginView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/newimport/OldUserLoginView$1;,
        Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;,
        Lcom/zhangdan/app/activities/newimport/OldUserLoginView$BaseUiListener;,
        Lcom/zhangdan/app/activities/newimport/OldUserLoginView$AuthDialogListener;
    }
.end annotation


# static fields
.field private static final QQAppId:Ljava/lang/String; = "100266738"

.field private static final SINA_WEIBO_APP_KEY:Ljava/lang/String; = "4101037885"

.field private static final SINA_WEIBO_REDIRECT_URL:Ljava/lang/String; = "http://www.51zhangdan.com/service/user/sinalogin.ashx"

.field private static final TYPE_QQ_LOGIN:I = 0x1

.field private static final TYPE_SINA_LOGIN:I = 0x0

.field private static final TYPE_TENCENT_WEIBO_LOGIN:I = 0x2

.field private static final scope:Ljava/lang/String; = "get_user_info,get_simple_userinfo,get_user_profile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentView:Landroid/view/View;

.field private mOAuthV:Lcom/tencent/weibo/oauthv2/OAuthV2;

.field private mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

.field private mTencent:Lcom/tencent/tauth/Tencent;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .parameter "activity"
    .parameter "view"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    .line 72
    iput-object p2, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mContentView:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mContentView:Landroid/view/View;

    const v1, 0x7f090207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mContentView:Landroid/view/View;

    const v1, 0x7f090208

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mContentView:Landroid/view/View;

    const v1, 0x7f090209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mContentView:Landroid/view/View;

    const v1, 0x7f09020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;)Lcom/tencent/tauth/Tencent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mTencent:Lcom/tencent/tauth/Tencent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;Lcom/zhangdan/app/data/model/http/UserLoginInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->processLoginResult(Lcom/zhangdan/app/data/model/http/UserLoginInfo;)V

    return-void
.end method

.method private doQQLogin()V
    .locals 5

    .prologue
    .line 178
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mTencent:Lcom/tencent/tauth/Tencent;

    if-nez v0, :cond_0

    .line 179
    const-string v0, "100266738"

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    const-string v2, "get_user_info,get_simple_userinfo,get_user_profile"

    new-instance v3, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$BaseUiListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$BaseUiListener;-><init>(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;Lcom/zhangdan/app/activities/newimport/OldUserLoginView$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    .line 181
    return-void
.end method

.method private doSinaWeiboLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "appKey"
    .parameter "redirectUrl"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    if-nez v1, :cond_0

    .line 142
    invoke-static {p1, p2}, Lcom/weibo/sdk/android/Weibo;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/Weibo;

    move-result-object v0

    .line 143
    .local v0, weibo:Lcom/weibo/sdk/android/Weibo;
    new-instance v1, Lcom/weibo/sdk/android/sso/SsoHandler;

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/weibo/sdk/android/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/weibo/sdk/android/Weibo;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    .line 145
    .end local v0           #weibo:Lcom/weibo/sdk/android/Weibo;
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    new-instance v2, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$AuthDialogListener;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$AuthDialogListener;-><init>(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;)V

    invoke-virtual {v1, v2}, Lcom/weibo/sdk/android/sso/SsoHandler;->authorize(Lcom/weibo/sdk/android/WeiboAuthListener;)V

    .line 146
    return-void
.end method

.method private processLoginResult(Lcom/zhangdan/app/data/model/http/UserLoginInfo;)V
    .locals 10
    .parameter "userLoginInfo"

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    iget-object v7, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    const v9, 0x7f070024

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->getCode()I

    move-result v7

    if-nez v7, :cond_2

    .line 286
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, userStr:Ljava/lang/String;
    invoke-static {v6}, Lcom/zhangdan/app/api/AccountApi;->parseUserSuiInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v5

    .line 288
    .local v5, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    iget-object v7, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 289
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0, v5}, Lcom/zhangdan/app/ZhangdanApplication;->setCurrUserInfo(Lcom/zhangdan/app/data/model/UserInfo;)V

    .line 290
    const-string v7, "Login"

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserInfo;->getFigureUrl()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, avatarUrl:Ljava/lang/String;
    iget-object v7, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_avatar"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, localAvatar:Ljava/lang/String;
    invoke-static {v3}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "http://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 296
    iget-object v7, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v3}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setAvatarUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 302
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    const-class v8, Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 303
    iget-object v7, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 304
    iget-object v7, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 298
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v7, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setAvatarUri(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 307
    .end local v0           #app:Lcom/zhangdan/app/ZhangdanApplication;
    .end local v1           #avatarUrl:Ljava/lang/String;
    .end local v3           #localAvatar:Ljava/lang/String;
    .end local v5           #userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    .end local v6           #userStr:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->getMsg()Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, msg:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 309
    :goto_2
    iget-object v7, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v4}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_3
    iget-object v7, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0700b3

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    .line 106
    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mContentView:Landroid/view/View;

    .line 107
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x2

    .line 81
    const v4, 0x7f0d0002

    if-ne p1, v4, :cond_1

    .line 82
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 83
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const v4, 0x7f0d0003

    if-ne p1, v4, :cond_2

    .line 88
    if-ne p2, v7, :cond_2

    .line 89
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "oauth"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tencent/weibo/oauthv2/OAuthV2;

    .line 90
    .local v0, oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;
    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, token:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getOpenid()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, openid:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getOpenkey()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, openkey:Ljava/lang/String;
    new-instance v4, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;

    invoke-direct {v4, p0, v7}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;-><init>(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;I)V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    aput-object v2, v5, v7

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto :goto_0

    .line 97
    .end local v0           #oAuth:Lcom/tencent/weibo/oauthv2/OAuthV2;
    .end local v1           #openid:Ljava/lang/String;
    .end local v2           #openkey:Ljava/lang/String;
    .end local v3           #token:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    if-eqz v4, :cond_3

    .line 98
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    invoke-virtual {v4, p1, p2, p3}, Lcom/weibo/sdk/android/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 100
    :cond_3
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mTencent:Lcom/tencent/tauth/Tencent;

    if-eqz v4, :cond_0

    .line 101
    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v4, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090207

    if-ne v1, v2, :cond_1

    .line 112
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    const-string v2, "yuan_weibo_login"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    const-string v1, "4101037885"

    const-string v2, "http://www.51zhangdan.com/service/user/sinalogin.ashx"

    invoke-direct {p0, v1, v2}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->doSinaWeiboLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090208

    if-ne v1, v2, :cond_2

    .line 115
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    const-string v2, "yuan_qq_login"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->doQQLogin()V

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090209

    if-ne v1, v2, :cond_3

    .line 118
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    const-string v2, "yuan_51_login"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d0002

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 121
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09020a

    if-ne v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mOAuthV:Lcom/tencent/weibo/oauthv2/OAuthV2;

    if-nez v1, :cond_4

    .line 123
    new-instance v1, Lcom/tencent/weibo/oauthv2/OAuthV2;

    const-string v2, "http://www.51zhangdan.com"

    invoke-direct {v1, v2}, Lcom/tencent/weibo/oauthv2/OAuthV2;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mOAuthV:Lcom/tencent/weibo/oauthv2/OAuthV2;

    .line 124
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mOAuthV:Lcom/tencent/weibo/oauthv2/OAuthV2;

    const-string v2, "801197405"

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setClientId(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mOAuthV:Lcom/tencent/weibo/oauthv2/OAuthV2;

    const-string v2, "aa33793ffe907d200c7bc7958efd3177"

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setClientSecret(Ljava/lang/String;)V

    .line 127
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 129
    const-string v1, "oauth"

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mOAuthV:Lcom/tencent/weibo/oauthv2/OAuthV2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d0003

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
