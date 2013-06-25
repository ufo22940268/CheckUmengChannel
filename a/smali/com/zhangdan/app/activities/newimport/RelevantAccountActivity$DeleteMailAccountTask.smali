.class Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "RelevantAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteMailAccountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/zhangdan/app/data/model/http/BaseHttpResult;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;

.field final synthetic this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

.field private userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;
    .locals 6
    .parameter "params"

    .prologue
    .line 293
    const/4 v3, 0x0

    aget-object v3, p1, v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->userId:Ljava/lang/String;

    .line 294
    const/4 v3, 0x1

    aget-object v2, p1, v3

    .line 295
    .local v2, token:Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v1, p1, v3

    .line 296
    .local v1, mail:Ljava/lang/String;
    const-string v3, "DeleteMailAccountTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->userId:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v2, v4, v1}, Lcom/zhangdan/app/api/DelMailAccountApi;->deleteMailAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;

    move-result-object v0

    .line 298
    .local v0, data:Lcom/zhangdan/app/data/model/http/BaseHttpResult;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 278
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/app/data/model/http/BaseHttpResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 303
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->dialog:Landroid/app/Dialog;

    .line 306
    if-nez p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    const v2, 0x7f070024

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->getCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    #getter for: Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->mAdapter:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;
    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->access$500(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$AccountListAdapter;->removeData(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 278
    check-cast p1, Lcom/zhangdan/app/data/model/http/BaseHttpResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->onPostExecute(Lcom/zhangdan/app/data/model/http/BaseHttpResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 285
    invoke-super {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPreExecute()V

    .line 286
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    const-string v1, ""

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->this$0:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    const v3, 0x7f07012e

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->buildeProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->dialog:Landroid/app/Dialog;

    .line 287
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 288
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity$DeleteMailAccountTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 289
    return-void
.end method
