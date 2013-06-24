.class public Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShopListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/ShopListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuAdapter"
.end annotation


# instance fields
.field private TYPE_COMMON:I

.field private TYPE_TODAY:I

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/MenuTag;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zhangdan/preferential/ShopListFragment;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->tags:Ljava/util/List;

    .line 695
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->TYPE_TODAY:I

    .line 696
    const/4 v0, 0x1

    iput v0, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->TYPE_COMMON:I

    .line 699
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->updateSelector()V

    .line 700
    return-void
.end method

.method private updateSelector()V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #calls: Lcom/zhangdan/preferential/ShopListFragment;->disableCategorySelector()V
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$2600(Lcom/zhangdan/preferential/ShopListFragment;)V

    .line 714
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #calls: Lcom/zhangdan/preferential/ShopListFragment;->enableCategorySelector()V
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$2700(Lcom/zhangdan/preferential/ShopListFragment;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 721
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 725
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 748
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 749
    iget v0, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->TYPE_TODAY:I

    .line 751
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->TYPE_COMMON:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v6, 0x7f0901d5

    const/4 v5, 0x0

    .line 729
    move-object v2, p2

    .line 730
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->getItemViewType(I)I

    move-result v1

    .line 731
    .local v1, type:I
    if-nez v2, :cond_0

    .line 732
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-virtual {v3}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300c1

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 734
    iget v3, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->TYPE_TODAY:I

    if-ne v1, v3, :cond_0

    .line 735
    const v3, 0x7f0902ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 736
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-virtual {v4}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    move-object v3, v2

    .line 741
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 742
    .local v0, tv:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->tags:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/preferential/data/model/MenuTag;

    iget-object v3, v3, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x2

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "parent"
    .parameter "view"
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 762
    invoke-virtual {p0, p3}, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->getItemViewType(I)I

    move-result v2

    .line 763
    .local v2, type:I
    iget v3, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->TYPE_TODAY:I

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mSettingManager:Lcom/zhangdan/preferential/utils/SettingManager;
    invoke-static {v3}, Lcom/zhangdan/preferential/ShopListFragment;->access$2500(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/SettingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhangdan/preferential/utils/SettingManager;->hasSetTodayHint()Z

    move-result v3

    if-nez v3, :cond_0

    .line 764
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #calls: Lcom/zhangdan/preferential/ShopListFragment;->buildConfirmDialog()V
    invoke-static {v3}, Lcom/zhangdan/preferential/ShopListFragment;->access$2800(Lcom/zhangdan/preferential/ShopListFragment;)V

    .line 767
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.zhangdan.preferential.UPDATE_CATEGORY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 768
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 769
    .local v0, extra:Landroid/os/Bundle;
    const-string v4, "menu_tag"

    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->tags:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 770
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 771
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-virtual {v3}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 772
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    invoke-static {v3}, Lcom/zhangdan/preferential/ShopListFragment;->access$2900(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    .line 773
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 777
    invoke-virtual {p0, p3}, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->getItemViewType(I)I

    move-result v0

    iget v1, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->TYPE_TODAY:I

    if-ne v0, v1, :cond_0

    .line 778
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #calls: Lcom/zhangdan/preferential/ShopListFragment;->buildTodayDialog()V
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$3000(Lcom/zhangdan/preferential/ShopListFragment;)V

    .line 779
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$2900(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    .line 780
    const/4 v0, 0x1

    .line 783
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/MenuTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 704
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/MenuTag;>;"
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->tags:Ljava/util/List;

    .line 705
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->updateSelector()V

    .line 706
    return-void
.end method
