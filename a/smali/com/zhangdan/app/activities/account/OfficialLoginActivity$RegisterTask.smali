.class Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "OfficialLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/account/OfficialLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegisterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/zhangdan/app/data/model/http/RegisterResult;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;

.field final synthetic this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/RegisterResult;
    .locals 4
    .parameter "params"

    .prologue
    .line 353
    const/4 v3, 0x0

    aget-object v2, p1, v3

    .line 354
    .local v2, username:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v0, p1, v3

    .line 355
    .local v0, pwd:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-static {v3, v2, v0}, Lcom/zhangdan/app/api/AccountApi;->doRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/RegisterResult;

    move-result-object v1

    .line 356
    .local v1, result:Lcom/zhangdan/app/data/model/http/RegisterResult;
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 339
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/RegisterResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/app/data/model/http/RegisterResult;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 361
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    if-nez p1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v3, 0x7f070024

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 375
    :goto_1
    return-void

    .line 368
    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/RegisterResult;->getCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v3, 0x7f07002e

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 370
    new-instance v1, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-direct {v1, v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;-><init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/RegisterResult;->getUsername()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/RegisterResult;->getPassword()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$LoginTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto :goto_1

    .line 372
    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/RegisterResult;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    if-eqz v0, :cond_2

    .end local v0           #msg:Ljava/lang/String;
    :goto_2
    invoke-static {v1, v0}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .restart local v0       #msg:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v3, 0x7f07002d

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 364
    .end local v0           #msg:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 339
    check-cast p1, Lcom/zhangdan/app/data/model/http/RegisterResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->onPostExecute(Lcom/zhangdan/app/data/model/http/RegisterResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 345
    invoke-super {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPreExecute()V

    .line 346
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v2, 0x7f07002a

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->this$0:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v3, 0x7f07002c

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->buildeProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->dialog:Landroid/app/Dialog;

    .line 347
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 348
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/OfficialLoginActivity$RegisterTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 349
    return-void
.end method
