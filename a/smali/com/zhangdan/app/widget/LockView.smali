.class public Lcom/zhangdan/app/widget/LockView;
.super Landroid/view/View;
.source "LockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/widget/LockView$Cell;,
        Lcom/zhangdan/app/widget/LockView$OnInputPwdListener;
    }
.end annotation


# instance fields
.field private mBlockWidth:I

.field private mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

.field private mMotionX:F

.field private mMotionY:F

.field private mOnInputPwdListener:Lcom/zhangdan/app/widget/LockView$OnInputPwdListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mSelDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnSelDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v5, 0x9

    const/4 v6, 0x1

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-array v4, v5, [Lcom/zhangdan/app/widget/LockView$Cell;

    iput-object v4, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/zhangdan/app/widget/LockView;->mSelIndex:Ljava/util/List;

    .line 39
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/zhangdan/app/widget/LockView;->mPaint:Landroid/graphics/Paint;

    .line 47
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 48
    new-instance v0, Lcom/zhangdan/app/widget/LockView$Cell;

    invoke-direct {v0, p0, v2}, Lcom/zhangdan/app/widget/LockView$Cell;-><init>(Lcom/zhangdan/app/widget/LockView;I)V

    .line 49
    .local v0, cell:Lcom/zhangdan/app/widget/LockView$Cell;
    iget-object v4, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    aput-object v0, v4, v2

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v0           #cell:Lcom/zhangdan/app/widget/LockView$Cell;
    :cond_0
    sget-object v4, Lcom/zhangdan/app/R$styleable;->PasswordLock:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 52
    .local v3, ta:Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/zhangdan/app/widget/LockView;->mSelDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/zhangdan/app/widget/LockView;->mUnSelDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    iget-object v4, p0, Lcom/zhangdan/app/widget/LockView;->mPaint:Landroid/graphics/Paint;

    const v5, -0x4a0021d7

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v4, p0, Lcom/zhangdan/app/widget/LockView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v4, p0, Lcom/zhangdan/app/widget/LockView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 60
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/zhangdan/app/widget/LockView;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x4170

    iget v6, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/widget/LockView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->mSelDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/widget/LockView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->mUnSelDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private calcPosition(FF)I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x3

    const/4 v3, -0x1

    .line 191
    iget v4, p0, Lcom/zhangdan/app/widget/LockView;->mBlockWidth:I

    int-to-float v4, v4

    div-float v4, p1, v4

    float-to-int v0, v4

    .line 192
    .local v0, i:I
    iget v4, p0, Lcom/zhangdan/app/widget/LockView;->mBlockWidth:I

    int-to-float v4, v4

    div-float v4, p2, v4

    float-to-int v2, v4

    .line 193
    .local v2, j:I
    if-lt v0, v5, :cond_0

    .line 194
    const/4 v0, 0x2

    .line 195
    :cond_0
    if-lt v2, v5, :cond_1

    .line 196
    const/4 v2, 0x2

    .line 197
    :cond_1
    mul-int/lit8 v4, v2, 0x3

    add-int v1, v0, v4

    .line 198
    .local v1, index:I
    if-ltz v1, :cond_2

    const/16 v4, 0x9

    if-lt v1, v4, :cond_4

    :cond_2
    move v1, v3

    .line 202
    .end local v1           #index:I
    :cond_3
    :goto_0
    return v1

    .line 200
    .restart local v1       #index:I
    :cond_4
    iget-object v4, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    aget-object v4, v4, v1

    float-to-int v5, p1

    float-to-int v6, p2

    invoke-virtual {v4, v5, v6}, Lcom/zhangdan/app/widget/LockView$Cell;->contains(II)Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v3

    .line 202
    goto :goto_0
.end method

.method private drawCell(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/zhangdan/app/widget/LockView$Cell;->draw(Landroid/graphics/Canvas;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method private drawConnectedLine(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->mSelIndex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->mSelIndex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_1

    .line 84
    iget-object v1, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->mSelIndex:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v6, v1, v0

    .line 85
    .local v6, cell1:Lcom/zhangdan/app/widget/LockView$Cell;
    iget-object v1, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->mSelIndex:Ljava/util/List;

    add-int/lit8 v2, v8, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v7, v1, v0

    .line 86
    .local v7, cell2:Lcom/zhangdan/app/widget/LockView$Cell;
    invoke-virtual {v6}, Lcom/zhangdan/app/widget/LockView$Cell;->getCenterX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v6}, Lcom/zhangdan/app/widget/LockView$Cell;->getCenterY()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v7}, Lcom/zhangdan/app/widget/LockView$Cell;->getCenterX()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v7}, Lcom/zhangdan/app/widget/LockView$Cell;->getCenterY()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zhangdan/app/widget/LockView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 83
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 88
    .end local v6           #cell1:Lcom/zhangdan/app/widget/LockView$Cell;
    .end local v7           #cell2:Lcom/zhangdan/app/widget/LockView$Cell;
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    iget-object v0, p0, Lcom/zhangdan/app/widget/LockView;->mSelIndex:Ljava/util/List;

    iget-object v2, p0, Lcom/zhangdan/app/widget/LockView;->mSelIndex:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v9, v1, v0

    .line 89
    .local v9, lastCell:Lcom/zhangdan/app/widget/LockView$Cell;
    invoke-virtual {v9}, Lcom/zhangdan/app/widget/LockView$Cell;->getCenterX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v9}, Lcom/zhangdan/app/widget/LockView$Cell;->getCenterY()I

    move-result v0

    int-to-float v2, v0

    iget v3, p0, Lcom/zhangdan/app/widget/LockView;->mMotionX:F

    iget v4, p0, Lcom/zhangdan/app/widget/LockView;->mMotionY:F

    iget-object v5, p0, Lcom/zhangdan/app/widget/LockView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public clearLock()V
    .locals 3

    .prologue
    .line 210
    iget-object v1, p0, Lcom/zhangdan/app/widget/LockView;->mSelIndex:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/widget/LockView$Cell;->setSelected(Z)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/LockView;->invalidate()V

    .line 215
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/zhangdan/app/widget/LockView;->drawCell(Landroid/graphics/Canvas;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/zhangdan/app/widget/LockView;->drawConnectedLine(Landroid/graphics/Canvas;)V

    .line 72
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 95
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/LockView;->getMeasuredWidth()I

    move-result v8

    .line 97
    .local v8, width:I
    invoke-virtual {p0, v8, v8}, Lcom/zhangdan/app/widget/LockView;->setMeasuredDimension(II)V

    .line 98
    const-string v9, "LockView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "width:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    div-int/lit8 v9, v8, 0x3

    iput v9, p0, Lcom/zhangdan/app/widget/LockView;->mBlockWidth:I

    .line 102
    iget v9, p0, Lcom/zhangdan/app/widget/LockView;->mBlockWidth:I

    int-to-float v9, v9

    const v10, 0x3f19999a

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 103
    .local v1, cellWidth:I
    iget v9, p0, Lcom/zhangdan/app/widget/LockView;->mBlockWidth:I

    int-to-float v9, v9

    const v10, 0x3e4ccccd

    mul-float/2addr v9, v10

    float-to-int v0, v9

    .line 105
    .local v0, cellPad:I
    move v2, v0

    .line 106
    .local v2, left0:I
    iget v9, p0, Lcom/zhangdan/app/widget/LockView;->mBlockWidth:I

    add-int v3, v0, v9

    .line 107
    .local v3, left1:I
    iget v9, p0, Lcom/zhangdan/app/widget/LockView;->mBlockWidth:I

    mul-int/lit8 v9, v9, 0x2

    add-int v4, v0, v9

    .line 109
    .local v4, left2:I
    move v5, v0

    .line 110
    .local v5, top0:I
    iget v9, p0, Lcom/zhangdan/app/widget/LockView;->mBlockWidth:I

    add-int v6, v0, v9

    .line 111
    .local v6, top1:I
    iget v9, p0, Lcom/zhangdan/app/widget/LockView;->mBlockWidth:I

    mul-int/lit8 v9, v9, 0x2

    add-int v7, v0, v9

    .line 113
    .local v7, top2:I
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    add-int v10, v2, v1

    add-int v11, v5, v1

    invoke-virtual {v9, v2, v5, v10, v11}, Lcom/zhangdan/app/widget/LockView$Cell;->setRect(IIII)V

    .line 114
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    add-int v10, v3, v1

    add-int v11, v5, v1

    invoke-virtual {v9, v3, v5, v10, v11}, Lcom/zhangdan/app/widget/LockView$Cell;->setRect(IIII)V

    .line 115
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    add-int v10, v4, v1

    add-int v11, v5, v1

    invoke-virtual {v9, v4, v5, v10, v11}, Lcom/zhangdan/app/widget/LockView$Cell;->setRect(IIII)V

    .line 117
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    add-int v10, v2, v1

    add-int v11, v6, v1

    invoke-virtual {v9, v2, v6, v10, v11}, Lcom/zhangdan/app/widget/LockView$Cell;->setRect(IIII)V

    .line 118
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    add-int v10, v3, v1

    add-int v11, v6, v1

    invoke-virtual {v9, v3, v6, v10, v11}, Lcom/zhangdan/app/widget/LockView$Cell;->setRect(IIII)V

    .line 119
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    const/4 v10, 0x5

    aget-object v9, v9, v10

    add-int v10, v4, v1

    add-int v11, v6, v1

    invoke-virtual {v9, v4, v6, v10, v11}, Lcom/zhangdan/app/widget/LockView$Cell;->setRect(IIII)V

    .line 121
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    const/4 v10, 0x6

    aget-object v9, v9, v10

    add-int v10, v2, v1

    add-int v11, v7, v1

    invoke-virtual {v9, v2, v7, v10, v11}, Lcom/zhangdan/app/widget/LockView$Cell;->setRect(IIII)V

    .line 122
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    const/4 v10, 0x7

    aget-object v9, v9, v10

    add-int v10, v3, v1

    add-int v11, v7, v1

    invoke-virtual {v9, v3, v7, v10, v11}, Lcom/zhangdan/app/widget/LockView$Cell;->setRect(IIII)V

    .line 123
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    const/16 v10, 0x8

    aget-object v9, v9, v10

    add-int v10, v4, v1

    add-int v11, v7, v1

    invoke-virtual {v9, v4, v7, v10, v11}, Lcom/zhangdan/app/widget/LockView$Cell;->setRect(IIII)V

    .line 124
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v10, -0x1

    const/4 v12, 0x1

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 129
    .local v7, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 130
    .local v8, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 180
    :goto_0
    return v12

    .line 132
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/LockView;->clearLock()V

    .line 133
    invoke-direct {p0, v7, v8}, Lcom/zhangdan/app/widget/LockView;->calcPosition(FF)I

    move-result v3

    .line 134
    .local v3, index:I
    if-eq v3, v10, :cond_0

    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/zhangdan/app/widget/LockView$Cell;->isSelected()Z

    move-result v9

    if-nez v9, :cond_0

    .line 135
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mSelIndex:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    aget-object v9, v9, v3

    invoke-virtual {v9, v12}, Lcom/zhangdan/app/widget/LockView$Cell;->setSelected(Z)V

    .line 137
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/zhangdan/app/widget/LockView$Cell;->getCenterX()I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/zhangdan/app/widget/LockView;->mMotionX:F

    .line 138
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/zhangdan/app/widget/LockView$Cell;->getCenterY()I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/zhangdan/app/widget/LockView;->mMotionY:F

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/LockView;->invalidate()V

    goto :goto_0

    .line 144
    .end local v3           #index:I
    :pswitch_1
    invoke-direct {p0, v7, v8}, Lcom/zhangdan/app/widget/LockView;->calcPosition(FF)I

    move-result v3

    .line 145
    .restart local v3       #index:I
    if-eq v3, v10, :cond_4

    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/zhangdan/app/widget/LockView$Cell;->isSelected()Z

    move-result v9

    if-nez v9, :cond_4

    .line 146
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mSelIndex:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 147
    iget-object v10, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mSelIndex:Ljava/util/List;

    iget-object v11, p0, Lcom/zhangdan/app/widget/LockView;->mSelIndex:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v0, v10, v9

    .line 148
    .local v0, cell:Lcom/zhangdan/app/widget/LockView$Cell;
    invoke-virtual {v0}, Lcom/zhangdan/app/widget/LockView$Cell;->getIndex()I

    move-result v4

    .line 150
    .local v4, lastIndex:I
    const/4 v2, 0x0

    .line 151
    .local v2, flag:Z
    div-int/lit8 v5, v4, 0x3

    .line 152
    .local v5, r1:I
    div-int/lit8 v6, v3, 0x3

    .line 153
    .local v6, r2:I
    if-eq v5, v6, :cond_1

    sub-int v9, v5, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v12, :cond_2

    .line 154
    :cond_1
    const/4 v2, 0x1

    .line 155
    :cond_2
    if-eqz v2, :cond_3

    .line 156
    add-int v9, v4, v3

    div-int/lit8 v1, v9, 0x2

    .line 157
    .local v1, centerIndex:I
    if-eq v1, v3, :cond_3

    if-eq v1, v4, :cond_3

    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/zhangdan/app/widget/LockView$Cell;->isSelected()Z

    move-result v9

    if-nez v9, :cond_3

    .line 158
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mSelIndex:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    aget-object v9, v9, v1

    invoke-virtual {v9, v12}, Lcom/zhangdan/app/widget/LockView$Cell;->setSelected(Z)V

    .line 164
    .end local v0           #cell:Lcom/zhangdan/app/widget/LockView$Cell;
    .end local v1           #centerIndex:I
    .end local v2           #flag:Z
    .end local v4           #lastIndex:I
    .end local v5           #r1:I
    .end local v6           #r2:I
    :cond_3
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mSelIndex:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mCell:[Lcom/zhangdan/app/widget/LockView$Cell;

    aget-object v9, v9, v3

    invoke-virtual {v9, v12}, Lcom/zhangdan/app/widget/LockView$Cell;->setSelected(Z)V

    .line 167
    :cond_4
    iput v7, p0, Lcom/zhangdan/app/widget/LockView;->mMotionX:F

    .line 168
    iput v8, p0, Lcom/zhangdan/app/widget/LockView;->mMotionY:F

    .line 169
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/LockView;->invalidate()V

    goto/16 :goto_0

    .line 173
    .end local v3           #index:I
    :pswitch_2
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mOnInputPwdListener:Lcom/zhangdan/app/widget/LockView$OnInputPwdListener;

    if-eqz v9, :cond_5

    .line 174
    iget-object v9, p0, Lcom/zhangdan/app/widget/LockView;->mOnInputPwdListener:Lcom/zhangdan/app/widget/LockView$OnInputPwdListener;

    iget-object v10, p0, Lcom/zhangdan/app/widget/LockView;->mSelIndex:Ljava/util/List;

    invoke-interface {v9, v10}, Lcom/zhangdan/app/widget/LockView$OnInputPwdListener;->onInputPwd(Ljava/util/List;)V

    .line 175
    :cond_5
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/LockView;->clearLock()V

    .line 176
    invoke-virtual {p0}, Lcom/zhangdan/app/widget/LockView;->invalidate()V

    goto/16 :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnInputPwdListener(Lcom/zhangdan/app/widget/LockView$OnInputPwdListener;)V
    .locals 0
    .parameter "onInputPwdListener"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zhangdan/app/widget/LockView;->mOnInputPwdListener:Lcom/zhangdan/app/widget/LockView$OnInputPwdListener;

    .line 65
    return-void
.end method
