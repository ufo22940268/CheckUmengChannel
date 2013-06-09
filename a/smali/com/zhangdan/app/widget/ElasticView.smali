.class public Lcom/zhangdan/app/widget/ElasticView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/Scroller;

.field private b:F

.field private c:Landroid/view/View;

.field private d:Lcom/zhangdan/app/widget/d;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/widget/ElasticView;->b:F

    invoke-direct {p0, p1}, Lcom/zhangdan/app/widget/ElasticView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/widget/ElasticView;->b:F

    invoke-direct {p0, p1}, Lcom/zhangdan/app/widget/ElasticView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/ElasticView;->setOrientation(I)V

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->a:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/app/widget/d;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/widget/ElasticView;->d:Lcom/zhangdan/app/widget/d;

    return-void
.end method

.method public computeScroll()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->computeScroll()V

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/widget/ElasticView;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/widget/ElasticView;->scrollTo(II)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->d:Lcom/zhangdan/app/widget/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->d:Lcom/zhangdan/app/widget/d;

    invoke-interface {v0, v1}, Lcom/zhangdan/app/widget/d;->a(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iput v7, p0, Lcom/zhangdan/app/widget/ElasticView;->b:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/zhangdan/app/widget/ElasticView;->b:F

    cmpl-float v0, v7, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_2

    move v0, v6

    :goto_1
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zhangdan/app/widget/ElasticView;->b:F

    sub-float/2addr v0, v7

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/widget/ElasticView;->scrollBy(II)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->d:Lcom/zhangdan/app/widget/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->d:Lcom/zhangdan/app/widget/d;

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollX()I

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollY()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/zhangdan/app/widget/d;->a(I)V

    :cond_0
    iput-boolean v1, p0, Lcom/zhangdan/app/widget/ElasticView;->e:Z

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/zhangdan/app/widget/ElasticView;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    :cond_1
    :goto_2
    iput v7, p0, Lcom/zhangdan/app/widget/ElasticView;->b:F

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_3

    sub-int v0, v3, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_6

    iget v0, p0, Lcom/zhangdan/app/widget/ElasticView;->b:F

    sub-float/2addr v0, v7

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v0

    if-lez v2, :cond_5

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollY()I

    move-result v0

    neg-int v0, v0

    :cond_5
    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/widget/ElasticView;->scrollBy(II)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->d:Lcom/zhangdan/app/widget/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->d:Lcom/zhangdan/app/widget/d;

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollX()I

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollY()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/zhangdan/app/widget/d;->a(I)V

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/zhangdan/app/widget/ElasticView;->e:Z

    if-nez v0, :cond_1

    iput-boolean v6, p0, Lcom/zhangdan/app/widget/ElasticView;->e:Z

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/zhangdan/app/widget/ElasticView;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->a:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->getScrollY()I

    move-result v3

    neg-int v4, v3

    const/16 v5, 0x1f4

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/ElasticView;->invalidate()V

    :cond_7
    iget-boolean v0, p0, Lcom/zhangdan/app/widget/ElasticView;->e:Z

    if-nez v0, :cond_8

    iput-boolean v6, p0, Lcom/zhangdan/app/widget/ElasticView;->e:Z

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/zhangdan/app/widget/ElasticView;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    :cond_8
    iput v7, p0, Lcom/zhangdan/app/widget/ElasticView;->b:F

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/widget/ElasticView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->c:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    const-string v2, "setOverScrollMode"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "OVER_SCROLL_NEVER"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->c:Landroid/view/View;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->d:Lcom/zhangdan/app/widget/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/widget/ElasticView;->d:Lcom/zhangdan/app/widget/d;

    invoke-interface {v0}, Lcom/zhangdan/app/widget/d;->a()V

    :cond_0
    return-void
.end method
