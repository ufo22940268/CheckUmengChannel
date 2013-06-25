.class public Lcom/zhangdan/app/activities/alipay/AlipayActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "AlipayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;,
        Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;
    }
.end annotation


# instance fields
.field private mDecimalFormat:Ljava/text/DecimalFormat;

.field private mLayoutTradeRecord:Landroid/widget/LinearLayout;

.field private mPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

.field private mTvTradeRecordLabel:Landroid/widget/TextView;

.field private mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 56
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Lcom/zhangdan/app/data/model/UserBankInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mTvTradeRecordLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mLayoutTradeRecord:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/alipay/AlipayActivity;Lcom/zhangdan/app/data/model/http/AlipayOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->generateTradeRecordView(Lcom/zhangdan/app/data/model/http/AlipayOrder;)V

    return-void
.end method

.method private generateBillView(FFI)Landroid/view/View;
    .locals 8
    .parameter "totalAmount"
    .parameter "minPayAmount"
    .parameter "currencyType"

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030049

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 258
    .local v3, view:Landroid/view/View;
    const v4, 0x7f090128

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 259
    .local v0, tvCurrencyType:Landroid/widget/TextView;
    const v4, 0x7f090129

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 260
    .local v1, tvMinPay:Landroid/widget/TextView;
    const v4, 0x7f09012a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 261
    .local v2, tvTotalAmount:Landroid/widget/TextView;
    const/4 v4, 0x1

    if-ne p3, v4, :cond_1

    .line 262
    const v4, 0x7f0700cd

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uffe5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mDecimalFormat:Ljava/text/DecimalFormat;

    float-to-double v6, p2

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uffe5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mDecimalFormat:Ljava/text/DecimalFormat;

    float-to-double v6, p1

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_0
    :goto_0
    return-object v3

    .line 265
    :cond_1
    const/4 v4, 0x2

    if-ne p3, v4, :cond_2

    .line 266
    const v4, 0x7f0700ce

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mDecimalFormat:Ljava/text/DecimalFormat;

    float-to-double v6, p2

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mDecimalFormat:Ljava/text/DecimalFormat;

    float-to-double v6, p1

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 269
    :cond_2
    const/16 v4, 0xa

    if-ne p3, v4, :cond_0

    .line 270
    const v4, 0x7f0700cf

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7ea6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mDecimalFormat:Ljava/text/DecimalFormat;

    float-to-double v6, p2

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7ea6\uffe5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mDecimalFormat:Ljava/text/DecimalFormat;

    float-to-double v6, p1

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private generateTradeRecordView(Lcom/zhangdan/app/data/model/http/AlipayOrder;)V
    .locals 7
    .parameter "order"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03004a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 279
    .local v3, view:Landroid/view/View;
    const v4, 0x7f09012d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 280
    .local v2, tvTime:Landroid/widget/TextView;
    const v4, 0x7f09012e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 281
    .local v1, tvStatus:Landroid/widget/TextView;
    const v4, 0x7f09012c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 282
    .local v0, tvAmount:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uffe5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->getAmount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->getCreateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->getAliStatus()I

    move-result v4

    invoke-static {v4}, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->getStatusByCode(I)Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v4, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mLayoutTradeRecord:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    return-void
.end method

