.class Lcom/zhangdan/app/activities/stage/StageSummaryFragment$1;
.super Ljava/lang/Object;
.source "StageSummaryFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/stage/StageSummaryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/stage/StageSummaryFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/stage/StageSummaryFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/zhangdan/app/activities/stage/StageSummaryFragment$1;->this$0:Lcom/zhangdan/app/activities/stage/StageSummaryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 177
    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/StageSummaryFragment$1;->this$0:Lcom/zhangdan/app/activities/stage/StageSummaryFragment;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/stage/StageSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 189
    :goto_0
    return v3

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/StageSummaryFragment$1;->this$0:Lcom/zhangdan/app/activities/stage/StageSummaryFragment;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/stage/StageSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    .line 180
    .local v0, activity:Lcom/zhangdan/app/activities/MainFragmentActivity;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 182
    :pswitch_1
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    goto :goto_0

    .line 186
    :pswitch_2
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
