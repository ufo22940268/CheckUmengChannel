.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;


# static fields
.field private static final a:[I

.field private static final ae:Landroid/support/v4/view/bf;

.field private static final b:Ljava/util/Comparator;

.field private static final c:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:F

.field private F:F

.field private G:F

.field private H:I

.field private I:Landroid/view/VelocityTracker;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:Z

.field private Q:Landroid/support/v4/d/f;

.field private R:Landroid/support/v4/d/f;

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:I

.field private W:Landroid/support/v4/view/bb;

.field private Z:Landroid/support/v4/view/bb;

.field private aa:Landroid/support/v4/view/ba;

.field private ab:Landroid/support/v4/view/bc;

.field private ac:I

.field private ad:Ljava/util/ArrayList;

.field private final af:Ljava/lang/Runnable;

.field private ag:I

.field private final d:Ljava/util/ArrayList;

.field private final e:Landroid/support/v4/view/ay;

.field private final f:Landroid/graphics/Rect;

.field private g:Landroid/support/v4/view/v;

.field private h:I

.field private i:I

.field private j:Landroid/os/Parcelable;

.field private k:Ljava/lang/ClassLoader;

.field private l:Landroid/widget/Scroller;

.field private m:Landroid/support/v4/view/bd;

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    new-instance v0, Landroid/support/v4/view/au;

    invoke-direct {v0}, Landroid/support/v4/view/au;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->b:Ljava/util/Comparator;

    new-instance v0, Landroid/support/v4/view/av;

    invoke-direct {v0}, Landroid/support/v4/view/av;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->c:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/support/v4/view/bf;

    invoke-direct {v0}, Landroid/support/v4/view/bf;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->ae:Landroid/support/v4/view/bf;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/view/ay;

    invoke-direct {v0}, Landroid/support/v4/view/ay;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/ay;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/graphics/Rect;

    iput v1, p0, Landroid/support/v4/view/ViewPager;->i:I

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/os/Parcelable;

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->k:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->r:F

    const v0, 0x7f7fffff

    iput v0, p0, Landroid/support/v4/view/ViewPager;->s:F

    iput v3, p0, Landroid/support/v4/view/ViewPager;->y:I

    iput v1, p0, Landroid/support/v4/view/ViewPager;->H:I

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->S:Z

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->T:Z

    new-instance v0, Landroid/support/v4/view/aw;

    invoke-direct {v0, p0}, Landroid/support/v4/view/aw;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Ljava/lang/Runnable;

    iput v2, p0, Landroid/support/v4/view/ViewPager;->ag:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/view/ay;

    invoke-direct {v0}, Landroid/support/v4/view/ay;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/ay;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/graphics/Rect;

    iput v1, p0, Landroid/support/v4/view/ViewPager;->i:I

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/os/Parcelable;

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->k:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->r:F

    const v0, 0x7f7fffff

    iput v0, p0, Landroid/support/v4/view/ViewPager;->s:F

    iput v3, p0, Landroid/support/v4/view/ViewPager;->y:I

    iput v1, p0, Landroid/support/v4/view/ViewPager;->H:I

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->S:Z

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->T:Z

    new-instance v0, Landroid/support/v4/view/aw;

    invoke-direct {v0, p0}, Landroid/support/v4/view/aw;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Ljava/lang/Runnable;

    iput v2, p0, Landroid/support/v4/view/ViewPager;->ag:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V

    return-void
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    if-nez p2, :cond_0

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v0, p0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method private a(II)Landroid/support/v4/view/ay;
    .locals 2

    new-instance v0, Landroid/support/v4/view/ay;

    invoke-direct {v0}, Landroid/support/v4/view/ay;-><init>()V

    iput p1, v0, Landroid/support/v4/view/ay;->b:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/v;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ay;->a:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/v;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Landroid/support/v4/view/ay;->d:F

    if-ltz p2, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)Landroid/support/v4/view/ay;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    iget-object v3, v0, Landroid/support/v4/view/ay;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/v;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(IF)V
    .locals 11

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->V:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    move v4, v3

    :goto_0
    if-ge v4, v7, :cond_1

    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v9, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v9, :cond_a

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_1
    add-int/2addr v0, v5

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v0, v9

    if-eqz v0, :cond_0

    invoke-virtual {v8, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_0

    :pswitch_1
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    goto :goto_1

    :pswitch_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_1

    :pswitch_3
    sub-int v0, v6, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v0, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v2, v9

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_1

    :cond_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->N:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->N:I

    if-ge p1, v0, :cond_3

    :cond_2
    iput p1, p0, Landroid/support/v4/view/ViewPager;->N:I

    :cond_3
    iget v0, p0, Landroid/support/v4/view/ViewPager;->O:I

    if-ltz v0, :cond_4

    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->O:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    :cond_4
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->O:I

    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/bb;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/bb;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/bb;->a(IF)V

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/bb;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/bb;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/bb;->a(IF)V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ab:Landroid/support/v4/view/bc;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v3

    :goto_3
    if-ge v1, v2, :cond_9

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v0, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ab:Landroid/support/v4/view/bc;

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->U:Z

    return-void

    :cond_a
    move v10, v2

    move v2, v1

    move v1, v10

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(IZIZ)V
    .locals 12

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->e(I)Landroid/support/v4/view/ay;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Landroid/support/v4/view/ViewPager;->r:F

    iget v1, v1, Landroid/support/v4/view/ay;->e:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->s:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(Z)V

    :goto_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/bb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/bb;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bb;->a(I)V

    :cond_1
    if-eqz p4, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/bb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/bb;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bb;->a(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    sub-int v3, v0, v1

    rsub-int/lit8 v4, v2, 0x0

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v7, v5

    int-to-float v5, v5

    const/high16 v8, 0x3f00

    sub-float/2addr v6, v8

    float-to-double v8, v6

    const-wide v10, 0x3fde28c7460698c7L

    mul-double/2addr v8, v10

    double-to-float v6, v8

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lez v6, :cond_5

    const/high16 v0, 0x447a

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_2
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroid/support/v4/view/ai;->b(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_5
    int-to-float v0, v0

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    iget v6, p0, Landroid/support/v4/view/ViewPager;->h:I

    invoke-virtual {v5, v6}, Landroid/support/v4/view/v;->getPageWidth(I)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->n:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    div-float v0, v5, v0

    const/high16 v5, 0x3f80

    add-float/2addr v0, v5

    const/high16 v5, 0x42c8

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_2

    :cond_6
    if-eqz p4, :cond_7

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/bb;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/bb;

    invoke-interface {v1, p1}, Landroid/support/v4/view/bb;->a(I)V

    :cond_7
    if-eqz p4, :cond_8

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/bb;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/bb;

    invoke-interface {v1, p1}, Landroid/support/v4/view/bb;->a(I)V

    :cond_8
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto/16 :goto_1
.end method

.method private a(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    return-void
.end method

.method private a(IZZI)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v0}, Landroid/support/v4/view/v;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->b(Z)V

    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->b(Z)V

    goto :goto_0

    :cond_2
    if-gez p1, :cond_5

    move p1, v1

    :cond_3
    :goto_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->y:I

    iget v2, p0, Landroid/support/v4/view/ViewPager;->h:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_4

    iget v2, p0, Landroid/support/v4/view/ViewPager;->h:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_6

    :cond_4
    move v2, v1

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    iput-boolean v3, v0, Landroid/support/v4/view/ay;->c:Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v0}, Landroid/support/v4/view/v;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v0}, Landroid/support/v4/view/v;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    :cond_6
    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-eq v0, p1, :cond_7

    move v1, v3

    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->d(I)V

    invoke-direct {p0, p1, p2, p4, v1}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p1}, Landroid/support/v4/view/r;->a(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->H:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/r;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->F:F

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    move v0, v4

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->b(Z)V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_0

    if-eq v3, v6, :cond_1

    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    :cond_1
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x:Z

    move v1, v2

    move v3, v0

    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    iget-boolean v5, v0, Landroid/support/v4/view/ay;->c:Z

    if-eqz v5, :cond_2

    iput-boolean v2, v0, Landroid/support/v4/view/ay;->c:Z

    move v3, v4

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    if-eqz p1, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ai;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private a(F)Z
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    sub-float/2addr v0, p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->F:F

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->r:F

    mul-float v4, v0, v1

    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->s:F

    mul-float v6, v0, v1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ay;

    iget v8, v0, Landroid/support/v4/view/ay;->b:I

    if-eqz v8, :cond_5

    iget v0, v0, Landroid/support/v4/view/ay;->e:F

    int-to-float v4, v7

    mul-float/2addr v0, v4

    move v4, v0

    move v0, v2

    :goto_0
    iget v8, v1, Landroid/support/v4/view/ay;->b:I

    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v9}, Landroid/support/v4/view/v;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_4

    iget v1, v1, Landroid/support/v4/view/ay;->e:F

    int-to-float v3, v7

    mul-float/2addr v1, v3

    move v3, v2

    :goto_1
    cmpg-float v6, v5, v4

    if-gez v6, :cond_1

    if-eqz v0, :cond_0

    sub-float v0, v4, v5

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Q:Landroid/support/v4/d/f;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/d/f;->a(F)Z

    move-result v2

    :cond_0
    :goto_2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    float-to-int v0, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    float-to-int v0, v4

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->f(I)Z

    return v2

    :cond_1
    cmpl-float v0, v5, v1

    if-lez v0, :cond_3

    if-eqz v3, :cond_2

    sub-float v0, v5, v1

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/d/f;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/d/f;->a(F)Z

    move-result v2

    :cond_2
    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    move v1, v6

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method private a(Landroid/view/View;ZIII)Z
    .locals 10

    const/4 v2, 0x1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ai;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private b(Landroid/view/View;)Landroid/support/v4/view/ay;
    .locals 2

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ay;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/v;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    return-object v0
.end method

