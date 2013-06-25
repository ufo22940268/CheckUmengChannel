.class public Lcom/zhangdan/app/activities/bankservice/BankListFragment;
.super Lcom/zhangdan/app/activities/BaseFragment;
.source "BankListFragment.java"

# interfaces
.implements Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBankChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankComparator;,
        Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;
    }
.end annotation


# instance fields
.field private mBankAdapter:Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;

.field private mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

.field private mListView:Landroid/widget/ListView;

.field private mOnActionBarClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragment;-><init>()V

    .line 286
    new-instance v0, Lcom/zhangdan/app/activities/bankservice/BankListFragment$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/bankservice/BankListFragment$1;-><init>(Lcom/zhangdan/app/activities/bankservice/BankListFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mOnActionBarClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getActionBarView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 272
    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 273
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 274
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mActionBarView:Landroid/view/View;

    .line 275
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->initActionBarView()V

    .line 277
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mActionBarView:Landroid/view/View;

    return-object v1
.end method

.method public initActionBarView()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 283
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mOnActionBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    return-void
.end method

.method public initViews()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 72
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 73
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v5

    .line 74
    .local v5, dataMgr:Lcom/zhangdan/app/global/DataManager;
    invoke-virtual {v5}, Lcom/zhangdan/app/global/DataManager;->getBankList()Ljava/util/Collection;

    move-result-object v2

    .line 75
    .local v2, collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/zhangdan/app/data/model/BankInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v3, commList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BankInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v8, otherList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BankInfo;>;"
    if-eqz v2, :cond_2

    .line 78
    invoke-virtual {v5}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v11

    .line 79
    .local v11, userBankList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v5}, Lcom/zhangdan/app/global/DataManager;->isFakeData()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 80
    :cond_0
    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    :cond_1
    new-instance v12, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankComparator;

    invoke-direct {v12, p0}, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankComparator;-><init>(Lcom/zhangdan/app/activities/bankservice/BankListFragment;)V

    invoke-static {v8, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    .end local v11           #userBankList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    :cond_2
    iget-object v12, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mBankAdapter:Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;

    if-eqz v12, :cond_6

    .line 99
    iget-object v12, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mBankAdapter:Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;

    invoke-virtual {v12, v3, v8}, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;->setDataSource(Ljava/util/List;Ljava/util/List;)V

    .line 105
    :goto_0
    return-void

    .line 82
    .restart local v11       #userBankList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    :cond_3
    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 84
    .local v9, sparseArr:Landroid/util/SparseIntArray;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 85
    .local v10, userBank:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v10}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v1

    .line 86
    .local v1, bankId:I
    invoke-virtual {v9, v1, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 88
    .end local v1           #bankId:I
    .end local v10           #userBank:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/zhangdan/app/data/model/BankInfo;>;"
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 89
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/BankInfo;

    .line 90
    .local v4, data:Lcom/zhangdan/app/data/model/BankInfo;
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/BankInfo;->getBankId()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    if-ne v12, v13, :cond_5

    .line 91
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 101
    .end local v4           #data:Lcom/zhangdan/app/data/model/BankInfo;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/zhangdan/app/data/model/BankInfo;>;"
    .end local v9           #sparseArr:Landroid/util/SparseIntArray;
    .end local v11           #userBankList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    :cond_6
    new-instance v12, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;

    invoke-direct {v12, p0, v3, v8}, Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;-><init>(Lcom/zhangdan/app/activities/bankservice/BankListFragment;Ljava/util/List;Ljava/util/List;)V

    iput-object v12, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mBankAdapter:Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;

    .line 102
    iget-object v12, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mListView:Landroid/widget/ListView;

    iget-object v13, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mBankAdapter:Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v12, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mListView:Landroid/widget/ListView;

    iget-object v13, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mBankAdapter:Lcom/zhangdan/app/activities/bankservice/BankListFragment$BankAdapter;

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onBankChanged()V
    .locals 0

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->initViews()V

    .line 268
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 52
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->setOnBankChangedListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBankChangedListener;)V

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 58
    const v1, 0x7f0300e3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, view:Landroid/view/View;
    const v1, 0x7f09008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mListView:Landroid/widget/ListView;

    .line 60
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->initViews()V

    .line 61
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseFragment;->onDestroy()V

    .line 67
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->destroy()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 69
    return-void
.end method
