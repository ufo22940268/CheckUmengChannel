.class public Lcom/zhangdan/app/activities/stage/StageSummaryActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "StageSummaryActivity.java"

# interfaces
.implements Lcom/zhangdan/app/activities/stage/LoadBillStageTask$OnProcessListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mColorRes:[I

.field private mDecimalFormt:Ljava/text/DecimalFormat;

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mLayoutStageContent:Landroid/widget/LinearLayout;

.field private mLayoutStageSum:Landroid/widget/LinearLayout;

.field private mSummaryView:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

.field private mTvTotalAmount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mDecimalFormt:Ljava/text/DecimalFormat;

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mColorRes:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xedt 0x0t 0x2t 0x7ft
        0xeet 0x0t 0x2t 0x7ft
        0xeft 0x0t 0x2t 0x7ft
        0xf0t 0x0t 0x2t 0x7ft
        0xf1t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private displayBill(Ljava/util/List;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillStageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, stageList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BillStageInfo;>;"
    const/high16 v11, 0x4120

    .line 129
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 130
    .local v2, dm:Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 131
    .local v1, density:F
    const-wide/16 v6, 0x0

    .line 132
    .local v6, totalAmount:D
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 133
    .local v5, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 134
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/BillStageInfo;

    .line 135
    .local v0, data:Lcom/zhangdan/app/data/model/BillStageInfo;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BillStageInfo;->getTotalBillAmount()D

    move-result-wide v9

    add-double/2addr v6, v9

    .line 136
    invoke-direct {p0, v0, v3}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->generateBankStageView(Lcom/zhangdan/app/data/model/BillStageInfo;I)Landroid/view/View;

    move-result-object v8

    .line 137
    .local v8, view:Landroid/view/View;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v4, params:Landroid/widget/LinearLayout$LayoutParams;
    mul-float v9, v11, v1

    float-to-int v9, v9

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 139
    mul-float v9, v11, v1

    float-to-int v9, v9

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 140
    mul-float v9, v11, v1

    float-to-int v9, v9

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 141
    iget-object v9, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mLayoutStageContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    .end local v0           #data:Lcom/zhangdan/app/data/model/BillStageInfo;
    .end local v4           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #view:Landroid/view/View;
    :cond_0
    new-instance v9, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    invoke-direct {v9, p0, p1}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v9, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mSummaryView:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    .line 146
    iget-object v9, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v10, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mSummaryView:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    invoke-virtual {v9, v10}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 147
    iget-object v9, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mTvTotalAmount:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\uffe5"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mDecimalFormt:Ljava/text/DecimalFormat;

    invoke-virtual {v11, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->initSumViews(Ljava/util/List;)V

    .line 150
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f0900b2

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mTvTotalAmount:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f09011c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mLayoutStageSum:Landroid/widget/LinearLayout;

    .line 74
    const v0, 0x7f090119

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mLayoutStageContent:Landroid/widget/LinearLayout;

    .line 75
    const v0, 0x7f0900af

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 76
    return-void
.end method

.method private generateBankStageView(Lcom/zhangdan/app/data/model/BillStageInfo;I)Landroid/view/View;
    .locals 11
    .parameter "data"
    .parameter "index"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0300d3

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 194
    .local v6, view:Landroid/view/View;
    const v7, 0x7f0902ea

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 195
    .local v3, tvBankName:Landroid/widget/TextView;
    const v7, 0x7f0902eb

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 196
    .local v4, tvNameAndCardNo:Landroid/widget/TextView;
    const v7, 0x7f0902ec

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 197
    .local v5, tvRemainPeriod:Landroid/widget/TextView;
    const v7, 0x7f0902e9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 198
    .local v1, imgColorBlock:Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillStageInfo;->getBankName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillStageInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v2, "--"

    .line 200
    .local v2, nameOnBill:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillStageInfo;->getCardNo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v0, "--"

    .line 201
    .local v0, cardNo:Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const v7, 0x7f070110

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillStageInfo;->getMaxPeriodCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v7, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mColorRes:[I

    rem-int/lit8 v8, p2, 0x5

    aget v7, v7, v8

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    new-instance v7, Lcom/zhangdan/app/activities/stage/StageSummaryActivity$1;

    invoke-direct {v7, p0, p1}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity$1;-><init>(Lcom/zhangdan/app/activities/stage/StageSummaryActivity;Lcom/zhangdan/app/data/model/BillStageInfo;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-object v6

    .line 199
    .end local v0           #cardNo:Ljava/lang/String;
    .end local v2           #nameOnBill:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillStageInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 200
    .restart local v2       #nameOnBill:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillStageInfo;->getCardNo()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private initSumViews(Ljava/util/List;)V
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillStageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, stageList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BillStageInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mSummaryView:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    invoke-virtual {v14}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->getMaxPeriod()I

    move-result v6

    .line 160
    .local v6, maxPeriod:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 161
    .local v1, cal:Ljava/util/Calendar;
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 162
    .local v13, year:I
    const/4 v14, 0x2

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v7, v14, 0x1

    .line 163
    .local v7, month:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f0300d4

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 165
    .local v12, view:Landroid/view/View;
    const v14, 0x7f0902ed

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 166
    .local v11, tvDate:Landroid/widget/TextView;
    const v14, 0x7f0902ee

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 168
    .local v10, tvBillAmount:Landroid/widget/TextView;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v14, 0xa

    if-ge v7, v14, :cond_0

    const-string v14, "0"

    :goto_1
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, dateStr:Ljava/lang/String;
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const-wide/16 v8, 0x0

    .line 172
    .local v8, total:D
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    .line 173
    .local v5, listSize:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, v5, :cond_1

    .line 174
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/zhangdan/app/data/model/BillStageInfo;

    invoke-virtual {v14, v3}, Lcom/zhangdan/app/data/model/BillStageInfo;->getAmountPerPeriod(I)D

    move-result-wide v14

    add-double/2addr v8, v14

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 168
    .end local v2           #dateStr:Ljava/lang/String;
    .end local v4           #j:I
    .end local v5           #listSize:I
    .end local v8           #total:D
    :cond_0
    const-string v14, ""

    goto :goto_1

    .line 176
    .restart local v2       #dateStr:Ljava/lang/String;
    .restart local v4       #j:I
    .restart local v5       #listSize:I
    .restart local v8       #total:D
    :cond_1
    const v14, 0x7f070112

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\uffe5"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mDecimalFormt:Ljava/text/DecimalFormat;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mLayoutStageSum:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    add-int/lit8 v7, v7, 0x1

    .line 179
    const/16 v14, 0xc

    if-le v7, v14, :cond_2

    .line 180
    const/4 v7, 0x1

    .line 181
    add-int/lit8 v13, v13, 0x1

    .line 163
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 184
    .end local v2           #dateStr:Ljava/lang/String;
    .end local v4           #j:I
    .end local v5           #listSize:I
    .end local v8           #total:D
    .end local v10           #tvBillAmount:Landroid/widget/TextView;
    .end local v11           #tvDate:Landroid/widget/TextView;
    .end local v12           #view:Landroid/view/View;
    :cond_3
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onBackPressed()V

    .line 69
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0900b0

    if-ne v2, v3, :cond_2

    .line 107
    const v2, 0x7f09011b

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 108
    .local v1, imgDivider:Landroid/widget/ImageView;
    const v2, 0x7f09011a

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 109
    .local v0, dropDownView:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 110
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v2, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mLayoutStageSum:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    const v2, 0x7f0200f4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 121
    .end local v0           #dropDownView:Landroid/widget/ImageView;
    .end local v1           #imgDivider:Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 114
    .restart local v0       #dropDownView:Landroid/widget/ImageView;
    .restart local v1       #imgDivider:Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v2, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mLayoutStageSum:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    const v2, 0x7f0200f5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 118
    .end local v0           #dropDownView:Landroid/widget/ImageView;
    .end local v1           #imgDivider:Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f09008c

    if-ne v2, v3, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v2, 0x7f030043

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViews()V

    .line 50
    invoke-direct {p0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->initViews()V

    .line 52
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, userId:Ljava/lang/String;
    new-instance v0, Lcom/zhangdan/app/activities/stage/LoadBillStageTask;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/stage/LoadBillStageTask;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, task:Lcom/zhangdan/app/activities/stage/LoadBillStageTask;
    invoke-virtual {v0, p0}, Lcom/zhangdan/app/activities/stage/LoadBillStageTask;->setOnProcessListener(Lcom/zhangdan/app/activities/stage/LoadBillStageTask$OnProcessListener;)V

    .line 55
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/stage/LoadBillStageTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 61
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mSummaryView:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->mSummaryView:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->destroy()V

    .line 64
    :cond_0
    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillStageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, stageList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BillStageInfo;>;"
    const-string v1, "StageSummaryActivity"

    const-string v2, "onPostExecute()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const v1, 0x7f09011d

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    const v1, 0x7f09011e

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    .local v0, tvHint:Landroid/widget/TextView;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    const-string v1, "StageSummaryActivity"

    const-string v2, "\u65e0\u5206\u671f\u6570\u636e..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const v1, 0x7f070114

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_1
    const v1, 0x7f0900ad

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->displayBill(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 85
    const v1, 0x7f09011e

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    .local v0, tvHint:Landroid/widget/TextView;
    const v1, 0x7f070113

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    return-void
.end method
