.class public Lcom/zhangdan/app/widget/CustomScrollView;
.super Landroid/widget/ScrollView;


# instance fields
.field private a:Landroid/view/GestureDetector;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/zhangdan/app/widget/CustomScrollView;->b:Z

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/zhangdan/app/widget/c;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/widget/c;-><init>(Lcom/zhangdan/app/widget/CustomScrollView;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zhangdan/app/widget/CustomScrollView;->a:Landroid/view/GestureDetector;

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/widget/CustomScrollView;->setFadingEdgeLength(I)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/zhangdan/app/widget/CustomScrollView;->b:Z

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/CustomScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/widget/CustomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/CustomScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    iput-boolean v1, p0, Lcom/zhangdan/app/widget/CustomScrollView;->b:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/zhangdan/app/widget/CustomScrollView;->b:Z

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    iput-boolean v2, p0, Lcom/zhangdan/app/widget/CustomScrollView;->b:Z

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomScrollView;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method
