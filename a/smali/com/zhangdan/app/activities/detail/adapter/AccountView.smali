.class public Lcom/zhangdan/app/activities/detail/adapter/AccountView;
.super Ljava/lang/Object;
.source "AccountView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBillMonth:Ljava/lang/String;

.field private mFormat:Ljava/text/DecimalFormat;

.field private mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/zhangdan/app/data/model/UserBankInfo;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "view"
    .parameter "userBankInfo"
    .parameter "billMonth"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mFormat:Ljava/text/DecimalFormat;

    .line 38
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mActivity:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mView:Landroid/view/View;

    .line 40
    iput-object p3, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 41
    iput-object p4, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mBillMonth:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->initReturnPartView()V

    .line 43
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->initAccountInfo()V

    .line 44
    return-void
.end method

.method private getBillCycle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    const-string v0, ""

    .line 74
    .local v0, cycle:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillStartDate()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, start:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillDate()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, end:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    invoke-static {v2}, Lcom/zhangdan/app/util/BillDateUtils;->converDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v1}, Lcom/zhangdan/app/util/BillDateUtils;->converDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_0
    return-object v0
.end method


# virtual methods
.method public initAccountInfo()V
    .locals 17

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mView:Landroid/view/View;

    const v13, 0x7f09022a

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 90
    .local v5, tvBillMonth:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mBillMonth:Ljava/lang/String;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mView:Landroid/view/View;

    const v13, 0x7f09022d

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 94
    .local v4, tvBillCycle:Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->getBillCycle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mView:Landroid/view/View;

    const v13, 0x7f09022f

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 98
    .local v11, tvPayDueDate:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mView:Landroid/view/View;

    const v13, 0x7f090231

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 102
    .local v7, tvCreditLimit:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mFormat:Ljava/text/DecimalFormat;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v13}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCreditLimit()F

    move-result v13

    float-to-double v13, v13

    invoke-virtual {v12, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mView:Landroid/view/View;

    const v13, 0x7f090233

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 106
    .local v6, tvCashLimit:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mFormat:Ljava/text/DecimalFormat;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v13}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCashLimit()F

    move-result v13

    float-to-double v13, v13

    invoke-virtual {v12, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mView:Landroid/view/View;

    const v13, 0x7f090235

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 110
    .local v8, tvCurrencyType:Landroid/widget/TextView;
    sget-object v12, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_RMB:Lcom/zhangdan/app/util/CurrencyUtil;

    invoke-virtual {v12}, Lcom/zhangdan/app/util/CurrencyUtil;->getDesc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mView:Landroid/view/View;

    const v13, 0x7f090237

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 114
    .local v9, tvIntegral:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mActivity:Landroid/app/Activity;

    const v13, 0x7f0700a4

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/zhangdan/app/data/model/UserBankInfo;->getIntegral()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v12

    if-nez v12, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mView:Landroid/view/View;

    const v13, 0x7f090238

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mView:Landroid/view/View;

    const v13, 0x7f09023a

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 123
    .local v10, tvMailSender:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->getMailSender()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, mailSender:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 125
    const-string v12, "{"

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 126
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/DetailDataManager;->parseMailSend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_2
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 130
    .local v3, spanString:Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 131
    .local v2, span:Landroid/text/style/UnderlineSpan;
    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-virtual {v3, v2, v12, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 132
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mView:Landroid/view/View;

    const v13, 0x7f090238

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public initReturnPartView()V
    .locals 8

    .prologue
    .line 50
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mView:Landroid/view/View;

    const v5, 0x7f090221

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, layoutReturnPart:Landroid/view/View;
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mView:Landroid/view/View;

    const v5, 0x7f090227

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    .local v2, tvHasPaid:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mView:Landroid/view/View;

    const v5, 0x7f090229

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 55
    .local v3, tvRemainDebt:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 56
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uffe5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mFormat:Ljava/text/DecimalFormat;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->getReturnAmount()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUsdNewBalance()F

    move-result v5

    sget-object v6, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_RMB:Lcom/zhangdan/app/util/CurrencyUtil;

    invoke-virtual {v6}, Lcom/zhangdan/app/util/CurrencyUtil;->getRate()F

    move-result v6

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 62
    .local v1, total:F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uffe5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mFormat:Ljava/text/DecimalFormat;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->getReturnAmount()F

    move-result v6

    sub-float v6, v1, v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mView:Landroid/view/View;

    const v5, 0x7f090224

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090224

    if-ne v0, v1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->jump2PartPaidPage()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090238

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/AccountView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getMailSender()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/detail/DetailDataManager;->gotoMailActivity(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
