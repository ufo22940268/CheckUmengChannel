.class public Lcom/zhangdan/preferential/widget/PromDescriptionView;
.super Landroid/widget/ScrollView;
.source "PromDescriptionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContentView:Landroid/view/ViewGroup;

.field private mDesView:Landroid/widget/TextView;

.field private mDoCardView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mProm:Lcom/zhangdan/preferential/data/model/Promotion;

.field private mRangeView:Landroid/widget/TextView;

.field private mRuleLayout:Landroid/view/ViewGroup;

.field private mRuleView:Landroid/widget/TextView;

.field private mWeekViews:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->setFillViewport(Z)V

    .line 42
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f090274

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mRangeView:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mWeekViews:Landroid/view/ViewGroup;

    .line 57
    const v0, 0x7f090318

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mRuleView:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f090315

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mDesView:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f090316

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mRuleLayout:Landroid/view/ViewGroup;

    .line 60
    return-void
.end method

.method private hideRule()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mRuleLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 92
    return-void
.end method


# virtual methods
.method public getContentHeight()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 107
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->getCurrentUserInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, userInfo:Ljava/lang/String;
    const-string v3, "CurrentUserInfo"

    invoke-static {v0, v3, v2}, Lcom/zhangdan/banka/data/SharedPreferMgr;->setKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v3, "SpecifiedBankId"

    iget-object v4, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    iget-wide v4, v4, Lcom/zhangdan/preferential/data/model/Promotion;->bankId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/zhangdan/banka/data/SharedPreferMgr;->setKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/zhangdan/banka/kh/BankaMainActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "from"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x7f090153
        :pswitch_0
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 47
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300eb

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    invoke-direct {p0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->findViews()V

    .line 49
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mContentView:Landroid/view/ViewGroup;

    .line 50
    const v0, 0x7f090153

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mDoCardView:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mDoCardView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method public setupProm(Lcom/zhangdan/preferential/data/model/Promotion;)V
    .locals 10
    .parameter "prom"

    .prologue
    const/4 v9, 0x0

    .line 63
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    .line 64
    iget-object v6, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mRangeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/Promotion;->getTimeRange()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/Promotion;->getRuleSpanned()Landroid/text/Spanned;

    move-result-object v3

    .line 67
    .local v3, ruleSpan:Landroid/text/Spanned;
    if-nez v3, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->hideRule()V

    .line 73
    :goto_0
    iget-object v6, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mDesView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/Promotion;->getDescriptionSpanned()Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v6, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mDesView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 76
    iget-object v6, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mWeekViews:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 77
    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/Promotion;->getDiscountWeeks()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 78
    .local v5, week:Ljava/lang/String;
    iget-object v6, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030110

    iget-object v8, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mWeekViews:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 79
    .local v4, v:Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v6, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mWeekViews:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #v:Landroid/widget/TextView;
    .end local v5           #week:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mRuleView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    :cond_1
    iget-wide v6, p1, Lcom/zhangdan/preferential/data/model/Promotion;->bankId:J

    invoke-static {v6, v7}, Lcom/zhangdan/preferential/data/model/Card;->allowDoBank(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 84
    iget-object v6, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mDoCardView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :goto_2
    return-void

    .line 86
    :cond_2
    iget-object v6, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->mDoCardView:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
