.class public Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "BankHotLineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankComparator;,
        Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 148
    return-void
.end method

.method private initListView()V
    .locals 6

    .prologue
    .line 66
    const v5, 0x7f09008e

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 67
    .local v4, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v2

    .line 68
    .local v2, dataMgr:Lcom/zhangdan/app/global/DataManager;
    invoke-virtual {v2}, Lcom/zhangdan/app/global/DataManager;->getBankList()Ljava/util/Collection;

    move-result-object v1

    .line 69
    .local v1, collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/zhangdan/app/data/model/BankInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BankInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 71
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    new-instance v5, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankComparator;

    invoke-direct {v5, p0}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankComparator;-><init>(Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    :cond_0
    new-instance v0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;

    invoke-direct {v0, p0, v3}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;-><init>(Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;Ljava/util/List;)V

    .line 75
    .local v0, adapter:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankAdapter;
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    return-void
.end method

.method private onPressBack()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->finish()V

    .line 62
    const v0, 0x7f040005

    const v1, 0x7f040006

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->overridePendingTransition(II)V

    .line 63
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->onPressBack()V

    .line 51
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09008c

    if-ne v0, v1, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->onPressBack()V

    .line 58
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;->initListView()V

    .line 46
    return-void
.end method
