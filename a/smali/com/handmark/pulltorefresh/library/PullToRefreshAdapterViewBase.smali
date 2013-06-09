.class public abstract Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static synthetic j:[I


# instance fields
.field private b:Z

.field private c:Landroid/widget/AbsListView$OnScrollListener;

.field private d:Lcom/handmark/pulltorefresh/library/g;

.field private e:Landroid/view/View;

.field private f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

.field private g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->i:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->i:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/f;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/f;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->i:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/f;Lcom/handmark/pulltorefresh/library/e;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/f;Lcom/handmark/pulltorefresh/library/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->i:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private B()V
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->b()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->b()V

    goto :goto_1
.end method

.method private static synthetic C()[I
    .locals 3

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->j:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/handmark/pulltorefresh/library/f;->values()[Lcom/handmark/pulltorefresh/library/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->d:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->a:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->e:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->c:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->j:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a()V

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->C()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g()Lcom/handmark/pulltorefresh/library/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->e()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->e()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Landroid/content/res/TypedArray;)V
    .locals 2

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->h:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->y()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v3, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    instance-of v0, v0, Lcom/handmark/pulltorefresh/library/internal/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/a;

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/a;->a(Landroid/view/View;)V

    :goto_2
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    return-void

    :cond_2
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Z)V

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->B()V

    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 2

    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b()V

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->C()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g()Lcom/handmark/pulltorefresh/library/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->d()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->d()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected c()V
    .locals 1

    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c()V

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->B()V

    :cond_0
    return-void
.end method

.method protected final d()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getTop()I

    move-result v0

    if-lt v3, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method protected final e()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "isLastItemVisible. Last Item Position: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " Last Visible Pos: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v0, v3, -0x1

    if-lt v4, v0, :cond_3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v3, v4, v0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getBottom()I

    move-result v0

    if-gt v3, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method protected final f()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x2

    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->f()V

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->h()Lcom/handmark/pulltorefresh/library/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->y()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/f;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-nez v2, :cond_2

    new-instance v2, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;

    invoke-direct {v2, v3, v4}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/f;)V

    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/handmark/pulltorefresh/library/aa;->a:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v3, 0x35

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/f;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-nez v2, :cond_3

    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/handmark/pulltorefresh/library/f;->c:Lcom/handmark/pulltorefresh/library/f;

    invoke-direct {v0, v2, v3}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/f;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/handmark/pulltorefresh/library/aa;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x55

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/f;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/f;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->y()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->f:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    :cond_5
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->y()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->g:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    goto :goto_1
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "First Visible: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Visible Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Total Items:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->d:Lcom/handmark/pulltorefresh/library/g;

    if-eqz v0, :cond_0

    if-lez p4, :cond_3

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->b:Z

    :cond_0
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->B()V

    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    neg-int v1, p1

    neg-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->d:Lcom/handmark/pulltorefresh/library/g;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->d:Lcom/handmark/pulltorefresh/library/g;

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method
