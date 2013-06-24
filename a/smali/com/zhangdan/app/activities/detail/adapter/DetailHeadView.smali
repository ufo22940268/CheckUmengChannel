.class public Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;
.super Ljava/lang/Object;
.source "DetailHeadView.java"


# instance fields
.field private mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

.field private mFormat:Ljava/text/DecimalFormat;

.field private mImgExpression:Landroid/widget/ImageView;

.field private mRemainDay:Landroid/widget/TextView;

.field private mRemainDayLabel:Landroid/widget/TextView;

.field private mTvExpressionLabel:Landroid/widget/TextView;

.field private mTvMinPay:Landroid/widget/TextView;

.field private mTvMinPayLabel:Landroid/widget/TextView;

.field private mTvNeedPay:Landroid/widget/TextView;

.field private mTvNeedPayLabel:Landroid/widget/TextView;

.field private mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zhangdan/app/data/model/UserBankInfo;)V
    .locals 9
    .parameter "view"
    .parameter "userBankInfo"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#0.00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mFormat:Ljava/text/DecimalFormat;

    .line 46
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mView:Landroid/view/View;

    .line 47
    iput-object p2, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 48
    const v5, 0x7f0901cb

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 49
    .local v1, imgBankIcon:Landroid/widget/ImageView;
    const v5, 0x7f0901cc

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 50
    .local v3, tvBankName:Landroid/widget/TextView;
    const v5, 0x7f0901cd

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 51
    .local v4, tvUserName:Landroid/widget/TextView;
    const v5, 0x7f0901d1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvNeedPay:Landroid/widget/TextView;

    .line 52
    const v5, 0x7f0901d3

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvMinPay:Landroid/widget/TextView;

    .line 53
    const v5, 0x7f0901d0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvNeedPayLabel:Landroid/widget/TextView;

    .line 54
    const v5, 0x7f0901d2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvMinPayLabel:Landroid/widget/TextView;

    .line 55
    const v5, 0x7f0901ce

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mRemainDay:Landroid/widget/TextView;

    .line 56
    const v5, 0x7f0901cf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mRemainDayLabel:Landroid/widget/TextView;

    .line 57
    const v5, 0x7f090256

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mImgExpression:Landroid/widget/ImageView;

    .line 58
    const v5, 0x7f090257

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvExpressionLabel:Landroid/widget/TextView;

    .line 59
    const v5, 0x7f090259

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zhangdan/preferential/widget/PrefBannerView;

    iput-object v5, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

    .line 61
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getIconResId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 62
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNameOnBill()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, nameOnBill:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, cardNo:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070092

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->initBillStatusView()V

    .line 68
    return-void
.end method


# virtual methods
.method public getBanner()Lcom/zhangdan/preferential/widget/PrefBannerView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

    return-object v0
.end method

