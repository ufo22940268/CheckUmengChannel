.class Lcom/zhangdan/app/activities/newimport/OldUserLoginView$AuthDialogListener;
.super Ljava/lang/Object;
.source "OldUserLoginView.java"

# interfaces
.implements Lcom/weibo/sdk/android/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/newimport/OldUserLoginView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$AuthDialogListener;->this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 156
    const-string v3, "access_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, token:Ljava/lang/String;
    const-string v3, "expires_in"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, expires_in:Ljava/lang/String;
    new-instance v0, Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v0, v2, v1}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v0, accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->isSessionValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$AuthDialogListener;->this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->access$000(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/zhangdan/preferential/utils/AccessTokenKeeper;->keepAccessToken(Landroid/content/Context;Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 161
    new-instance v3, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;

    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$AuthDialogListener;->this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    invoke-direct {v3, v4, v5}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;-><init>(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;I)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 163
    :cond_0
    return-void
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboDialogError;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 167
    return-void
.end method

.method public onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 171
    return-void
.end method
