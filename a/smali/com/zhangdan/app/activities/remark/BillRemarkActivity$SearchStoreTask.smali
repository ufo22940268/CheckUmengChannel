.class Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "BillRemarkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/remark/BillRemarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchStoreTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/zhangdan/app/data/model/http/StoreInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;->this$0:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 345
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/StoreInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    const/4 v3, 0x0

    aget-object v0, p1, v3

    .line 349
    .local v0, city:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v1, p1, v3

    .line 350
    .local v1, input:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zhangdan/app/api/YouhuiApi;->searchStore(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 351
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/StoreInfo;>;"
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 345
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/StoreInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/StoreInfo;>;"
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;->this$0:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    #getter for: Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreAdapter:Lcom/zhangdan/app/activities/remark/StoreAdapter;
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->access$100(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)Lcom/zhangdan/app/activities/remark/StoreAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity$SearchStoreTask;->this$0:Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    #getter for: Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->mStoreAdapter:Lcom/zhangdan/app/activities/remark/StoreAdapter;
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->access$100(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)Lcom/zhangdan/app/activities/remark/StoreAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/app/activities/remark/StoreAdapter;->setStoreList(Ljava/util/List;)V

    .line 359
    :cond_0
    return-void
.end method
