.class public Lcom/zhangdan/preferential/widget/DividerFrameView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->a:Landroid/graphics/Paint;

    const v2, 0x7f0a0045

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x7f07004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->b:I

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->c:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/DividerFrameView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->c:I

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    iget v2, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->b:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    iget v2, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-float v1, v0

    const/4 v2, 0x0

    iget v3, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->b:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/DividerFrameView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zhangdan/preferential/widget/DividerFrameView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method
