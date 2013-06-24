.class public Lcom/zhangdan/preferential/widget/TelSectionView;
.super Lcom/zhangdan/preferential/widget/TextSectionView;
.source "TelSectionView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/TextSectionView;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private buildIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "tel"

    .prologue
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 50
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    return-object v0
.end method


# virtual methods
.method public bindData(Lcom/zhangdan/preferential/data/model/ShopExtra;ILcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V
    .locals 4
    .parameter "extra"
    .parameter "typePos"
    .parameter "factory"
    .parameter "manager"

    .prologue
    .line 35
    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->tels:[Ljava/lang/String;

    aget-object v0, v1, p2

    .line 36
    .local v0, tel:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TelSectionView;->getTextContent()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->tels:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    if-nez p2, :cond_0

    .line 39
    const v1, 0x7f0201e0

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/TelSectionView;->setIcon(I)V

    .line 44
    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TelSectionView;->getTextContainer()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/widget/TelSectionView;->buildIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;-><init>(Lcom/zhangdan/preferential/widget/DetailSectionView;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void

    .line 41
    :cond_0
    const v1, 0x7f0203a3

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/TelSectionView;->setIcon(I)V

    goto :goto_0
.end method
