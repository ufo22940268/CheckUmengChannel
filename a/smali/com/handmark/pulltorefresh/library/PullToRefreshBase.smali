.class public abstract Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.super Landroid/widget/LinearLayout;


# static fields
.field private static synthetic A:[I

.field private static synthetic y:[I

.field private static synthetic z:[I


# instance fields
.field a:Landroid/view/View;

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Lcom/handmark/pulltorefresh/library/n;

.field private i:Lcom/handmark/pulltorefresh/library/f;

.field private j:Lcom/handmark/pulltorefresh/library/f;

.field private k:Landroid/widget/FrameLayout;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/view/animation/Interpolator;

.field private r:Lcom/handmark/pulltorefresh/library/e;

.field private s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private u:Lcom/handmark/pulltorefresh/library/i;

.field private v:Lcom/handmark/pulltorefresh/library/j;

.field private w:Lcom/handmark/pulltorefresh/library/h;

.field private x:Lcom/handmark/pulltorefresh/library/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    sget-object v0, Lcom/handmark/pulltorefresh/library/n;->a:Lcom/handmark/pulltorefresh/library/n;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/f;->a()Lcom/handmark/pulltorefresh/library/f;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    invoke-static {}, Lcom/handmark/pulltorefresh/library/e;->a()Lcom/handmark/pulltorefresh/library/e;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    sget-object v0, Lcom/handmark/pulltorefresh/library/n;->a:Lcom/handmark/pulltorefresh/library/n;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/f;->a()Lcom/handmark/pulltorefresh/library/f;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    invoke-static {}, Lcom/handmark/pulltorefresh/library/e;->a()Lcom/handmark/pulltorefresh/library/e;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/e;

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/f;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    sget-object v0, Lcom/handmark/pulltorefresh/library/n;->a:Lcom/handmark/pulltorefresh/library/n;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/f;->a()Lcom/handmark/pulltorefresh/library/f;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    invoke-static {}, Lcom/handmark/pulltorefresh/library/e;->a()Lcom/handmark/pulltorefresh/library/e;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/e;

    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/f;Lcom/handmark/pulltorefresh/library/e;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    sget-object v0, Lcom/handmark/pulltorefresh/library/n;->a:Lcom/handmark/pulltorefresh/library/n;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/f;->a()Lcom/handmark/pulltorefresh/library/f;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    invoke-static {}, Lcom/handmark/pulltorefresh/library/e;->a()Lcom/handmark/pulltorefresh/library/e;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/e;

    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private A()V
    .locals 9

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->D()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f99999a

    mul-float/2addr v0, v2

    float-to-int v6, v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingBottom()I

    move-result v2

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->E()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s()Lcom/handmark/pulltorefresh/library/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/l;->ordinal()I

    move-result v7

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_0

    move v0, v2

    move v2, v3

    move v3, v4

    move v4, v5

    :goto_0
    const-string v5, "Setting Padding. L: %d, T: %d, R: %d, B: %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0, v4, v3, v2, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setPadding(IIII)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b(I)V

    neg-int v0, v6

    :goto_1
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/f;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v3, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b(I)V

    neg-int v3, v6

    move v8, v2

    move v2, v3

    move v3, v4

    move v4, v0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v3, v4

    move v4, v0

    move v0, v2

    move v2, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/f;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a(I)V

    neg-int v0, v6

    :goto_2
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/f;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v2, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->a(I)V

    neg-int v2, v6

    move v4, v5

    move v8, v3

    move v3, v0

    move v0, v2

    move v2, v8

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v2, v3

    move v4, v5

    move v3, v0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private B()V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/i;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/i;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/f;

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/j;

    invoke-interface {v0}, Lcom/handmark/pulltorefresh/library/j;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/f;

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->c:Lcom/handmark/pulltorefresh/library/f;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/j;

    invoke-interface {v0}, Lcom/handmark/pulltorefresh/library/j;->b()V

    goto :goto_0
.end method

.method private C()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G()[I

    move-result-object v1

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private D()I
    .locals 3

    const/high16 v2, 0x4000

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->E()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s()Lcom/handmark/pulltorefresh/library/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/l;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic E()[I
    .locals 3

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->y:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/handmark/pulltorefresh/library/l;->values()[Lcom/handmark/pulltorefresh/library/l;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/handmark/pulltorefresh/library/l;->b:Lcom/handmark/pulltorefresh/library/l;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/l;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/handmark/pulltorefresh/library/l;->a:Lcom/handmark/pulltorefresh/library/l;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/l;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->y:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static synthetic F()[I
    .locals 3

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->z:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/handmark/pulltorefresh/library/n;->values()[Lcom/handmark/pulltorefresh/library/n;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/handmark/pulltorefresh/library/n;->e:Lcom/handmark/pulltorefresh/library/n;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/n;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/handmark/pulltorefresh/library/n;->f:Lcom/handmark/pulltorefresh/library/n;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/n;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/handmark/pulltorefresh/library/n;->b:Lcom/handmark/pulltorefresh/library/n;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/n;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/handmark/pulltorefresh/library/n;->d:Lcom/handmark/pulltorefresh/library/n;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/n;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/handmark/pulltorefresh/library/n;->c:Lcom/handmark/pulltorefresh/library/n;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/n;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/handmark/pulltorefresh/library/n;->a:Lcom/handmark/pulltorefresh/library/n;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/n;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->z:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private static synthetic G()[I
    .locals 3

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->A:[I

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
    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->A:[I

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

.method static synthetic a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private final a(ILcom/handmark/pulltorefresh/library/k;)V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/m;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/m;->a()V

    :cond_0
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->E()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s()Lcom/handmark/pulltorefresh/library/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/l;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollY()I

    move-result v0

    :goto_0
    if-eq v0, p1, :cond_2

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_1

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    :cond_1
    new-instance v1, Lcom/handmark/pulltorefresh/library/m;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/handmark/pulltorefresh/library/m;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IILcom/handmark/pulltorefresh/library/k;)V

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/m;

    cmp-long v0, v2, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/m;

    invoke-virtual {p0, v0, v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollX()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/m;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v6, 0x9

    const/4 v2, 0x4

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->E()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s()Lcom/handmark/pulltorefresh/library/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/l;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setOrientation(I)V

    :goto_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setGravity(I)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b:I

    sget-object v0, Lcom/handmark/pulltorefresh/library/af;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/handmark/pulltorefresh/library/f;->a(I)Lcom/handmark/pulltorefresh/library/f;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    :cond_0
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/handmark/pulltorefresh/library/e;->a(I)Lcom/handmark/pulltorefresh/library/e;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/e;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {p0, p1, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/f;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->c:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {p0, p1, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/f;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    :cond_3
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    :cond_4
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->f()V

    return-void

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setOrientation(I)V

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ptrAdapterViewBackground"

    const-string v2, "ptrRefreshableViewBackground"

    invoke-static {v1, v2}, Lcom/handmark/pulltorefresh/library/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->B()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method protected final a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/f;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/e;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s()Lcom/handmark/pulltorefresh/library/l;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/handmark/pulltorefresh/library/e;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/f;Lcom/handmark/pulltorefresh/library/l;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    return-object v0
.end method

.method protected a()V
    .locals 2

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G()[I

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->h()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(I)V
    .locals 4

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setHeaderScroll: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->D()I

    move-result v0

    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    if-eqz v1, :cond_0

    if-gez v0, :cond_1

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->E()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s()Lcom/handmark/pulltorefresh/library/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/l;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :cond_1
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v3, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Landroid/content/res/TypedArray;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/handmark/pulltorefresh/library/f;)V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting mode to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->f()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/handmark/pulltorefresh/library/i;)V
    .locals 1

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/i;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method public final a(Lcom/handmark/pulltorefresh/library/j;)V
    .locals 1

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/j;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/i;

    return-void
.end method

.method final varargs a(Lcom/handmark/pulltorefresh/library/n;[Z)V
    .locals 2

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/n;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F()[I

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/n;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/h;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/f;

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b()V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i()V

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i()V

    :cond_1
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/handmark/pulltorefresh/library/c;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/c;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G()[I

    move-result-object v1

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f()I

    move-result v1

    neg-int v1, v1

    invoke-direct {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ILcom/handmark/pulltorefresh/library/k;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ILcom/handmark/pulltorefresh/library/k;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ILcom/handmark/pulltorefresh/library/k;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->B()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addView: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b()V
    .locals 2

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G()[I

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->j()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k()V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k()V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ILcom/handmark/pulltorefresh/library/k;)V

    return-void
.end method

.method protected abstract d()Z
.end method

.method protected abstract e()Z
.end method

.method protected f()V
    .locals 4

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->E()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s()Lcom/handmark/pulltorefresh/library/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/l;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    const/4 v2, 0x0

    invoke-super {p0, v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-super {p0, v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->A()V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->d:Lcom/handmark/pulltorefresh/library/f;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    :goto_1
    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/f;

    return-void

    :pswitch_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Lcom/handmark/pulltorefresh/library/f;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/f;

    return-object v0
.end method

.method public final h()Lcom/handmark/pulltorefresh/library/f;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    return-object v0
.end method

.method public final i()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    return v0
.end method

.method public final k()Lcom/handmark/pulltorefresh/library/n;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/f;->b()Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final n()Z
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    sget-object v1, Lcom/handmark/pulltorefresh/library/n;->d:Lcom/handmark/pulltorefresh/library/n;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    sget-object v1, Lcom/handmark/pulltorefresh/library/n;->e:Lcom/handmark/pulltorefresh/library/n;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/handmark/pulltorefresh/library/n;->a:Lcom/handmark/pulltorefresh/library/n;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/n;[Z)V

    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_2

    :cond_1
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    if-eqz v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->C()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->E()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s()Lcom/handmark/pulltorefresh/library/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/l;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    sub-float v1, v3, v0

    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    sub-float v0, v4, v0

    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_4

    iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Z

    if-eqz v6, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_4

    :cond_6
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/f;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x3f80

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_7

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->d:Lcom/handmark/pulltorefresh/library/f;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/f;

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    sub-float v1, v4, v0

    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    sub-float v0, v3, v0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/f;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, -0x4080

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->d:Lcom/handmark/pulltorefresh/library/f;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->c:Lcom/handmark/pulltorefresh/library/f;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/f;

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->C()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->f:F

    iput v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e:F

    iput v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "ptr_mode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/f;->a(I)Lcom/handmark/pulltorefresh/library/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/f;)V

    const-string v0, "ptr_current_mode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/f;->a(I)Lcom/handmark/pulltorefresh/library/f;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/f;

    const-string v0, "ptr_disable_scrolling"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    const-string v0, "ptr_show_refreshing_view"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    const-string v0, "ptr_super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "ptr_state"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/n;->a(I)Lcom/handmark/pulltorefresh/library/n;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/n;->d:Lcom/handmark/pulltorefresh/library/n;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/handmark/pulltorefresh/library/n;->e:Lcom/handmark/pulltorefresh/library/n;

    if-ne v0, v1, :cond_1

    :cond_0
    new-array v1, v3, [Z

    aput-boolean v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/n;[Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/os/Bundle;)V

    const-string v1, "ptr_state"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/n;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ptr_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/f;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/f;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 4

    const-string v0, "onSizeChanged. W: %d, H: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->A()V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->E()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s()Lcom/handmark/pulltorefresh/library/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/l;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    new-instance v0, Lcom/handmark/pulltorefresh/library/d;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/d;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    :pswitch_1
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_0

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/high16 v7, 0x4000

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_3
    move v0, v2

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->E()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s()Lcom/handmark/pulltorefresh/library/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/l;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    iget v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->f:F

    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    :goto_1
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G()[I

    move-result-object v4

    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    sub-float v0, v1, v0

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f()I

    move-result v0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(I)V

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G()[I

    move-result-object v5

    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_3

    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b(F)V

    :goto_3
    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    sget-object v5, Lcom/handmark/pulltorefresh/library/n;->b:Lcom/handmark/pulltorefresh/library/n;

    if-eq v4, v5, :cond_5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v0, v4, :cond_5

    sget-object v0, Lcom/handmark/pulltorefresh/library/n;->b:Lcom/handmark/pulltorefresh/library/n;

    new-array v1, v2, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/n;[Z)V

    :cond_4
    :goto_4
    move v0, v3

    goto/16 :goto_0

    :pswitch_1
    iget v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e:F

    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    goto :goto_1

    :pswitch_2
    sub-float v0, v1, v0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f()I

    move-result v0

    goto :goto_2

    :pswitch_3
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b(F)V

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    sget-object v5, Lcom/handmark/pulltorefresh/library/n;->b:Lcom/handmark/pulltorefresh/library/n;

    if-ne v4, v5, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_4

    sget-object v0, Lcom/handmark/pulltorefresh/library/n;->c:Lcom/handmark/pulltorefresh/library/n;

    new-array v1, v2, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/n;[Z)V

    goto :goto_4

    :pswitch_4
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->C()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->f:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    move v0, v3

    goto/16 :goto_0

    :pswitch_5
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    sget-object v1, Lcom/handmark/pulltorefresh/library/n;->c:Lcom/handmark/pulltorefresh/library/n;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/i;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/j;

    if-eqz v0, :cond_7

    :cond_6
    sget-object v0, Lcom/handmark/pulltorefresh/library/n;->d:Lcom/handmark/pulltorefresh/library/n;

    new-array v1, v3, [Z

    aput-boolean v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/n;[Z)V

    move v0, v3

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ILcom/handmark/pulltorefresh/library/k;)V

    move v0, v3

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/handmark/pulltorefresh/library/n;->a:Lcom/handmark/pulltorefresh/library/n;

    new-array v1, v2, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/n;[Z)V

    move v0, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_3
    .end packed-switch
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    return-void
.end method

.method public final q()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/handmark/pulltorefresh/library/n;->e:Lcom/handmark/pulltorefresh/library/n;

    new-array v1, v3, [Z

    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/n;[Z)V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/handmark/pulltorefresh/library/n;->e:Lcom/handmark/pulltorefresh/library/n;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i()V

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/handmark/pulltorefresh/library/b;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/b;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f()I

    move-result v1

    neg-int v1, v1

    invoke-direct {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ILcom/handmark/pulltorefresh/library/k;)V

    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/h;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/n;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/f;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ILcom/handmark/pulltorefresh/library/k;)V

    goto :goto_0
.end method

.method public abstract s()Lcom/handmark/pulltorefresh/library/l;
.end method

.method public setLongClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    return-void
.end method

.method protected final t()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    return-void
.end method

.method protected final u()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    return-object v0
.end method

.method protected final v()I
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f()I

    move-result v0

    return v0
.end method

.method protected final w()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    return-object v0
.end method

.method protected final x()I
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->f()I

    move-result v0

    return v0
.end method

.method protected final y()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected final z()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ILcom/handmark/pulltorefresh/library/k;)V

    return-void
.end method
