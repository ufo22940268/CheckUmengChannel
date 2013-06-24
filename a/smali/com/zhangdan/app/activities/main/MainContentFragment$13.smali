.class Lcom/zhangdan/app/activities/main/MainContentFragment$13;
.super Ljava/lang/Object;
.source "MainContentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/main/MainContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 633
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/activities/MainFragmentActivity;

    .line 636
    .local v2, mainActivity:Lcom/zhangdan/app/activities/MainFragmentActivity;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f090039

    if-ne v4, v5, :cond_2

    .line 637
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->showMenu()V

    goto :goto_0

    .line 638
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f090049

    if-ne v4, v5, :cond_4

    .line 639
    const-string v4, "ab_main_page"

    invoke-static {v2, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 640
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mMainPagePw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    invoke-static {v4}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1600(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v4

    if-nez v4, :cond_3

    .line 641
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    new-instance v5, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-direct {v5, v2}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mMainPagePw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    invoke-static {v4, v5}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1602(Lcom/zhangdan/app/activities/main/MainContentFragment;Lcom/zhangdan/app/popmenu/ZdListPopupWindow;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    .line 642
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mMainPagePw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    invoke-static {v4}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1600(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v4

    new-instance v5, Lcom/zhangdan/app/activities/main/adapter/MenuMainPageAdapter;

    invoke-direct {v5, v2}, Lcom/zhangdan/app/activities/main/adapter/MenuMainPageAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 643
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mMainPagePw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    invoke-static {v4}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1600(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 644
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mMainPagePw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    invoke-static {v4}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1600(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v4

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0053

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setContentWidth(I)V

    .line 645
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mMainPagePw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    invoke-static {v4}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1600(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnActionBarMainPageItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v5}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1700(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 647
    :cond_3
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mMainPagePw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    invoke-static {v4}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1600(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->show()V

    goto :goto_0

    .line 660
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f09004a

    if-ne v4, v5, :cond_5

    .line 661
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "ab_refresh"

    invoke-static {v4, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 663
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/main/MainContentFragment;->onClickActionBarRefresh()V

    goto/16 :goto_0

    .line 664
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f09004d

    if-ne v4, v5, :cond_6

    .line 665
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "menu_sigma"

    invoke-static {v4, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 666
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mDataManager:Lcom/zhangdan/app/global/DataManager;
    invoke-static {v4}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1400(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/global/DataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v1

    .line 667
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    new-instance v0, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;

    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 668
    .local v0, dialog:Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->show()V

    goto/16 :goto_0

    .line 669
    .end local v0           #dialog:Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f09004f

    if-ne v4, v5, :cond_0

    .line 670
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "menu_free_interest"

    invoke-static {v4, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 671
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mDataManager:Lcom/zhangdan/app/global/DataManager;
    invoke-static {v4}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1400(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/global/DataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v1

    .line 672
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v3, tmpList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 674
    new-instance v4, Lcom/zhangdan/app/activities/main/comparator/FreeDaysComparator;

    invoke-direct {v4}, Lcom/zhangdan/app/activities/main/comparator/FreeDaysComparator;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 675
    new-instance v0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;

    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 676
    .local v0, dialog:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->show()V

    goto/16 :goto_0
.end method
