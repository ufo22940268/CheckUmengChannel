.class public Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;
.super Landroid/app/Dialog;
.source "AlipayHintDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isShowAgain:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    const v0, 0x7f08005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;->isShowAgain:Z

    .line 23
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f090161

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v0, 0x7f090162

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090161

    if-ne v1, v2, :cond_1

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;->isShowAgain:Z

    invoke-static {v1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setShowAlipayDesc(Landroid/content/Context;Z)V

    .line 51
    :cond_0
    :goto_1
    return-void

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090162

    if-ne v1, v2, :cond_0

    .line 47
    const v1, 0x7f090163

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 48
    .local v0, img:Landroid/widget/ImageView;
    iget-boolean v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;->isShowAgain:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;->isShowAgain:Z

    .line 49
    iget-boolean v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;->isShowAgain:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0201c6

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 48
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 49
    :cond_3
    const v1, 0x7f0201c5

    goto :goto_3

    .line 43
    .end local v0           #img:Landroid/widget/ImageView;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030063

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcom/zhangdan/app/activities/alipay/AlipayHintDialog;->initViews()V

    .line 30
    return-void
.end method
