.class public Lcom/zhangdan/app/activities/stage/BillStageSummaryView;
.super Landroid/view/View;
.source "BillStageSummaryView.java"


# instance fields
.field private barDrawable1:Landroid/graphics/drawable/Drawable;

.field private barDrawableArr:[Landroid/graphics/drawable/Drawable;

.field private barWidth:I

.field private bgHeight:I

.field private bgPatDrawable:Landroid/graphics/drawable/Drawable;

.field private bmp:Landroid/graphics/Bitmap;

.field private braceDrawable:Landroid/graphics/drawable/Drawable;

.field private braceMargin:I

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private density:F

.field private dividerDrawable:Landroid/graphics/drawable/Drawable;

.field private horizontalSpace:I

.field private mPaintDate:Landroid/graphics/Paint;

.field private mPaintMoney:Landroid/graphics/Paint;

.field private maxBarHeight:I

.field private maxPeriod:I

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingTop:I

.field private screenWidth:I

.field private stageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillStageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private verticalSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillStageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, stageList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BillStageInfo;>;"
    const/high16 v9, 0x4140

    const/4 v8, 0x1

    .line 66
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintMoney:Landroid/graphics/Paint;

    .line 60
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintDate:Landroid/graphics/Paint;

    .line 61
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#0.00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->decimalFormat:Ljava/text/DecimalFormat;

    .line 67
    iput-object p2, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->stageList:Ljava/util/List;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 70
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 71
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    iput v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->density:F

    .line 72
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->screenWidth:I

    .line 74
    const v5, 0x7f0200f3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bgPatDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    const v5, 0x7f0200f2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->braceDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    const v5, 0x7f0200f6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    const v5, 0x7f0200ed

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barDrawable1:Landroid/graphics/drawable/Drawable;

    .line 78
    const/4 v5, 0x5

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barDrawableArr:[Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barDrawableArr:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barDrawable1:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    .line 80
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barDrawableArr:[Landroid/graphics/drawable/Drawable;

    const v6, 0x7f0200ee

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v8

    .line 81
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barDrawableArr:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x2

    const v7, 0x7f0200ef

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    .line 82
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barDrawableArr:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x3

    const v7, 0x7f0200f0

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    .line 83
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barDrawableArr:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x4

    const v7, 0x7f0200f1

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    .line 85
    const/high16 v5, 0x4220

    iget v6, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->paddingTop:I

    .line 86
    const/high16 v5, 0x42a0

    iget v6, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->paddingLeft:I

    .line 87
    const/high16 v5, 0x4248

    iget v6, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->paddingBottom:I

    .line 88
    const/high16 v5, 0x4040

    iget v6, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->braceMargin:I

    .line 89
    const/high16 v5, 0x40a0

    iget v6, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->verticalSpace:I

    .line 90
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barDrawable1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iput v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->horizontalSpace:I

    .line 92
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barDrawable1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iput v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barWidth:I

    .line 93
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->braceDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->maxBarHeight:I

    .line 95
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/BillStageInfo;

    .line 96
    .local v4, stage:Lcom/zhangdan/app/data/model/BillStageInfo;
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/BillStageInfo;->getMaxPeriodCount()I

    move-result v0

    .line 97
    .local v0, count:I
    iget v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->maxPeriod:I

    if-ge v5, v0, :cond_0

    .line 98
    iput v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->maxPeriod:I

    goto :goto_0

    .line 101
    .end local v0           #count:I
    .end local v4           #stage:Lcom/zhangdan/app/data/model/BillStageInfo;
    :cond_1
    iget v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->paddingTop:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->verticalSpace:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    iget v7, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->maxBarHeight:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bgHeight:I

    .line 103
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintMoney:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintMoney:Landroid/graphics/Paint;

    iget v6, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->density:F

    mul-float/2addr v6, v9

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintMoney:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintDate:Landroid/graphics/Paint;

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintDate:Landroid/graphics/Paint;

    iget v6, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->density:F

    mul-float/2addr v6, v9

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 109
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintDate:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    return-void
.end method

.method private drawBars(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->paddingLeft:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->braceDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->braceMargin:I

    move/from16 v16, v0

    add-int v10, v15, v16

    .line 224
    .local v10, l:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->stageList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    new-array v7, v15, [D

    .line 225
    .local v7, firstPeriodArr:[D
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v15, v7

    if-ge v8, v15, :cond_1

    .line 226
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->stageList:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/zhangdan/app/data/model/BillStageInfo;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/zhangdan/app/data/model/BillStageInfo;->getAmountPerPeriod(I)D

    move-result-wide v15

    aput-wide v15, v7, v8

    .line 227
    aget-wide v15, v7, v8

    const-wide/16 v17, 0x0

    cmpl-double v15, v15, v17

    if-nez v15, :cond_0

    .line 228
    const-wide v15, 0x3f847ae140000000L

    aput-wide v15, v7, v8

    .line 225
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 230
    :cond_1
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->maxPeriod:I

    if-ge v8, v15, :cond_4

    .line 232
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->stageList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v13

    .line 233
    .local v13, size:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->horizontalSpace:I

    move/from16 v16, v0

    add-int v15, v15, v16

    mul-int/2addr v15, v8

    add-int v11, v10, v15

    .line 234
    .local v11, left:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barWidth:I

    add-int v12, v11, v15

    .line 236
    .local v12, right:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bgHeight:I

    .line 238
    .local v3, bottom:I
    add-int/lit8 v9, v13, -0x1

    .local v9, j:I
    :goto_2
    if-ltz v9, :cond_3

    .line 239
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->stageList:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhangdan/app/data/model/BillStageInfo;

    .line 240
    .local v5, data:Lcom/zhangdan/app/data/model/BillStageInfo;
    invoke-virtual {v5, v8}, Lcom/zhangdan/app/data/model/BillStageInfo;->getAmountPerPeriod(I)D

    move-result-wide v1

    .line 241
    .local v1, amount:D
    const-wide/16 v15, 0x0

    cmpl-double v15, v1, v15

    if-nez v15, :cond_2

    .line 238
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 243
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barDrawableArr:[Landroid/graphics/drawable/Drawable;

    rem-int/lit8 v16, v9, 0x5

    aget-object v6, v15, v16

    .line 244
    .local v6, drawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->maxBarHeight:I

    int-to-double v15, v15

    aget-wide v17, v7, v9

    div-double v17, v1, v17

    mul-double v15, v15, v17

    double-to-int v4, v15

    .line 245
    .local v4, currHeight:I
    sub-int v14, v3, v4

    .line 246
    .local v14, top:I
    invoke-virtual {v6, v11, v14, v12, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 247
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->verticalSpace:I

    sub-int v3, v14, v15

    .line 248
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 230
    .end local v1           #amount:D
    .end local v4           #currHeight:I
    .end local v5           #data:Lcom/zhangdan/app/data/model/BillStageInfo;
    .end local v6           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v14           #top:I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 251
    .end local v3           #bottom:I
    .end local v9           #j:I
    .end local v11           #left:I
    .end local v12           #right:I
    .end local v13           #size:I
    :cond_4
    return-void
.end method

.method private drawBg(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 159
    iget-object v8, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bgPatDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 160
    .local v5, w:I
    iget-object v8, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bgPatDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 161
    .local v1, h:I
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bgHeight:I

    invoke-virtual {p1, v10, v10, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 162
    const/4 v6, 0x0

    .local v6, x:I
    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->getWidth()I

    move-result v8

    div-int/2addr v8, v5

    add-int/lit8 v8, v8, 0x1

    if-ge v6, v8, :cond_1

    .line 163
    const/4 v7, 0x0

    .local v7, y:I
    :goto_1
    iget v8, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bgHeight:I

    div-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x1

    if-ge v7, v8, :cond_0

    .line 164
    mul-int v2, v6, v5

    .line 165
    .local v2, left:I
    mul-int v4, v7, v1

    .line 166
    .local v4, top:I
    add-int v3, v2, v5

    .line 167
    .local v3, right:I
    add-int v0, v4, v1

    .line 168
    .local v0, bottom:I
    iget-object v8, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bgPatDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v2, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    iget-object v8, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bgPatDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 162
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 172
    .end local v7           #y:I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 173
    return-void
.end method

.method private drawBrace(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 179
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->stageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 180
    .local v2, len:I
    iget v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->paddingLeft:I

    iget-object v6, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->braceDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int v3, v5, v6

    .line 182
    .local v3, right:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 183
    iget v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->maxBarHeight:I

    iget v6, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->verticalSpace:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    iget v6, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->paddingTop:I

    add-int v4, v5, v6

    .line 184
    .local v4, top:I
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->braceDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int v0, v4, v5

    .line 185
    .local v0, bottom:I
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->braceDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->paddingLeft:I

    invoke-virtual {v5, v6, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->braceDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v0           #bottom:I
    .end local v4           #top:I
    :cond_0
    return-void
.end method

.method private drawDate(Landroid/graphics/Canvas;)V
    .locals 29
    .parameter "canvas"

    .prologue
    .line 254
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 255
    .local v6, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 256
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 257
    .local v18, year:I
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    add-int/lit8 v15, v22, 0x1

    .line 260
    .local v15, month:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->stageList:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/zhangdan/app/data/model/BillStageInfo;

    invoke-virtual/range {v22 .. v22}, Lcom/zhangdan/app/data/model/BillStageInfo;->getStageList()Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/zhangdan/app/data/model/BillStageGroup;

    invoke-virtual/range {v22 .. v22}, Lcom/zhangdan/app/data/model/BillStageGroup;->getFirstYearAndMonth()[I

    move-result-object v19

    .line 261
    .local v19, yearAndMonth:[I
    if-eqz v19, :cond_0

    .line 262
    const/16 v22, 0x0

    aget v18, v19, v22

    .line 263
    const/16 v22, 0x1

    aget v15, v19, v22
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v19           #yearAndMonth:[I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintDate:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v11

    .line 270
    .local v11, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    iget v0, v11, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v22, v0

    iget v0, v11, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v23, v0

    sub-float v10, v22, v23

    .line 271
    .local v10, fontHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->paddingLeft:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->braceDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->braceMargin:I

    move/from16 v23, v0

    add-int v13, v22, v23

    .line 272
    .local v13, l:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bgHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v5, v22, v10

    .line 273
    .local v5, baselineY:F
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->maxPeriod:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v12, v0, :cond_3

    .line 274
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\u6708"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, dateStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintDate:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    .line 277
    .local v16, txtLen:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->horizontalSpace:I

    move/from16 v23, v0

    add-int v22, v22, v23

    mul-int v22, v22, v12

    add-int v14, v13, v22

    .line 278
    .local v14, left:I
    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v16

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v17, v22, v23

    .line 279
    .local v17, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintDate:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v7, v1, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 281
    if-eqz v12, :cond_1

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_1

    .line 282
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\u5e74->"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 283
    .local v21, yearStr:Ljava/lang/String;
    add-float v20, v5, v10

    .line 284
    .local v20, yearBaseLineY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintDate:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 286
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->horizontalSpace:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    sub-int v8, v14, v22

    .line 287
    .local v8, dividerLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bgHeight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    add-int v24, v24, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bgHeight:I

    move/from16 v25, v0

    const/high16 v26, 0x4000

    mul-float v26, v26, v10

    const/high16 v27, 0x40a0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->density:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 291
    .end local v8           #dividerLeft:I
    .end local v20           #yearBaseLineY:F
    .end local v21           #yearStr:Ljava/lang/String;
    :cond_1
    add-int/lit8 v15, v15, 0x1

    .line 292
    const/16 v22, 0xc

    move/from16 v0, v22

    if-le v15, v0, :cond_2

    .line 293
    const/4 v15, 0x1

    .line 294
    add-int/lit8 v18, v18, 0x1

    .line 273
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 265
    .end local v5           #baselineY:F
    .end local v7           #dateStr:Ljava/lang/String;
    .end local v10           #fontHeight:F
    .end local v11           #fontMetrics:Landroid/graphics/Paint$FontMetrics;
    .end local v12           #i:I
    .end local v13           #l:I
    .end local v14           #left:I
    .end local v16           #txtLen:F
    .end local v17           #x:F
    :catch_0
    move-exception v9

    .line 266
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 297
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v5       #baselineY:F
    .restart local v10       #fontHeight:F
    .restart local v11       #fontMetrics:Landroid/graphics/Paint$FontMetrics;
    .restart local v12       #i:I
    .restart local v13       #l:I
    :cond_3
    return-void
.end method

.method private drawMoney(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->stageList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    .line 197
    .local v8, len:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintMoney:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    .line 198
    .local v6, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    iget v12, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v13, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v5, v12, v13

    .line 199
    .local v5, fontHeight:F
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->stageList:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/BillStageInfo;

    .line 201
    .local v4, data:Lcom/zhangdan/app/data/model/BillStageInfo;
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/BillStageInfo;->getBankName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, bankName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintMoney:Landroid/graphics/Paint;

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 203
    .local v9, textLen:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->paddingLeft:I

    int-to-float v12, v12

    sub-float/2addr v12, v9

    const/high16 v13, 0x4040

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->density:F

    mul-float/2addr v13, v14

    sub-float v10, v12, v13

    .line 204
    .local v10, x:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->paddingTop:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->maxBarHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->verticalSpace:I

    add-int/2addr v13, v14

    mul-int/2addr v13, v7

    add-int/2addr v12, v13

    int-to-float v11, v12

    .line 205
    .local v11, y:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->maxBarHeight:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v12, v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->maxBarHeight:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v13, v5

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    sub-float v3, v12, v13

    .line 206
    .local v3, baseLineY:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintMoney:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v3, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 208
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\uffe5"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/zhangdan/app/data/model/BillStageInfo;->getAmountPerPeriod(I)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, amountStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintMoney:Landroid/graphics/Paint;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 210
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->paddingLeft:I

    int-to-float v12, v12

    sub-float/2addr v12, v9

    const/high16 v13, 0x4040

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->density:F

    mul-float/2addr v13, v14

    sub-float v10, v12, v13

    .line 211
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->maxBarHeight:I

    int-to-float v12, v12

    add-float/2addr v12, v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->maxBarHeight:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v13, v5

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    iget v13, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v3, v12, v13

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->mPaintMoney:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v10, v3, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 199
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 214
    .end local v1           #amountStr:Ljava/lang/String;
    .end local v2           #bankName:Ljava/lang/String;
    .end local v3           #baseLineY:F
    .end local v4           #data:Lcom/zhangdan/app/data/model/BillStageInfo;
    .end local v9           #textLen:F
    .end local v10           #x:F
    .end local v11           #y:F
    :cond_0
    return-void
.end method

.method private generateBmp()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 135
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->drawBg(Landroid/graphics/Canvas;)V

    .line 136
    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->drawBrace(Landroid/graphics/Canvas;)V

    .line 137
    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->drawMoney(Landroid/graphics/Canvas;)V

    .line 138
    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->drawBars(Landroid/graphics/Canvas;)V

    .line 139
    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->drawDate(Landroid/graphics/Canvas;)V

    .line 140
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 116
    :cond_0
    return-void
.end method

.method public getMaxPeriod()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->maxPeriod:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->generateBmp()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bmp:Landroid/graphics/Bitmap;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 150
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 125
    iget v2, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->bgHeight:I

    iget v3, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->paddingBottom:I

    add-int v0, v2, v3

    .line 126
    .local v0, height:I
    iget v2, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->paddingLeft:I

    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->braceDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->braceMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->barWidth:I

    iget v4, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->maxPeriod:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->horizontalSpace:I

    iget v4, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->maxPeriod:I

    mul-int/2addr v3, v4

    add-int v1, v2, v3

    .line 127
    .local v1, width:I
    iget v2, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->screenWidth:I

    if-ge v1, v2, :cond_0

    .line 128
    iget v1, p0, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->screenWidth:I

    .line 129
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->setMeasuredDimension(II)V

    .line 130
    return-void
.end method
