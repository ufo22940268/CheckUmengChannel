.class public Lcom/zhangdan/app/widget/CustomProgressBar;
.super Landroid/view/View;
.source "CustomProgressBar.java"


# instance fields
.field private mCurrProgress:F

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/widget/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/widget/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 26
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 37
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    const v2, -0x222223

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/CustomProgressBar;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/CustomProgressBar;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zhangdan/app/widget/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 41
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/CustomProgressBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/zhangdan/app/widget/CustomProgressBar;->mCurrProgress:F

    mul-float/2addr v0, v2

    float-to-int v6, v0

    .line 42
    .local v6, w:I
    iget-object v0, p0, Lcom/zhangdan/app/widget/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    int-to-float v3, v6

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/CustomProgressBar;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zhangdan/app/widget/CustomProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 44
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 32
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 47
    iput p1, p0, Lcom/zhangdan/app/widget/CustomProgressBar;->mCurrProgress:F

    .line 48
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/CustomProgressBar;->invalidate()V

    .line 49
    return-void
.end method
