.class public Lcom/zhangdan/preferential/widget/DianpingSectionView;
.super Lcom/zhangdan/preferential/widget/TextSectionView;
.source "DianpingSectionView.java"


# instance fields
.field private mTextContainer:Landroid/view/ViewGroup;

.field private mTextContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/TextSectionView;-><init>(Landroid/content/Context;)V

    .line 33
    const v0, 0x7f0201da

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/DianpingSectionView;->setIcon(I)V

    .line 34
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/DianpingSectionView;->addBackground()V

    .line 35
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/DianpingSectionView;->hideDivider()V

    .line 36
    return-void
.end method


# virtual methods
.method public bindData(Lcom/zhangdan/preferential/data/model/ShopExtra;ILcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V
    .locals 4
    .parameter "extra"
    .parameter "typePos"
    .parameter "factory"
    .parameter "manager"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/DianpingSectionView;->getTextContent()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/DianpingSectionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_VIEW_DIANPING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "dianping_id"

    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->dianpingId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/DianpingSectionView;->getTextContainer()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;

    invoke-direct {v2, p0, v0}, Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;-><init>(Lcom/zhangdan/preferential/widget/DetailSectionView;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method
