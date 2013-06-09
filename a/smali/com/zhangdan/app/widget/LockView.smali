.class public Lcom/zhangdan/app/widget/LockView;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:[Lcom/zhangdan/app/widget/h;

.field private d:Ljava/util/List;

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:F

.field private h:F

.field private i:Lcom/zhangdan/app/widget/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-array v0, v5, [Lcom/zhangdan/app/widget/h;

    iput-object v0, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/widget/LockView;->d:Ljava/util/List;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/widget/LockView;->f:Landroid/graphics/Paint;

    move v0, v1

    :goto_0
    if-lt v0, v5, :cond_0

    sget-object v0, Lcom/zhangdan/app/R$styleable;->h:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/widget/LockView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/widget/LockView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->f:Landroid/graphics/Paint;

    const v1, -0x4a0021d7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/widget/LockView;->f:Landroid/graphics/Paint;

    const/high16 v2, 0x4170

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :cond_0
    new-instance v2, Lcom/zhangdan/app/widget/h;

    invoke-direct {v2, p0, v0}, Lcom/zhangdan/app/widget/h;-><init>(Lcom/zhangdan/app/widget/LockView;I)V

    iget-object v3, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(FF)I
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x2

    const/4 v1, -0x1

    iget v2, p0, Lcom/zhangdan/app/widget/LockView;->e:I

    int-to-float v2, v2

    div-float v2, p1, v2

    float-to-int v3, v2

    iget v2, p0, Lcom/zhangdan/app/widget/LockView;->e:I

    int-to-float v2, v2

    div-float v2, p2, v2

    float-to-int v2, v2

    if-lt v3, v4, :cond_0

    move v3, v0

    :cond_0
    if-lt v2, v4, :cond_4

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v3

    if-ltz v0, :cond_1

    const/16 v2, 0x9

    if-lt v0, v2, :cond_3

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0

    :cond_3
    iget-object v2, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    aget-object v2, v2, v0

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Lcom/zhangdan/app/widget/h;->a(II)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhangdan/app/widget/LockView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/LockView;->invalidate()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/zhangdan/app/widget/h;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/zhangdan/app/widget/LockView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/zhangdan/app/widget/i;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/widget/LockView;->i:Lcom/zhangdan/app/widget/i;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v6, v1

    :goto_1
    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v6, v0, :cond_2

    iget-object v1, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/zhangdan/app/widget/LockView;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/h;->c()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/h;->d()I

    move-result v0

    int-to-float v2, v0

    iget v3, p0, Lcom/zhangdan/app/widget/LockView;->g:F

    iget v4, p0, Lcom/zhangdan/app/widget/LockView;->h:F

    iget-object v5, p0, Lcom/zhangdan/app/widget/LockView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/zhangdan/app/widget/h;->a(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->d:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v2, v1, v0

    iget-object v1, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->d:Ljava/util/List;

    add-int/lit8 v3, v6, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v2}, Lcom/zhangdan/app/widget/h;->c()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Lcom/zhangdan/app/widget/h;->d()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/h;->c()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/h;->d()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zhangdan/app/widget/LockView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/LockView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/zhangdan/app/widget/LockView;->setMeasuredDimension(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/zhangdan/app/widget/LockView;->e:I

    iget v0, p0, Lcom/zhangdan/app/widget/LockView;->e:I

    int-to-float v0, v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/zhangdan/app/widget/LockView;->e:I

    int-to-float v1, v1

    const v2, 0x3e4ccccd

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/zhangdan/app/widget/LockView;->e:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/zhangdan/app/widget/LockView;->e:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/zhangdan/app/widget/LockView;->e:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/zhangdan/app/widget/LockView;->e:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    add-int v7, v1, v0

    add-int v8, v1, v0

    invoke-virtual {v6, v1, v1, v7, v8}, Lcom/zhangdan/app/widget/h;->a(IIII)V

    iget-object v6, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    add-int v7, v2, v0

    add-int v8, v1, v0

    invoke-virtual {v6, v2, v1, v7, v8}, Lcom/zhangdan/app/widget/h;->a(IIII)V

    iget-object v6, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    add-int v7, v3, v0

    add-int v8, v1, v0

    invoke-virtual {v6, v3, v1, v7, v8}, Lcom/zhangdan/app/widget/h;->a(IIII)V

    iget-object v6, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    add-int v7, v1, v0

    add-int v8, v4, v0

    invoke-virtual {v6, v1, v4, v7, v8}, Lcom/zhangdan/app/widget/h;->a(IIII)V

    iget-object v6, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    add-int v7, v2, v0

    add-int v8, v4, v0

    invoke-virtual {v6, v2, v4, v7, v8}, Lcom/zhangdan/app/widget/h;->a(IIII)V

    iget-object v6, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    add-int v7, v3, v0

    add-int v8, v4, v0

    invoke-virtual {v6, v3, v4, v7, v8}, Lcom/zhangdan/app/widget/h;->a(IIII)V

    iget-object v4, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    const/4 v6, 0x6

    aget-object v4, v4, v6

    add-int v6, v1, v0

    add-int v7, v5, v0

    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/zhangdan/app/widget/h;->a(IIII)V

    iget-object v1, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    const/4 v4, 0x7

    aget-object v1, v1, v4

    add-int v4, v2, v0

    add-int v6, v5, v0

    invoke-virtual {v1, v2, v5, v4, v6}, Lcom/zhangdan/app/widget/h;->a(IIII)V

    iget-object v1, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    add-int v2, v3, v0

    add-int/2addr v0, v5

    invoke-virtual {v1, v3, v5, v2, v0}, Lcom/zhangdan/app/widget/h;->a(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v5, -0x1

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    invoke-direct {p0}, Lcom/zhangdan/app/widget/LockView;->a()V

    invoke-direct {p0, v2, v3}, Lcom/zhangdan/app/widget/LockView;->a(FF)I

    move-result v0

    if-eq v0, v5, :cond_0

    iget-object v2, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/zhangdan/app/widget/h;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zhangdan/app/widget/LockView;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/zhangdan/app/widget/h;->a(Z)V

    iget-object v2, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/zhangdan/app/widget/h;->c()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/zhangdan/app/widget/LockView;->g:F

    iget-object v2, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/h;->d()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zhangdan/app/widget/LockView;->h:F

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/LockView;->invalidate()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/zhangdan/app/widget/LockView;->a(FF)I

    move-result v4

    if-eq v4, v5, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/h;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v5, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->d:Ljava/util/List;

    iget-object v6, p0, Lcom/zhangdan/app/widget/LockView;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v5, v0

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/h;->a()I

    move-result v5

    const/4 v0, 0x0

    div-int/lit8 v6, v5, 0x3

    div-int/lit8 v7, v4, 0x3

    if-eq v6, v7, :cond_1

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v1, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    add-int v0, v5, v4

    div-int/lit8 v0, v0, 0x2

    if-eq v0, v4, :cond_3

    if-eq v0, v5, :cond_3

    iget-object v5, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/zhangdan/app/widget/h;->b()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/zhangdan/app/widget/LockView;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    aget-object v0, v5, v0

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/h;->a(Z)V

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->d:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->c:[Lcom/zhangdan/app/widget/h;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/h;->a(Z)V

    :cond_4
    iput v2, p0, Lcom/zhangdan/app/widget/LockView;->g:F

    iput v3, p0, Lcom/zhangdan/app/widget/LockView;->h:F

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/LockView;->invalidate()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->i:Lcom/zhangdan/app/widget/i;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->i:Lcom/zhangdan/app/widget/i;

    iget-object v2, p0, Lcom/zhangdan/app/widget/LockView;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/zhangdan/app/widget/i;->a(Ljava/util/List;)V

    :cond_5
    invoke-direct {p0}, Lcom/zhangdan/app/widget/LockView;->a()V

    invoke-virtual {p0}, Lcom/zhangdan/app/widget/LockView;->invalidate()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
