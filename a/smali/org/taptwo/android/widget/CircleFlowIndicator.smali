.class public Lorg/taptwo/android/widget/CircleFlowIndicator;
.super Landroid/view/View;
.source "CircleFlowIndicator.java"

# interfaces
.implements Lorg/taptwo/android/widget/FlowIndicator;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/taptwo/android/widget/CircleFlowIndicator$1;,
        Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;
    }
.end annotation


# static fields
.field private static final STYLE_FILL:I = 0x1

.field private static final STYLE_STROKE:I


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field public animationListener:Landroid/view/animation/Animation$AnimationListener;

.field public currentScroll:I

.field public fadeOutTime:I

.field public flowWidth:I

.field private mCentered:Z

.field public final mPaintActive:Landroid/graphics/Paint;

.field public final mPaintInactive:Landroid/graphics/Paint;

.field private radius:F

.field public spacing:F

.field public timer:Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;

.field public viewFlow:Lorg/taptwo/android/widget/ViewFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/high16 v0, 0x4080

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 63
    iput v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->radius:F

    .line 64
    iput v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->spacing:F

    .line 65
    iput v1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->fadeOutTime:I

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    .line 69
    iput v1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->currentScroll:I

    .line 70
    iput v1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->flowWidth:I

    .line 72
    iput-object p0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 74
    iput-boolean v1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mCentered:Z

    .line 83
    invoke-direct {p0, v3, v3, v2, v1}, Lorg/taptwo/android/widget/CircleFlowIndicator;->initColors(IIII)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x4080

    const/4 v8, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput v9, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->radius:F

    .line 64
    iput v9, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->spacing:F

    .line 65
    iput v8, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->fadeOutTime:I

    .line 66
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    .line 67
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    .line 69
    iput v8, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->currentScroll:I

    .line 70
    iput v8, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->flowWidth:I

    .line 72
    iput-object p0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 74
    iput-boolean v8, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mCentered:Z

    .line 95
    sget-object v7, Lorg/taptwo/android/widget/viewflow/R$styleable;->CircleFlowIndicator:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x7

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 102
    .local v3, activeType:I
    const/4 v2, -0x1

    .line 105
    .local v2, activeDefaultColor:I
    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 110
    .local v1, activeColor:I
    const/4 v7, 0x6

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 113
    .local v6, inactiveType:I
    const v5, 0x44ffffff

    .line 115
    .local v5, inactiveDefaultColor:I
    invoke-virtual {v0, v10, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 120
    .local v4, inactiveColor:I
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->radius:F

    .line 123
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->spacing:F

    .line 126
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->fadeOutTime:I

    .line 128
    const/4 v7, 0x4

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mCentered:Z

    .line 130
    invoke-direct {p0, v1, v4, v3, v6}, Lorg/taptwo/android/widget/CircleFlowIndicator;->initColors(IIII)V

    .line 131
    return-void
.end method

.method static synthetic access$200(Lorg/taptwo/android/widget/CircleFlowIndicator;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$202(Lorg/taptwo/android/widget/CircleFlowIndicator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private initColors(IIII)V
    .locals 2
    .parameter "activeColor"
    .parameter "inactiveColor"
    .parameter "activeType"
    .parameter "inactiveType"

    .prologue
    .line 136
    packed-switch p4, :pswitch_data_0

    .line 141
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    :goto_0
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    packed-switch p3, :pswitch_data_1

    .line 151
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 153
    :goto_1
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    return-void

    .line 138
    :pswitch_0
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 146
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private measureHeight(I)I
    .locals 5
    .parameter "measureSpec"

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 286
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 289
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_1

    .line 290
    move v0, v2

    .line 301
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    const/high16 v3, 0x4000

    iget v4, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->radius:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 297
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_0

    .line 298
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 7
    .parameter "measureSpec"

    .prologue
    .line 251
    const/4 v1, 0x0

    .line 252
    .local v1, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 253
    .local v2, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 256
    .local v3, specSize:I
    const/high16 v4, 0x4000

    if-ne v2, v4, :cond_1

    .line 257
    move v1, v3

    .line 273
    :cond_0
    :goto_0
    return v1

    .line 261
    :cond_1
    const/4 v0, 0x3

    .line 262
    .local v0, count:I
    iget-object v4, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->viewFlow:Lorg/taptwo/android/widget/ViewFlow;

    if-eqz v4, :cond_2

    .line 263
    iget-object v4, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->viewFlow:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v4}, Lorg/taptwo/android/widget/ViewFlow;->getIndicatorCount()I

    move-result v0

    .line 265
    :cond_2
    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    iget v6, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->radius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->spacing:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 269
    const/high16 v4, -0x8000

    if-ne v2, v4, :cond_0

    .line 270
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private resetTimer()V
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->fadeOutTime:I

    if-lez v0, :cond_1

    .line 333
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->timer:Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->timer:Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;

    #getter for: Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->_run:Z
    invoke-static {v0}, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->access$000(Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 335
    :cond_0
    new-instance v0, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;-><init>(Lorg/taptwo/android/widget/CircleFlowIndicator;Lorg/taptwo/android/widget/CircleFlowIndicator$1;)V

    iput-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->timer:Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;

    .line 336
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->timer:Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 342
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->timer:Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;

    invoke-virtual {v0}, Lorg/taptwo/android/widget/CircleFlowIndicator$FadeTimer;->resetTimer()V

    goto :goto_0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 391
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->setVisibility(I)V

    .line 392
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 396
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 400
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/high16 v10, 0x4000

    .line 163
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 164
    const/4 v2, 0x3

    .line 165
    .local v2, count:I
    iget-object v6, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->viewFlow:Lorg/taptwo/android/widget/ViewFlow;

    if-eqz v6, :cond_0

    .line 166
    iget-object v6, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->viewFlow:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v6}, Lorg/taptwo/android/widget/ViewFlow;->getIndicatorCount()I

    move-result v2

    .line 169
    :cond_0
    iget v6, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->radius:F

    mul-float/2addr v6, v10

    iget v7, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->spacing:F

    add-float v1, v6, v7

    .line 171
    .local v1, circleSeparation:F
    const/4 v0, 0x0

    .line 173
    .local v0, centeringOffset:F
    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->getPaddingLeft()I

    move-result v5

    .line 176
    .local v5, leftPadding:I
    const/4 v4, 0x0

    .local v4, iLoop:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 177
    int-to-float v6, v5

    iget v7, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->radius:F

    add-float/2addr v6, v7

    int-to-float v7, v4

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    add-float/2addr v6, v0

    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->radius:F

    add-float/2addr v7, v8

    iget v8, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->radius:F

    iget-object v9, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 176
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 181
    :cond_1
    const/4 v3, 0x0

    .line 182
    .local v3, cx:F
    iget v6, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->flowWidth:I

    if-eqz v6, :cond_2

    .line 184
    iget v6, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->currentScroll:I

    int-to-float v6, v6

    iget v7, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->radius:F

    mul-float/2addr v7, v10

    iget v8, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->spacing:F

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->flowWidth:I

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 187
    :cond_2
    int-to-float v6, v5

    iget v7, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->radius:F

    add-float/2addr v6, v7

    add-float/2addr v6, v3

    add-float/2addr v6, v0

    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->radius:F

    add-float/2addr v7, v8

    iget v8, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->radius:F

    iget-object v9, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 189
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lorg/taptwo/android/widget/CircleFlowIndicator;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lorg/taptwo/android/widget/CircleFlowIndicator;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/taptwo/android/widget/CircleFlowIndicator;->setMeasuredDimension(II)V

    .line 241
    return-void
.end method

.method public onScrolled(IIII)V
    .locals 1
    .parameter "h"
    .parameter "v"
    .parameter "oldh"
    .parameter "oldv"

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->setVisibility(I)V

    .line 226
    invoke-direct {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->resetTimer()V

    .line 227
    iput p1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->currentScroll:I

    .line 228
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->viewFlow:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v0}, Lorg/taptwo/android/widget/ViewFlow;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->flowWidth:I

    .line 229
    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->invalidate()V

    .line 230
    return-void
.end method

.method public onSwitched(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "position"

    .prologue
    .line 200
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 311
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->invalidate()V

    .line 313
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 322
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->invalidate()V

    .line 324
    return-void
.end method

.method public setViewFlow(Lorg/taptwo/android/widget/ViewFlow;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 211
    invoke-direct {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->resetTimer()V

    .line 212
    iput-object p1, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->viewFlow:Lorg/taptwo/android/widget/ViewFlow;

    .line 213
    iget-object v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->viewFlow:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v0}, Lorg/taptwo/android/widget/ViewFlow;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/taptwo/android/widget/CircleFlowIndicator;->flowWidth:I

    .line 214
    invoke-virtual {p0}, Lorg/taptwo/android/widget/CircleFlowIndicator;->invalidate()V

    .line 215
    return-void
.end method
