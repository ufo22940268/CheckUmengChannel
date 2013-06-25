.class Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "CardDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/detail/CardDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MergeUserBankTask"
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

.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

.field private ubId1:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 800
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;
    .locals 6
    .parameter "params"

    .prologue
    .line 815
    const/4 v5, 0x0

    aget-object v1, p1, v5

    .line 816
    .local v1, token:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v4, p1, v5

    .line 817
    .local v4, userId:Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v2, p1, v5

    .line 818
    .local v2, ubId:Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v3, p1, v5

    .line 819
    .local v3, ubId1:Ljava/lang/String;
    iput-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->ubId1:Ljava/lang/String;

    .line 820
    invoke-static {v1, v4, v2, v3}, Lcom/zhangdan/app/api/MergeUserBankApi;->mergeUserBank(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;

    move-result-object v0

    .line 821
    .local v0, data:Lcom/zhangdan/app/data/model/http/BaseHttpResult;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->getCode()I

    move-result v5

    if-nez v5, :cond_0

    .line 822
    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #calls: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->deleteUserBank(Ljava/lang/String;)V
    invoke-static {v5, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$600(Lcom/zhangdan/app/activities/detail/CardDetailActivity;Ljava/lang/String;)V

    .line 824
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 800
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/app/data/model/http/BaseHttpResult;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 829
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 831
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    if-nez p1, :cond_0

    .line 835
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const v3, 0x7f070024

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 847
    :goto_1
    return-void

    .line 837
    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->getCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 838
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 839
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.zhangdan.app.user_bank_changed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    const-string v1, "ub_id"

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->ubId1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 842
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_1

    .line 844
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 832
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 800
    check-cast p1, Lcom/zhangdan/app/data/model/http/BaseHttpResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->onPostExecute(Lcom/zhangdan/app/data/model/http/BaseHttpResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 807
    invoke-super {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPreExecute()V

    .line 808
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const-string v1, ""

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const v3, 0x7f07014a

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->buildeProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->dialog:Landroid/app/Dialog;

    .line 809
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 810
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$MergeUserBankTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 811
    return-void
.end method