.method public initBillStatusView()V
    .locals 12

    .prologue
    .line 78
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v6

    .line 81
    .local v6, state:I
    const/4 v5, 0x0

    .line 82
    .local v5, showMinPayExpresstion:Z
    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLeaveDays()I

    move-result v7

    if-gez v7, :cond_0

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getReturnAmount()F

    move-result v7

    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->getMinPayment()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 83
    const/4 v5, 0x1

    .line 84
    :cond_0
    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    if-nez v5, :cond_4

    .line 85
    :cond_1
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mRemainDay:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mRemainDayLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mImgExpression:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvExpressionLabel:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :goto_0
    if-nez v6, :cond_6

    .line 97
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvNeedPayLabel:Landroid/widget/TextView;

    const v8, 0x7f0700b5

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvMinPayLabel:Landroid/widget/TextView;

    const v8, 0x7f0700b6

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getMailSender()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, mailSender:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 101
    const-string v7, "{"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 102
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvNeedPay:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/zhangdan/app/activities/detail/DetailDataManager;->parseMailSend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvMinPay:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .end local v4           #mailSender:Ljava/lang/String;
    :goto_2
    if-nez v6, :cond_7

    .line 117
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mImgExpression:Landroid/widget/ImageView;

    const v8, 0x7f0202ee

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 118
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvExpressionLabel:Landroid/widget/TextView;

    const v8, 0x7f02018e

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 119
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvExpressionLabel:Landroid/widget/TextView;

    const v8, 0x7f070093

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 154
    :cond_3
    :goto_3
    return-void

    .line 90
    :cond_4
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mRemainDay:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mRemainDayLabel:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mImgExpression:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvExpressionLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 104
    .restart local v4       #mailSender:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvNeedPay:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 110
    .end local v4           #mailSender:Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvNeedPayLabel:Landroid/widget/TextView;

    const v8, 0x7f07007d

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvMinPayLabel:Landroid/widget/TextView;

    const v8, 0x7f07007e

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvNeedPay:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\uffe5"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mFormat:Ljava/text/DecimalFormat;

    iget-object v10, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v10}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "+$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mFormat:Ljava/text/DecimalFormat;

    iget-object v10, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v10}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUsdNewBalance()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvMinPay:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\uffe5"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mFormat:Ljava/text/DecimalFormat;

    iget-object v10, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v10}, Lcom/zhangdan/app/data/model/UserBankInfo;->getMinPayment()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "+$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mFormat:Ljava/text/DecimalFormat;

    iget-object v10, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v10}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUsdMinPayment()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 121
    :cond_7
    const/4 v7, 0x1

    if-eq v6, v7, :cond_8

    const/4 v7, 0x4

    if-ne v6, v7, :cond_b

    if-nez v5, :cond_b

    .line 122
    :cond_8
    const-string v0, ""

    .line 123
    .local v0, dayLabel:Ljava/lang/String;
    const/4 v1, 0x0

    .line 124
    .local v1, dayLabelBg:I
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLeaveDays()I

    move-result v3

    .line 125
    .local v3, leaveDays:I
    if-ltz v3, :cond_a

    .line 126
    const/4 v7, 0x6

    if-le v3, v7, :cond_9

    .line 127
    const v1, 0x7f020190

    .line 131
    :goto_4
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070094

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_5
    new-instance v2, Landroid/text/SpannableString;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700a3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 137
    .local v2, daysSpan:Landroid/text/SpannableString;
    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    const/high16 v8, 0x4080

    invoke-direct {v7, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v8, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 138
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mRemainDay:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mRemainDayLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 140
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mRemainDayLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 129
    .end local v2           #daysSpan:Landroid/text/SpannableString;
    :cond_9
    const v1, 0x7f02019e

    goto :goto_4

    .line 133
    :cond_a
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070095

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    const v1, 0x7f02019b

    goto :goto_5

    .line 141
    .end local v0           #dayLabel:Ljava/lang/String;
    .end local v1           #dayLabelBg:I
    .end local v3           #leaveDays:I
    :cond_b
    const/4 v7, 0x2

    if-ne v6, v7, :cond_c

    .line 142
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mImgExpression:Landroid/widget/ImageView;

    const v8, 0x7f0202fc

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 143
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvExpressionLabel:Landroid/widget/TextView;

    const v8, 0x7f020190

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 144
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvExpressionLabel:Landroid/widget/TextView;

    const v8, 0x7f070096

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 145
    :cond_c
    const/4 v7, 0x3

    if-ne v6, v7, :cond_d

    .line 146
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mImgExpression:Landroid/widget/ImageView;

    const v8, 0x7f0202f3

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 147
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvExpressionLabel:Landroid/widget/TextView;

    const v8, 0x7f020190

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 148
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvExpressionLabel:Landroid/widget/TextView;

    const v8, 0x7f070097

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 149
    :cond_d
    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    if-eqz v5, :cond_3

    .line 150
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mImgExpression:Landroid/widget/ImageView;

    const v8, 0x7f0202ff

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 151
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvExpressionLabel:Landroid/widget/TextView;

    const v8, 0x7f020190

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 152
    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailHeadView;->mTvExpressionLabel:Landroid/widget/TextView;

    const v8, 0x7f07009a

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3
.end method
