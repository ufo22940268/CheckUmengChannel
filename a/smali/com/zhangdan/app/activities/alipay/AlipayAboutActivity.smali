.class public Lcom/zhangdan/app/activities/alipay/AlipayAboutActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "AlipayAboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 27
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700cb

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/CommTitleMgr;->displayBlueTitle(Landroid/view/View;I)V

    .line 28
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090039

    if-ne v0, v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/alipay/AlipayAboutActivity;->finish()V

    .line 36
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/alipay/AlipayAboutActivity;->setContentView(I)V

    .line 23
    invoke-direct {p0}, Lcom/zhangdan/app/activities/alipay/AlipayAboutActivity;->initViews()V

    .line 24
    return-void
.end method
