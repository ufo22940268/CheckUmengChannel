.class Lcom/zhangdan/preferential/WeiboLoginActivity$WeiboDialogListener;
.super Ljava/lang/Object;
.source "WeiboLoginActivity.java"

# interfaces
.implements Lcom/weibo/sdk/android/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/WeiboLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeiboDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/WeiboLoginActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/WeiboLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/zhangdan/preferential/WeiboLoginActivity$WeiboDialogListener;->this$0:Lcom/zhangdan/preferential/WeiboLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/WeiboLoginActivity;Lcom/zhangdan/preferential/WeiboLoginActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/WeiboLoginActivity$WeiboDialogListener;-><init>(Lcom/zhangdan/preferential/WeiboLoginActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 10
    .parameter "values"

    .prologue
    const/4 v9, 0x0

    .line 49
    const-string v5, "access_token"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, token:Ljava/lang/String;
    const-string v5, "expires_in"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, expires_in:Ljava/lang/String;
    new-instance v0, Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v0, v4, v3}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v0, accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->isSessionValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getExpiresTime()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, date:Ljava/lang/String;
    :try_start_0
    const-string v5, "com.weibo.sdk.android.api.WeiboAPI"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    iget-object v5, p0, Lcom/zhangdan/preferential/WeiboLoginActivity$WeiboDialogListener;->this$0:Lcom/zhangdan/preferential/WeiboLoginActivity;

    invoke-static {v5, v0}, Lcom/zhangdan/preferential/utils/AccessTokenKeeper;->keepAccessToken(Landroid/content/Context;Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 69
    iget-object v5, p0, Lcom/zhangdan/preferential/WeiboLoginActivity$WeiboDialogListener;->this$0:Lcom/zhangdan/preferential/WeiboLoginActivity;

    const v6, 0x7f0700b2

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 75
    .end local v1           #date:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/zhangdan/preferential/WeiboLoginActivity$WeiboDialogListener;->this$0:Lcom/zhangdan/preferential/WeiboLoginActivity;

    invoke-virtual {v5}, Lcom/zhangdan/preferential/WeiboLoginActivity;->finish()V

    .line 76
    return-void

    .line 59
    .restart local v1       #date:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 61
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "WeiboLoginActivity"

    const-string v6, "com.weibo.sdk.android.api.WeiboAPI not found"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    .end local v1           #date:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :cond_0
    iget-object v5, p0, Lcom/zhangdan/preferential/WeiboLoginActivity$WeiboDialogListener;->this$0:Lcom/zhangdan/preferential/WeiboLoginActivity;

    const v6, 0x7f0701f1

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboDialogError;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 80
    return-void
.end method

.method public onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 88
    return-void
.end method
