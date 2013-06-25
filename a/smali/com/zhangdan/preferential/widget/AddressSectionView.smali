.class public Lcom/zhangdan/preferential/widget/AddressSectionView;
.super Lcom/zhangdan/preferential/widget/TextSectionView;
.source "AddressSectionView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/TextSectionView;-><init>(Landroid/content/Context;)V

    .line 19
    const v0, 0x7f0201de

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/AddressSectionView;->setIcon(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public bindData(Lcom/zhangdan/preferential/data/model/ShopExtra;ILcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V
    .locals 5
    .parameter "extra"
    .parameter "typePos"
    .parameter "factory"
    .parameter "manager"

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/AddressSectionView;->getTextContainer()Landroid/view/ViewGroup;

    move-result-object v2

    .line 25
    .local v2, parent:Landroid/view/ViewGroup;
    iget-object v3, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->address:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/AddressSectionView;->getTextContent()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.zhangdan.preferential.MIX_VIEW_DETAIL_MAP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "title"

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/ShopExtra;->getMainName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v3, "type_id"

    iget v4, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->category:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    const-string v3, "position"

    iget-object v4, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->pos:Lcom/zhangdan/preferential/data/model/Position;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 33
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/AddressSectionView;->getTextContainer()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;

    invoke-direct {v4, p0, v1}, Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;-><init>(Lcom/zhangdan/preferential/widget/DetailSectionView;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
