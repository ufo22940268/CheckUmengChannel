.class public Lorg/taptwo/android/widget/ViewFlow;
.super Landroid/widget/AdapterView;


# instance fields
.field private a:Ljava/util/LinkedList;

.field private b:Ljava/util/LinkedList;

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/widget/Scroller;

.field private g:Landroid/view/VelocityTracker;

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Lorg/taptwo/android/widget/h;

.field private p:Lorg/taptwo/android/widget/g;

.field private q:Ljava/util/EnumSet;

.field private r:Landroid/widget/Adapter;

.field private s:I

.field private t:Lorg/taptwo/android/widget/e;

.field private u:Lorg/taptwo/android/widget/b;

.field private v:I

.field private w:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->h:I

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/taptwo/android/widget/ViewFlow;->n:Z

    const-class v0, Lorg/taptwo/android/widget/f;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->q:Ljava/util/EnumSet;

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->v:I

    new-instance v0, Lorg/taptwo/android/widget/d;

    invoke-direct {v0, p0}, Lorg/taptwo/android/widget/d;-><init>(Lorg/taptwo/android/widget/ViewFlow;)V

    iput-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->w:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const/4 v0, 0x3

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->e:I

    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->h:I

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/taptwo/android/widget/ViewFlow;->n:Z

    const-class v0, Lorg/taptwo/android/widget/f;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->q:Ljava/util/EnumSet;

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->v:I

    new-instance v0, Lorg/taptwo/android/widget/d;

    invoke-direct {v0, p0}, Lorg/taptwo/android/widget/d;-><init>(Lorg/taptwo/android/widget/ViewFlow;)V

    iput-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->w:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput p2, p0, Lorg/taptwo/android/widget/ViewFlow;->e:I

    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->e:I

    iput v2, p0, Lorg/taptwo/android/widget/ViewFlow;->h:I

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/taptwo/android/widget/ViewFlow;->n:Z

    const-class v0, Lorg/taptwo/android/widget/f;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->q:Ljava/util/EnumSet;

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->v:I

    new-instance v0, Lorg/taptwo/android/widget/d;

    invoke-direct {v0, p0}, Lorg/taptwo/android/widget/d;-><init>(Lorg/taptwo/android/widget/ViewFlow;)V

    iput-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->w:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    sget-object v0, Lcom/zhangdan/app/R$styleable;->x:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->e:I

    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->b()V

    return-void
.end method

