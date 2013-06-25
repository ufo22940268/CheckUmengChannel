.class public Lorg/taptwo/android/widget/TitleFlowIndicator;
.super Landroid/widget/TextView;
.source "TitleFlowIndicator.java"

# interfaces
.implements Lorg/taptwo/android/widget/FlowIndicator;


# static fields
.field private static final CLIP_PADDING:F = 0.0f

.field private static final FOOTER_COLOR:I = -0x3bbb

.field private static final FOOTER_LINE_HEIGHT:F = 4.0f

.field private static final FOOTER_TRIANGLE_HEIGHT:F = 10.0f

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SELECTED_BOLD:Z = false

.field private static final SELECTED_COLOR:I = -0x3bbb

.field private static final SERIF:I = 0x2

.field private static final TEXT_COLOR:I = -0x555556

.field private static final TEXT_SIZE:I = 0xf

.field private static final TITLE_PADDING:F = 10.0f


# instance fields
.field private clipPadding:F

.field private currentPosition:I

.field private currentScroll:I

.field private footerLineHeight:F

.field private footerTriangleHeight:F

.field private paintFooterLine:Landroid/graphics/Paint;

.field private paintFooterTriangle:Landroid/graphics/Paint;

.field private paintSelected:Landroid/graphics/Paint;

.field private paintText:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private titlePadding:F

.field private titleProvider:Lorg/taptwo/android/widget/TitleProvider;

.field private typeface:Landroid/graphics/Typeface;

