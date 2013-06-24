.class public Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;
.super Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;
.source "ConsumptionTrendAdapter.java"


# instance fields
.field private mChartYearList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFormat:Ljava/text/DecimalFormat;

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
            "Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, chartYearList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;>;"
    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;-><init>()V

    .line 31
    const-wide v0, 0x3f847ae147ae147bL

    iput-wide v0, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mMaxAmount:D

    .line 34
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mFormat:Ljava/text/DecimalFormat;

    .line 37
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mChartYearList:Ljava/util/List;

    .line 40
    invoke-direct {p0}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->calcMaxAmount()V

    .line 41
    invoke-direct {p0}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->calcMaxWidth()V

    .line 42
    return-void
.end method

.method private calcMaxAmount()V
    .locals 9

    .prologue
    .line 48
    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mChartYearList:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 49
    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mChartYearList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;

    .line 50
    .local v0, data:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getMonthBillList()Ljava/util/List;

    move-result-object v4

    .line 51
    .local v4, monthList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;>;"
    if-eqz v4, :cond_0

    .line 53
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;

    .line 54
    .local v3, monthBill:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    invoke-virtual {v3}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getAmount()D

    move-result-wide v5

    iget-wide v7, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mMaxAmount:D

    cmpl-double v5, v5, v7

    if-lez v5, :cond_1

    .line 55
    invoke-virtual {v3}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getAmount()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mMaxAmount:D

    goto :goto_0

    .line 59
    .end local v0           #data:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #monthBill:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    .end local v4           #monthList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;>;"
    :cond_2
    return-void
.end method

.method private calcMaxWidth()V
    .locals 9

    .prologue
    .line 65
    iget-object v4, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 66
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 67
    .local v3, scw:I
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 68
    .local v0, density:F
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 69
    .local v2, paint:Landroid/graphics/Paint;
    const/high16 v4, 0x4160

    mul-float/2addr v4, v0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    const/high16 v4, 0x4296

    mul-float/2addr v4, v0

    float-to-int v4, v4

    sub-int v4, v3, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\uffe5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mFormat:Ljava/text/DecimalFormat;

    iget-wide v7, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mMaxAmount:D

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

    iput v4, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mMaxChartWidth:I

    .line 71
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
            "Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, chartYearList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mChartYearList:Ljava/util/List;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mMaxChartWidth:I

    .line 76
    const-wide v0, 0x3f847ae147ae147bL

    iput-wide v0, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mMaxAmount:D

    .line 77
    invoke-direct {p0}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->calcMaxAmount()V

    .line 78
    invoke-direct {p0}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->calcMaxWidth()V

    .line 79
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->notifyDataSetChanged()V

    .line 80
    return-void
.end method

.method public getCountForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mChartYearList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getMonthSize()I

    move-result v0

    return v0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1
    .parameter "section"
    .parameter "position"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mChartYearList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getMonthBillList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(II)J
    .locals 2
    .parameter "section"
    .parameter "position"

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .parameter "section"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 105
    move-object/from16 v9, p3

    .line 106
    .local v9, view:Landroid/view/View;
    if-nez v9, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mContext:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 108
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f0300ae

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 110
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const v11, 0x7f090270

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 111
    .local v8, tvMonth:Landroid/widget/TextView;
    const v11, 0x7f090272

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 112
    .local v7, tvAmount:Landroid/widget/TextView;
    const v11, 0x7f090271

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 114
    .local v2, imgTrend:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p2}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;

    .line 115
    .local v1, data:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f070196

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getMonthDay()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f07019a

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getAmount()D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, str:Ljava/lang/String;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 119
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getAmount()D

    move-result-wide v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mMaxAmount:D

    div-double/2addr v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mMaxChartWidth:I

    int-to-double v13, v13

    mul-double/2addr v11, v13

    double-to-int v10, v11

    .line 120
    .local v10, w:I
    if-gtz v10, :cond_1

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getAmount()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-lez v11, :cond_1

    .line 121
    const/4 v10, 0x1

    .line 122
    :cond_1
    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 123
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-virtual/range {p0 .. p1}, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->getCountForSection(I)I

    move-result v5

    .line 126
    .local v5, sectionCount:I
    const v11, 0x7f090273

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    add-int/lit8 v11, v5, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_2

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 128
    return-object v9

    .line 126
    :cond_2
    const/4 v11, 0x4

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mChartYearList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mChartYearList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "section"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 134
    move-object v2, p2

    .line 135
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 136
    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 137
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0300af

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 139
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mChartYearList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;

    .line 140
    .local v0, data:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    const v3, 0x7f09008d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f070198

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->getYear()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-object v2
.end method

.method public getSectionItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "section"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/adapter/ConsumptionTrendAdapter;->mChartYearList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;

    .line 146
    .local v0, data:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    return-object v0
.end method
