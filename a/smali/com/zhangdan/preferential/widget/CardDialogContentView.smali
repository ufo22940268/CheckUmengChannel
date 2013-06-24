.class public Lcom/zhangdan/preferential/widget/CardDialogContentView;
.super Landroid/widget/LinearLayout;
.source "CardDialogContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCard:Lcom/zhangdan/preferential/data/model/Card;

.field private mClockTimeView:Landroid/widget/TextView;

.field private mDesView:Landroid/widget/TextView;

.field private mDiscountView:Landroid/widget/TextView;

.field private mDoCardView:Landroid/view/View;

.field private mNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 68
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/CardDialogContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 69
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->getCurrentUserInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, userInfo:Ljava/lang/String;
    const-string v3, "CurrentUserInfo"

    invoke-static {v0, v3, v2}, Lcom/zhangdan/banka/data/SharedPreferMgr;->setKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->mCard:Lcom/zhangdan/preferential/data/model/Card;

    if-eqz v3, :cond_0

    .line 72
    const-string v3, "SpecifiedBankId"

    iget-object v4, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->mCard:Lcom/zhangdan/preferential/data/model/Card;

    iget-object v4, v4, Lcom/zhangdan/preferential/data/model/Card;->id:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/zhangdan/banka/data/SharedPreferMgr;->setKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/zhangdan/banka/kh/BankaMainActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "from"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x7f090153
        :pswitch_0
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    const v1, 0x7f090153

    .line 40
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 41
    const v0, 0x7f090151

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/CardDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->mNameView:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/CardDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->mDiscountView:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f090157

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/CardDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->mClockTimeView:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f090155

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/CardDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->mDesView:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/CardDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/CardDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->mDoCardView:Landroid/view/View;

    .line 47
    return-void
.end method

.method public setupCard(Lcom/zhangdan/preferential/data/model/Card;)V
    .locals 2
    .parameter "card"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->mCard:Lcom/zhangdan/preferential/data/model/Card;

    .line 52
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->mNameView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/Card;->bankName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->mDiscountView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/Card;->getDiscount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupCardDiscount(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->mDesView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/Card;->getBothDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->mClockTimeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/Card;->getEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-wide v0, p1, Lcom/zhangdan/preferential/data/model/Card;->bankId:J

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/data/model/Card;->allowDoBank(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->mDoCardView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/CardDialogContentView;->mDoCardView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
