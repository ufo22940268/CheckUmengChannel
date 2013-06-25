.class public Lcom/zhangdan/preferential/GrouponActivity;
.super Lcom/zhangdan/preferential/WebActivity;
.source "GrouponActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zhangdan/preferential/WebActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFrameTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f0701e1

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/GrouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/zhangdan/preferential/GrouponActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "groupon_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
