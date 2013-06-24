.class Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;
.super Landroid/widget/BaseAdapter;
.source "FreeInterestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CardAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;->this$0:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;->this$0:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;

    #getter for: Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->access$000(Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;->this$0:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;

    #getter for: Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->access$000(Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;->this$0:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;

    #getter for: Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->access$000(Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;->this$0:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;

    #getter for: Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->access$000(Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 79
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 84
    move-object/from16 v19, p2

    .line 85
    .local v19, view:Landroid/view/View;
    if-nez v19, :cond_0

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;->this$0:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v20

    const v21, 0x7f030080

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 87
    const v20, 0x7f0901b0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 88
    .local v8, imgBankIcon:Landroid/widget/ImageView;
    const v20, 0x7f0901b2

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 89
    .local v14, tvBankName:Landroid/widget/TextView;
    const v20, 0x7f0901b3

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 90
    .local v17, tvCardNameAndNo:Landroid/widget/TextView;
    const v20, 0x7f0901b4

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 91
    .local v16, tvCardLimit:Landroid/widget/TextView;
    const v20, 0x7f0901b5

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 92
    .local v15, tvCardAvailLimit:Landroid/widget/TextView;
    const v20, 0x7f0901b6

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 93
    .local v18, tvFreeDays:Landroid/widget/TextView;
    const v20, 0x7f0901b7

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/zhangdan/app/widget/CustomProgressBar;

    .line 94
    .local v10, progressBar:Lcom/zhangdan/app/widget/CustomProgressBar;
    new-instance v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;-><init>(Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;)V

    .line 95
    .local v7, holder:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;
    iput-object v8, v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;->imgBankIcon:Landroid/widget/ImageView;

    .line 96
    iput-object v14, v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;->tvBankName:Landroid/widget/TextView;

    .line 97
    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;->tvCardNameAndNo:Landroid/widget/TextView;

    .line 98
    move-object/from16 v0, v18

    iput-object v0, v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;->tvFreeDays:Landroid/widget/TextView;

    .line 99
    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;->tvCardLimit:Landroid/widget/TextView;

    .line 100
    iput-object v15, v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;->tvCardAvailLimit:Landroid/widget/TextView;

    .line 101
    iput-object v10, v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;->progressBar:Lcom/zhangdan/app/widget/CustomProgressBar;

    .line 102
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    .end local v7           #holder:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;
    .end local v8           #imgBankIcon:Landroid/widget/ImageView;
    .end local v10           #progressBar:Lcom/zhangdan/app/widget/CustomProgressBar;
    .end local v14           #tvBankName:Landroid/widget/TextView;
    .end local v15           #tvCardAvailLimit:Landroid/widget/TextView;
    .end local v16           #tvCardLimit:Landroid/widget/TextView;
    .end local v17           #tvCardNameAndNo:Landroid/widget/TextView;
    .end local v18           #tvFreeDays:Landroid/widget/TextView;
    :cond_0
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;

    .line 105
    .restart local v7       #holder:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;
    invoke-virtual/range {p0 .. p1}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 106
    .local v5, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    if-nez v5, :cond_1

    .line 153
    :goto_0
    return-object v19

    .line 108
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;->this$0:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 109
    .local v11, res:Landroid/content/res/Resources;
    iget-object v0, v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;->imgBankIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getIconResId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 110
    iget-object v0, v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;->tvBankName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;->tvCardNameAndNo:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x7f070072

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    const-string v20, "---"

    :goto_1
    aput-object v20, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    const-string v20, "---"

    :goto_2
    aput-object v20, v23, v24

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;->tvCardLimit:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x7f070079

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getFormatCreditLimit()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    const-string v20, "---"

    :goto_3
    aput-object v20, v23, v24

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    .local v12, sb:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 119
    .local v4, amount:F
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v20

    if-nez v20, :cond_6

    .line 120
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCreditLimit()F

    move-result v4

    .line 121
    float-to-double v0, v4

    move-wide/from16 v20, v0

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getStageTotalAmount()D

    move-result-wide v22

    sub-double v20, v20, v22

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUnSettledSmsAmount()D

    move-result-wide v22

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v4, v0

    .line 122
    const/16 v20, 0x0

    cmpg-float v20, v4, v20

    if-gez v20, :cond_2

    .line 123
    const/4 v4, 0x0

    .line 124
    :cond_2
    const-string v20, "\uffe5"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;->this$0:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;

    move-object/from16 v21, v0

    #getter for: Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->mFormat:Ljava/text/DecimalFormat;
    invoke-static/range {v21 .. v21}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->access$100(Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;)Ljava/text/DecimalFormat;

    move-result-object v21

    const v22, 0x461c4000

    div-float v22, v4, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const v21, 0x7f0700a2

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :goto_4
    iget-object v0, v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;->tvCardAvailLimit:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f07007a

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCreditLimit()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_b

    .line 142
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCreditLimit()F

    move-result v20

    sub-float v20, v20, v4

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCreditLimit()F

    move-result v21

    div-float v9, v20, v21

    .line 143
    .local v9, progress:F
    iget-object v0, v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;->progressBar:Lcom/zhangdan/app/widget/CustomProgressBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/zhangdan/app/widget/CustomProgressBar;->setProgress(F)V

    .line 148
    .end local v9           #progress:F
    :goto_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getMaxFreeInterestDays()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0x7f0700a3

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, freeDay:Ljava/lang/String;
    new-instance v13, Landroid/text/SpannableString;

    invoke-direct {v13, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 150
    .local v13, spanStr:Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;->this$0:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;

    move-object/from16 v20, v0

    #getter for: Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->mSizeSpan:Landroid/text/style/AbsoluteSizeSpan;
    invoke-static/range {v20 .. v20}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->access$200(Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v20

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 151
    iget-object v0, v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;->tvFreeDays:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 111
    .end local v4           #amount:F
    .end local v6           #freeDay:Ljava/lang/String;
    .end local v12           #sb:Ljava/lang/StringBuffer;
    .end local v13           #spanStr:Landroid/text/SpannableString;
    :cond_3
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 116
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "\uffe5"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getFormatCreditLimit()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_3

    .line 125
    .restart local v4       #amount:F
    .restart local v12       #sb:Ljava/lang/StringBuffer;
    :cond_6
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 126
    :cond_7
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCreditLimit()F

    move-result v4

    .line 127
    float-to-double v0, v4

    move-wide/from16 v20, v0

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getStageTotalAmount()D

    move-result-wide v22

    sub-double v20, v20, v22

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUnSettledSmsAmount()D

    move-result-wide v22

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v4, v0

    .line 128
    const/16 v20, 0x0

    cmpg-float v20, v4, v20

    if-gez v20, :cond_8

    .line 129
    const/4 v4, 0x0

    .line 130
    :cond_8
    const-string v20, "\uffe5"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;->this$0:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;

    move-object/from16 v21, v0

    #getter for: Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->mFormat:Ljava/text/DecimalFormat;
    invoke-static/range {v21 .. v21}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->access$100(Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;)Ljava/text/DecimalFormat;

    move-result-object v21

    const v22, 0x461c4000

    div-float v22, v4, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const v21, 0x7f0700a2

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 133
    :cond_9
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCreditLimit()F

    move-result v20

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v21

    sub-float v20, v20, v21

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUsdNewBalance()F

    move-result v21

    sget-object v22, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_RMB:Lcom/zhangdan/app/util/CurrencyUtil;

    invoke-virtual/range {v22 .. v22}, Lcom/zhangdan/app/util/CurrencyUtil;->getRate()F

    move-result v22

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getReturnAmount()F

    move-result v21

    add-float v4, v20, v21

    .line 134
    float-to-double v0, v4

    move-wide/from16 v20, v0

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getStageTotalAmount()D

    move-result-wide v22

    sub-double v20, v20, v22

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUnSettledSmsAmount()D

    move-result-wide v22

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v4, v0

    .line 135
    const/16 v20, 0x0

    cmpg-float v20, v4, v20

    if-gez v20, :cond_a

    .line 136
    const/4 v4, 0x0

    .line 137
    :cond_a
    const-string v20, "\uffe5"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter;->this$0:Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;

    move-object/from16 v21, v0

    #getter for: Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->mFormat:Ljava/text/DecimalFormat;
    invoke-static/range {v21 .. v21}, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;->access$100(Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog;)Ljava/text/DecimalFormat;

    move-result-object v21

    const v22, 0x461c4000

    div-float v22, v4, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const v21, 0x7f0700a2

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 145
    :cond_b
    iget-object v0, v7, Lcom/zhangdan/app/activities/main/dialog/FreeInterestDialog$CardAdapter$ViewHolder;->progressBar:Lcom/zhangdan/app/widget/CustomProgressBar;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/zhangdan/app/widget/CustomProgressBar;->setProgress(F)V

    goto/16 :goto_5
.end method
