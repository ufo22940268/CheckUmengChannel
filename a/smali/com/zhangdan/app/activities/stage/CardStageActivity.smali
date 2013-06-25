.class public Lcom/zhangdan/app/activities/stage/CardStageActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "CardStageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final KEY_BILL_STAGE:Ljava/lang/String; = "bill_stage"


# instance fields
.field private mBillStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

.field private mCardStageView:Lcom/zhangdan/app/activities/stage/CardStageView;

.field private mColorRes:[I

.field private mDecimalFormat:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 35
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mColorRes:[I

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


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090039

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->finish()V

    .line 126
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super/range {p0 .. p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v21, 0x7f03002c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->setContentView(I)V

    .line 45
    const v21, 0x7f09003c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/zhangdan/app/activities/CommTitleMgr;->displayBlueTitle(Landroid/view/View;)V

    .line 46
    const v21, 0x7f090039

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/ZhangdanApplication;

    .line 49
    .local v4, app:Lcom/zhangdan/app/ZhangdanApplication;
    const-string v21, "bill_stage"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCacheObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/zhangdan/app/data/model/BillStageInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mBillStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    .line 50
    const-string v21, "bill_stage"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/ZhangdanApplication;->removeCacheObject(Ljava/lang/String;)V

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mBillStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 52
    if-eqz p1, :cond_0

    .line 53
    const-string v21, "bill_stage"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v21

    check-cast v21, Lcom/zhangdan/app/data/model/BillStageInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mBillStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    .line 57
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mBillStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mBillStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/zhangdan/app/data/model/BillStageInfo;->getMaxPeriodCount()I

    move-result v21

    if-nez v21, :cond_2

    .line 105
    :cond_1
    return-void

    .line 60
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mBillStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/zhangdan/app/data/model/BillStageInfo;->getStageList()Ljava/util/List;

    move-result-object v21

    new-instance v22, Lcom/zhangdan/app/activities/stage/StageGroupComparator;

    invoke-direct/range {v22 .. v22}, Lcom/zhangdan/app/activities/stage/StageGroupComparator;-><init>()V

    invoke-static/range {v21 .. v22}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 62
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v13, sb:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mBillStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/zhangdan/app/data/model/BillStageInfo;->getBankName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mBillStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/zhangdan/app/data/model/BillStageInfo;->getCardNo()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "\u5206\u671f"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const v21, 0x7f09003a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v21, 0x7f0900b1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 67
    .local v8, imgBankIcon:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mBillStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/zhangdan/app/data/model/BillStageInfo;->getBankId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/zhangdan/app/data/BankIconRes;->getBankIconResId(I)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 68
    const v21, 0x7f0900b2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 69
    .local v19, tvTotalAmount:Landroid/widget/TextView;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\uffe5"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mDecimalFormat:Ljava/text/DecimalFormat;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mBillStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/zhangdan/app/data/model/BillStageInfo;->getTotalBillAmount()D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v21, 0x7f0900ad

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const v21, 0x7f0900af

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/HorizontalScrollView;

    .line 73
    .local v14, scrollView:Landroid/widget/HorizontalScrollView;
    new-instance v21, Lcom/zhangdan/app/activities/stage/CardStageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mBillStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/activities/stage/CardStageView;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/BillStageInfo;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mCardStageView:Lcom/zhangdan/app/activities/stage/CardStageView;

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mCardStageView:Lcom/zhangdan/app/activities/stage/CardStageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 76
    const v21, 0x7f0900ae

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 77
    .local v10, layout:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mBillStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/zhangdan/app/data/model/BillStageInfo;->getStageList()Ljava/util/List;

    move-result-object v11

    .line 78
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BillStageGroup;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    .line 79
    .local v15, size:I
    const v3, 0x7f0900b0

    .line 80
    .local v3, aboveAnchorId:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v15, :cond_1

    .line 81
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zhangdan/app/data/model/BillStageGroup;

    .line 82
    .local v6, group:Lcom/zhangdan/app/data/model/BillStageGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v21

    const v22, 0x7f0300d5

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 83
    .local v20, view:Landroid/view/View;
    const v21, 0x7f0902e9

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 84
    .local v9, imgColorBlock:Landroid/widget/ImageView;
    const v21, 0x7f0902ef

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 85
    .local v17, tvBillName:Landroid/widget/TextView;
    const v21, 0x7f0902ec

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 86
    .local v18, tvRemainPeriod:Landroid/widget/TextView;
    const v21, 0x7f0902ee

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 88
    .local v16, tvAmount:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mColorRes:[I

    move-object/from16 v21, v0

    rem-int/lit8 v22, v7, 0x5

    aget v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillStageGroup;->getDesc()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v21, 0x7f070110

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillStageGroup;->getItemCount()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\uffe5"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mDecimalFormat:Ljava/text/DecimalFormat;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillStageGroup;->getFirstPeriodAmount()D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/\u671f"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v12, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 95
    .local v5, density:F
    const/high16 v21, 0x4120

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 96
    const/high16 v21, 0x4120

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 97
    const/high16 v21, 0x4120

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 99
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v12, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 100
    add-int/lit8 v3, v7, 0x1

    .line 101
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    .line 102
    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 116
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mCardStageView:Lcom/zhangdan/app/activities/stage/CardStageView;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mCardStageView:Lcom/zhangdan/app/activities/stage/CardStageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/stage/CardStageView;->destroy()V

    .line 119
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 110
    const-string v0, "bill_stage"

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->mBillStageInfo:Lcom/zhangdan/app/data/model/BillStageInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 111
    return-void
.end method
