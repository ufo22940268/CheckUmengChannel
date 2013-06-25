.class public Lcom/zhangdan/app/widget/CustomScrollView;
.super Landroid/widget/ScrollView;
.source "CustomScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/widget/CustomScrollView$YScrollDetector;
    }
.end annotation


# instance fields
.field private mFlag:Z

.field private mGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-boolean v2, p0, Lcom/zhangdan/app/widget/CustomScrollView;->mFlag:Z

    .line 20
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/zhangdan/app/widget/CustomScrollView$YScrollDetector;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/widget/CustomScrollView$YScrollDetector;-><init>(Lcom/zhangdan/app/widget/CustomScrollView;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zhangdan/app/widget/CustomScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 21
    invoke-virtual {p0, v2}, Lcom/zhangdan/app/widget/CustomScrollView;->setFadingEdgeLength(I)V

    .line 22
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    .line 27
    iput-boolean v6, p0, Lcom/zhangdan/app/widget/CustomScrollView;->mFlag:Z

    .line 28
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/CustomScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 29
    invoke-virtual {p0, v6}, Lcom/zhangdan/app/widget/CustomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 30
    .local v3, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 31
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 32
    .local v1, horizontalScrollView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 33
    .local v0, height:I
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/CustomScrollView;->getScrollY()I

    move-result v4

    .line 34
    .local v4, yoffset:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 35
    .local v2, motionY:F
    sub-int v7, v0, v4

    int-to-float v7, v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_2

    .line 36
    iput-boolean v5, p0, Lcom/zhangdan/app/widget/CustomScrollView;->mFlag:Z

    .line 43
    .end local v0           #height:I
    .end local v1           #horizontalScrollView:Landroid/view/View;
    .end local v2           #motionY:F
    .end local v3           #viewGroup:Landroid/view/ViewGroup;
    .end local v4           #yoffset:I
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/zhangdan/app/widget/CustomScrollView;->mFlag:Z

    if-eqz v7, :cond_3

    .line 44
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 46
    :cond_1
    :goto_1
    return v5

    .line 38
    .restart local v0       #height:I
    .restart local v1       #horizontalScrollView:Landroid/view/View;
    .restart local v2       #motionY:F
    .restart local v3       #viewGroup:Landroid/view/ViewGroup;
    .restart local v4       #yoffset:I
    :cond_2
    iput-boolean v6, p0, Lcom/zhangdan/app/widget/CustomScrollView;->mFlag:Z

    goto :goto_0

    .line 46
    .end local v0           #height:I
    .end local v1           #horizontalScrollView:Landroid/view/View;
    .end local v2           #motionY:F
    .end local v3           #viewGroup:Landroid/view/ViewGroup;
    .end local v4           #yoffset:I
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/zhangdan/app/widget/CustomScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_4
    move v5, v6

    goto :goto_1
.end method