.method private initViews()V
    .locals 17

    .prologue
    .line 109
    const v13, 0x7f09003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const v14, 0x7f020390

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    const v13, 0x7f090039

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v13, 0x7f0901e3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const v14, 0x7f020009

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    const v13, 0x7f09003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f0700ca

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 113
    const v13, 0x7f090041

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v13, 0x7f090083

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 116
    .local v3, layoutBillList:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v13}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v5

    .line 117
    .local v5, newBalance:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v13}, Lcom/zhangdan/app/data/model/UserBankInfo;->getMinPayment()F

    move-result v4

    .line 118
    .local v4, minPayment:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v13}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUsdNewBalance()F

    move-result v11

    .line 119
    .local v11, usdNewBalance:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v13}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUsdMinPayment()F

    move-result v10

    .line 121
    .local v10, usdMinPaymnt:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v13}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v13

    if-nez v13, :cond_0

    .line 122
    const/4 v5, 0x0

    .line 123
    const/4 v4, 0x0

    .line 124
    const/4 v11, 0x0

    .line 125
    const/4 v10, 0x0

    .line 128
    :cond_0
    sget-object v13, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_RMB:Lcom/zhangdan/app/util/CurrencyUtil;

    invoke-virtual {v13}, Lcom/zhangdan/app/util/CurrencyUtil;->getRate()F

    move-result v13

    mul-float/2addr v13, v11

    add-float v8, v5, v13

    .line 129
    .local v8, totalBalance:F
    sget-object v13, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_RMB:Lcom/zhangdan/app/util/CurrencyUtil;

    invoke-virtual {v13}, Lcom/zhangdan/app/util/CurrencyUtil;->getRate()F

    move-result v13

    mul-float/2addr v13, v10

    add-float v9, v4, v13

    .line 131
    .local v9, totalMinpay:F
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->generateBillView(FFI)Landroid/view/View;

    move-result-object v12

    .line 132
    .local v12, view:Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    const/4 v13, 0x0

    cmpl-float v13, v11, v13

    if-lez v13, :cond_2

    .line 135
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->generateBillView(FFI)Landroid/view/View;

    move-result-object v12

    .line 136
    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 139
    .local v2, dm:Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 140
    .local v1, dividerLine:Landroid/widget/ImageView;
    const v13, 0x7f020087

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 141
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v6, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v13, 0x40a0

    iget v14, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 143
    invoke-virtual {v3, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    const/16 v13, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->generateBillView(FFI)Landroid/view/View;

    move-result-object v12

    .line 146
    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    const v13, 0x7f090082

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v13, 0x7f090081

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .end local v1           #dividerLine:Landroid/widget/ImageView;
    .end local v2           #dm:Landroid/util/DisplayMetrics;
    .end local v6           #params:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v13}, Lcom/zhangdan/app/data/model/UserBankInfo;->getReturnAmount()F

    move-result v13

    sub-float v7, v8, v13

    .line 156
    .local v7, payAmount:F
    const/4 v13, 0x0

    cmpg-float v13, v7, v13

    if-gez v13, :cond_1

    .line 157
    const/4 v7, 0x0

    .line 158
    :cond_1
    const v13, 0x7f090086

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mDecimalFormat:Ljava/text/DecimalFormat;

    float-to-double v15, v7

    invoke-virtual/range {v14 .. v16}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const v13, 0x7f090087

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v13, 0x7f090084

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mTvTradeRecordLabel:Landroid/widget/TextView;

    .line 162
    const v13, 0x7f090085

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mLayoutTradeRecord:Landroid/widget/LinearLayout;

    .line 163
    return-void

    .line 152
    .end local v7           #payAmount:F
    :cond_2
    const v13, 0x7f090081

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 153
    const v13, 0x7f090082

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 26
    .parameter "v"

    .prologue
    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090039

    if-ne v2, v3, :cond_1

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->finish()V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090041

    if-ne v2, v3, :cond_3

    .line 181
    const-string v2, "yuan_alipay_about"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-nez v2, :cond_2

    .line 183
    new-instance v2, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 185
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v21, menuList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/popmenu/PopupMenuItem;>;"
    new-instance v20, Lcom/zhangdan/app/popmenu/PopupMenuItem;

    invoke-direct/range {v20 .. v20}, Lcom/zhangdan/app/popmenu/PopupMenuItem;-><init>()V

    .line 187
    .local v20, item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setIconResId(I)V

    .line 188
    const v2, 0x7f0700cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setTitle(Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v12, Lcom/zhangdan/app/popmenu/PopMenuSingleAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v12, v0, v1}, Lcom/zhangdan/app/popmenu/PopMenuSingleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 191
    .local v12, adapter:Lcom/zhangdan/app/popmenu/PopMenuSingleAdapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v2, v12}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 194
    .end local v12           #adapter:Lcom/zhangdan/app/popmenu/PopMenuSingleAdapter;
    .end local v20           #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    .end local v21           #menuList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/popmenu/PopupMenuItem;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v2}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->show()V

    goto :goto_0

    .line 196
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090081

    if-eq v2, v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090082

    if-ne v2, v3, :cond_5

    .line 197
    :cond_4
    const-string v2, "yuan_alipay_currency_about"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    new-instance v17, Lcom/zhangdan/app/activities/alipay/AlipayCurrencyDialog;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/alipay/AlipayCurrencyDialog;-><init>(Landroid/content/Context;)V

    .line 199
    .local v17, dialog:Lcom/zhangdan/app/activities/alipay/AlipayCurrencyDialog;
    invoke-virtual/range {v17 .. v17}, Lcom/zhangdan/app/activities/alipay/AlipayCurrencyDialog;->show()V

    goto/16 :goto_0

    .line 200
    .end local v17           #dialog:Lcom/zhangdan/app/activities/alipay/AlipayCurrencyDialog;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090087

    if-ne v2, v3, :cond_0

    .line 201
    const-string v2, "yuan_alipay_submit"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    const v2, 0x7f090086

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    .line 203
    .local v19, edit:Landroid/widget/EditText;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, amountStr:Ljava/lang/String;
    invoke-static {v9}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "."

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 205
    :cond_6
    const-string v2, "\u8bf7\u8f93\u5165\u8fd8\u6b3e\u91d1\u989d"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :cond_7
    :try_start_0
    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    .line 210
    .local v13, amount:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v13, v2

    if-nez v2, :cond_8

    .line 211
    const-string v2, "\u8bf7\u8f93\u5165\u8fd8\u6b3e\u91d1\u989d"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 214
    .end local v13           #amount:D
    :catch_0
    move-exception v18

    .line 215
    .local v18, e:Ljava/lang/NumberFormatException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 216
    const-string v2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u8fd8\u6b3e\u91d1\u989d"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .end local v18           #e:Ljava/lang/NumberFormatException;
    .restart local v13       #amount:D
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v22

    .line 220
    .local v22, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    invoke-virtual/range {v22 .. v22}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v10

    .line 221
    .local v10, token:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v11

    .line 223
    .local v11, userId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLastBillId()J

    move-result-wide v4

    .line 224
    .local v4, lastBillId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v6

    .line 225
    .local v6, bankId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, nameOnBill:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v16

    .line 228
    .local v16, cardNo:Ljava/lang/String;
    if-eqz v16, :cond_9

    const-string v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    .line 229
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 230
    .local v15, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "\u9009\u62e9\u5361\u53f7"

    invoke-virtual {v15, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 231
    const-string v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 232
    .local v8, items:[Ljava/lang/String;
    new-instance v2, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;-><init>(Lcom/zhangdan/app/activities/alipay/AlipayActivity;JILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v8, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 244
    .end local v8           #items:[Ljava/lang/String;
    .end local v15           #builder:Landroid/app/AlertDialog$Builder;
    :cond_9
    new-instance v2, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;-><init>(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)V

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v3, v23

    const/16 v23, 0x1

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v3, v23

    const/16 v23, 0x2

    aput-object v7, v3, v23

    const/16 v23, 0x3

    aput-object v16, v3, v23

    const/16 v23, 0x4

    aput-object v9, v3, v23

    const/16 v23, 0x5

    aput-object v10, v3, v23

    const/16 v23, 0x6

    aput-object v11, v3, v23

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v7, 0x7f030023

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 69
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    const-string v7, "key_user_bank"

    invoke-virtual {v0, v7}, Lcom/zhangdan/app/ZhangdanApplication;->getCacheObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zhangdan/app/data/model/UserBankInfo;

    iput-object v7, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 70
    const-string v7, "key_user_bank"

    invoke-virtual {v0, v7}, Lcom/zhangdan/app/ZhangdanApplication;->removeCacheObject(Ljava/lang/String;)V

    .line 72
    iget-object v7, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    if-nez v7, :cond_0

    if-eqz p1, :cond_0

    .line 73
    const-string v7, "userBankInfo"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/zhangdan/app/data/model/UserBankInfo;

    iput-object v7, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 75
    :cond_0
    iget-object v7, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    if-nez v7, :cond_1

    .line 91
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->initViews()V

    .line 81
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->isShowAlipayDesc(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 82
    new-instance v3, Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;-><init>(Landroid/content/Context;)V

    .line 83
    .local v3, dialog:Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;
    invoke-virtual {v3}, Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;->show()V

    .line 86
    .end local v3           #dialog:Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;
    :cond_2
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v6

    .line 87
    .local v6, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, token:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, userId:Ljava/lang/String;
    iget-object v7, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLastBillId()J

    move-result-wide v1

    .line 90
    .local v1, billId:J
    new-instance v7, Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;

    invoke-direct {v7, p0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;-><init>(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)V

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    .line 100
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    .line 168
    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    .line 170
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zhangdan/app/activities/alipay/AlipayAboutActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    const-string v0, "userBankInfo"

    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 106
    return-void
.end method
