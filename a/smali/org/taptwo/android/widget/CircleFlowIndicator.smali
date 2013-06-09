.class public Lorg/taptwo/android/widget/CircleFlowIndicator;
.super Landroid/view/View;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lorg/taptwo/android/widget/b;


# instance fields
.field public a:Landroid/view/animation/Animation$AnimationListener;

.field private b:F

.field private c:I

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private f:Lorg/taptwo/android/widget/ViewFlow;

.field private g:I

.field private h:I

.field private i:Lorg/taptwo/android/widget/a;

.field private j:Landroid/view/animation/Animation;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/high16 v7, 0x4080

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v7, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->b:F

    iput v6, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->c:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->e:Landroid/graphics/Paint;

    iput v6, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->g:I

    iput v6, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->h:I

    iput-object p0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->a:Landroid/view/animation/Animation$AnimationListener;

    iput-boolean v6, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->k:Z

    sget-object v0, Lcom/zhangdan/app/R$styleable;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const v4, 0x44ffffff

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->b:F

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->c:I

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->k:Z

    packed-switch v3, :pswitch_data_0

    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    packed-switch v1, :pswitch_data_1

    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_1
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lorg/taptwo/android/widget/CircleFlowIndicator;)I
    .locals 1

    iget v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->c:I

    return v0
.end method

.method static synthetic a(Lorg/taptwo/android/widget/CircleFlowIndicator;Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->j:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic b(Lorg/taptwo/android/widget/CircleFlowIndicator;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->j:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/taptwo/android/widget/CircleFlowIndicator;->setVisibility(I)V

    iget v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->c:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->i:Lorg/taptwo/android/widget/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->i:Lorg/taptwo/android/widget/a;

    invoke-static {v0}, Lorg/taptwo/android/widget/a;->a(Lorg/taptwo/android/widget/a;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lorg/taptwo/android/widget/a;

    invoke-direct {v0, p0, v1}, Lorg/taptwo/android/widget/a;-><init>(Lorg/taptwo/android/widget/CircleFlowIndicator;B)V

    iput-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->i:Lorg/taptwo/android/widget/a;

    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->i:Lorg/taptwo/android/widget/a;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/taptwo/android/widget/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    iput p1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->g:I

    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->f:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v0}, Lorg/taptwo/android/widget/ViewFlow;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->h:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->invalidate()V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->i:Lorg/taptwo/android/widget/a;

    invoke-virtual {v0}, Lorg/taptwo/android/widget/a;->a()V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/high16 v9, 0x4000

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x3

    iget-object v2, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->f:Lorg/taptwo/android/widget/ViewFlow;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->f:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v0}, Lorg/taptwo/android/widget/ViewFlow;->a()I

    move-result v0

    :cond_0
    iget v2, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->b:F

    mul-float/2addr v2, v9

    iget v3, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->b:F

    add-float/2addr v3, v2

    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->getPaddingLeft()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    iget v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->h:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->g:I

    int-to-float v0, v0

    iget v2, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->b:F

    mul-float/2addr v2, v9

    iget v3, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->b:F

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget v2, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->h:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    :goto_1
    int-to-float v2, v4

    iget v3, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->b:F

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->b:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->b:F

    iget-object v3, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    int-to-float v5, v4

    iget v6, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->b:F

    add-float/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    add-float/2addr v5, v1

    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->b:F

    add-float/2addr v6, v7

    iget v7, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->b:F

    iget-object v8, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9

    const/high16 v8, 0x4000

    const/high16 v7, -0x8000

    const/high16 v6, 0x3f80

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v2, v8, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v3, v8, :cond_3

    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/taptwo/android/widget/CircleFlowIndicator;->setMeasuredDimension(II)V

    return-void

    :cond_1
    const/4 v0, 0x3

    iget-object v3, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->f:Lorg/taptwo/android/widget/ViewFlow;

    if-eqz v3, :cond_2

    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->f:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v0}, Lorg/taptwo/android/widget/ViewFlow;->a()I

    move-result v0

    :cond_2
    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget v5, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->b:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->b:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    add-float/2addr v0, v6

    float-to-int v0, v0

    if-ne v2, v7, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_3
    const/high16 v2, 0x4000

    iget v4, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->b:F

    mul-float/2addr v2, v4

    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    add-float/2addr v2, v6

    float-to-int v2, v2

    if-ne v3, v7, :cond_4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1
.end method
