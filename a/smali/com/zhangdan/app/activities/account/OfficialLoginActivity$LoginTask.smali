.class Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "OfficialLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/account/OfficialLoginActivity;
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

.field private password:Ljava/lang/String;

.field final synthetic this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

.field private userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    .locals 5
    .parameter "params"

    .prologue
    .line 255
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->userName:Ljava/lang/String;

    .line 256
    const/4 v2, 0x1

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->password:Ljava/lang/String;

    .line 257
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    iget-object v3, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->userName:Ljava/lang/String;

    iget-object v4, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->password:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/zhangdan/app/api/AccountApi;->doCommLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    move-result-object v0

    .line 258
    .local v0, loginResp:Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->getCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, userInfo:Ljava/lang/String;
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-static {v2, v1}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->saveUserInfo(Landroid/content/Context;Ljava/lang/String;)Z

    .line 262
    .end local v1           #userInfo:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/app/data/model/http/UserLoginInfo;)V
    .locals 9
    .parameter "result"

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 269
    :try_start_0
    iget-object v6, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    if-nez p1, :cond_0

    .line 273
    iget-object v6, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    iget-object v7, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v8, 0x7f070024

    invoke-virtual {v7, v8}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 307
    :goto_1
    return-void

    .line 274
    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->getCode()I

    move-result v6

    if-nez v6, :cond_4

    .line 275
    iget-object v6, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    iget-object v7, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v8, 0x7f0700b2

    invoke-virtual {v7, v8}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, userStr:Ljava/lang/String;
    const-string v6, "Login"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {v5}, Lcom/zhangdan/app/api/AccountApi;->parseUserSuiInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v4

    .line 280
    .local v4, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    iget-object v6, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-virtual {v6, v4}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->setCurrUserInfo(Lcom/zhangdan/app/data/model/UserInfo;)V

    .line 281
    iget-object v6, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v7, 0x7f0900da

    invoke-virtual {v6, v7}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 282
    iget-object v6, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-virtual {v6}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->userName:Ljava/lang/String;

    iget-object v8, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->password:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/zhangdan/app/util/Base64Utils;->encodeBytes([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/zhangdan/app/data/db/util/UserHistoryUtil;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_2
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserInfo;->getFigureUrl()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, avatarUrl:Ljava/lang/String;
    iget-object v6, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_avatar"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, localAvatar:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "http://"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 290
    iget-object v6, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-static {v6, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setAvatarUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    :goto_3
    iget-object v6, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    #getter for: Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->mFlag:I
    invoke-static {v6}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->access$400(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)I

    move-result v6

    if-nez v6, :cond_1

    .line 296
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 297
    .local v1, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const-class v7, Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 298
    iget-object v6, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-virtual {v6, v1}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 301
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v6, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->setResult(I)V

    .line 302
    iget-object v6, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-virtual {v6}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->finish()V

    goto/16 :goto_1

    .line 284
    .end local v0           #avatarUrl:Ljava/lang/String;
    .end local v2           #localAvatar:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-virtual {v6}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->userName:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lcom/zhangdan/app/data/db/util/UserHistoryUtil;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 292
    .restart local v0       #avatarUrl:Ljava/lang/String;
    .restart local v2       #localAvatar:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-static {v6, v0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setAvatarUri(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 304
    .end local v0           #avatarUrl:Ljava/lang/String;
    .end local v2           #localAvatar:Ljava/lang/String;
    .end local v4           #userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    .end local v5           #userStr:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->getMsg()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, msg:Ljava/lang/String;
    iget-object v6, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    if-eqz v3, :cond_5

    .end local v3           #msg:Ljava/lang/String;
    :goto_4
    invoke-static {v6, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v3       #msg:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v8, 0x7f0700b3

    invoke-virtual {v7, v8}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 270
    .end local v3           #msg:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    check-cast p1, Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->onPostExecute(Lcom/zhangdan/app/data/model/http/UserLoginInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 247
    invoke-super {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPreExecute()V

    .line 248
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v2, 0x7f07001f

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v3, 0x7f070031

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->buildeProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->dialog:Landroid/app/Dialog;

    .line 249
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 250
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 251
    return-void
.end method
