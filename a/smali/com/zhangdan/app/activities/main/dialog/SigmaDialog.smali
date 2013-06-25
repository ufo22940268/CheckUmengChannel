.class public Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;
.super Landroid/app/Dialog;
.source "SigmaDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mFormat:Ljava/text/DecimalFormat;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;"
        }
    .end annotation
.end field


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
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    const v0, 0x7f08005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->mFormat:Ljava/text/DecimalFormat;

    .line 34
    iput-object p2, p0, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->mList:Ljava/util/List;

    .line 35
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->mList:Ljava/util/List;

    .line 37
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->setCanceledOnTouchOutside(Z)V

    .line 38
    return-void
.end method

.method private initViews()V
    .locals 34

    .prologue
    .line 53
    const v29, 0x7f09008c

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v29, 0x7f09015f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 55
    .local v23, tvTitle:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->getContext()Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0700a5

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 56
    .local v13, title:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->getContext()Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f0700ad

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->mList:Ljava/util/List;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 57
    .local v17, totalCard:Ljava/lang/String;
    new-instance v12, Landroid/text/SpannableString;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v12, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 58
    .local v12, spanStr:Landroid/text/SpannableString;
    new-instance v11, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v29, 0xe

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v11, v0, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 59
    .local v11, sizeSpan:Landroid/text/style/AbsoluteSizeSpan;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v29

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v30

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v31

    add-int v30, v30, v31

    const/16 v31, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v12, v11, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 60
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v29, 0x7f09017c

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 63
    .local v20, tvCurrBillSum:Landroid/widget/TextView;
    const v29, 0x7f09017e

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 64
    .local v21, tvCurrHasPaid:Landroid/widget/TextView;
    const v29, 0x7f090180

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 66
    .local v22, tvCurrUnpaid:Landroid/widget/TextView;
    const v29, 0x7f090182

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 67
    .local v25, tvUnknowBill:Landroid/widget/TextView;
    const v29, 0x7f090183

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 68
    .local v24, tvTotalLimit:Landroid/widget/TextView;
    const v29, 0x7f090184

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 70
    .local v19, tvAvail:Landroid/widget/TextView;
    const/16 v16, 0x0

    .line 71
    .local v16, totalBillAmount:F
    const/4 v5, 0x0

    .line 72
    .local v5, hasForeignCurrency:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->mList:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 73
    .local v4, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v29

    if-eqz v29, :cond_0

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_0

    .line 74
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v29

    add-float v16, v16, v29

    .line 75
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->isHasForeignCurrency()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 76
    const/4 v5, 0x1

    goto :goto_0

    .line 79
    .end local v4           #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_1
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "\uffe5"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->mFormat:Ljava/text/DecimalFormat;

    move-object/from16 v30, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v31, v0

    invoke-virtual/range {v30 .. v32}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const/4 v7, 0x0

    .line 82
    .local v7, paidAmount:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->mList:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 83
    .restart local v4       #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    .line 84
    .local v3, billState:I
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v3, v0, :cond_3

    .line 85
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v29

    add-float v7, v7, v29

    goto :goto_1

    .line 86
    :cond_3
    const/16 v29, 0x4

    move/from16 v0, v29

    if-ne v3, v0, :cond_2

    .line 87
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->getReturnAmount()F

    move-result v29

    add-float v7, v7, v29

    goto :goto_1

    .line 90
    .end local v3           #billState:I
    .end local v4           #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_4
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "\uffe5"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->mFormat:Ljava/text/DecimalFormat;

    move-object/from16 v30, v0

    float-to-double v0, v7

    move-wide/from16 v31, v0

    invoke-virtual/range {v30 .. v32}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    sub-float v26, v16, v7

    .line 93
    .local v26, unPaindAmount:F
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "\uffe5"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->mFormat:Ljava/text/DecimalFormat;

    move-object/from16 v30, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v31, v0

    invoke-virtual/range {v30 .. v32}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    if-eqz v5, :cond_5

    .line 96
    const v29, 0x7f09017f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x4

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :goto_2
    const-wide/16 v27, 0x0

    .line 120
    .local v27, unknowAmount:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->mList:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 122
    .restart local v4       #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->getStageTotalAmount()D

    move-result-wide v29

    add-double v27, v27, v29

    .line 123
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUnSettledSmsAmount()D

    move-result-wide v29

    add-double v27, v27, v29

    .line 124
    goto :goto_3

    .line 98
    .end local v4           #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    .end local v27           #unknowAmount:D
    :cond_5
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 99
    .local v8, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v29, 0xb

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 100
    const/16 v29, 0x0

    move/from16 v0, v29

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 101
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 104
    .local v9, param2:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v29, 0xb

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 105
    const/16 v29, 0x0

    move/from16 v0, v29

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 106
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 109
    .local v10, param3:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v29, 0xb

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 110
    const/16 v29, 0x0

    move/from16 v0, v29

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 111
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    const v29, 0x7f09017d

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 114
    const v29, 0x7f09017f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 115
    const v29, 0x7f090181

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 125
    .end local v8           #param:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #param2:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10           #param3:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v27       #unknowAmount:D
    :cond_6
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "\uffe5"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->mFormat:Ljava/text/DecimalFormat;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const/16 v18, 0x0

    .line 128
    .local v18, totalCreditLimit:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->mList:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 129
    .restart local v4       #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCreditLimit()F

    move-result v29

    add-float v18, v18, v29

    .line 130
    goto :goto_4

    .line 131
    .end local v4           #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_7
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "\uffe5"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->mFormat:Ljava/text/DecimalFormat;

    move-object/from16 v30, v0

    const v31, 0x461c4000

    div-float v31, v18, v31

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    invoke-virtual/range {v30 .. v32}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->getContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f0700a2

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    sub-float v29, v18, v16

    add-float v29, v29, v7

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v29, v0

    sub-double v14, v29, v27

    .line 134
    .local v14, totalAvail:D
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "\uffe5"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->mFormat:Ljava/text/DecimalFormat;

    move-object/from16 v30, v0

    const-wide v31, 0x40c3880000000000L

    div-double v31, v14, v31

    invoke-virtual/range {v30 .. v32}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->getContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f0700a2

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->mList:Ljava/util/List;

    .line 136
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f03006d

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->setContentView(I)V

    .line 44
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/dialog/SigmaDialog;->initViews()V

    .line 45
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 50
    return-void
.end method
