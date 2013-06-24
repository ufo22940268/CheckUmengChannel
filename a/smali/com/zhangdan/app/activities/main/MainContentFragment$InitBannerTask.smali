.class Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "MainContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/main/MainContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitBannerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/zhangdan/preferential/data/model/Promotion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;


# direct methods
.method private constructor <init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/app/activities/main/MainContentFragment;Lcom/zhangdan/app/activities/main/MainContentFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;-><init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 759
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Promotion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    move-object/from16 v18, v0

    #calls: Lcom/zhangdan/app/activities/main/MainContentFragment;->getApplication()Lcom/zhangdan/app/ZhangdanApplication;
    invoke-static/range {v18 .. v18}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2200(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v2

    .line 764
    .local v2, app:Landroid/app/Application;
    if-nez v2, :cond_1

    .line 765
    const/4 v9, 0x0

    .line 793
    :cond_0
    :goto_0
    return-object v9

    .line 766
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    move-object/from16 v18, v0

    #calls: Lcom/zhangdan/app/activities/main/MainContentFragment;->getUserId()Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2300(Lcom/zhangdan/app/activities/main/MainContentFragment;)Ljava/lang/String;

    move-result-object v17

    .line 767
    .local v17, userId:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 768
    const/4 v9, 0x0

    goto :goto_0

    .line 769
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    move-object/from16 v18, v0

    #calls: Lcom/zhangdan/app/activities/main/MainContentFragment;->getDataManager()Lcom/zhangdan/app/global/DataManager;
    invoke-static/range {v18 .. v18}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2400(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/global/DataManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v16

    .line 770
    .local v16, userBankList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 771
    .local v15, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v16, :cond_4

    .line 772
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 773
    .local v6, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 774
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 777
    .end local v6           #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v15}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 778
    .local v3, arr:[Ljava/lang/Object;
    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v4, v0, [I

    .line 779
    .local v4, bankIdArr:[I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_5

    .line 780
    aget-object v18, v3, v7

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aput v18, v4, v7

    .line 779
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 782
    :cond_5
    const/16 v18, 0x0

    aget-object v5, p1, v18

    .line 783
    .local v5, city:Ljava/lang/String;
    new-instance v14, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v14}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    .line 784
    .local v14, requestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    move-object/from16 v18, v0

    #calls: Lcom/zhangdan/app/activities/main/MainContentFragment;->getUserId()Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2500(Lcom/zhangdan/app/activities/main/MainContentFragment;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v5, v1, v4}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getAllPromotionListRequest(Ljava/lang/String;Ljava/lang/String;I[I)Lorg/json/JSONObject;

    move-result-object v13

    .line 785
    .local v13, req:Lorg/json/JSONObject;
    new-instance v10, Lcom/zhangdan/preferential/utils/JsonParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    .line 786
    .local v10, parser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-virtual {v10, v13}, Lcom/zhangdan/preferential/utils/JsonParser;->inflatePromotionList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v12

    .line 788
    .local v12, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .local v9, newProms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    const/4 v7, 0x0

    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x5

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_0

    .line 790
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/preferential/data/model/Promotion;

    .line 791
    .local v11, prom:Lcom/zhangdan/preferential/data/model/Promotion;
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 759
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
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
    .line 798
    .local p1, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mListView:Lcom/zhangdan/preferential/widget/MainContentListView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2600(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/preferential/widget/MainContentListView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mHeadView:Landroid/view/View;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2700(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 804
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mListView:Lcom/zhangdan/preferential/widget/MainContentListView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2600(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/preferential/widget/MainContentListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/preferential/widget/MainContentListView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v1, 0x8

    .line 805
    .local v0, height:I
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0300e9

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/widget/PrefBannerView;

    #setter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;
    invoke-static {v2, v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2802(Lcom/zhangdan/app/activities/main/MainContentFragment;Lcom/zhangdan/preferential/widget/PrefBannerView;)Lcom/zhangdan/preferential/widget/PrefBannerView;

    .line 807
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2800(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/preferential/widget/PrefBannerView;

    move-result-object v1

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/widget/PrefBannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2800(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/preferential/widget/PrefBannerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zhangdan/preferential/widget/PrefBannerView;->setProms(Ljava/util/List;)V

    .line 811
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mBannerContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2900(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;
    invoke-static {v2}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2800(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/preferential/widget/PrefBannerView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 812
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mListView:Lcom/zhangdan/preferential/widget/MainContentListView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2600(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/preferential/widget/MainContentListView;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mHeadView:Landroid/view/View;
    invoke-static {v2}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2700(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/widget/MainContentListView;->removeHeaderView(Landroid/view/View;)Z

    .line 813
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mDetailCardAdapter:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$3000(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 814
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mDetailCardAdapter:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$3000(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->notifyDataSetChanged()V

    .line 817
    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mSimpleCardAdapter:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$3100(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 818
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mSimpleCardAdapter:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$3100(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->notifyDataSetChanged()V

    .line 821
    :cond_3
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2800(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/preferential/widget/PrefBannerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/preferential/widget/PrefBannerView;->startSliding()V

    .line 822
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgBg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$600(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method
