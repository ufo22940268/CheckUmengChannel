.class Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "MailLoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/newimport/MailLoginView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuickLoginTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/zhangdan/app/data/model/http/UserLoginInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/MailLoginView;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    .locals 3
    .parameter "params"

    .prologue
    .line 268
    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/api/AccountApi;->doQuickLogin(Landroid/content/Context;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    move-result-object v0

    .line 269
    .local v0, loginResp:Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->getCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, userInfo:Ljava/lang/String;
    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->saveUserInfo(Landroid/content/Context;Ljava/lang/String;)Z

    .line 273
    .end local v1           #userInfo:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 259
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->doInBackground([Ljava/lang/Void;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/app/data/model/http/UserLoginInfo;)V
    .locals 11
    .parameter "userLoginInfo"

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 279
    iget-object v8, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #calls: Lcom/zhangdan/app/activities/newimport/MailLoginView;->dissmissLoadingDialog()V
    invoke-static {v8}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$200(Lcom/zhangdan/app/activities/newimport/MailLoginView;)V

    .line 280
    if-nez p1, :cond_0

    .line 281
    iget-object v8, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f070024

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->getCode()I

    move-result v8

    if-nez v8, :cond_2

    .line 285
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, userStr:Ljava/lang/String;
    invoke-static {v7}, Lcom/zhangdan/app/api/AccountApi;->parseUserSuiInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v6

    .line 287
    .local v6, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    iget-object v8, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 288
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0, v6}, Lcom/zhangdan/app/ZhangdanApplication;->setCurrUserInfo(Lcom/zhangdan/app/data/model/UserInfo;)V

    .line 289
    const-string v8, "Login"

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserInfo;->getFigureUrl()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, avatarUrl:Ljava/lang/String;
    iget-object v8, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_avatar"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, localAvatar:Ljava/lang/String;
    invoke-static {v3}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "http://"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 295
    iget-object v8, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setAvatarUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    :goto_1
    iget-object v8, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtMailAccount:Lcom/zhangdan/app/widget/EmailEditText;
    invoke-static {v8}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$300(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Lcom/zhangdan/app/widget/EmailEditText;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, mailName:Ljava/lang/String;
    iget-object v8, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mEtPwd:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$400(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, mailPwd:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 303
    .local v2, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v8

    const-class v9, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 304
    const-string v8, "email_name"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v8, "email_pwd"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v8, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 307
    iget-object v8, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 297
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #mailName:Ljava/lang/String;
    .end local v5           #mailPwd:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setAvatarUri(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 310
    .end local v0           #app:Lcom/zhangdan/app/ZhangdanApplication;
    .end local v1           #avatarUrl:Ljava/lang/String;
    .end local v3           #localAvatar:Ljava/lang/String;
    .end local v6           #userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    .end local v7           #userStr:Ljava/lang/String;
    :cond_2
    const-string v8, "QuickLoginTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "code:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->getCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v8, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->getMsg()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 312
    iget-object v8, p0, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->this$0:Lcom/zhangdan/app/activities/newimport/MailLoginView;

    #getter for: Lcom/zhangdan/app/activities/newimport/MailLoginView;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/zhangdan/app/activities/newimport/MailLoginView;->access$100(Lcom/zhangdan/app/activities/newimport/MailLoginView;)Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;

    invoke-virtual {v8}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->showOldUserLoginContent()V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 259
    check-cast p1, Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/newimport/MailLoginView$QuickLoginTask;->onPostExecute(Lcom/zhangdan/app/data/model/http/UserLoginInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPreExecute()V

    .line 264
    return-void
.end method
