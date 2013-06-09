.class public Lcom/zhangdan/app/activities/stage/BillStageSummaryView;
.super Landroid/view/View;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:[Landroid/graphics/drawable/Drawable;

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/graphics/Paint;

.field private t:Landroid/graphics/Paint;

.field private u:Ljava/text/DecimalFormat;

.field private v:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 6

    const/high16 v5, 0x4140

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->s:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->t:Landroid/graphics/Paint;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->u:Ljava/text/DecimalFormat;

    iput-object p2, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->g:F

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->h:I

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->b:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->c:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->d:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->f:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->f:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->e:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->f:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->f:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const v3, 0x7f0200ec

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->f:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    const v3, 0x7f0200ed

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->f:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    const v3, 0x7f0200ee

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v1, v2

    const/high16 v0, 0x4220

    iget v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->g:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->i:I

    const/high16 v0, 0x42a0

    iget v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->g:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->j:I

    const/high16 v0, 0x4248

    iget v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->g:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->k:I

    const/high16 v0, 0x4040

    iget v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->g:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->m:I

    const/high16 v0, 0x40a0

    iget v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->g:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->n:I

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->o:I

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->p:I

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->q:I

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->i:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->n:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->q:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->l:I

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->s:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->s:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->g:F

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->t:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->g:F

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/e;->f()I

    move-result v0

    iget v2, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->r:I

    if-ge v2, v0, :cond_0

    iput v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->r:I

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->l:I

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->getWidth()I

    move-result v2

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    move v2, v1

    :goto_1
    iget v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->l:I

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

    iget-object v9, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->j:I

    iget-object v2, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->q:I

    iget v4, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->n:I

    add-int/2addr v3, v4

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->i:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->c:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->j:I

    invoke-virtual {v5, v6, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v2, 0x0

    const/high16 v12, 0x4040

    const/high16 v11, 0x4000

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->s:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v0, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v5, v0, v1

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/e;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->s:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    iget v8, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->j:I

    int-to-float v8, v8

    sub-float v7, v8, v7

    iget v8, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->g:F

    mul-float/2addr v8, v12

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->i:I

    iget v9, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->q:I

    iget v10, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->n:I

    add-int/2addr v9, v10

    mul-int/2addr v9, v1

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->q:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v8

    iget v10, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->q:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v10, v5

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\uffe5"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->u:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/data/model/e;->b(I)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->s:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget v7, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->j:I

    int-to-float v7, v7

    sub-float v6, v7, v6

    iget v7, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->g:F

    mul-float/2addr v7, v12

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->q:I

    int-to-float v7, v7

    add-float/2addr v7, v8

    iget v8, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->q:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v8, v5

    div-float/2addr v8, v11

    sub-float/2addr v7, v8

    iget v8, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->j:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->m:I

    add-int v5, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v1, v6

    if-lt v2, v1, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->r:I

    if-lt v2, v1, :cond_2

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/e;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/zhangdan/app/data/model/e;->b(I)D

    move-result-wide v3

    aput-wide v3, v6, v2

    aget-wide v3, v6, v2

    const-wide/16 v7, 0x0

    cmpl-double v1, v3, v7

    if-nez v1, :cond_1

    const-wide v3, 0x3f847ae140000000L

    aput-wide v3, v6, v2

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->p:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->o:I

    add-int/2addr v3, v4

    mul-int/2addr v3, v2

    add-int v7, v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->p:I

    add-int v8, v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->l:I

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_2
    if-gez v4, :cond_3

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/e;->b(I)D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v1, v9, v11

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->f:[Landroid/graphics/drawable/Drawable;

    rem-int/lit8 v11, v4, 0x5

    aget-object v11, v1, v11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->q:I

    int-to-double v12, v1

    aget-wide v14, v6, v4

    div-double/2addr v9, v14

    mul-double/2addr v9, v12

    double-to-int v1, v9

    sub-int v1, v3, v1

    invoke-virtual {v11, v7, v1, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->n:I

    sub-int/2addr v1, v3

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    move v3, v1

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 16

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->a:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/e;->b()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/d;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/d;->f()[I

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    aget v1, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :try_start_1
    aget v2, v4, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->t:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->j:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->m:I

    add-int/2addr v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->l:I

    int-to-float v3, v3

    add-float v6, v3, v4

    const/4 v3, 0x0

    move v15, v3

    move v3, v2

    move v2, v1

    move v1, v15

    :goto_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->r:I

    if-lt v1, v7, :cond_0

    return-void

    :catch_0
    move-exception v1

    move-object v15, v1

    move v1, v2

    move-object v2, v15

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\u6708"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->t:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->p:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->o:I

    add-int/2addr v9, v10

    mul-int/2addr v9, v1

    add-int/2addr v9, v5

    int-to-float v10, v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->p:I

    int-to-float v11, v11

    sub-float v8, v11, v8

    const/high16 v11, 0x4000

    div-float/2addr v8, v11

    add-float/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->t:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_1

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\u5e74->"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-float v10, v6, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->t:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->o:I

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v9, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->d:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->l:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v10, v7

    move-object/from16 v0, p0

    iget v11, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->l:I

    const/high16 v12, 0x4000

    mul-float/2addr v12, v4

    const/high16 v13, 0x40a0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->g:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v12, v12

    add-int/2addr v11, v12

    invoke-virtual {v8, v7, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->d:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    const/16 v7, 0xc

    if-le v3, v7, :cond_2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto/16 :goto_2

    :cond_3
    move v1, v2

    move v2, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->r:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->v:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->b(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->c(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->d(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->e(Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->v:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->v:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->l:I

    iget v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->k:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->j:I

    iget-object v2, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->m:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->p:I

    iget v3, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->r:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    iget v2, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->o:I

    iget v3, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->r:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    iget v2, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->h:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->h:I

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->setMeasuredDimension(II)V

    return-void
.end method
