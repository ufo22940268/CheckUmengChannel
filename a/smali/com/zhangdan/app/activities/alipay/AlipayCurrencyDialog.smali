.class public Lcom/zhangdan/app/activities/alipay/AlipayCurrencyDialog;
.super Landroid/app/Dialog;
.source "AlipayCurrencyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    const v0, 0x7f08005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 31
    const v1, 0x7f090161

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/alipay/AlipayCurrencyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 33
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "1\u7f8e\u5143"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "     \u2248     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/zhangdan/app/util/CurrencyUtil;->CURRENCY_RMB:Lcom/zhangdan/app/util/CurrencyUtil;

    invoke-virtual {v2}, Lcom/zhangdan/app/util/CurrencyUtil;->getRate()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\u4eba\u6c11\u5e01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    const v1, 0x7f090160

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/alipay/AlipayCurrencyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090161

    if-ne v0, v1, :cond_0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/AlipayCurrencyDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030062

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayCurrencyDialog;->setContentView(I)V

    .line 27
    invoke-direct {p0}, Lcom/zhangdan/app/activities/alipay/AlipayCurrencyDialog;->initViews()V

    .line 28
    return-void
.end method
