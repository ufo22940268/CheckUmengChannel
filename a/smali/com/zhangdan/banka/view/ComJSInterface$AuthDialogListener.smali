.class Lcom/zhangdan/banka/view/ComJSInterface$AuthDialogListener;
.super Ljava/lang/Object;
.source "ComJSInterface.java"

# interfaces
.implements Lcom/weibo/sdk/android/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/banka/view/ComJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/banka/view/ComJSInterface;


# direct methods
.method constructor <init>(Lcom/zhangdan/banka/view/ComJSInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/zhangdan/banka/view/ComJSInterface$AuthDialogListener;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 9
    .parameter "values"

    .prologue
    .line 464
    const-string v6, "access_token"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 465
    .local v5, token:Ljava/lang/String;
    const-string v6, "expires_in"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, expires_in:Ljava/lang/String;
    new-instance v0, Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v0, v5, v2}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .local v0, accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->isSessionValid()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 468
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 470
    .local v3, obj:Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "access_token"

    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, "Result"

    invoke-static {v6, v7, v8, v3}, Lcom/zhangdan/banka/utils/RespJsonUtil;->constructResp(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 475
    .local v4, str:Ljava/lang/String;
    iget-object v6, p0, Lcom/zhangdan/banka/view/ComJSInterface$AuthDialogListener;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    iget-object v7, p0, Lcom/zhangdan/banka/view/ComJSInterface$AuthDialogListener;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    #getter for: Lcom/zhangdan/banka/view/ComJSInterface;->mSinaLoginCallBackId:Ljava/lang/String;
    invoke-static {v7}, Lcom/zhangdan/banka/view/ComJSInterface;->access$500(Lcom/zhangdan/banka/view/ComJSInterface;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/zhangdan/banka/view/ComJSInterface;->callbackJsMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .end local v3           #obj:Lorg/json/JSONObject;
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/zhangdan/banka/view/ComJSInterface$AuthDialogListener;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    const/4 v7, 0x0

    #setter for: Lcom/zhangdan/banka/view/ComJSInterface;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;
    invoke-static {v6, v7}, Lcom/zhangdan/banka/view/ComJSInterface;->access$602(Lcom/zhangdan/banka/view/ComJSInterface;Lcom/weibo/sdk/android/sso/SsoHandler;)Lcom/weibo/sdk/android/sso/SsoHandler;

    .line 478
    return-void

    .line 471
    .restart local v3       #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 472
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboDialogError;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 482
    return-void
.end method

.method public onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 486
    return-void
.end method
