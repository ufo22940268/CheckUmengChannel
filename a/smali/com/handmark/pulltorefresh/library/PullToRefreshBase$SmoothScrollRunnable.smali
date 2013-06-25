.class final Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmoothScrollRunnable"
.end annotation


# instance fields
.field private mContinueRunning:Z

.field private mCurrentY:I

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

.field private final mScrollFromY:I

.field private final mScrollToY:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 2
    .parameter
    .parameter "fromY"
    .parameter "toY"
    .parameter "duration"
    .parameter "listener"

    .prologue
    .line 1633
    .local p0, this:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;,"Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    .line 1630
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    .line 1631
    const/4 v0, -0x1

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 1634
    iput p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    .line 1635
    iput p3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    .line 1636
    #getter for: Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->access$200(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1637
    iput-wide p4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    .line 1638
    iput-object p6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .line 1639
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .local p0, this:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;,"Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    const-wide/16 v7, 0x3e8

    .line 1648
    iget-wide v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 1649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    .line 1667
    :goto_0
    iget-boolean v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    iget v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    if-eq v3, v4, :cond_2

    .line 1668
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-static {v3, p0}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1674
    :cond_0
    :goto_1
    return-void

    .line 1657
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    sub-long/2addr v3, v5

    mul-long/2addr v3, v7

    iget-wide v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    div-long v1, v3, v5

    .line 1658
    .local v1, normalizedTime:J
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1660
    iget v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    iget v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v5, v1

    const/high16 v6, 0x447a

    div-float/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1662
    .local v0, deltaY:I
    iget v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 1663
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    iget v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_0

    .line 1670
    .end local v0           #deltaY:I
    .end local v1           #normalizedTime:J
    :cond_2
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

    if-eqz v3, :cond_0

    .line 1671
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

    invoke-interface {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;->onSmoothScrollFinished()V

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1677
    .local p0, this:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;,"Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    .line 1678
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-virtual {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1679
    return-void
.end method
