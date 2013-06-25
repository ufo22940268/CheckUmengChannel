.class Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "MailLoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/newimport/MailLoginView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailAccountLoginTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mailAccount:Ljava/lang/String;

.field private mailPwd:Ljava/lang/String;

.field final synthetic this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/MailLoginView;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;
    .locals 4
    .parameter "params"

    .prologue
    .line 218
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->mailAccount:Ljava/lang/String;

    .line 219
    const/4 v1, 0x1

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->mailPwd:Ljava/lang/String;

    .line 220
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->mailAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->mailPwd:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/zhangdan/app/api/AccountApi;->doMailAccountLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;

    move-result-object v0

    .line 221
    .local v0, data:Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 202
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 227
    if-nez p1, :cond_0

    .line 228
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #calls: Lcom/zhangdan/app/activities/newimport/MailLoginView;->dissmissLoadingDialog()V
    invoke-static {v3}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$200(Lcom/zhangdan/app/activities/newimport/MailLoginView;)V

    .line 229
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f070024

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;->getCode()I

    move-result v3

    if-nez v3, :cond_1

    .line 232
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;->getList()Ljava/util/List;

    move-result-object v2

    .line 233
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 234
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #calls: Lcom/zhangdan/app/activities/newimport/MailLoginView;->dissmissLoadingDialog()V
    invoke-static {v3}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$200(Lcom/zhangdan/app/activities/newimport/MailLoginView;)V

    .line 236
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 238
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 239
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    const-string v3, "user_info_list"

    invoke-virtual {v0, v3, v2}, Lcom/zhangdan/app/ZhangdanApplication;->addCacheObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    const-string v3, "mail_account"

    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->mailAccount:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v3, "maiL_pwd"

    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->mailPwd:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0d0004

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 248
    .end local v0           #app:Lcom/zhangdan/app/ZhangdanApplication;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserInfo;>;"
    :cond_1
    new-instance v4, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;

    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    invoke-direct {v4, v3}, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;-><init>(Lcom/zhangdan/app/activities/newimport/MailLoginView;)V

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Void;

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 202
    check-cast p1, Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->onPostExecute(Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 209
    invoke-super {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPreExecute()V

    .line 210
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    new-instance v1, Lcom/zhangdan/app/widget/LoadingDialog;

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zhangdan/app/widget/LoadingDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$002(Lcom/zhangdan/app/activities/newimport/MailLoginView;Lcom/zhangdan/app/widget/LoadingDialog;)Lcom/zhangdan/app/widget/LoadingDialog;

    .line 211
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;
    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$000(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Lcom/zhangdan/app/widget/LoadingDialog;

    move-result-object v0

    const v1, 0x7f07012c

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/LoadingDialog;->setContent(I)V

    .line 212
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;
    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$000(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Lcom/zhangdan/app/widget/LoadingDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/LoadingDialog;->setCancelable(Z)V

    .line 213
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$MailAccountLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;
    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$000(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Lcom/zhangdan/app/widget/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/LoadingDialog;->show()V

    .line 214
    return-void
.end method
