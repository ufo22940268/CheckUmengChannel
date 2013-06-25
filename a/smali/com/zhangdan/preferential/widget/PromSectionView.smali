.class public Lcom/zhangdan/preferential/widget/PromSectionView;
.super Lcom/zhangdan/preferential/widget/DetailSectionView;
.source "PromSectionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/widget/PromSectionView$OnPromClickListener;
    }
.end annotation


# instance fields
.field private mDesView:Landroid/widget/TextView;

.field private mDialogHeight:I

.field private mDialogWidth:I

.field private mPhotoView:Landroid/widget/ImageView;

.field private mRangeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/DetailSectionView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/PromSectionView;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 38
    .local v0, contentView:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300ed

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    const v2, 0x7f09015b

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/PromSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->mPhotoView:Landroid/widget/ImageView;

    .line 40
    const v2, 0x7f090155

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/PromSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->mDesView:Landroid/widget/TextView;

    .line 41
    const v2, 0x7f090274

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/PromSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->mRangeView:Landroid/widget/TextView;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 43
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->mDialogWidth:I

    .line 44
    const v2, 0x7f0a004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->mDialogHeight:I

    .line 45
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/PromSectionView;->hideDivider()V

    .line 46
    return-void
.end method


# virtual methods
.method public bindData(Lcom/zhangdan/preferential/data/model/ShopExtra;ILcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V
    .locals 7
    .parameter "extra"
    .parameter "typePos"
    .parameter "factory"
    .parameter "manager"

    .prologue
    .line 50
    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->promList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/Promotion;

    .line 51
    .local v0, prom:Lcom/zhangdan/preferential/data/model/Promotion;
    if-nez p2, :cond_0

    .line 52
    const v1, 0x7f0201dc

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/PromSectionView;->setIcon(I)V

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->mPhotoView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/zhangdan/preferential/data/model/Promotion;->imageUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/zhangdan/preferential/widget/PromSectionView;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;Lcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V

    .line 58
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->mDesView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/PromSectionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701d5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/zhangdan/preferential/data/model/Promotion;->bankSimpleName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/zhangdan/preferential/data/model/Promotion;->title:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->mRangeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/Promotion;->getTimeRange()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/PromSectionView;->getContentView()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/preferential/widget/PromSectionView$OnPromClickListener;

    invoke-direct {v2, p0, v0, p3, p4}, Lcom/zhangdan/preferential/widget/PromSectionView$OnPromClickListener;-><init>(Lcom/zhangdan/preferential/widget/PromSectionView;Lcom/zhangdan/preferential/data/model/Promotion;Lcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void

    .line 54
    :cond_0
    const v1, 0x7f0203a4

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/PromSectionView;->setIcon(I)V

    goto :goto_0
.end method
