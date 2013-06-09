.class public Lcom/zhangdan/app/activities/stage/CardStageView;
.super Landroid/view/View;


# instance fields
.field private a:Lcom/zhangdan/app/data/model/e;

.field private b:Ljava/util/List;

.field private c:F

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:[Landroid/graphics/drawable/Drawable;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/graphics/Paint;

.field private s:Landroid/graphics/Paint;

.field private t:Ljava/text/DecimalFormat;

.field private u:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/e;)V
    .locals 6

    const/high16 v5, 0x4140

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->r:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->s:Landroid/graphics/Paint;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->t:Ljava/text/DecimalFormat;

    iput-object p2, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->a:Lcom/zhangdan/app/data/model/e;

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/e;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->b:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->c:F

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->d:I

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->e:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->g:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->f:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->h:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->h:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->g:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->h:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->h:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const v3, 0x7f0200ec

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->h:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    const v3, 0x7f0200ed

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->h:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    const v3, 0x7f0200ee

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    const/high16 v1, 0x4220

    iget v2, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->c:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->i:I

    const/high16 v1, 0x42a0

    iget v2, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->c:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->j:I

    const/high16 v1, 0x4248

    iget v2, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->c:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->k:I

    const/high16 v1, 0x40a0

    iget v2, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->c:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->n:I

    const/high16 v1, 0x41a0

    iget v2, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->c:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->m:I

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->o:I

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->p:I

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->q:I

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/e;->h()I

    move-result v0

    iget v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->i:I

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->n:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->q:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->l:I

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->r:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->r:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->c:F

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->s:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->s:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->c:F

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageView;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->l:I

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageView;->getWidth()I

    move-result v2

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->j:I

    int-to-float v1, v0

    const/4 v2, 0x0

    iget v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->j:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->r:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    move v2, v1

    :goto_1
    iget v5, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->l:I

    div-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    if-lt v2, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    mul-int v5, v0, v3

    mul-int v6, v2, v4

    add-int v7, v5, v3

    add-int v8, v6, v4

    iget-object v9, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 13

    const/high16 v10, 0x4040

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->r:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v0, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v5, v0, v1

    iget v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->j:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->r:Landroid/graphics/Paint;

    const-string v3, "\uffe50"

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->c:F

    mul-float/2addr v1, v10

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->l:I

    int-to-float v1, v1

    iget v3, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v1, v3

    const-string v3, "\uffe50"

    iget-object v6, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-wide/16 v0, 0x0

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    move-wide v11, v0

    move-wide v1, v11

    :goto_0
    if-gez v3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/d;->e()D

    move-result-wide v6

    add-double v0, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "\uffe5"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->t:Ljava/text/DecimalFormat;

    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v6, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->i:I

    iget v7, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->q:I

    iget v8, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->n:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->r:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    iget v8, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->j:I

    int-to-float v8, v8

    sub-float v7, v8, v7

    iget v8, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->c:F

    mul-float/2addr v8, v10

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->q:I

    int-to-float v8, v8

    add-float/2addr v6, v8

    iget v8, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->q:I

    int-to-float v8, v8

    sub-float/2addr v8, v5

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    sub-float/2addr v6, v8

    iget v8, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->q:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v6, v8

    iget-object v8, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move-wide v11, v0

    move-wide v1, v11

    goto :goto_0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->r:Landroid/graphics/Paint;

    const v1, 0x40ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v7, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->j:I

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageView;->getWidth()I

    move-result v8

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-lt v6, v9, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->i:I

    iget v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->q:I

    iget v2, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->n:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->n:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v1, v7

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->r:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 11

    iget v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->j:I

    iget v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->m:I

    add-int v3, v0, v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->a:Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/e;->f()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->p:I

    iget v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->o:I

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    add-int v5, v3, v0

    iget v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->p:I

    add-int v6, v5, v0

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/d;->c()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->h:[Landroid/graphics/drawable/Drawable;

    rem-int/lit8 v8, v1, 0x5

    aget-object v0, v0, v8

    iget v8, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->l:I

    iget v9, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->q:I

    iget v10, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->n:I

    add-int/2addr v9, v10

    sub-int v10, v7, v1

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->q:I

    sub-int v9, v8, v9

    invoke-virtual {v0, v5, v9, v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 17

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    if-nez v1, :cond_3

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/d;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/d;->f()[I

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v2, 0x1

    aget v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->s:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->j:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->m:I

    add-int/2addr v5, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->l:I

    int-to-float v1, v1

    add-float v6, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->a:Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/e;->f()I

    move-result v7

    const/4 v1, 0x0

    move/from16 v16, v1

    move v1, v2

    move v2, v3

    move/from16 v3, v16

    :goto_1
    if-ge v3, v7, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u6708"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->s:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->p:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->o:I

    add-int/2addr v10, v11

    mul-int/2addr v10, v3

    add-int/2addr v10, v5

    int-to-float v11, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->p:I

    int-to-float v12, v12

    sub-float v9, v12, v9

    const/high16 v12, 0x4000

    div-float/2addr v9, v12

    add-float/2addr v9, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->s:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9, v6, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v3, :cond_4

    const/4 v8, 0x1

    if-ne v1, v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\u5e74->"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-float v11, v6, v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->s:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v8, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->o:I

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v10, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->f:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->l:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v11, v8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->l:I

    const/high16 v13, 0x4000

    mul-float/2addr v13, v4

    const/high16 v14, 0x40a0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->c:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    invoke-virtual {v9, v8, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->f:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    const/16 v8, 0xc

    if-le v1, v8, :cond_5

    const/4 v1, 0x1

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->u:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->u:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->u:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/CardStageView;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/CardStageView;->b(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/CardStageView;->c(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/CardStageView;->d(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/CardStageView;->e(Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->u:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->u:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->l:I

    iget v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->k:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->a:Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/e;->f()I

    move-result v0

    iget v2, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->j:I

    iget v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->m:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->p:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    iget v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->o:I

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    iget v2, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->d:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->d:I

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/stage/CardStageView;->setMeasuredDimension(II)V

    return-void
.end method
