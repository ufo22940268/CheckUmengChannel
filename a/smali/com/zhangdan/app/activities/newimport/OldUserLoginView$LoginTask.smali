.class Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "OldUserLoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/newimport/OldUserLoginView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/zhangdan/app/data/model/http/UserLoginInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private mLoginType:I

.field final synthetic this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;I)V
    .locals 0
    .parameter
    .parameter "loginType"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    .line 214
    iput p2, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->mLoginType:I

    .line 215
    return-void
.end method

.method private follow51Zhangdan(Ljava/lang/String;)V
    .locals 6
    .parameter "tokenStr"

    .prologue
    .line 245
    new-instance v1, Lcom/weibo/sdk/android/Oauth2AccessToken;

    const-string v4, "100000"

    invoke-direct {v1, p1, v4}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v1, token:Lcom/weibo/sdk/android/Oauth2AccessToken;
    const-wide v2, 0xa74550c6L

    .line 249
    .local v2, uid:J
    new-instance v0, Lcom/weibo/sdk/android/api/FriendshipsAPI;

    invoke-direct {v0, v1}, Lcom/weibo/sdk/android/api/FriendshipsAPI;-><init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 250
    .local v0, api:Lcom/weibo/sdk/android/api/FriendshipsAPI;
    const-string v4, "51\u4fe1\u7528\u5361\u7ba1\u5bb6"

    new-instance v5, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask$1;

    invoke-direct {v5, p0}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask$1;-><init>(Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/weibo/sdk/android/api/FriendshipsAPI;->create(JLjava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 264
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, userLoginInfo:Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    iget v2, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->mLoginType:I

    if-nez v2, :cond_2

    .line 229
    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->access$000(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;)Landroid/app/Activity;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-static {v2, v3}, Lcom/zhangdan/app/api/AccountApi;->doSinaLogin(Landroid/content/Context;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    move-result-object v1

    .line 230
    aget-object v2, p1, v4

    invoke-direct {p0, v2}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->follow51Zhangdan(Ljava/lang/String;)V

    .line 236
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->getCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->access$000(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->saveUserInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 238
    .local v0, isSuccess:Z
    if-nez v0, :cond_1

    .line 239
    const/4 v1, 0x0

    .line 241
    .end local v0           #isSuccess:Z
    .end local v1           #userLoginInfo:Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    :cond_1
    return-object v1

    .line 231
    .restart local v1       #userLoginInfo:Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    :cond_2
    iget v2, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->mLoginType:I

    if-ne v2, v5, :cond_3

    .line 232
    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->access$000(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;)Landroid/app/Activity;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-static {v2, v3}, Lcom/zhangdan/app/api/AccountApi;->doQQLogin(Landroid/content/Context;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    move-result-object v1

    goto :goto_0

    .line 233
    :cond_3
    iget v2, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->mLoginType:I

    if-ne v2, v6, :cond_0

    .line 234
    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->access$000(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;)Landroid/app/Activity;

    move-result-object v2

    aget-object v3, p1, v4

    aget-object v4, p1, v5

    aget-object v5, p1, v6

    invoke-static {v2, v3, v4, v5}, Lcom/zhangdan/app/api/AccountApi;->doTencentWeiboLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/app/data/model/http/UserLoginInfo;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    #calls: Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->processLoginResult(Lcom/zhangdan/app/data/model/http/UserLoginInfo;)V
    invoke-static {v0, p1}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->access$300(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;Lcom/zhangdan/app/data/model/http/UserLoginInfo;)V

    .line 274
    return-void

    .line 271
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 208
    check-cast p1, Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->onPostExecute(Lcom/zhangdan/app/data/model/http/UserLoginInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 219
    invoke-super {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPreExecute()V

    .line 220
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->access$000(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->access$000(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07001f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/OldUserLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/OldUserLoginView;->access$000(Lcom/zhangdan/app/activities/newimport/OldUserLoginView;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f070031

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->buildeProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->dialog:Landroid/app/Dialog;

    .line 221
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 222
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/OldUserLoginView$LoginTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 223
    return-void
.end method