.method static synthetic a(Lorg/taptwo/android/widget/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->w:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method private a(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->q:Ljava/util/EnumSet;

    sget-object v1, Lorg/taptwo/android/widget/f;->b:Lorg/taptwo/android/widget/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->q:Ljava/util/EnumSet;

    sget-object v1, Lorg/taptwo/android/widget/f;->b:Lorg/taptwo/android/widget/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->p:Lorg/taptwo/android/widget/g;

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->q:Ljava/util/EnumSet;

    sget-object v1, Lorg/taptwo/android/widget/f;->a:Lorg/taptwo/android/widget/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->q:Ljava/util/EnumSet;

    sget-object v1, Lorg/taptwo/android/widget/f;->a:Lorg/taptwo/android/widget/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->p:Lorg/taptwo/android/widget/g;

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    goto :goto_0
.end method

.method private a(I)V
    .locals 6

    const/4 v2, 0x0

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->l:I

    sub-int v0, p1, v0

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->s:I

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->m:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->invalidate()V

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->l:I

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->l:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    if-nez v3, :cond_0

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/taptwo/android/widget/ViewFlow;->onScrollChanged(IIII)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->invalidate()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->postInvalidate()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/taptwo/android/widget/ViewFlow;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Lorg/taptwo/android/widget/ViewFlow;I)V
    .locals 0

    iput p1, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    return-void
.end method

.method static synthetic b(Lorg/taptwo/android/widget/ViewFlow;)I
    .locals 1

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    return v0
.end method

.method private b(IZ)Landroid/view/View;
    .locals 7

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    invoke-interface {v4, p1, v0, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    if-eq v5, v0, :cond_0

    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->b:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-ne v5, v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v3, v6, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    :cond_1
    if-eqz v0, :cond_5

    if-eqz p2, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p0, v5, v2, v4}, Lorg/taptwo/android/widget/ViewFlow;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-object v5

    :cond_3
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    :goto_3
    invoke-virtual {p0, v5, v3, v4, v1}, Lorg/taptwo/android/widget/ViewFlow;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_2

    :cond_6
    move v3, v2

    goto :goto_3
.end method

.method private b()V
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->b:Ljava/util/LinkedList;

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->j:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->k:I

    return-void
.end method

.method static synthetic c(Lorg/taptwo/android/widget/ViewFlow;)I
    .locals 1

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    return v0
.end method

.method private c()V
    .locals 3

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    invoke-direct {p0, v0}, Lorg/taptwo/android/widget/ViewFlow;->a(I)V

    return-void
.end method

.method static synthetic d(Lorg/taptwo/android/widget/ViewFlow;)Landroid/widget/Adapter;
    .locals 1

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    return-object v0
.end method

.method private d()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/taptwo/android/widget/ViewFlow;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size of mLoadedViews: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Size of mRecycledViews: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", X: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IndexInAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IndexInBuffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lorg/taptwo/android/widget/ViewFlow;)V
    .locals 4

    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->e()V

    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->d()V

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->removeAllViewsInLayout()V

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->q:Ljava/util/EnumSet;

    const-class v1, Lorg/taptwo/android/widget/f;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->e:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    iget v3, p0, Lorg/taptwo/android/widget/ViewFlow;->e:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->e()V

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->requestLayout()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/taptwo/android/widget/ViewFlow;->b(IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->p:Lorg/taptwo/android/widget/g;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->p:Lorg/taptwo/android/widget/g;

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/taptwo/android/widget/ViewFlow;->scrollTo(II)V

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->postInvalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->m:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->m:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->l:I

    iput v2, p0, Lorg/taptwo/android/widget/ViewFlow;->m:I

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->s:I

    if-eqz v0, :cond_0

    if-lez v0, :cond_6

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->q:Ljava/util/EnumSet;

    sget-object v1, Lorg/taptwo/android/widget/f;->a:Lorg/taptwo/android/widget/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->q:Ljava/util/EnumSet;

    sget-object v1, Lorg/taptwo/android/widget/f;->b:Lorg/taptwo/android/widget/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->e:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/taptwo/android/widget/ViewFlow;->a(Landroid/view/View;)V

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    :cond_2
    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->e:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    invoke-direct {p0, v0, v4}, Lorg/taptwo/android/widget/ViewFlow;->b(IZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->requestLayout()V

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    invoke-direct {p0, v0, v4}, Lorg/taptwo/android/widget/ViewFlow;->a(IZ)V

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->u:Lorg/taptwo/android/widget/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->u:Lorg/taptwo/android/widget/b;

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    invoke-interface {v0, v1}, Lorg/taptwo/android/widget/b;->a(I)V

    :cond_4
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->o:Lorg/taptwo/android/widget/h;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->o:Lorg/taptwo/android/widget/h;

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    invoke-interface {v0, v1}, Lorg/taptwo/android/widget/h;->a(I)V

    :cond_5
    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->e()V

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->q:Ljava/util/EnumSet;

    sget-object v1, Lorg/taptwo/android/widget/f;->a:Lorg/taptwo/android/widget/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->q:Ljava/util/EnumSet;

    sget-object v1, Lorg/taptwo/android/widget/f;->b:Lorg/taptwo/android/widget/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->e:I

    if-le v0, v1, :cond_7

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/taptwo/android/widget/ViewFlow;->a(Landroid/view/View;)V

    :cond_7
    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->e:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_3

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    invoke-direct {p0, v0, v3}, Lorg/taptwo/android/widget/ViewFlow;->b(IZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    goto :goto_1
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->v:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->v:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->w:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v4, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->g:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->g:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    iput v3, p0, Lorg/taptwo/android/widget/ViewFlow;->i:F

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->h:I

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->i:F

    sub-float/2addr v2, v3

    float-to-int v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v5, p0, Lorg/taptwo/android/widget/ViewFlow;->j:I

    if-le v2, v5, :cond_7

    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->h:I

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->p:Lorg/taptwo/android/widget/g;

    if-eqz v2, :cond_5

    int-to-float v2, v4

    invoke-direct {p0, v2}, Lorg/taptwo/android/widget/ViewFlow;->a(F)V

    :cond_5
    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->h:I

    if-ne v2, v0, :cond_0

    iput v3, p0, Lorg/taptwo/android/widget/ViewFlow;->i:F

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getScrollX()I

    move-result v2

    if-gez v4, :cond_8

    if-lez v2, :cond_6

    neg-int v2, v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lorg/taptwo/android/widget/ViewFlow;->scrollBy(II)V

    :cond_6
    :goto_2
    move v1, v0

    goto :goto_0

    :cond_7
    move v2, v1

    goto :goto_1

    :cond_8
    if-lez v4, :cond_6

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lorg/taptwo/android/widget/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v2, v3, v2

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_6

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lorg/taptwo/android/widget/ViewFlow;->scrollBy(II)V

    goto :goto_2

    :pswitch_2
    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->h:I

    if-ne v2, v0, :cond_9

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->g:Landroid/view/VelocityTracker;

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->k:I

    int-to-float v2, v2

    invoke-virtual {v0, v4, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    if-le v0, v4, :cond_a

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->l:I

    if-lez v2, :cond_a

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->l:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/taptwo/android/widget/ViewFlow;->a(I)V

    :goto_3
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->g:Landroid/view/VelocityTracker;

    :cond_9
    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->h:I

    goto/16 :goto_0

    :cond_a
    const/16 v2, -0x3e8

    if-ge v0, v2, :cond_b

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->l:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_b

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->l:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/taptwo/android/widget/ViewFlow;->a(I)V

    goto :goto_3

    :cond_b
    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->c()V

    goto :goto_3

    :pswitch_3
    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->h:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lorg/taptwo/android/widget/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int v6, v0, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v0, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    const/high16 v3, 0x4000

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewFlow can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewFlow can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v3

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_3

    iget-boolean v0, p0, Lorg/taptwo/android/widget/ViewFlow;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    iget v3, p0, Lorg/taptwo/android/widget/ViewFlow;->l:I

    mul-int/2addr v3, v2

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iput-boolean v1, p0, Lorg/taptwo/android/widget/ViewFlow;->n:Z

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lorg/taptwo/android/widget/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->u:Lorg/taptwo/android/widget/b;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->u:Lorg/taptwo/android/widget/b;

    invoke-interface {v1, v0}, Lorg/taptwo/android/widget/b;->b(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v4, 0x3e8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->g:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->g:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    iput v3, p0, Lorg/taptwo/android/widget/ViewFlow;->i:F

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->h:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->i:F

    sub-float/2addr v2, v3

    float-to-int v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v5, p0, Lorg/taptwo/android/widget/ViewFlow;->j:I

    if-le v2, v5, :cond_6

    move v2, v1

    :goto_2
    if-eqz v2, :cond_5

    iput v1, p0, Lorg/taptwo/android/widget/ViewFlow;->h:I

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->p:Lorg/taptwo/android/widget/g;

    if-eqz v2, :cond_5

    int-to-float v2, v4

    invoke-direct {p0, v2}, Lorg/taptwo/android/widget/ViewFlow;->a(F)V

    :cond_5
    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->h:I

    if-ne v2, v1, :cond_0

    iput v3, p0, Lorg/taptwo/android/widget/ViewFlow;->i:F

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getScrollX()I

    move-result v2

    if-gez v4, :cond_7

    if-lez v2, :cond_0

    neg-int v2, v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lorg/taptwo/android/widget/ViewFlow;->scrollBy(II)V

    goto :goto_0

    :cond_6
    move v2, v0

    goto :goto_2

    :cond_7
    if-lez v4, :cond_0

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lorg/taptwo/android/widget/ViewFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v2, v3, v2

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lorg/taptwo/android/widget/ViewFlow;->scrollBy(II)V

    goto/16 :goto_0

    :pswitch_2
    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->h:I

    if-ne v2, v1, :cond_8

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->g:Landroid/view/VelocityTracker;

    iget v3, p0, Lorg/taptwo/android/widget/ViewFlow;->k:I

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v2, v2

    if-le v2, v4, :cond_9

    iget v3, p0, Lorg/taptwo/android/widget/ViewFlow;->l:I

    if-lez v3, :cond_9

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->l:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lorg/taptwo/android/widget/ViewFlow;->a(I)V

    :goto_3
    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->g:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->g:Landroid/view/VelocityTracker;

    :cond_8
    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->h:I

    goto/16 :goto_0

    :cond_9
    const/16 v3, -0x3e8

    if-ge v2, v3, :cond_a

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->l:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_a

    iget v2, p0, Lorg/taptwo/android/widget/ViewFlow;->l:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lorg/taptwo/android/widget/ViewFlow;->a(I)V

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->c()V

    goto :goto_3

    :pswitch_3
    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->c()V

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->h:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->t:Lorg/taptwo/android/widget/e;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/taptwo/android/widget/e;

    invoke-direct {v0, p0}, Lorg/taptwo/android/widget/e;-><init>(Lorg/taptwo/android/widget/ViewFlow;)V

    iput-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->t:Lorg/taptwo/android/widget/e;

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    iget-object v1, p0, Lorg/taptwo/android/widget/ViewFlow;->t:Lorg/taptwo/android/widget/e;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/taptwo/android/widget/ViewFlow;->setSelection(I)V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->m:I

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->f:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {p0}, Lorg/taptwo/android/widget/ViewFlow;->d()V

    invoke-direct {p0, v2, v1}, Lorg/taptwo/android/widget/ViewFlow;->b(IZ)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->p:Lorg/taptwo/android/widget/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->p:Lorg/taptwo/android/widget/g;

    :cond_2
    move v0, v1

    :goto_1
    iget v4, p0, Lorg/taptwo/android/widget/ViewFlow;->e:I

    sub-int/2addr v4, v0

    if-gez v4, :cond_4

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    iput v2, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/ViewFlow;->requestLayout()V

    iget v0, p0, Lorg/taptwo/android/widget/ViewFlow;->c:I

    invoke-direct {p0, v0, v7}, Lorg/taptwo/android/widget/ViewFlow;->a(IZ)V

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->u:Lorg/taptwo/android/widget/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->u:Lorg/taptwo/android/widget/b;

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    invoke-interface {v0, v1}, Lorg/taptwo/android/widget/b;->a(I)V

    :cond_3
    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->o:Lorg/taptwo/android/widget/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/taptwo/android/widget/ViewFlow;->o:Lorg/taptwo/android/widget/h;

    iget v1, p0, Lorg/taptwo/android/widget/ViewFlow;->d:I

    invoke-interface {v0, v1}, Lorg/taptwo/android/widget/h;->a(I)V

    goto :goto_0

    :cond_4
    sub-int v4, v2, v0

    add-int v5, v2, v0

    if-ltz v4, :cond_5

    iget-object v6, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    invoke-direct {p0, v4, v7}, Lorg/taptwo/android/widget/ViewFlow;->b(IZ)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_5
    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->r:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v5, v4, :cond_6

    iget-object v4, p0, Lorg/taptwo/android/widget/ViewFlow;->a:Ljava/util/LinkedList;

    invoke-direct {p0, v5, v1}, Lorg/taptwo/android/widget/ViewFlow;->b(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
