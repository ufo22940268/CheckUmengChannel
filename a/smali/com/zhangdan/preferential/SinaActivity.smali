.class public Lcom/zhangdan/preferential/SinaActivity;
.super Lcom/zhangdan/preferential/WebActivity;
.source "SinaActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zhangdan/preferential/WebActivity;-><init>()V

    return-void
.end method

.method private composeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://m.weibo.cn/pages/100101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?luicode=20000002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getFrameTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f0701e7

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SinaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SinaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sina_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, id:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/SinaActivity;->composeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
