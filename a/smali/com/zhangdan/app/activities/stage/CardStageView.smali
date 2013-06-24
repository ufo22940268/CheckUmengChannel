.class public Lcom/zhangdan/app/activities/stage/CardStageView;
.super Landroid/view/View;
.source "CardStageView.java"


# instance fields
.field private barDrawable1:Landroid/graphics/drawable/Drawable;

.field private barDrawableArr:[Landroid/graphics/drawable/Drawable;

.field private barWidth:I

.field private bgHeight:I

.field private bgPatDrawable:Landroid/graphics/drawable/Drawable;

.field private billStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

.field private bmp:Landroid/graphics/Bitmap;

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private density:F

.field private dividerDrawable:Landroid/graphics/drawable/Drawable;

.field private groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillStageGroup;",
            ">;"
        }
    .end annotation
.end field

.field private horizontalSpace:I

.field private mPaintDate:Landroid/graphics/Paint;

.field private mPaintMoney:Landroid/graphics/Paint;

.field private maxBarHeight:I

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingTop:I

.field private screenWidth:I

.field private verticalLineMargin:I

.field private verticalSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/BillStageInfo;)V
    .locals 8
    .parameter "context"
    .parameter "billStageInfo"

    .prologue
    const/high16 v7, 0x4140

    const/4 v6, 0x1

    .line 58
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintMoney:Landroid/graphics/Paint;

    .line 52
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintDate:Landroid/graphics/Paint;

    .line 53
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#0.00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->decimalFormat:Ljava/text/DecimalFormat;

    .line 59
    iput-object p2, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->billStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    .line 60
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/BillStageInfo;->getStageList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->groupList:Ljava/util/List;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 63
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 64
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->density:F

    .line 65
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->screenWidth:I

    .line 67
    const v3, 0x7f0200f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bgPatDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    const v3, 0x7f0200ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->barDrawable1:Landroid/graphics/drawable/Drawable;

    .line 69
    const v3, 0x7f0200f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->barDrawableArr:[Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->barDrawableArr:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->barDrawable1:Landroid/graphics/drawable/Drawable;

    aput-object v5, v3, v4

    .line 72
    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->barDrawableArr:[Landroid/graphics/drawable/Drawable;

    const v4, 0x7f0200ee

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v6

    .line 73
    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->barDrawableArr:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    const v5, 0x7f0200ef

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    .line 74
    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->barDrawableArr:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x3

    const v5, 0x7f0200f0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    .line 75
    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->barDrawableArr:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x4

    const v5, 0x7f0200f1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    .line 77
    const/high16 v3, 0x4220

    iget v4, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->paddingTop:I

    .line 78
    const/high16 v3, 0x42a0

    iget v4, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->paddingLeft:I

    .line 79
    const/high16 v3, 0x4248

    iget v4, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->paddingBottom:I

    .line 80
    const/high16 v3, 0x40a0

    iget v4, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->verticalSpace:I

    .line 81
    const/high16 v3, 0x41a0

    iget v4, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->verticalLineMargin:I

    .line 82
    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->barDrawable1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->horizontalSpace:I

    .line 84
    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->barDrawable1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->barWidth:I

    .line 85
    const v3, 0x7f0200f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->maxBarHeight:I

    .line 87
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/BillStageInfo;->getGroupCount()I

    move-result v1

    .line 88
    .local v1, groupCount:I
    iget v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->paddingTop:I

    add-int/lit8 v4, v1, -0x1

    iget v5, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->verticalSpace:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->maxBarHeight:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bgHeight:I

    .line 90
    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintMoney:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintMoney:Landroid/graphics/Paint;

    iget v4, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->density:F

    mul-float/2addr v4, v7

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintMoney:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintDate:Landroid/graphics/Paint;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintDate:Landroid/graphics/Paint;

    iget v4, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->density:F

    mul-float/2addr v4, v7

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintDate:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    return-void
.end method

.method private drawBars(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 211
    iget v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->paddingLeft:I

    iget v12, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->verticalLineMargin:I

    add-int v6, v11, v12

    .line 212
    .local v6, l:I
    iget-object v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->billStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    invoke-virtual {v11}, Lcom/zhangdan/app/data/model/BillStageInfo;->getMaxPeriodCount()I

    move-result v8

    .line 213
    .local v8, maxPeriod:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v8, :cond_2

    .line 215
    iget v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->barWidth:I

    iget v12, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->horizontalSpace:I

    add-int/2addr v11, v12

    mul-int/2addr v11, v4

    add-int v7, v6, v11

    .line 216
    .local v7, left:I
    iget v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->barWidth:I

    add-int v9, v7, v11

    .line 217
    .local v9, right:I
    iget-object v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->groupList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    .line 218
    .local v3, groupSize:I
    add-int/lit8 v5, v3, -0x1

    .local v5, j:I
    :goto_1
    if-ltz v5, :cond_1

    .line 219
    iget-object v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->groupList:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/BillStageGroup;

    .line 220
    .local v2, group:Lcom/zhangdan/app/data/model/BillStageGroup;
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/BillStageGroup;->getItemCount()I

    move-result v11

    if-lt v4, v11, :cond_0

    .line 218
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 223
    :cond_0
    iget-object v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->barDrawableArr:[Landroid/graphics/drawable/Drawable;

    rem-int/lit8 v12, v5, 0x5

    aget-object v1, v11, v12

    .line 224
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    iget v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bgHeight:I

    iget v12, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->maxBarHeight:I

    iget v13, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->verticalSpace:I

    add-int/2addr v12, v13

    sub-int v13, v3, v5

    add-int/lit8 v13, v13, -0x1

    mul-int/2addr v12, v13

    sub-int v0, v11, v12

    .line 225
    .local v0, bottom:I
    iget v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->maxBarHeight:I

    sub-int v10, v0, v11

    .line 226
    .local v10, top:I
    invoke-virtual {v1, v7, v10, v9, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 227
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 213
    .end local v0           #bottom:I
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #group:Lcom/zhangdan/app/data/model/BillStageGroup;
    .end local v10           #top:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 230
    .end local v3           #groupSize:I
    .end local v5           #j:I
    .end local v7           #left:I
    .end local v9           #right:I
    :cond_2
    return-void
.end method

.method private drawBg(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 144
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bgPatDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 145
    .local v11, w:I
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bgPatDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 146
    .local v7, h:I
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bgHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 147
    const/4 v12, 0x0

    .local v12, x:I
    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageView;->getWidth()I

    move-result v0

    div-int/2addr v0, v11

    add-int/lit8 v0, v0, 0x1

    if-ge v12, v0, :cond_1

    .line 148
    const/4 v13, 0x0

    .local v13, y:I
    :goto_1
    iget v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bgHeight:I

    div-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x1

    if-ge v13, v0, :cond_0

    .line 149
    mul-int v8, v12, v11

    .line 150
    .local v8, left:I
    mul-int v10, v13, v7

    .line 151
    .local v10, top:I
    add-int v9, v8, v11

    .line 152
    .local v9, right:I
    add-int v6, v10, v7

    .line 153
    .local v6, bottom:I
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bgPatDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8, v10, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bgPatDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 148
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 147
    .end local v6           #bottom:I
    .end local v8           #left:I
    .end local v9           #right:I
    .end local v10           #top:I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 157
    .end local v13           #y:I
    :cond_1
    iget v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->paddingLeft:I

    int-to-float v1, v0

    const/4 v2, 0x0

    iget v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->paddingLeft:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintMoney:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 159
    return-void
.end method

.method private drawDate(Landroid/graphics/Canvas;)V
    .locals 30
    .parameter "canvas"

    .prologue
    .line 233
    const/16 v20, 0x0

    .line 234
    .local v20, yearAndMonth:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->groupList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zhangdan/app/data/model/BillStageGroup;

    .line 235
    .local v10, group:Lcom/zhangdan/app/data/model/BillStageGroup;
    invoke-virtual {v10}, Lcom/zhangdan/app/data/model/BillStageGroup;->getFirstYearAndMonth()[I

    move-result-object v20

    .line 236
    if-eqz v20, :cond_0

    .line 239
    .end local v10           #group:Lcom/zhangdan/app/data/model/BillStageGroup;
    :cond_1
    if-nez v20, :cond_3

    .line 272
    :cond_2
    return-void

    .line 241
    :cond_3
    const/16 v23, 0x0

    aget v19, v20, v23

    .line 242
    .local v19, year:I
    const/16 v23, 0x1

    aget v16, v20, v23

    .line 243
    .local v16, month:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintDate:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    .line 244
    .local v9, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    iget v0, v9, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v23, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v24, v0

    sub-float v8, v23, v24

    .line 245
    .local v8, fontHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->paddingLeft:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->verticalLineMargin:I

    move/from16 v24, v0

    add-int v13, v23, v24

    .line 246
    .local v13, l:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->bgHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v5, v23, v8

    .line 247
    .local v5, baselineY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->billStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/zhangdan/app/data/model/BillStageInfo;->getMaxPeriodCount()I

    move-result v15

    .line 248
    .local v15, maxPeriod:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v15, :cond_2

    .line 249
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u6708"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, dateStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintDate:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    .line 252
    .local v17, txtLen:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->barWidth:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->horizontalSpace:I

    move/from16 v24, v0

    add-int v23, v23, v24

    mul-int v23, v23, v11

    add-int v14, v13, v23

    .line 253
    .local v14, left:I
    int-to-float v0, v14

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->barWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v17

    const/high16 v25, 0x4000

    div-float v24, v24, v25

    add-float v18, v23, v24

    .line 254
    .local v18, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintDate:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v6, v1, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 256
    if-eqz v11, :cond_4

    const/16 v23, 0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 257
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u5e74->"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 258
    .local v22, yearStr:Ljava/lang/String;
    add-float v21, v5, v8

    .line 259
    .local v21, yearBaseLineY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintDate:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v18

    move/from16 v3, v21

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 261
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->horizontalSpace:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    sub-int v7, v14, v23

    .line 262
    .local v7, dividerLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->bgHeight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v25

    add-int v25, v25, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->bgHeight:I

    move/from16 v26, v0

    const/high16 v27, 0x4000

    mul-float v27, v27, v8

    const/high16 v28, 0x40a0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->density:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageView;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 266
    .end local v7           #dividerLeft:I
    .end local v21           #yearBaseLineY:F
    .end local v22           #yearStr:Ljava/lang/String;
    :cond_4
    add-int/lit8 v16, v16, 0x1

    .line 267
    const/16 v23, 0xc

    move/from16 v0, v16

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 268
    const/16 v16, 0x1

    .line 269
    add-int/lit8 v19, v19, 0x1

    .line 248
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0
.end method

.method private drawMoney(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 167
    iget-object v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintMoney:Landroid/graphics/Paint;

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->groupList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    .line 169
    .local v7, len:I
    iget-object v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintMoney:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 170
    .local v5, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    iget v11, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v12, v5, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v4, v11, v12

    .line 171
    .local v4, fontHeight:F
    iget v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->paddingLeft:I

    int-to-float v11, v11

    iget-object v12, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintMoney:Landroid/graphics/Paint;

    const-string v13, "\uffe50"

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x4040

    iget v13, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->density:F

    mul-float/2addr v12, v13

    sub-float v9, v11, v12

    .line 172
    .local v9, x:F
    iget v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bgHeight:I

    int-to-float v11, v11

    iget v12, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v3, v11, v12

    .line 174
    .local v3, baseLineY:F
    const-string v11, "\uffe50"

    iget-object v12, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintMoney:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v9, v3, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 176
    const-wide/16 v0, 0x0

    .line 177
    .local v0, amount:D
    add-int/lit8 v6, v7, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_0

    .line 178
    iget-object v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->groupList:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/data/model/BillStageGroup;

    invoke-virtual {v11}, Lcom/zhangdan/app/data/model/BillStageGroup;->getFirstPeriodAmount()D

    move-result-wide v11

    add-double/2addr v0, v11

    .line 179
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\uffe5"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v12, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, amountStr:Ljava/lang/String;
    iget v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->paddingTop:I

    iget v12, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->maxBarHeight:I

    iget v13, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->verticalSpace:I

    add-int/2addr v12, v13

    mul-int/2addr v12, v6

    add-int/2addr v11, v12

    int-to-float v10, v11

    .line 181
    .local v10, y:F
    iget-object v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintMoney:Landroid/graphics/Paint;

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 182
    .local v8, textLen:F
    iget v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->paddingLeft:I

    int-to-float v11, v11

    sub-float/2addr v11, v8

    const/high16 v12, 0x4040

    iget v13, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->density:F

    mul-float/2addr v12, v13

    sub-float v9, v11, v12

    .line 183
    iget v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->maxBarHeight:I

    int-to-float v11, v11

    add-float/2addr v11, v10

    iget v12, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->maxBarHeight:I

    int-to-float v12, v12

    sub-float/2addr v12, v4

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->maxBarHeight:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float v3, v11, v12

    .line 184
    iget-object v11, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintMoney:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v9, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 177
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 186
    .end local v2           #amountStr:Ljava/lang/String;
    .end local v8           #textLen:F
    .end local v10           #y:F
    :cond_0
    return-void
.end method

.method private generateBmp()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 129
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/CardStageView;->drawBg(Landroid/graphics/Canvas;)V

    .line 130
    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/CardStageView;->drawMoney(Landroid/graphics/Canvas;)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/stage/CardStageView;->drawHorizontalLines(Landroid/graphics/Canvas;)V

    .line 132
    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/CardStageView;->drawBars(Landroid/graphics/Canvas;)V

    .line 133
    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/stage/CardStageView;->drawDate(Landroid/graphics/Canvas;)V

    .line 134
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bmp:Landroid/graphics/Bitmap;

    .line 104
    :cond_0
    return-void
.end method

.method public drawHorizontalLines(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintMoney:Landroid/graphics/Paint;

    const v1, 0x40ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    iget v8, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->paddingLeft:I

    .line 196
    .local v8, l:I
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageView;->getWidth()I

    move-result v9

    .line 197
    .local v9, r:I
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->groupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 198
    .local v6, groupSize:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 199
    iget v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->paddingTop:I

    iget v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->maxBarHeight:I

    iget v2, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->verticalSpace:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v7

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->verticalSpace:I

    div-int/lit8 v1, v1, 0x2

    sub-int v10, v0, v1

    .line 200
    .local v10, top:I
    int-to-float v1, v8

    int-to-float v2, v10

    int-to-float v3, v9

    int-to-float v4, v10

    iget-object v5, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->mPaintMoney:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 198
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 202
    .end local v10           #top:I
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/zhangdan/app/activities/stage/CardStageView;->generateBmp()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bmp:Landroid/graphics/Bitmap;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 109
    iget v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->bgHeight:I

    iget v4, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->paddingBottom:I

    add-int v0, v3, v4

    .line 110
    .local v0, height:I
    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->billStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/BillStageInfo;->getMaxPeriodCount()I

    move-result v1

    .line 111
    .local v1, maxPeriod:I
    iget v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->paddingLeft:I

    iget v4, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->verticalLineMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->barWidth:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    iget v4, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->horizontalSpace:I

    mul-int/2addr v4, v1

    add-int v2, v3, v4

    .line 112
    .local v2, width:I
    iget v3, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->screenWidth:I

    if-ge v2, v3, :cond_0

    .line 113
    iget v2, p0, Lcom/zhangdan/app/activities/stage/CardStageView;->screenWidth:I

    .line 114
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/zhangdan/app/activities/stage/CardStageView;->setMeasuredDimension(II)V

    .line 115
    return-void
.end method
