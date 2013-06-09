.class public Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;
.super Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;


# instance fields
.field private final f:Landroid/view/animation/Animation;

.field private final g:Landroid/graphics/Matrix;

.field private h:F

.field private i:F

.field private final j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/f;Lcom/handmark/pulltorefresh/library/l;Landroid/content/res/TypedArray;)V
    .locals 7

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/f;Lcom/handmark/pulltorefresh/library/l;Landroid/content/res/TypedArray;)V

    const/16 v0, 0xf

    invoke-virtual {p4, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->j:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->b:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->g:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x4434

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->f:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->f:Landroid/view/animation/Animation;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->f:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->f:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    return-void
.end method

.method protected final a(F)V
    .locals 4

    const/high16 v2, 0x4334

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->j:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42b4

    mul-float/2addr v0, p1

    :goto_0
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->g:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->h:F

    iget v3, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->i:F

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x43b4

    mul-float/2addr v1, p1

    sub-float/2addr v1, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/high16 v1, 0x4000

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->h:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->i:F

    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected final c()V
    .locals 0

    return-void
.end method

.method protected final d()V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->g:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method protected final e()I
    .locals 1

    sget v0, Lcom/handmark/pulltorefresh/library/ab;->e:I

    return v0
.end method
