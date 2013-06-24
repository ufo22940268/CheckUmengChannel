.class Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "CardDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/detail/CardDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitBannerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/zhangdan/preferential/data/model/Promotion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 908
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;Lcom/zhangdan/app/activities/detail/CardDetailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 908
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 908
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 12
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Promotion;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 912
    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCurrCity:Ljava/lang/String;
    invoke-static {v8}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$900(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-static {v8}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$300(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/data/model/UserBankInfo;

    move-result-object v8

    if-nez v8, :cond_1

    .line 926
    :cond_0
    return-object v2

    .line 915
    :cond_1
    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-static {v8}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$300(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/data/model/UserBankInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v0

    .line 916
    .local v0, bankId:I
    new-instance v7, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v7}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    .line 917
    .local v7, requestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;
    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCurrCity:Ljava/lang/String;
    invoke-static {v8}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$900(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [I

    const/4 v10, 0x0

    aput v0, v9, v10

    invoke-virtual {v7, v2, v8, v11, v9}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getAllPromotionListRequest(Ljava/lang/String;Ljava/lang/String;I[I)Lorg/json/JSONObject;

    move-result-object v6

    .line 918
    .local v6, req:Lorg/json/JSONObject;
    new-instance v3, Lcom/zhangdan/preferential/utils/JsonParser;

    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v8}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    .line 919
    .local v3, parser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-virtual {v3, v6}, Lcom/zhangdan/preferential/utils/JsonParser;->inflatePromotionList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v5

    .line 921
    .local v5, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .local v2, newProms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 923
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/preferential/data/model/Promotion;

    .line 924
    .local v4, prom:Lcom/zhangdan/preferential/data/model/Promotion;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 908
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Promotion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 931
    .local p1, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$1000(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v1, 0x8

    .line 936
    .local v0, height:I
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mHeadView:Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;
    invoke-static {v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$1200(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->getBanner()Lcom/zhangdan/preferential/widget/PrefBannerView;

    move-result-object v2

    #setter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;
    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$1102(Lcom/zhangdan/app/activities/detail/CardDetailActivity;Lcom/zhangdan/preferential/widget/PrefBannerView;)Lcom/zhangdan/preferential/widget/PrefBannerView;

    .line 937
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$1100(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/preferential/widget/PrefBannerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/preferential/widget/PrefBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 938
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$1100(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/preferential/widget/PrefBannerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/widget/PrefBannerView;->setVisibility(I)V

    .line 939
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$1100(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/preferential/widget/PrefBannerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/preferential/widget/PrefBannerView;->requestLayout()V

    .line 940
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$1100(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/preferential/widget/PrefBannerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zhangdan/preferential/widget/PrefBannerView;->setProms(Ljava/util/List;)V

    .line 941
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$700(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 942
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mCardDetailAdapter:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$700(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->notifyDataSetChanged()V

    .line 944
    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    #getter for: Lcom/zhangdan/app/activities/detail/CardDetailActivity;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->access$1100(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/preferential/widget/PrefBannerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/preferential/widget/PrefBannerView;->startSliding()V

    goto :goto_0
.end method
