.class public Lorg/taptwo/android/widget/TitleFlowIndicator;
.super Landroid/widget/TextView;

# interfaces
.implements Lorg/taptwo/android/widget/b;


# instance fields
.field private a:Lorg/taptwo/android/widget/ViewFlow;

.field private b:I

.field private c:Lorg/taptwo/android/widget/c;

.field private d:I

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Path;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    const/16 v7, -0x3bbb

    const/high16 v12, 0x4120

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v10, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->c:Lorg/taptwo/android/widget/c;

    iput v10, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->d:I

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "typeface"

    invoke-interface {p2, v0, v1, v10}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "textStyle"

    invoke-interface {p2, v1, v2, v10}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sget-object v1, Lcom/zhangdan/app/R$styleable;->w:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    const/4 v5, 0x7

    const/high16 v6, 0x4080

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->m:F

    const/16 v5, 0x9

    invoke-virtual {v1, v5, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->j:F

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/4 v7, 0x5

    const v8, -0x555556

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    const/4 v8, 0x6

    const/high16 v9, 0x4170

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    invoke-virtual {v1, v10, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->k:F

    const/4 v10, 0x0

    invoke-virtual {v1, v11, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->l:F

    iget v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->m:F

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->e:Landroid/graphics/Paint;

    iget-object v10, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v7, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->f:Landroid/graphics/Paint;

    iget-object v7, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v5, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v5, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->h:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->h:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v5, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->i:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    move-object v1, p0

    :goto_0
    iput-object v0, v1, Lorg/taptwo/android/widget/TitleFlowIndicator;->n:Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->n:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->n:Landroid/graphics/Typeface;

    return-void

    :cond_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v1, p0

    goto :goto_0

    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    move-object v1, p0

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    move-object v1, p0

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    move-object v1, p0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/graphics/Rect;I)V
    .locals 2

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->l:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method private b(Landroid/graphics/Rect;I)V
    .locals 1

    iget v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->l:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private c(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "title "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->c:Lorg/taptwo/android/widget/c;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->c:Lorg/taptwo/android/widget/c;

    invoke-interface {v0}, Lorg/taptwo/android/widget/c;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->d:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->invalidate()V

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->b:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v1, 0x1

    const/high16 v13, 0x4120

    const/high16 v12, 0x3f80

    const/4 v3, 0x0

    const/high16 v11, 0x4000

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->e:Landroid/graphics/Paint;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->a:Lorg/taptwo/android/widget/ViewFlow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->a:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v0}, Lorg/taptwo/android/widget/ViewFlow;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->a:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v0}, Lorg/taptwo/android/widget/ViewFlow;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    :goto_0
    move v2, v3

    :goto_1
    if-lt v2, v0, :cond_5

    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->a:Lorg/taptwo/android/widget/ViewFlow;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->a:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v0}, Lorg/taptwo/android/widget/ViewFlow;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->a:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v0}, Lorg/taptwo/android/widget/ViewFlow;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    move v2, v1

    :goto_2
    iget v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->d:I

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/taptwo/android/widget/TitleFlowIndicator;->b(Landroid/graphics/Rect;I)V

    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-le v4, v6, :cond_1

    invoke-direct {p0, v0, v1}, Lorg/taptwo/android/widget/TitleFlowIndicator;->a(Landroid/graphics/Rect;I)V

    :cond_1
    iget v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->d:I

    if-lez v0, :cond_2

    iget v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->d:I

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_3
    if-gez v4, :cond_7

    :cond_2
    iget v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->d:I

    add-int/lit8 v1, v2, -0x1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->d:I

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    :goto_4
    if-lt v4, v2, :cond_9

    :cond_3
    :goto_5
    if-lt v3, v2, :cond_b

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->m:F

    rem-float/2addr v0, v11

    cmpl-float v0, v0, v12

    if-nez v0, :cond_10

    iget v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->m:F

    div-float/2addr v0, v11

    :goto_6
    sub-float v0, v1, v0

    float-to-int v0, v0

    iget-object v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->g:Landroid/graphics/Path;

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->g:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->m:F

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->j:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->j:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->m:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->j:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->m:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, v2}, Lorg/taptwo/android/widget/TitleFlowIndicator;->c(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    iput v6, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    sub-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v7, Landroid/graphics/Rect;->bottom:I

    iget v6, v7, Landroid/graphics/Rect;->right:I

    iget v8, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    iget v9, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    div-int/lit8 v10, v6, 0x2

    sub-int/2addr v9, v10

    iget v10, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->b:I

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int/2addr v9, v10

    iput v9, v7, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v9

    iput v6, v7, Landroid/graphics/Rect;->right:I

    iput v3, v7, Landroid/graphics/Rect;->top:I

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    move v2, v1

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Rect;

    iget v0, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, v0, v6

    iget v0, v1, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_8

    invoke-direct {p0, v1, v6}, Lorg/taptwo/android/widget/TitleFlowIndicator;->b(Landroid/graphics/Rect;I)V

    add-int/lit8 v0, v2, -0x1

    if-ge v4, v0, :cond_8

    iget v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->d:I

    if-eq v0, v4, :cond_8

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    add-float/2addr v7, v13

    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->k:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    sub-int/2addr v0, v6

    iput v0, v1, Landroid/graphics/Rect;->left:I

    :cond_8
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v6

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getLeft()I

    move-result v7

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    if-le v6, v7, :cond_a

    invoke-direct {p0, v0, v1}, Lorg/taptwo/android/widget/TitleFlowIndicator;->a(Landroid/graphics/Rect;I)V

    if-lez v4, :cond_a

    iget v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->d:I

    if-eq v1, v4, :cond_a

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v6, v13

    iget v7, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_a

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->k:F

    float-to-int v6, v6

    add-int/2addr v1, v6

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :cond_a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_4

    :cond_b
    invoke-direct {p0, v3}, Lorg/taptwo/android/widget/TitleFlowIndicator;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getLeft()I

    move-result v6

    if-le v1, v6, :cond_c

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-lt v1, v6, :cond_d

    :cond_c
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getLeft()I

    move-result v6

    if-le v1, v6, :cond_f

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v1, v6, :cond_f

    :cond_d
    iget-object v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->e:Landroid/graphics/Paint;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x14

    if-ge v6, v7, :cond_e

    iget-object v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->f:Landroid/graphics/Paint;

    :cond_e
    iget-object v6, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->n:Landroid/graphics/Typeface;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p1, v4, v6, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_f
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_5

    :cond_10
    iget v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->m:F

    div-float/2addr v0, v11

    sub-float/2addr v0, v12

    goto/16 :goto_6
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, 0x4000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewFlow can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ne v2, v3, :cond_1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->setMeasuredDimension(II)V

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->e:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v0

    iget v2, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->j:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget v2, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->m:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method
