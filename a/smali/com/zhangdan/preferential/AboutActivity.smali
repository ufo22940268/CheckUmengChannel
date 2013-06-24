.class public Lcom/zhangdan/preferential/AboutActivity;
.super Lcom/zhangdan/preferential/WebActivity;
.source "AboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/zhangdan/preferential/WebActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFrameTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    const v0, 0x7f0701e3

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string v0, "http://www.51zhangdan.com/appabout.html?edition=1.0&plat=android&goods=pre&adhide=hide"

    return-object v0
.end method
