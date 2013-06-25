.class Lcom/zhangdan/app/activities/newimport/OldUserLoginView$BaseUiListener;
.super Ljava/lang/Object;
.source "OldUserLoginView.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/newimport/OldUserLoginView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseUiListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;


# direct methods
.method private constructor <init>(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$BaseUiListener;->this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;Lcom/zhangdan/app/activities/newimport/OldUserLoginView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$BaseUiListener;-><init>(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;)V

    return-void
.end method


# virtual methods
.method protected doComplete(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 190
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$BaseUiListener;->this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mTencent:Lcom/tencent/tauth/Tencent;
    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->access$200(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;)Lcom/tencent/tauth/Tencent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tauth/Tencent;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, accessToken:Ljava/lang/String;
    const-string v1, "QQ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v1, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$BaseUiListener;->this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    invoke-direct {v1, v2, v4}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;-><init>(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;I)V

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 194
    return-void
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$BaseUiListener;->doComplete(Lorg/json/JSONObject;)V

    .line 187
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 198
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

    .line 199
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$BaseUiListener;->this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->access$000(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u4e0a\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    return-void
.end method
