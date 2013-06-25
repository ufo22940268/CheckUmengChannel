.class Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "CardDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/detail/CardDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditCreditLimitTask"
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
.field private creditLimit:Ljava/lang/String;

.field private dialog:Landroid/app/Dialog;

.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 850
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;
    .locals 5
    .parameter "params"

    .prologue
    .line 865
    const/4 v4, 0x0

    aget-object v1, p1, v4

    .line 866
    .local v1, token:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v3, p1, v4

    .line 867
    .local v3, userId:Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v2, p1, v4

    .line 868
    .local v2, ubId:Ljava/lang/String;
    const/4 v4, 0x3

    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->creditLimit:Ljava/lang/String;

    .line 869
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->creditLimit:Ljava/lang/String;

    invoke-static {v1, v3, v2, v4}, Lcom/zhangdan/app/api/SyncApi;->saveUbEdit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;

    move-result-object v0

    .line 870
    .local v0, result:Lcom/zhangdan/app/data/model/http/BaseHttpResult;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 850
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/app/data/model/http/BaseHttpResult;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 875
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 876
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 877
    if-nez p1, :cond_1

    .line 878
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const v5, 0x7f070024

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->getCode()I

    move-result v3

    if-nez v3, :cond_3

    .line 881
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const v5, 0x7f070184

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 883
    :try_start_0
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->creditLimit:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 884
    .local v0, amount:F
    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v2, v0, v3

    .line 885
    .local v2, t1:F
    float-to-int v3, v0

    const/high16 v4, 0x4000

    mul-float/2addr v4, v2

    float-to-int v4, v4

    add-int/2addr v3, v4

    int-to-float v0, v3

    .line 886
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-static {v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$300(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/data/model/UserBankInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCreditLimit(F)V

    .line 888
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$700(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 889
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$700(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->refreshAccountInfo()V

    .line 890
    :cond_2
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailEmptyAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$800(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 891
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailEmptyAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$800(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->refreshAccountInfo()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 892
    .end local v0           #amount:F
    .end local v2           #t1:F
    :catch_0
    move-exception v1

    .line 893
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 896
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_3
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 850
    check-cast p1, Lcom/zhangdan/app/data/model/http/BaseHttpResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->onPostExecute(Lcom/zhangdan/app/data/model/http/BaseHttpResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 857
    invoke-super {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPreExecute()V

    .line 858
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const-string v1, ""

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const v3, 0x7f07012c

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->buildeProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->dialog:Landroid/app/Dialog;

    .line 859
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 860
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$EditCreditLimitTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 861
    return-void
.end method
