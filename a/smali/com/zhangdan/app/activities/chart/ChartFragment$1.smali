.class Lcom/zhangdan/app/activities/chart/ChartFragment$1;
.super Ljava/lang/Object;
.source "ChartFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/chart/ChartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/ChartFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 190
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 186
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 161
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/ChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/ChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    .line 164
    .local v0, activity:Lcom/zhangdan/app/activities/MainFragmentActivity;
    const/4 v1, 0x0

    .line 165
    .local v1, strResId:I
    packed-switch p1, :pswitch_data_0

    .line 177
    const v1, 0x7f07019e

    .line 178
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 180
    :goto_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mActionBarView:Landroid/view/View;
    invoke-static {v2}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$800(Lcom/zhangdan/app/activities/chart/ChartFragment;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #getter for: Lcom/zhangdan/app/activities/chart/ChartFragment;->mActionBarView:Landroid/view/View;
    invoke-static {v2}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$900(Lcom/zhangdan/app/activities/chart/ChartFragment;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09003a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 167
    :pswitch_0
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 168
    const v1, 0x7f07019e

    .line 169
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    const/4 v3, 0x0

    #calls: Lcom/zhangdan/app/activities/chart/ChartFragment;->changePageSelectedState(I)V
    invoke-static {v2, v3}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$700(Lcom/zhangdan/app/activities/chart/ChartFragment;I)V

    goto :goto_1

    .line 172
    :pswitch_1
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 173
    const v1, 0x7f07019f

    .line 174
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ChartFragment$1;->this$0:Lcom/zhangdan/app/activities/chart/ChartFragment;

    #calls: Lcom/zhangdan/app/activities/chart/ChartFragment;->changePageSelectedState(I)V
    invoke-static {v2, v3}, Lcom/zhangdan/app/activities/chart/ChartFragment;->access$700(Lcom/zhangdan/app/activities/chart/ChartFragment;I)V

    goto :goto_1

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
