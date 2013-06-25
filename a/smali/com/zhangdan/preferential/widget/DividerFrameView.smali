.class public Lcom/zhangdan/preferential/widget/DividerFrameView;
.super Landroid/widget/FrameLayout;
.source "DividerFrameView.java"


# instance fields
.field private mLeftWeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->mLinePaint:Landroid/graphics/Paint;

    .line 32
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->mLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f0c0045

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    const v1, 0x7f0a004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->mLineWidth:I

    .line 34
    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->mLeftWeight:I

    .line 35
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/DividerFrameView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->mLeftWeight:I

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    iget v2, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->mLineWidth:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    iget v2, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->mLineWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v6, v0

    .line 46
    .local v6, left:I
    int-to-float v1, v6

    const/4 v2, 0x0

    iget v0, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->mLineWidth:I

    add-int/2addr v0, v6

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/DividerFrameView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 47
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 40
    return-void
.end method
