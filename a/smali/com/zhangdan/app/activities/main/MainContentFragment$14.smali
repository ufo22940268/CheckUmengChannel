.class Lcom/zhangdan/app/activities/main/MainContentFragment$14;
.super Ljava/lang/Object;
.source "MainContentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 707
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$14;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 710
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$14;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$14;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$14;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mMainPagePw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1600(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v1

    #calls: Lcom/zhangdan/app/activities/main/MainContentFragment;->dismissPopupWindow(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1800(Lcom/zhangdan/app/activities/main/MainContentFragment;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V

    .line 713
    if-ne p3, v2, :cond_2

    .line 714
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$14;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "menu_switch_list_mode"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$14;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mListMode:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1900(Lcom/zhangdan/app/activities/main/MainContentFragment;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$14;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #calls: Lcom/zhangdan/app/activities/main/MainContentFragment;->setSimpleAdapter()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2000(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    .line 718
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$14;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setListMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 719
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 720
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$14;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "menu_switch_list_mode_detail"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$14;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mListMode:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1900(Lcom/zhangdan/app/activities/main/MainContentFragment;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 723
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$14;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #calls: Lcom/zhangdan/app/activities/main/MainContentFragment;->setDetailAdapter()V
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$2100(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    .line 724
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$14;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setListMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 725
    :cond_3
    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    .line 727
    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    goto :goto_0
.end method