.field private viewFlow:Lorg/taptwo/android/widget/ViewFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/16 v3, -0x3bbb

    const/high16 v2, 0x4170

    const/4 v4, 0x0

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52
    iput v4, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->currentScroll:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->titleProvider:Lorg/taptwo/android/widget/TitleProvider;

    .line 54
    iput v4, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->currentPosition:I

    .line 80
    const v1, -0x555556

    const/high16 v6, 0x4080

    move-object v0, p0

    move v5, v2

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lorg/taptwo/android/widget/TitleFlowIndicator;->initDraw(IFIZFFI)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->currentScroll:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->titleProvider:Lorg/taptwo/android/widget/TitleProvider;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->currentPosition:I

    .line 93
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v6, "typeface"

    const/4 v12, 0x0

    invoke-interface {p2, v0, v6, v12}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 94
    .local v11, typefaceIndex:I
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v6, "textStyle"

    const/4 v12, 0x0

    invoke-interface {p2, v0, v6, v12}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    .line 95
    .local v10, textStyleIndex:I
    sget-object v0, Lorg/taptwo/android/widget/viewflow/R$styleable;->TitleFlowIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 97
    .local v8, a:Landroid/content/res/TypedArray;
    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, customTypeface:Ljava/lang/String;
    const/16 v0, 0x8

    const/16 v6, -0x3bbb

    invoke-virtual {v8, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 100
    .local v7, footerColor:I
    const/4 v0, 0x7

    const/high16 v6, 0x4080

    invoke-virtual {v8, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->footerLineHeight:F

    .line 101
    const/16 v0, 0x9

    const/high16 v6, 0x4120

    invoke-virtual {v8, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->footerTriangleHeight:F

    .line 102
    const/4 v0, 0x2

    const/16 v6, -0x3bbb

    invoke-virtual {v8, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 103
    .local v3, selectedColor:I
    const/4 v0, 0x3

    const/4 v6, 0x0

    invoke-virtual {v8, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 104
    .local v4, selectedBold:Z
    const/4 v0, 0x5

    const v6, -0x555556

    invoke-virtual {v8, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 105
    .local v1, textColor:I
    const/4 v0, 0x6

    const/high16 v6, 0x4170

    invoke-virtual {v8, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 106
    .local v2, textSize:F
    const/4 v0, 0x4

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 107
    .local v5, selectedSize:F
    const/4 v0, 0x0

    const/high16 v6, 0x4120

    invoke-virtual {v8, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->titlePadding:F

    .line 108
    const/4 v0, 0x1

    const/4 v6, 0x0

    invoke-virtual {v8, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->clipPadding:F

    .line 109
    iget v6, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->footerLineHeight:F

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/taptwo/android/widget/TitleFlowIndicator;->initDraw(IFIZFFI)V

    .line 111
    if-eqz v9, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->typeface:Landroid/graphics/Typeface;

    .line 115
    :goto_0
    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->typeface:Landroid/graphics/Typeface;

    invoke-static {v0, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->typeface:Landroid/graphics/Typeface;

    .line 117
    return-void

    .line 114
    :cond_0
    invoke-direct {p0, v11}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getTypefaceByIndex(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->typeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/Rect;
    .locals 4
    .parameter "index"
    .parameter "paint"

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getTitle(I)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, title:Ljava/lang/String;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 308
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 309
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 310
    return-object v0
.end method

.method private calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;
    .locals 8
    .parameter "paint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v6, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->viewFlow:Lorg/taptwo/android/widget/ViewFlow;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->viewFlow:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v6}, Lorg/taptwo/android/widget/ViewFlow;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->viewFlow:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v6}, Lorg/taptwo/android/widget/ViewFlow;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 282
    .local v1, count:I
    :goto_0
    const/4 v3, 0x0

    .local v3, iLoop:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 283
    invoke-direct {p0, v3, p1}, Lorg/taptwo/android/widget/TitleFlowIndicator;->calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v0

    .line 284
    .local v0, bounds:Landroid/graphics/Rect;
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v5, v6, v7

    .line 285
    .local v5, w:I
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v6, v7

    .line 286
    .local v2, h:I
    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->currentScroll:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v7

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 287
    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 288
    const/4 v6, 0x0

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 289
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 290
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 281
    .end local v0           #bounds:Landroid/graphics/Rect;
    .end local v1           #count:I
    .end local v2           #h:I
    .end local v3           #iLoop:I
    .end local v5           #w:I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 293
    .restart local v1       #count:I
    .restart local v3       #iLoop:I
    :cond_1
    return-object v4
.end method

.method private clipViewOnTheLeft(Landroid/graphics/Rect;I)V
    .locals 1
    .parameter "curViewBound"
    .parameter "curViewWidth"

    .prologue
    .line 267
    iget v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->clipPadding:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 268
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 269
    return-void
.end method

.method private clipViewOnTheRight(Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "curViewBound"
    .parameter "curViewWidth"

    .prologue
    .line 254
    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->clipPadding:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 255
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 256
    return-void
.end method

.method private getTitle(I)Ljava/lang/String;
    .locals 3
    .parameter "pos"

    .prologue
    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->titleProvider:Lorg/taptwo/android/widget/TitleProvider;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->titleProvider:Lorg/taptwo/android/widget/TitleProvider;

    invoke-interface {v1, p1}, Lorg/taptwo/android/widget/TitleProvider;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    :cond_0
    return-object v0
.end method

.method private getTypefaceByIndex(I)Landroid/graphics/Typeface;
    .locals 1
    .parameter "typefaceIndex"

    .prologue
    .line 434
    packed-switch p1, :pswitch_data_0

    .line 444
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    .line 436
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 439
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 442
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initDraw(IFIZFFI)V
    .locals 2
    .parameter "textColor"
    .parameter "textSize"
    .parameter "selectedColor"
    .parameter "selectedBold"
    .parameter "selectedSize"
    .parameter "footerLineHeight"
    .parameter "footerColor"

    .prologue
    const/4 v1, 0x1

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintText:Landroid/graphics/Paint;

    .line 124
    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 126
    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintSelected:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 130
    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 131
    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintFooterLine:Landroid/graphics/Paint;

    .line 133
    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintFooterLine:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintFooterTriangle:Landroid/graphics/Paint;

    .line 137
    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintFooterTriangle:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintFooterTriangle:Landroid/graphics/Paint;

    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    return-void
.end method

.method private measureHeight(I)I
    .locals 7
    .parameter "measureSpec"

    .prologue
    .line 414
    const/4 v1, 0x0

    .line 415
    .local v1, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 416
    .local v3, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 419
    .local v4, specSize:I
    const/high16 v5, 0x4000

    if-ne v3, v5, :cond_0

    .line 420
    move v1, v4

    move v2, v1

    .line 430
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 425
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 426
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v5, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 427
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->footerTriangleHeight:F

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->footerLineHeight:F

    float-to-int v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, 0xa

    move v2, v1

    .line 428
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 5
    .parameter "measureSpec"

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 397
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 399
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-eq v1, v3, :cond_0

    .line 400
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "ViewFlow can only be used in EXACTLY mode."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 402
    :cond_0
    move v0, v2

    .line 403
    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 148
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/taptwo/android/widget/TitleFlowIndicator;->calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v2

    .line 154
    .local v2, bounds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->viewFlow:Lorg/taptwo/android/widget/ViewFlow;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->viewFlow:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v14}, Lorg/taptwo/android/widget/ViewFlow;->getAdapter()Landroid/widget/Adapter;

    move-result-object v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->viewFlow:Lorg/taptwo/android/widget/ViewFlow;

    invoke-virtual {v14}, Lorg/taptwo/android/widget/ViewFlow;->getAdapter()Landroid/widget/Adapter;

    move-result-object v14

    invoke-interface {v14}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    .line 157
    .local v4, count:I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->currentPosition:I

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 158
    .local v5, curViewBound:Landroid/graphics/Rect;
    iget v14, v5, Landroid/graphics/Rect;->right:I

    iget v15, v5, Landroid/graphics/Rect;->left:I

    sub-int v6, v14, v15

    .line 159
    .local v6, curViewWidth:I
    iget v14, v5, Landroid/graphics/Rect;->left:I

    if-gez v14, :cond_0

    .line 161
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lorg/taptwo/android/widget/TitleFlowIndicator;->clipViewOnTheLeft(Landroid/graphics/Rect;I)V

    .line 163
    :cond_0
    iget v14, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getLeft()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    if-le v14, v15, :cond_1

    .line 165
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lorg/taptwo/android/widget/TitleFlowIndicator;->clipViewOnTheRight(Landroid/graphics/Rect;I)V

    .line 169
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->currentPosition:I

    if-lez v14, :cond_4

    .line 170
    move-object/from16 v0, p0

    iget v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->currentPosition:I

    add-int/lit8 v7, v14, -0x1

    .local v7, iLoop:I
    :goto_1
    if-ltz v7, :cond_4

    .line 171
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 172
    .local v1, bound:Landroid/graphics/Rect;
    iget v14, v1, Landroid/graphics/Rect;->right:I

    iget v15, v1, Landroid/graphics/Rect;->left:I

    sub-int v13, v14, v15

    .line 174
    .local v13, w:I
    iget v14, v1, Landroid/graphics/Rect;->left:I

    if-gez v14, :cond_2

    .line 176
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lorg/taptwo/android/widget/TitleFlowIndicator;->clipViewOnTheLeft(Landroid/graphics/Rect;I)V

    .line 178
    add-int/lit8 v14, v4, -0x1

    if-ge v7, v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->currentPosition:I

    if-eq v14, v7, :cond_2

    .line 179
    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 181
    .local v11, rightBound:Landroid/graphics/Rect;
    iget v14, v1, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    const/high16 v15, 0x4120

    add-float/2addr v14, v15

    iget v15, v11, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_2

    .line 182
    iget v14, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->titlePadding:F

    float-to-int v15, v15

    add-int/2addr v15, v13

    sub-int/2addr v14, v15

    iput v14, v1, Landroid/graphics/Rect;->left:I

    .line 170
    .end local v11           #rightBound:Landroid/graphics/Rect;
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 154
    .end local v1           #bound:Landroid/graphics/Rect;
    .end local v4           #count:I
    .end local v5           #curViewBound:Landroid/graphics/Rect;
    .end local v6           #curViewWidth:I
    .end local v7           #iLoop:I
    .end local v13           #w:I
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 189
    .restart local v4       #count:I
    .restart local v5       #curViewBound:Landroid/graphics/Rect;
    .restart local v6       #curViewWidth:I
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->currentPosition:I

    add-int/lit8 v15, v4, -0x1

    if-ge v14, v15, :cond_6

    .line 190
    move-object/from16 v0, p0

    iget v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->currentPosition:I

    add-int/lit8 v7, v14, 0x1

    .restart local v7       #iLoop:I
    :goto_2
    if-ge v7, v4, :cond_6

    .line 191
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 192
    .restart local v1       #bound:Landroid/graphics/Rect;
    iget v14, v1, Landroid/graphics/Rect;->right:I

    iget v15, v1, Landroid/graphics/Rect;->left:I

    sub-int v13, v14, v15

    .line 194
    .restart local v13       #w:I
    iget v14, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getLeft()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    if-le v14, v15, :cond_5

    .line 196
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lorg/taptwo/android/widget/TitleFlowIndicator;->clipViewOnTheRight(Landroid/graphics/Rect;I)V

    .line 198
    if-lez v7, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->currentPosition:I

    if-eq v14, v7, :cond_5

    .line 199
    add-int/lit8 v14, v7, -0x1

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 201
    .local v8, leftBound:Landroid/graphics/Rect;
    iget v14, v1, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    const/high16 v15, 0x4120

    sub-float/2addr v14, v15

    iget v15, v8, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_5

    .line 202
    iget v14, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->titlePadding:F

    float-to-int v15, v15

    add-int/2addr v14, v15

    iput v14, v1, Landroid/graphics/Rect;->left:I

    .line 190
    .end local v8           #leftBound:Landroid/graphics/Rect;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 210
    .end local v1           #bound:Landroid/graphics/Rect;
    .end local v7           #iLoop:I
    .end local v13           #w:I
    :cond_6
    const/4 v7, 0x0

    .restart local v7       #iLoop:I
    :goto_3
    if-ge v7, v4, :cond_b

    .line 212
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getTitle(I)Ljava/lang/String;

    move-result-object v12

    .line 213
    .local v12, title:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 215
    .restart local v1       #bound:Landroid/graphics/Rect;
    iget v14, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getLeft()I

    move-result v15

    if-le v14, v15, :cond_7

    iget v14, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getLeft()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    if-lt v14, v15, :cond_8

    :cond_7
    iget v14, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getLeft()I

    move-result v15

    if-le v14, v15, :cond_a

    iget v14, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getLeft()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    if-ge v14, v15, :cond_a

    .line 216
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintText:Landroid/graphics/Paint;

    .line 218
    .local v10, paint:Landroid/graphics/Paint;
    iget v14, v1, Landroid/graphics/Rect;->left:I

    iget v15, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    div-int/lit8 v9, v14, 0x2

    .line 219
    .local v9, middle:I
    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int v14, v9, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/16 v15, 0x14

    if-ge v14, v15, :cond_9

    .line 220
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintSelected:Landroid/graphics/Paint;

    .line 222
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 223
    iget v14, v1, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    iget v15, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v14, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 210
    .end local v9           #middle:I
    .end local v10           #paint:Landroid/graphics/Paint;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 228
    .end local v1           #bound:Landroid/graphics/Rect;
    .end local v12           #title:Ljava/lang/String;
    :cond_b
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->path:Landroid/graphics/Path;

    .line 229
    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getHeight()I

    move-result v14

    add-int/lit8 v3, v14, -0x1

    .line 230
    .local v3, coordY:I
    int-to-float v15, v3

    move-object/from16 v0, p0

    iget v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->footerLineHeight:F

    const/high16 v16, 0x4000

    rem-float v14, v14, v16

    const/high16 v16, 0x3f80

    cmpl-float v14, v14, v16

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->footerLineHeight:F

    const/high16 v16, 0x4000

    div-float v14, v14, v16

    :goto_4
    sub-float v14, v15, v14

    float-to-int v3, v14

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->path:Landroid/graphics/Path;

    const/4 v15, 0x0

    int-to-float v0, v3

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Path;->moveTo(FF)V

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->path:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v15

    int-to-float v15, v15

    int-to-float v0, v3

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Path;->lineTo(FF)V

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->path:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->close()V

    .line 234
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 236
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->path:Landroid/graphics/Path;

    .line 237
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->path:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->footerLineHeight:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->footerTriangleHeight:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Path;->moveTo(FF)V

    .line 238
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->path:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->footerTriangleHeight:F

    move/from16 v16, v0

    add-float v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->footerLineHeight:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Path;->lineTo(FF)V

    .line 239
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->path:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->footerTriangleHeight:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->footerLineHeight:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Path;->lineTo(FF)V

    .line 240
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->path:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->close()V

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->paintFooterTriangle:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 243
    return-void

    .line 230
    :cond_c
    move-object/from16 v0, p0

    iget v14, v0, Lorg/taptwo/android/widget/TitleFlowIndicator;->footerLineHeight:F

    const/high16 v16, 0x4000

    div-float v14, v14, v16

    const/high16 v16, 0x3f80

    sub-float v14, v14, v16

    goto/16 :goto_4
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lorg/taptwo/android/widget/TitleFlowIndicator;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lorg/taptwo/android/widget/TitleFlowIndicator;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/taptwo/android/widget/TitleFlowIndicator;->setMeasuredDimension(II)V

    .line 385
    return-void
.end method

.method public onScrolled(IIII)V
    .locals 0
    .parameter "h"
    .parameter "v"
    .parameter "oldh"
    .parameter "oldv"

    .prologue
    .line 337
    iput p1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->currentScroll:I

    .line 338
    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->invalidate()V

    .line 339
    return-void
.end method

.method public onSwitched(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "position"

    .prologue
    .line 350
    iput p2, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->currentPosition:I

    .line 351
    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->invalidate()V

    .line 352
    return-void
.end method

.method public setTitleProvider(Lorg/taptwo/android/widget/TitleProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 374
    iput-object p1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->titleProvider:Lorg/taptwo/android/widget/TitleProvider;

    .line 375
    return-void
.end method

.method public setViewFlow(Lorg/taptwo/android/widget/ViewFlow;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 363
    iput-object p1, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->viewFlow:Lorg/taptwo/android/widget/ViewFlow;

    .line 364
    invoke-virtual {p1}, Lorg/taptwo/android/widget/ViewFlow;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lorg/taptwo/android/widget/TitleFlowIndicator;->currentPosition:I

    .line 365
    invoke-virtual {p0}, Lorg/taptwo/android/widget/TitleFlowIndicator;->invalidate()V

    .line 366
    return-void
.end method
