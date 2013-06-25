.class public Lcom/zhangdan/preferential/WeiboLoginActivity;
.super Landroid/app/Activity;
.source "WeiboLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/WeiboLoginActivity$1;,
        Lcom/zhangdan/preferential/WeiboLoginActivity$WeiboDialogListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WeiboLoginActivity"


# instance fields
.field public mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

.field private mWeibo:Lcom/weibo/sdk/android/Weibo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedBundleInstance"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const-string v0, "4101037885"

    const-string v1, "http://www.51zhangdan.com/service/user/sinalogin.ashx"

    invoke-static {v0, v1}, Lcom/weibo/sdk/android/Weibo;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/Weibo;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/WeiboLoginActivity;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    .line 41
    new-instance v0, Lcom/weibo/sdk/android/sso/SsoHandler;

    iget-object v1, p0, Lcom/zhangdan/preferential/WeiboLoginActivity;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    invoke-direct {v0, p0, v1}, Lcom/weibo/sdk/android/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/weibo/sdk/android/Weibo;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/WeiboLoginActivity;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    .line 42
    iget-object v0, p0, Lcom/zhangdan/preferential/WeiboLoginActivity;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    new-instance v1, Lcom/zhangdan/preferential/WeiboLoginActivity$WeiboDialogListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/WeiboLoginActivity$WeiboDialogListener;-><init>(Lcom/zhangdan/preferential/WeiboLoginActivity;Lcom/zhangdan/preferential/WeiboLoginActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/weibo/sdk/android/sso/SsoHandler;->authorize(Lcom/weibo/sdk/android/WeiboAuthListener;)V

    .line 43
    return-void
.end method
