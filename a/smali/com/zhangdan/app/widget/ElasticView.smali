.class public Lcom/zhangdan/app/widget/ElasticView;
.super Landroid/widget/LinearLayout;
.source "ElasticView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;
    }
.end annotation


# static fields
.field private static final SCROLL_DURATION:I = 0x1f4


# instance fields
.field private mContentView:Landroid/view/View;

.field private mLastMotionY:F

.field private mOnScrollListener:Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;

.field private mScrollBarEnabled:Z

.field private mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mLastMotionY:F

    .line 51
    invoke-direct {p0, p1}, Lcom/zhangdan/app/widget/ElasticView;->init(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mLastMotionY:F

    .line 56
    invoke-direct {p0, p1}, Lcom/zhangdan/app/widget/ElasticView;->init(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method private canPullDown()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 164
    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mContentView:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    .line 165
    .local v0, list:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v3

    .line 167
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v1

    .line 168
    .local v1, padTop:I
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    .line 169
    .local v2, top:I
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    if-nez v5, :cond_2

    sub-int v5, v2, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    :cond_2
    move v3, v4

    .line 172
    goto :goto_0
.end method

.method private clearTopFading(Landroid/widget/ListView;)V
    .locals 9
    .parameter "listView"

    .prologue
    .line 181
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 182
    .local v3, sdkVersion:I
    const/16 v5, 0x9

    if-le v3, v5, :cond_0

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 185
    .local v4, viewCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v5, "setOverScrollMode"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 186
    .local v2, m:Ljava/lang/reflect/Method;
    const-string v5, "OVER_SCROLL_NEVER"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 187
    .local v0, OVER_SCROLL_NEVER:I
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v0           #OVER_SCROLL_NEVER:I
    .end local v2           #m:Ljava/lang/reflect/Method;
    .end local v4           #viewCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 188
    .restart local v4       #viewCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 189
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/ElasticView;->setOrientation(I)V

    .line 70
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mScroller:Landroid/widget/Scroller;

    .line 71
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/LinearLayout;->computeScroll()V

    .line 84
    iget-object v2, p0, Lcom/zhangdan/app/widget/ElasticView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/zhangdan/app/widget/ElasticView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 86
    .local v0, x:I
    iget-object v2, p0, Lcom/zhangdan/app/widget/ElasticView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 87
    .local v1, y:I
    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/widget/ElasticView;->scrollTo(II)V

    .line 88
    iget-object v2, p0, Lcom/zhangdan/app/widget/ElasticView;->mOnScrollListener:Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/zhangdan/app/widget/ElasticView;->mOnScrollListener:Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;

    invoke-interface {v2, v0, v1}, Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;->onScroll(II)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->postInvalidate()V

    .line 92
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 104
    .local v6, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 105
    .local v9, y:F
    packed-switch v6, :pswitch_data_0

    .line 155
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 107
    :pswitch_0
    const-string v0, "PullToRefreshView"

    const-string v1, "dispatch down..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput v9, p0, Lcom/zhangdan/app/widget/ElasticView;->mLastMotionY:F

    goto :goto_0

    .line 111
    :pswitch_1
    iget v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mLastMotionY:F

    cmpl-float v0, v9, v0

    if-lez v0, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/zhangdan/app/widget/ElasticView;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mLastMotionY:F

    sub-float/2addr v0, v9

    const/high16 v2, 0x4000

    div-float v8, v0, v2

    .line 114
    .local v8, diffY:F
    float-to-int v0, v8

    int-to-float v0, v0

    sub-float v0, v8, v0

    add-float/2addr v8, v0

    .line 115
    float-to-int v7, v8

    .line 116
    .local v7, deltaY:I
    invoke-virtual {p0, v1, v7}, Lcom/zhangdan/app/widget/ElasticView;->scrollBy(II)V

    .line 117
    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mOnScrollListener:Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mOnScrollListener:Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollY()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;->onScroll(II)V

    .line 119
    :cond_0
    iput-boolean v1, p0, Lcom/zhangdan/app/widget/ElasticView;->mScrollBarEnabled:Z

    .line 120
    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mContentView:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/zhangdan/app/widget/ElasticView;->mScrollBarEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 139
    .end local v7           #deltaY:I
    .end local v8           #diffY:F
    :cond_1
    :goto_1
    iput v9, p0, Lcom/zhangdan/app/widget/ElasticView;->mLastMotionY:F

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_4

    .line 124
    iget v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mLastMotionY:F

    sub-float v8, v0, v9

    .line 125
    .restart local v8       #diffY:F
    float-to-int v0, v8

    int-to-float v0, v0

    sub-float v0, v8, v0

    add-float/2addr v8, v0

    .line 126
    float-to-int v7, v8

    .line 127
    .restart local v7       #deltaY:I
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollY()I

    move-result v0

    add-int/2addr v0, v7

    if-lez v0, :cond_3

    .line 128
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollY()I

    move-result v0

    neg-int v7, v0

    .line 129
    :cond_3
    invoke-virtual {p0, v1, v7}, Lcom/zhangdan/app/widget/ElasticView;->scrollBy(II)V

    .line 130
    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mOnScrollListener:Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mOnScrollListener:Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollY()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;->onScroll(II)V

    goto :goto_1

    .line 133
    .end local v7           #deltaY:I
    .end local v8           #diffY:F
    :cond_4
    iget-boolean v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mScrollBarEnabled:Z

    if-nez v0, :cond_1

    .line 134
    iput-boolean v10, p0, Lcom/zhangdan/app/widget/ElasticView;->mScrollBarEnabled:Z

    .line 135
    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mContentView:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/zhangdan/app/widget/ElasticView;->mScrollBarEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1

    .line 143
    :pswitch_2
    const-string v0, "PullToRefreshView"

    const-string v2, "dispatch up or cancel..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_5

    .line 145
    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollY()I

    move-result v3

    neg-int v4, v3

    const/16 v5, 0x1f4

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 146
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->invalidate()V

    .line 148
    :cond_5
    iget-boolean v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mScrollBarEnabled:Z

    if-nez v0, :cond_6

    .line 149
    iput-boolean v10, p0, Lcom/zhangdan/app/widget/ElasticView;->mScrollBarEnabled:Z

    .line 150
    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mContentView:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/zhangdan/app/widget/ElasticView;->mScrollBarEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 152
    :cond_6
    iput v9, p0, Lcom/zhangdan/app/widget/ElasticView;->mLastMotionY:F

    goto/16 :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/ElasticView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mContentView:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mContentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mContentView:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/zhangdan/app/widget/ElasticView;->clearTopFading(Landroid/widget/ListView;)V

    .line 79
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mContentView:Landroid/view/View;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 97
    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mOnScrollListener:Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->mOnScrollListener:Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;

    invoke-interface {v0}, Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;->onFinishLayout()V

    .line 99
    :cond_0
    return-void
.end method

.method public setOnElastivViewScrollListener(Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/zhangdan/app/widget/ElasticView;->mOnScrollListener:Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;

    .line 61
    return-void
.end method