.method private b(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/view/ViewPager;->ag:I

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Landroid/support/v4/view/ViewPager;->ag:I

    if-ne p1, v0, :cond_2

    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v4/view/ViewPager;->O:I

    iput v2, p0, Landroid/support/v4/view/ViewPager;->N:I

    :cond_2
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->ab:Landroid/support/v4/view/bc;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_5

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    :goto_3
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/support/v4/view/ai;->b(Landroid/view/View;I)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/bb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/bb;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bb;->b(I)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->w:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->w:Z

    :cond_0
    return-void
.end method

.method static synthetic c(Landroid/support/v4/view/ViewPager;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    return v0
.end method

.method private c(I)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->x:Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    return-void
.end method

.method private d(I)V
    .locals 14

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-eq v1, p1, :cond_30

    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->e(I)Landroid/support/v4/view/ay;

    move-result-object v0

    iput p1, p0, Landroid/support/v4/view/ViewPager;->h:I

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->x:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/v;->startUpdate(Landroid/view/ViewGroup;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->y:I

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/view/ViewPager;->h:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v2}, Landroid/support/v4/view/v;->getCount()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    iget v3, p0, Landroid/support/v4/view/ViewPager;->h:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2f

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    iget v4, v0, Landroid/support/v4/view/ay;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-lt v4, v5, :cond_3

    iget v4, v0, Landroid/support/v4/view/ay;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-ne v4, v5, :cond_2f

    :goto_2
    if-nez v0, :cond_2e

    if-lez v8, :cond_2e

    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    invoke-direct {p0, v0, v2}, Landroid/support/v4/view/ViewPager;->a(II)Landroid/support/v4/view/ay;

    move-result-object v0

    move-object v7, v0

    :goto_3
    if-eqz v7, :cond_21

    const/4 v5, 0x0

    add-int/lit8 v4, v2, -0x1

    if-ltz v4, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    :goto_4
    const/high16 v3, 0x4000

    iget v10, v7, Landroid/support/v4/view/ay;->d:F

    sub-float v10, v3, v10

    iget v3, p0, Landroid/support/v4/view/ViewPager;->h:I

    add-int/lit8 v3, v3, -0x1

    move v12, v3

    move v3, v5

    move v5, v12

    move v13, v4

    move v4, v2

    move v2, v13

    :goto_5
    if-ltz v5, :cond_a

    cmpl-float v11, v3, v10

    if-ltz v11, :cond_6

    if-ge v5, v6, :cond_6

    if-eqz v0, :cond_a

    iget v11, v0, Landroid/support/v4/view/ay;->b:I

    if-ne v5, v11, :cond_2

    iget-boolean v11, v0, Landroid/support/v4/view/ay;->c:Z

    if-nez v11, :cond_2

    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    iget-object v0, v0, Landroid/support/v4/view/ay;->a:Ljava/lang/Object;

    invoke-virtual {v11, p0, v5, v0}, Landroid/support/v4/view/v;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v4, -0x1

    if-ltz v2, :cond_5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    :cond_2
    :goto_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    if-eqz v0, :cond_8

    iget v11, v0, Landroid/support/v4/view/ay;->b:I

    if-ne v5, v11, :cond_8

    iget v0, v0, Landroid/support/v4/view/ay;->d:F

    add-float/2addr v3, v0

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_7

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    add-int/lit8 v0, v2, 0x1

    invoke-direct {p0, v5, v0}, Landroid/support/v4/view/ViewPager;->a(II)Landroid/support/v4/view/ay;

    move-result-object v0

    iget v0, v0, Landroid/support/v4/view/ay;->d:F

    add-float/2addr v3, v0

    add-int/lit8 v4, v4, 0x1

    if-ltz v2, :cond_9

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    iget v2, v7, Landroid/support/v4/view/ay;->d:F

    add-int/lit8 v3, v4, 0x1

    const/high16 v0, 0x4000

    cmpg-float v0, v2, v0

    if-gez v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    :goto_7
    iget v5, p0, Landroid/support/v4/view/ViewPager;->h:I

    add-int/lit8 v5, v5, 0x1

    :goto_8
    if-ge v5, v8, :cond_11

    const/high16 v6, 0x4000

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_d

    if-le v5, v9, :cond_d

    if-eqz v0, :cond_11

    iget v6, v0, Landroid/support/v4/view/ay;->b:I

    if-ne v5, v6, :cond_2d

    iget-boolean v6, v0, Landroid/support/v4/view/ay;->c:Z

    if-nez v6, :cond_2d

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    iget-object v0, v0, Landroid/support/v4/view/ay;->a:Ljava/lang/Object;

    invoke-virtual {v6, p0, v5, v0}, Landroid/support/v4/view/v;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    :goto_9
    move v12, v2

    move-object v2, v0

    move v0, v12

    :goto_a
    add-int/lit8 v5, v5, 0x1

    move v12, v0

    move-object v0, v2

    move v2, v12

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    goto :goto_9

    :cond_d
    if-eqz v0, :cond_f

    iget v6, v0, Landroid/support/v4/view/ay;->b:I

    if-ne v5, v6, :cond_f

    iget v0, v0, Landroid/support/v4/view/ay;->d:F

    add-float/2addr v2, v0

    add-int/lit8 v3, v3, 0x1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    :goto_b
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    goto :goto_b

    :cond_f
    invoke-direct {p0, v5, v3}, Landroid/support/v4/view/ViewPager;->a(II)Landroid/support/v4/view/ay;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    iget v0, v0, Landroid/support/v4/view/ay;->d:F

    add-float/2addr v2, v0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_10

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    :goto_c
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    goto :goto_c

    :cond_11
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v0}, Landroid/support/v4/view/v;->getCount()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    if-lez v0, :cond_12

    iget v2, p0, Landroid/support/v4/view/ViewPager;->n:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    move v6, v0

    :goto_d
    if-eqz v1, :cond_18

    iget v2, v1, Landroid/support/v4/view/ay;->b:I

    iget v0, v7, Landroid/support/v4/view/ay;->b:I

    if-ge v2, v0, :cond_15

    const/4 v0, 0x0

    iget v3, v1, Landroid/support/v4/view/ay;->e:F

    iget v1, v1, Landroid/support/v4/view/ay;->d:F

    add-float/2addr v1, v3

    add-float v3, v1, v6

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    :goto_e
    iget v0, v7, Landroid/support/v4/view/ay;->b:I

    if-gt v2, v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    :goto_f
    iget v5, v0, Landroid/support/v4/view/ay;->b:I

    if-le v2, v5, :cond_13

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_13

    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    goto :goto_f

    :cond_12
    const/4 v0, 0x0

    move v6, v0

    goto :goto_d

    :cond_13
    :goto_10
    iget v5, v0, Landroid/support/v4/view/ay;->b:I

    if-ge v2, v5, :cond_14

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v5, v2}, Landroid/support/v4/view/v;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v6

    add-float/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_14
    iput v3, v0, Landroid/support/v4/view/ay;->e:F

    iget v0, v0, Landroid/support/v4/view/ay;->d:F

    add-float/2addr v0, v6

    add-float/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_15
    iget v0, v7, Landroid/support/v4/view/ay;->b:I

    if-le v2, v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v3, v1, Landroid/support/v4/view/ay;->e:F

    add-int/lit8 v2, v2, -0x1

    move v1, v0

    :goto_11
    iget v0, v7, Landroid/support/v4/view/ay;->b:I

    if-lt v2, v0, :cond_18

    if-ltz v1, :cond_18

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    :goto_12
    iget v5, v0, Landroid/support/v4/view/ay;->b:I

    if-ge v2, v5, :cond_16

    if-lez v1, :cond_16

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    goto :goto_12

    :cond_16
    :goto_13
    iget v5, v0, Landroid/support/v4/view/ay;->b:I

    if-le v2, v5, :cond_17

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v5, v2}, Landroid/support/v4/view/v;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_17
    iget v5, v0, Landroid/support/v4/view/ay;->d:F

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    iput v3, v0, Landroid/support/v4/view/ay;->e:F

    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    :cond_18
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v2, v7, Landroid/support/v4/view/ay;->e:F

    iget v0, v7, Landroid/support/v4/view/ay;->b:I

    add-int/lit8 v1, v0, -0x1

    iget v0, v7, Landroid/support/v4/view/ay;->b:I

    if-nez v0, :cond_19

    iget v0, v7, Landroid/support/v4/view/ay;->e:F

    :goto_14
    iput v0, p0, Landroid/support/v4/view/ViewPager;->r:F

    iget v0, v7, Landroid/support/v4/view/ay;->b:I

    add-int/lit8 v3, v8, -0x1

    if-ne v0, v3, :cond_1a

    iget v0, v7, Landroid/support/v4/view/ay;->e:F

    iget v3, v7, Landroid/support/v4/view/ay;->d:F

    add-float/2addr v0, v3

    const/high16 v3, 0x3f80

    sub-float/2addr v0, v3

    :goto_15
    iput v0, p0, Landroid/support/v4/view/ViewPager;->s:F

    add-int/lit8 v0, v4, -0x1

    move v5, v0

    :goto_16
    if-ltz v5, :cond_1d

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    move v3, v2

    :goto_17
    iget v2, v0, Landroid/support/v4/view/ay;->b:I

    if-le v1, v2, :cond_1b

    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v10, v1}, Landroid/support/v4/view/v;->getPageWidth(I)F

    move-result v1

    add-float/2addr v1, v6

    sub-float v1, v3, v1

    move v3, v1

    move v1, v2

    goto :goto_17

    :cond_19
    const v0, -0x800001

    goto :goto_14

    :cond_1a
    const v0, 0x7f7fffff

    goto :goto_15

    :cond_1b
    iget v2, v0, Landroid/support/v4/view/ay;->d:F

    add-float/2addr v2, v6

    sub-float v2, v3, v2

    iput v2, v0, Landroid/support/v4/view/ay;->e:F

    iget v0, v0, Landroid/support/v4/view/ay;->b:I

    if-nez v0, :cond_1c

    iput v2, p0, Landroid/support/v4/view/ViewPager;->r:F

    :cond_1c
    add-int/lit8 v0, v5, -0x1

    add-int/lit8 v1, v1, -0x1

    move v5, v0

    goto :goto_16

    :cond_1d
    iget v0, v7, Landroid/support/v4/view/ay;->e:F

    iget v1, v7, Landroid/support/v4/view/ay;->d:F

    add-float/2addr v0, v1

    add-float v2, v0, v6

    iget v0, v7, Landroid/support/v4/view/ay;->b:I

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    :goto_18
    if-ge v4, v9, :cond_20

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    move v3, v2

    :goto_19
    iget v2, v0, Landroid/support/v4/view/ay;->b:I

    if-ge v1, v2, :cond_1e

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v5, v1}, Landroid/support/v4/view/v;->getPageWidth(I)F

    move-result v1

    add-float/2addr v1, v6

    add-float/2addr v1, v3

    move v3, v1

    move v1, v2

    goto :goto_19

    :cond_1e
    iget v2, v0, Landroid/support/v4/view/ay;->b:I

    add-int/lit8 v5, v8, -0x1

    if-ne v2, v5, :cond_1f

    iget v2, v0, Landroid/support/v4/view/ay;->d:F

    add-float/2addr v2, v3

    const/high16 v5, 0x3f80

    sub-float/2addr v2, v5

    iput v2, p0, Landroid/support/v4/view/ViewPager;->s:F

    :cond_1f
    iput v3, v0, Landroid/support/v4/view/ay;->e:F

    iget v0, v0, Landroid/support/v4/view/ay;->d:F

    add-float/2addr v0, v6

    add-float v2, v3, v0

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    move v4, v0

    goto :goto_18

    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->T:Z

    :cond_21
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    iget v2, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-eqz v7, :cond_25

    iget-object v0, v7, Landroid/support/v4/view/ay;->a:Ljava/lang/Object;

    :goto_1a
    invoke-virtual {v1, p0, v2, v0}, Landroid/support/v4/view/v;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/v;->finishUpdate(Landroid/view/ViewGroup;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ac:I

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    move v2, v0

    :goto_1b
    if-eqz v2, :cond_22

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Ljava/util/ArrayList;

    if-nez v0, :cond_27

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Ljava/util/ArrayList;

    :cond_22
    :goto_1c
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    if-ge v1, v3, :cond_28

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iput v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->f:I

    iget-boolean v5, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v5, :cond_23

    iget v5, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_23

    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ay;

    move-result-object v5

    if-eqz v5, :cond_23

    iget v6, v5, Landroid/support/v4/view/ay;->d:F

    iput v6, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F

    iget v5, v5, Landroid/support/v4/view/ay;->b:I

    iput v5, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->e:I

    :cond_23
    if-eqz v2, :cond_24

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    :cond_25
    const/4 v0, 0x0

    goto :goto_1a

    :cond_26
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1b

    :cond_27
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1c

    :cond_28
    if-eqz v2, :cond_29

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v4/view/ViewPager;->ae:Landroid/support/v4/view/bf;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_29
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(Landroid/view/View;)Landroid/support/v4/view/ay;

    move-result-object v0

    :goto_1e
    if-eqz v0, :cond_2a

    iget v0, v0, Landroid/support/v4/view/ay;->b:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-eq v0, v1, :cond_0

    :cond_2a
    const/4 v0, 0x0

    :goto_1f
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ay;

    move-result-object v2

    if-eqz v2, :cond_2b

    iget v2, v2, Landroid/support/v4/view/ay;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-ne v2, v3, :cond_2b

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2c
    const/4 v0, 0x0

    goto :goto_1e

    :cond_2d
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto/16 :goto_a

    :cond_2e
    move-object v7, v0

    goto/16 :goto_3

    :cond_2f
    move-object v0, v3

    goto/16 :goto_2

    :cond_30
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private e(I)Landroid/support/v4/view/ay;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    iget v2, v0, Landroid/support/v4/view/ay;->b:I

    if-ne v2, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic e()[I
    .locals 1

    sget-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    return-object v0
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroid/support/v4/view/ViewPager;->c:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/aq;->a(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->D:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->J:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->K:I

    new-instance v1, Landroid/support/v4/d/f;

    invoke-direct {v1, v0}, Landroid/support/v4/d/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->Q:Landroid/support/v4/d/f;

    new-instance v1, Landroid/support/v4/d/f;

    invoke-direct {v1, v0}, Landroid/support/v4/d/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/d/f;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c8

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->L:I

    const/high16 v1, 0x4000

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->M:I

    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    new-instance v0, Landroid/support/v4/view/az;

    invoke-direct {v0, p0}, Landroid/support/v4/view/az;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ai;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    invoke-static {p0}, Landroid/support/v4/view/ai;->c(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ai;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private f(I)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->U:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IF)V

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->U:Z

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()Landroid/support/v4/view/ay;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->n:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->n:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    iget v4, v1, Landroid/support/v4/view/ay;->b:I

    int-to-float v5, p1

    int-to-float v2, v2

    div-float v2, v5, v2

    iget v5, v1, Landroid/support/v4/view/ay;->e:F

    sub-float/2addr v2, v5

    iget v1, v1, Landroid/support/v4/view/ay;->d:F

    add-float/2addr v1, v3

    div-float v1, v2, v1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->U:Z

    invoke-direct {p0, v4, v1}, Landroid/support/v4/view/ViewPager;->a(IF)V

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->U:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private g()Landroid/support/v4/view/ay;
    .locals 13

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v1

    div-float/2addr v0, v4

    move v9, v0

    :goto_0
    if-lez v1, :cond_4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->n:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    :goto_1
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v0, 0x0

    move v6, v2

    move v7, v2

    move v8, v5

    move v2, v3

    move v5, v4

    move-object v4, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    if-nez v5, :cond_6

    iget v10, v0, Landroid/support/v4/view/ay;->b:I

    add-int/lit8 v11, v8, 0x1

    if-eq v10, v11, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/ay;

    add-float/2addr v6, v7

    add-float/2addr v6, v1

    iput v6, v0, Landroid/support/v4/view/ay;->e:F

    add-int/lit8 v6, v8, 0x1

    iput v6, v0, Landroid/support/v4/view/ay;->b:I

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    iget v7, v0, Landroid/support/v4/view/ay;->b:I

    invoke-virtual {v6, v7}, Landroid/support/v4/view/v;->getPageWidth(I)F

    move-result v6

    iput v6, v0, Landroid/support/v4/view/ay;->d:F

    add-int/lit8 v2, v2, -0x1

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    :goto_3
    iget v6, v2, Landroid/support/v4/view/ay;->e:F

    iget v7, v2, Landroid/support/v4/view/ay;->d:F

    add-float/2addr v7, v6

    add-float/2addr v7, v1

    if-nez v5, :cond_0

    cmpl-float v5, v9, v6

    if-ltz v5, :cond_2

    :cond_0
    cmpg-float v4, v9, v7

    if-ltz v4, :cond_1

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_5

    :cond_1
    move-object v4, v2

    :cond_2
    return-object v4

    :cond_3
    move v9, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget v5, v2, Landroid/support/v4/view/ay;->b:I

    iget v4, v2, Landroid/support/v4/view/ay;->d:F

    add-int/lit8 v0, v0, 0x1

    move v7, v6

    move v8, v5

    move v5, v3

    move v6, v4

    move-object v4, v2

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v12, v0

    move v0, v2

    move-object v2, v12

    goto :goto_3
.end method

.method private g(I)Z
    .locals 6

    const/16 v5, 0x42

    const/16 v4, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    if-eq v3, v0, :cond_6

    if-ne p1, v4, :cond_4

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_3

    if-lt v1, v2, :cond_3

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->i()Z

    move-result v0

    :goto_0
    move v2, v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    :cond_2
    return v2

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    :cond_4
    if-ne p1, v5, :cond_1

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-le v4, v5, :cond_9

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    :cond_6
    if-eq p1, v4, :cond_7

    if-ne p1, v1, :cond_8

    :cond_7
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->i()Z

    move-result v0

    goto :goto_0

    :cond_8
    if-eq p1, v5, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_9
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v3}, Landroid/support/v4/view/v;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)V

    move v0, v1

    goto :goto_0

    :cond_a
    move v0, v2

    goto :goto_0
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->z:Z

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->A:Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private i()Z
    .locals 1

    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/support/v4/view/v;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->x:Z

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->S:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method final a(Landroid/support/v4/view/ba;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->aa:Landroid/support/v4/view/ba;

    return-void
.end method

.method public final a(Landroid/support/v4/view/bb;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/bb;

    return-void
.end method

.method public final a(Landroid/support/v4/view/v;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/support/v4/view/bd;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/v;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/v;->startUpdate(Landroid/view/ViewGroup;)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    iget v4, v0, Landroid/support/v4/view/ay;->b:I

    iget-object v0, v0, Landroid/support/v4/view/ay;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroid/support/v4/view/v;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/v;->finishUpdate(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iput v2, p0, Landroid/support/v4/view/ViewPager;->h:I

    invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/support/v4/view/bd;

    if-nez v1, :cond_4

    new-instance v1, Landroid/support/v4/view/bd;

    invoke-direct {v1, p0, v2}, Landroid/support/v4/view/bd;-><init>(Landroid/support/v4/view/ViewPager;B)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/support/v4/view/bd;

    :cond_4
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/support/v4/view/bd;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/v;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x:Z

    iput-boolean v5, p0, Landroid/support/v4/view/ViewPager;->S:Z

    iget v1, p0, Landroid/support/v4/view/ViewPager;->i:I

    if-ltz v1, :cond_7

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/os/Parcelable;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->k:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/view/v;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v1, p0, Landroid/support/v4/view/ViewPager;->i:I

    invoke-direct {p0, v1, v2, v5}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->i:I

    iput-object v6, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/os/Parcelable;

    iput-object v6, p0, Landroid/support/v4/view/ViewPager;->k:Ljava/lang/ClassLoader;

    :cond_5
    :goto_2
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->aa:Landroid/support/v4/view/ba;

    if-eqz v1, :cond_6

    if-eq v0, p1, :cond_6

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->aa:Landroid/support/v4/view/ba;

    invoke-interface {v1, v0, p1}, Landroid/support/v4/view/ba;->a(Landroid/support/v4/view/v;Landroid/support/v4/view/v;)V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V

    goto :goto_2
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    const/high16 v0, 0x6

    if-eq v2, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ay;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Landroid/support/v4/view/ay;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x4

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ay;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Landroid/support/v4/view/ay;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    instance-of v3, p1, Landroid/support/v4/view/ax;

    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->v:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->d:Z

    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :goto_1
    return-void

    :cond_1
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    return v0
.end method

.method final b(Landroid/support/v4/view/bb;)Landroid/support/v4/view/bb;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/bb;

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/bb;

    return-object v0
.end method

.method final c()V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroid/support/v4/view/ViewPager;->y:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v3}, Landroid/support/v4/view/v;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    move v0, v1

    :goto_0
    iget v3, p0, Landroid/support/v4/view/ViewPager;->h:I

    move v4, v2

    move v5, v3

    move v6, v0

    move v3, v2

    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    iget-object v8, v0, Landroid/support/v4/view/ay;->a:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroid/support/v4/view/v;->getItemPosition(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    const/4 v8, -0x2

    if-ne v7, v8, :cond_2

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/v;->startUpdate(Landroid/view/ViewGroup;)V

    move v4, v1

    :cond_0
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    iget v7, v0, Landroid/support/v4/view/ay;->b:I

    iget-object v8, v0, Landroid/support/v4/view/ay;->a:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v8}, Landroid/support/v4/view/v;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v6, p0, Landroid/support/v4/view/ViewPager;->h:I

    iget v0, v0, Landroid/support/v4/view/ay;->b:I

    if-ne v6, v0, :cond_a

    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v5}, Landroid/support/v4/view/v;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v8, v0, Landroid/support/v4/view/ay;->b:I

    if-eq v8, v7, :cond_9

    iget v6, v0, Landroid/support/v4/view/ay;->b:I

    iget v8, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-ne v6, v8, :cond_3

    move v5, v7

    :cond_3
    iput v7, v0, Landroid/support/v4/view/ay;->b:I

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/v;->finishUpdate(Landroid/view/ViewGroup;)V

    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    sget-object v3, Landroid/support/v4/view/ViewPager;->b:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_3
    if-ge v3, v4, :cond_7

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v6, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v6, :cond_6

    const/4 v6, 0x0

    iput v6, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F

    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_7
    invoke-direct {p0, v5, v2, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    :cond_8
    return-void

    :cond_9
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto :goto_2

    :cond_a
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto :goto_2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->f(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ai;->b(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Z)V

    goto :goto_0
.end method

.method final d()V
    .locals 1

    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(I)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :sswitch_0
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->g(I)Z

    move-result v2

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->g(I)Z

    move-result v2

    goto :goto_0

    :sswitch_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/n;->b(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->g(I)Z

    move-result v2

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/support/v4/view/n;->a(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->g(I)Z

    move-result v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ay;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, Landroid/support/v4/view/ay;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/support/v4/view/ai;->a(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v1}, Landroid/support/v4/view/v;->getCount()I

    move-result v1

    if-le v1, v2, :cond_4

    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Q:Landroid/support/v4/d/f;

    invoke-virtual {v1}, Landroid/support/v4/d/f;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    const/high16 v3, 0x4387

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->r:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->Q:Landroid/support/v4/d/f;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/d/f;->a(II)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Q:Landroid/support/v4/d/f;

    invoke-virtual {v0, p1}, Landroid/support/v4/d/f;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/d/f;

    invoke-virtual {v1}, Landroid/support/v4/d/f;->a()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->s:F

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/d/f;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/d/f;->a(II)V

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/d/f;

    invoke-virtual {v2, p1}, Landroid/support/v4/d/f;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/support/v4/view/ai;->b(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Q:Landroid/support/v4/d/f;

    invoke-virtual {v1}, Landroid/support/v4/d/f;->b()V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/d/f;

    invoke-virtual {v1}, Landroid/support/v4/d/f;->b()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ac:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->f:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->S:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->n:I

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->n:I

    int-to-float v1, v1

    int-to-float v2, v7

    div-float v8, v1, v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ay;

    iget v4, v1, Landroid/support/v4/view/ay;->e:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v3, v1, Landroid/support/v4/view/ay;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ay;

    iget v10, v2, Landroid/support/v4/view/ay;->b:I

    move v2, v5

    move v5, v3

    :goto_0
    if-ge v5, v10, :cond_3

    :goto_1
    iget v3, v1, Landroid/support/v4/view/ay;->b:I

    if-le v5, v3, :cond_0

    if-ge v2, v9, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ay;

    goto :goto_1

    :cond_0
    iget v3, v1, Landroid/support/v4/view/ay;->b:I

    if-ne v5, v3, :cond_2

    iget v3, v1, Landroid/support/v4/view/ay;->e:F

    iget v4, v1, Landroid/support/v4/view/ay;->d:F

    add-float/2addr v3, v4

    int-to-float v4, v7

    mul-float/2addr v3, v4

    iget v4, v1, Landroid/support/v4/view/ay;->e:F

    iget v11, v1, Landroid/support/v4/view/ay;->d:F

    add-float/2addr v4, v11

    add-float/2addr v4, v8

    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/ViewPager;->n:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    int-to-float v12, v6

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    float-to-int v12, v3

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/ViewPager;->p:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/ViewPager;->n:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/ViewPager;->q:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int v11, v6, v7

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-gtz v3, :cond_3

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v3, v5}, Landroid/support/v4/view/v;->getPageWidth(I)F

    move-result v11

    add-float v3, v4, v11

    int-to-float v12, v7

    mul-float/2addr v3, v12

    add-float/2addr v11, v8

    add-float/2addr v4, v11

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->z:Z

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->A:Z

    iput v3, p0, Landroid/support/v4/view/ViewPager;->H:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->z:Z

    if-eqz v1, :cond_3

    move v2, v6

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->A:Z

    if-nez v1, :cond_1

    :cond_4
    sparse-switch v0, :sswitch_data_0

    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->z:Z

    goto :goto_0

    :sswitch_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    if-eq v0, v3, :cond_5

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->c(Landroid/view/MotionEvent;I)F

    move-result v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->F:F

    sub-float v8, v7, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->d(Landroid/view/MotionEvent;I)F

    move-result v10

    iget v0, p0, Landroid/support/v4/view/ViewPager;->G:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v0, v8, v12

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    cmpl-float v1, v8, v12

    if-gtz v1, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    iget v3, p0, Landroid/support/v4/view/ViewPager;->C:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    cmpg-float v0, v8, v12

    if-gez v0, :cond_9

    :cond_8
    move v0, v6

    :goto_2
    if-nez v0, :cond_a

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_a

    iput v7, p0, Landroid/support/v4/view/ViewPager;->F:F

    iput v7, p0, Landroid/support/v4/view/ViewPager;->E:F

    iput v10, p0, Landroid/support/v4/view/ViewPager;->G:F

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->A:Z

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    iget v0, p0, Landroid/support/v4/view/ViewPager;->D:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_d

    cmpl-float v0, v9, v11

    if-lez v0, :cond_d

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->z:Z

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->b(I)V

    cmpl-float v0, v8, v12

    if-lez v0, :cond_c

    iget v0, p0, Landroid/support/v4/view/ViewPager;->E:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->D:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_3
    iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->b(Z)V

    :cond_b
    :goto_4
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->z:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->a(F)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Landroid/support/v4/view/ai;->b(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Landroid/support/v4/view/ViewPager;->E:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->D:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_3

    :cond_d
    iget v0, p0, Landroid/support/v4/view/ViewPager;->D:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->A:Z

    goto :goto_4

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->E:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->G:F

    invoke-static {p1, v2}, Landroid/support/v4/view/r;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->A:Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->M:I

    if-le v0, v1, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->z:Z

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->b(I)V

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(Z)V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->z:Z

    goto/16 :goto_1

    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->v:Z

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->d()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->v:Z

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    sub-int v10, p4, p2

    sub-int v11, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v9, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v7, :cond_4

    iget v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v7, v7, 0x7

    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v14, v1, 0x70

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v7, v6

    :goto_1
    sparse-switch v14, :sswitch_data_0

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    :goto_2
    add-int/2addr v7, v12

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    goto :goto_1

    :pswitch_3
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_1

    :sswitch_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    goto :goto_2

    :sswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    :sswitch_2
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v7, v1

    :goto_4
    if-ge v7, v9, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v12, 0x8

    if-eq v1, v12, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v12, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ay;

    move-result-object v12

    if-eqz v12, :cond_2

    int-to-float v13, v10

    iget v12, v12, Landroid/support/v4/view/ay;->e:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    add-int/2addr v12, v6

    iget-boolean v13, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->d:Z

    if-eqz v13, :cond_1

    const/4 v13, 0x0

    iput-boolean v13, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->d:Z

    sub-int v13, v10, v6

    sub-int/2addr v13, v5

    int-to-float v13, v13

    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F

    mul-float/2addr v1, v13

    float-to-int v1, v1

    const/high16 v13, 0x4000

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sub-int v13, v11, v2

    sub-int/2addr v13, v3

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v8, v1, v13}, Landroid/view/View;->measure(II)V

    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v12

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v2

    invoke-virtual {v8, v12, v2, v1, v13}, Landroid/view/View;->layout(IIII)V

    :cond_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_4

    :cond_3
    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/view/ViewPager;->p:I

    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->q:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/view/ViewPager;->V:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->S:Z

    return-void

    :cond_4
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0xa

    iget v2, p0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_8

    invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v6, v1, 0x7

    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v4, v1, 0x70

    const/high16 v2, -0x8000

    const/high16 v1, -0x8000

    const/16 v7, 0x30

    if-eq v4, v7, :cond_0

    const/16 v7, 0x50

    if-ne v4, v7, :cond_4

    :cond_0
    const/4 v4, 0x1

    move v7, v4

    :goto_1
    const/4 v4, 0x3

    if-eq v6, v4, :cond_1

    const/4 v4, 0x5

    if-ne v6, v4, :cond_5

    :cond_1
    const/4 v4, 0x1

    move v6, v4

    :goto_2
    if-eqz v7, :cond_6

    const/high16 v2, 0x4000

    :cond_2
    :goto_3
    iget v4, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    const/4 v11, -0x2

    if-eq v4, v11, :cond_e

    const/high16 v4, 0x4000

    iget v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_d

    iget v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    :goto_4
    iget v11, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_c

    const/high16 v1, 0x4000

    iget v11, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    :goto_5
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_7

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v5, v0

    :cond_3
    :goto_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    move v7, v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_2

    const/high16 v1, 0x4000

    goto :goto_3

    :cond_7
    if-eqz v6, :cond_3

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_6

    :cond_8
    const/high16 v0, 0x4000

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->t:I

    const/high16 v0, 0x4000

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->u:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->v:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->v:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_b

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_9

    iget-boolean v5, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v5, :cond_a

    :cond_9
    int-to-float v5, v3

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/high16 v5, 0x4000

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v5, p0, Landroid/support/v4/view/ViewPager;->u:I

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_b
    return-void

    :cond_c
    move v0, v5

    goto :goto_5

    :cond_d
    move v2, v3

    goto/16 :goto_4

    :cond_e
    move v4, v2

    move v2, v3

    goto/16 :goto_4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_0

    move v3, v0

    move v4, v1

    :goto_0
    if-eq v4, v2, :cond_2

    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ay;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Landroid/support/v4/view/ay;->b:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    move v2, v3

    goto :goto_0

    :cond_1
    add-int/2addr v4, v3

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    iget-object v1, p1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/v;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->i:I

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/os/Parcelable;

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->k:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    iput v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v0}, Landroid/support/v4/view/v;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->n:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->n:I

    if-lez p3, :cond_1

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/2addr v0, p1

    add-int/2addr v1, p3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->e(I)Landroid/support/v4/view/ay;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    iget v3, v3, Landroid/support/v4/view/ay;->e:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->e(I)Landroid/support/v4/view/ay;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/support/v4/view/ay;->e:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->s:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, -0x1

    const/high16 v7, 0x3f00

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->P:Z

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/v;

    invoke-virtual {v0}, Landroid/support/v4/view/v;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_6

    invoke-static {p0}, Landroid/support/v4/view/ai;->b(Landroid/view/View;)V

    :cond_6
    move v0, v3

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->x:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->z:Z

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->b(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->E:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    invoke-static {p1, v1}, Landroid/support/v4/view/r;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->z:Z

    if-nez v0, :cond_7

    iget v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iget v4, p0, Landroid/support/v4/view/ViewPager;->F:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v5, p0, Landroid/support/v4/view/ViewPager;->G:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Landroid/support/v4/view/ViewPager;->D:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_7

    cmpl-float v0, v4, v0

    if-lez v0, :cond_7

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->z:Z

    iget v0, p0, Landroid/support/v4/view/ViewPager;->E:F

    sub-float v0, v2, v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    iget v0, p0, Landroid/support/v4/view/ViewPager;->E:F

    iget v2, p0, Landroid/support/v4/view/ViewPager;->D:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    :goto_2
    iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->b(I)V

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->b(Z)V

    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->z:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(F)Z

    move-result v0

    or-int/lit8 v1, v0, 0x0

    goto :goto_1

    :cond_8
    iget v0, p0, Landroid/support/v4/view/ViewPager;->E:F

    iget v2, p0, Landroid/support/v4/view/ViewPager;->D:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_2

    :pswitch_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->z:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v4, p0, Landroid/support/v4/view/ViewPager;->K:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, p0, Landroid/support/v4/view/ViewPager;->H:I

    invoke-static {v0, v2}, Landroid/support/v4/view/ae;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v4, v0

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->x:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v5

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()Landroid/support/v4/view/ay;

    move-result-object v6

    iget v0, v6, Landroid/support/v4/view/ay;->b:I

    int-to-float v5, v5

    int-to-float v2, v2

    div-float v2, v5, v2

    iget v5, v6, Landroid/support/v4/view/ay;->e:F

    sub-float/2addr v2, v5

    iget v5, v6, Landroid/support/v4/view/ay;->d:F

    div-float/2addr v2, v5

    iget v5, p0, Landroid/support/v4/view/ViewPager;->H:I

    invoke-static {p1, v5}, Landroid/support/v4/view/r;->a(Landroid/view/MotionEvent;I)I

    move-result v5

    invoke-static {p1, v5}, Landroid/support/v4/view/r;->c(Landroid/view/MotionEvent;I)F

    move-result v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->E:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->L:I

    if-le v5, v6, :cond_b

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->J:I

    if-le v5, v6, :cond_b

    if-lez v4, :cond_a

    :goto_3
    move v2, v0

    :goto_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ay;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ay;

    iget v0, v0, Landroid/support/v4/view/ay;->b:I

    iget v1, v1, Landroid/support/v4/view/ay;->b:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_9
    invoke-direct {p0, v2, v3, v3, v4}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    iput v8, p0, Landroid/support/v4/view/ViewPager;->H:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Q:Landroid/support/v4/d/f;

    invoke-virtual {v0}, Landroid/support/v4/d/f;->c()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/d/f;

    invoke-virtual {v1}, Landroid/support/v4/d/f;->c()Z

    move-result v1

    or-int/2addr v1, v0

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    iget v5, p0, Landroid/support/v4/view/ViewPager;->N:I

    if-ltz v5, :cond_c

    iget v5, p0, Landroid/support/v4/view/ViewPager;->N:I

    if-ge v5, v0, :cond_c

    cmpg-float v5, v2, v7

    if-gez v5, :cond_c

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_4

    :cond_c
    iget v5, p0, Landroid/support/v4/view/ViewPager;->O:I

    if-ltz v5, :cond_d

    iget v5, p0, Landroid/support/v4/view/ViewPager;->O:I

    add-int/lit8 v6, v0, 0x1

    if-le v5, v6, :cond_d

    cmpl-float v5, v2, v7

    if-ltz v5, :cond_d

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_4

    :cond_d
    int-to-float v0, v0

    add-float/2addr v0, v2

    add-float/2addr v0, v7

    float-to-int v0, v0

    move v2, v0

    goto :goto_4

    :pswitch_4
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->z:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    invoke-direct {p0, v0, v3, v1, v1}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    iput v8, p0, Landroid/support/v4/view/ViewPager;->H:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Q:Landroid/support/v4/d/f;

    invoke-virtual {v0}, Landroid/support/v4/d/f;->c()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/d/f;

    invoke-virtual {v1}, Landroid/support/v4/d/f;->c()Z

    move-result v1

    or-int/2addr v1, v0

    goto/16 :goto_1

    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/r;->a(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->F:F

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
