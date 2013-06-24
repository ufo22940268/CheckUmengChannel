.class Lcom/zhangdan/banka/view/ComJSInterface$BaseUiListener;
.super Ljava/lang/Object;
.source "ComJSInterface.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/banka/view/ComJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseUiListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/banka/view/ComJSInterface;


# direct methods
.method private constructor <init>(Lcom/zhangdan/banka/view/ComJSInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/zhangdan/banka/view/ComJSInterface$BaseUiListener;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/banka/view/ComJSInterface;Lcom/zhangdan/banka/view/ComJSInterface$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/zhangdan/banka/view/ComJSInterface$BaseUiListener;-><init>(Lcom/zhangdan/banka/view/ComJSInterface;)V

    return-void
.end method


# virtual methods
.method protected doComplete(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "values"

    .prologue
    .line 502
    iget-object v4, p0, Lcom/zhangdan/banka/view/ComJSInterface$BaseUiListener;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    #getter for: Lcom/zhangdan/banka/view/ComJSInterface;->mTencent:Lcom/tencent/tauth/Tencent;
    invoke-static {v4}, Lcom/zhangdan/banka/view/ComJSInterface;->access$800(Lcom/zhangdan/banka/view/ComJSInterface;)Lcom/tencent/tauth/Tencent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tauth/Tencent;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, accessToken:Ljava/lang/String;
    const-string v4, "QQ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accessToken:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 506
    .local v2, obj:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "access_token"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_0
    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, "Result"

    invoke-static {v4, v5, v6, v2}, Lcom/zhangdan/banka/utils/RespJsonUtil;->constructResp(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/banka/view/ComJSInterface$BaseUiListener;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    iget-object v5, p0, Lcom/zhangdan/banka/view/ComJSInterface$BaseUiListener;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    #getter for: Lcom/zhangdan/banka/view/ComJSInterface;->mQQLoginCallBackId:Ljava/lang/String;
    invoke-static {v5}, Lcom/zhangdan/banka/view/ComJSInterface;->access$900(Lcom/zhangdan/banka/view/ComJSInterface;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/zhangdan/banka/view/ComJSInterface;->callbackJsMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void

    .line 507
    .end local v3           #str:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 508
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lcom/zhangdan/banka/view/ComJSInterface$BaseUiListener;->doComplete(Lorg/json/JSONObject;)V

    .line 499
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 516
    const-string v0, "OldUserLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", detail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/tauth/UiError;->errorDetail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/zhangdan/banka/view/ComJSInterface$BaseUiListener;->this$0:Lcom/zhangdan/banka/view/ComJSInterface;

    #getter for: Lcom/zhangdan/banka/view/ComJSInterface;->mActivity:Lcom/zhangdan/banka/activities/BankaActivity;
    invoke-static {v0}, Lcom/zhangdan/banka/view/ComJSInterface;->access$200(Lcom/zhangdan/banka/view/ComJSInterface;)Lcom/zhangdan/banka/activities/BankaActivity;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u4e0a\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/zhangdan/banka/utils/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 518
    return-void
.end method
