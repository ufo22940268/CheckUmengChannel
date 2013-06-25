.class Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "CardDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/detail/CardDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteUserBankTask"
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


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;
    .locals 5
    .parameter "params"

    .prologue
    .line 759
    const/4 v4, 0x0

    aget-object v1, p1, v4

    .line 760
    .local v1, token:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v3, p1, v4

    .line 761
    .local v3, userId:Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v2, p1, v4

    .line 762
    .local v2, ubId:Ljava/lang/String;
    invoke-static {v1, v3, v2}, Lcom/zhangdan/app/api/DelUserBankApi;->deleteUserBank(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;

    move-result-object v0

    .line 763
    .local v0, data:Lcom/zhangdan/app/data/model/http/BaseHttpResult;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->getCode()I

    move-result v4

    if-nez v4, :cond_0

    .line 765
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #calls: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->deleteUserBank(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$600(Lcom/zhangdan/app/activities/detail/CardDetailActivity;Ljava/lang/String;)V

    .line 767
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 745
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;->doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/app/data/model/http/BaseHttpResult;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 772
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 774
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_0
    if-nez p1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const v3, 0x7f070024

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 791
    :goto_1
    return-void

    .line 780
    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->getCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 781
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 782
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.zhangdan.app.user_bank_changed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    const-string v1, "ub_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-static {v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$300(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/data/model/UserBankInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 785
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 786
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->finish()V

    goto :goto_1

    .line 788
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 775
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 745
    check-cast p1, Lcom/zhangdan/app/data/model/http/BaseHttpResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;->onPostExecute(Lcom/zhangdan/app/data/model/http/BaseHttpResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 751
    invoke-super {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPreExecute()V

    .line 752
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const-string v1, ""

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const v3, 0x7f070149

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->buildeProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;->dialog:Landroid/app/Dialog;

    .line 753
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 754
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$DeleteUserBankTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 755
    return-void
.end method
