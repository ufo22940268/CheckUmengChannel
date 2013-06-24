.class public Lcom/zhangdan/preferential/widget/MainContentListView;
.super Landroid/widget/ListView;
.source "MainContentListView.java"


# instance fields
.field private mDiffX:F

.field private mDiffY:F

.field private mDirectionDiffX:F

.field private mIsTouchDownInBanner:Z

.field private mPrefX:F

.field private mPrefY:F

.field private mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private getBanner()Landroid/view/View;
    .locals 4

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/MainContentListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 111
    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/MainContentListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 112
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090259

    if-ne v2, v3, :cond_0

    .line 117
    .end local v1           #v:Landroid/view/View;
    :goto_1
    return-object v1

    .line 110
    .restart local v1       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v1           #v:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isInBanner(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/zhangdan/preferential/widget/MainContentListView;->getBanner()Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isInFirstBanner()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-direct {p0}, Lcom/zhangdan/preferential/widget/MainContentListView;->getBanner()Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, banner:Landroid/view/View;
    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v2

    .line 95
    :cond_1
    const v3, 0x7f09030f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, pager:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/MainContentListView;->getWidth()I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x3fe0

    mul-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    return v0

    .line 46
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/MainContentListView;->isInBanner(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iput-boolean v5, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mIsTouchDownInBanner:Z

    .line 48
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mPrefX:F

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mPrefY:F

    .line 52
    iput v4, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mDiffX:F

    .line 53
    iput v4, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mDiffY:F

    .line 54
    iput v4, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mDirectionDiffX:F

    goto :goto_0

    .line 59
    :pswitch_1
    iget-boolean v1, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mIsTouchDownInBanner:Z

    if-eqz v1, :cond_0

    .line 61
    iget v1, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mDiffX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mPrefX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mDiffX:F

    .line 62
    iget v1, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mDiffY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mPrefY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mDiffY:F

    .line 63
    iget v1, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mDirectionDiffX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mPrefX:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mDirectionDiffX:F

    .line 64
    iget v1, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mDiffX:F

    iget v2, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mDiffY:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 65
    invoke-direct {p0}, Lcom/zhangdan/preferential/widget/MainContentListView;->isInFirstBanner()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mDirectionDiffX:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v5}, Lcom/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    .line 72
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mPrefX:F

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mPrefY:F

    goto :goto_0

    .line 79
    :pswitch_2
    iget-boolean v1, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mIsTouchDownInBanner:Z

    if-eqz v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1, v5}, Lcom/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    .line 82
    :cond_3
    iput-boolean v0, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mIsTouchDownInBanner:Z

    goto/16 :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSlidingMenu(Lcom/slidingmenu/lib/SlidingMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/MainContentListView;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    .line 122
    return-void
.end method
