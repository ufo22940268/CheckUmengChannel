.class public Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConsumptionCategoryAdapter.java"


# instance fields
.field private mBgColorArr:[I

.field private mContext:Landroid/content/Context;

.field private mFormat:Ljava/text/DecimalFormat;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/CategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxAmount:D

.field private mMaxChartWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/CategoryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CategoryInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const-wide v0, 0x3f847ae147ae147bL

    iput-wide v0, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mMaxAmount:D

    .line 34
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mFormat:Ljava/text/DecimalFormat;

    .line 36
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mBgColorArr:[I

    .line 40
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mList:Ljava/util/List;

    .line 42
    invoke-direct {p0}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->calcMaxAmount()V

    .line 43
    invoke-direct {p0}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->calcMaxWidth()V

    .line 44
    return-void

    .line 36
    nop

    :array_0
    .array-data 0x4
        0x25t 0x2ft 0xdft 0xfft
        0x0t 0x65t 0xfft 0xfft
        0x0t 0xc4t 0xfet 0xfft
        0x0t 0xc8t 0x85t 0xfft
        0xd0t 0xc9t 0x1t 0xfft
        0xbct 0x72t 0x0t 0xfft
        0x69t 0x0t 0xb2t 0xfft
        0x7ft 0x2et 0xfft 0xfft
        0x67t 0x7dt 0x9ft 0xfft
        0x41t 0xc6t 0xb6t 0xfft
        0xb2t 0xb2t 0xb2t 0xfft
    .end array-data
.end method

.method private calcMaxAmount()V
    .locals 6

    .prologue
    .line 50
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 51
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;

    .line 52
    .local v0, data:Lcom/zhangdan/app/activities/chart/model/CategoryInfo;
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->getAmount()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mMaxAmount:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->getAmount()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mMaxAmount:D

    goto :goto_0

    .line 56
    .end local v0           #data:Lcom/zhangdan/app/activities/chart/model/CategoryInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private calcMaxWidth()V
    .locals 9

    .prologue
    .line 62
    iget-object v4, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 63
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 64
    .local v3, scw:I
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 65
    .local v0, density:F
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 66
    .local v2, paint:Landroid/graphics/Paint;
    const/high16 v4, 0x4160

    mul-float/2addr v4, v0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    const/high16 v4, 0x42b4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    sub-int v4, v3, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\uffe5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mFormat:Ljava/text/DecimalFormat;

    iget-wide v7, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mMaxAmount:D

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mMaxChartWidth:I

    .line 68
    return-void
.end method


# virtual methods
.method public changeDataSource(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/CategoryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CategoryInfo;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mList:Ljava/util/List;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mMaxChartWidth:I

    .line 73
    const-wide v0, 0x3f847ae147ae147bL

    iput-wide v0, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mMaxAmount:D

    .line 74
    invoke-direct {p0}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->calcMaxAmount()V

    .line 75
    invoke-direct {p0}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->calcMaxWidth()V

    .line 76
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->notifyDataSetChanged()V

    .line 77
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 96
    move-object v7, p2

    .line 97
    .local v7, view:Landroid/view/View;
    if-nez v7, :cond_0

    .line 98
    iget-object v9, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 99
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f0300ad

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 101
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const v9, 0x7f09026c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 102
    .local v6, tvName:Landroid/widget/TextView;
    const v9, 0x7f09026d

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 103
    .local v1, imgAmount:Landroid/widget/ImageView;
    const v9, 0x7f09026e

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 104
    .local v5, tvAmount:Landroid/widget/TextView;
    const v9, 0x7f09026b

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 106
    .local v2, imgIcon:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;

    .line 107
    .local v0, data:Lcom/zhangdan/app/activities/chart/model/CategoryInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\uffe5"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->getAmount()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->getId()I

    move-result v9

    invoke-static {v9}, Lcom/zhangdan/app/data/CategoryIconRes;->getIconByParentId(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 111
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 112
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->getAmount()D

    move-result-wide v9

    iget-wide v11, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mMaxAmount:D

    div-double/2addr v9, v11

    iget v11, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mMaxChartWidth:I

    int-to-double v11, v11

    mul-double/2addr v9, v11

    double-to-int v8, v9

    .line 113
    .local v8, w:I
    if-gtz v8, :cond_1

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->getAmount()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-lez v9, :cond_1

    .line 114
    const/4 v8, 0x1

    .line 115
    :cond_1
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v9, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mBgColorArr:[I

    iget-object v10, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionCategoryAdapter;->mBgColorArr:[I

    array-length v10, v10

    rem-int v10, p1, v10

    aget v9, v9, v10

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 119
    return-object v7
.end method
