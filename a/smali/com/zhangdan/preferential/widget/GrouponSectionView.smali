.class public Lcom/zhangdan/preferential/widget/GrouponSectionView;
.super Lcom/zhangdan/preferential/widget/DetailSectionView;
.source "GrouponSectionView.java"


# instance fields
.field private mDesView:Landroid/widget/TextView;

.field private mElapseView:Landroid/widget/TextView;

.field private mOldPriceView:Landroid/widget/TextView;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPriceView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/DetailSectionView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 28
    .local v0, contentView:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030083

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    const v1, 0x7f09015b

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->mPhotoView:Landroid/widget/ImageView;

    .line 30
    const v1, 0x7f090155

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->mDesView:Landroid/widget/TextView;

    .line 31
    const v1, 0x7f0901c5

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->mPriceView:Landroid/widget/TextView;

    .line 32
    const v1, 0x7f0901c7

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->mOldPriceView:Landroid/widget/TextView;

    .line 33
    const v1, 0x7f0901c8

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->mElapseView:Landroid/widget/TextView;

    .line 34
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->hideDivider()V

    .line 35
    return-void
.end method


# virtual methods
.method public bindData(Lcom/zhangdan/preferential/data/model/ShopExtra;ILcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V
    .locals 9
    .parameter "extra"
    .parameter "typePos"
    .parameter "factory"
    .parameter "manager"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 39
    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->grouponList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p2, v2, :cond_0

    .line 60
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->grouponList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/Groupon;

    .line 44
    .local v0, group:Lcom/zhangdan/preferential/data/model/Groupon;
    if-nez p2, :cond_1

    .line 45
    const v2, 0x7f0201e1

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->setIcon(I)V

    .line 50
    :goto_1
    iget-object v2, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->mDesView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/Groupon;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->mPriceView:Landroid/widget/TextView;

    iget-wide v3, v0, Lcom/zhangdan/preferential/data/model/Groupon;->price:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->mElapseView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701d4

    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, "?"

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v2, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->mOldPriceView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701d3

    new-array v5, v7, [Ljava/lang/Object;

    iget-wide v6, v0, Lcom/zhangdan/preferential/data/model/Groupon;->orgPrice:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupCrossLineText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->mPhotoView:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/Groupon;->imageUrl:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, p3, p4}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;Lcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zhangdan.preferential.MIX_VIEW_GROUPON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "groupon_url"

    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/Groupon;->sourceUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->getContentView()Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;

    invoke-direct {v3, p0, v1}, Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;-><init>(Lcom/zhangdan/preferential/widget/DetailSectionView;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 47
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const v2, 0x7f0203a3

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->setIcon(I)V

    goto :goto_1
.end method
