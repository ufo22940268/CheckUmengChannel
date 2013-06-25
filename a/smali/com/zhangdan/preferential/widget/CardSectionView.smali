.class public Lcom/zhangdan/preferential/widget/CardSectionView;
.super Lcom/zhangdan/preferential/widget/DetailSectionView;
.source "CardSectionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/widget/CardSectionView$OnCardClickListener;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/ViewGroup;

.field private mDialogHeight:I

.field private mDialogWidth:I

.field private mDiscountView:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/DetailSectionView;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/CardSectionView;->getContentView()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->mContentView:Landroid/view/ViewGroup;

    .line 43
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030053

    iget-object v3, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    const v1, 0x7f090125

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/CardSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->mIconView:Landroid/widget/ImageView;

    .line 45
    const v1, 0x7f090151

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/CardSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->mNameView:Landroid/widget/TextView;

    .line 46
    const v1, 0x7f090152

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/CardSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->mDiscountView:Landroid/widget/TextView;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 48
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->mDialogWidth:I

    .line 49
    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->mDialogHeight:I

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/preferential/widget/CardSectionView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->mDialogWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/zhangdan/preferential/widget/CardSectionView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->mDialogHeight:I

    return v0
.end method


# virtual methods
.method public bindData(Lcom/zhangdan/preferential/data/model/ShopExtra;ILcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V
    .locals 3
    .parameter "extra"
    .parameter "typePos"
    .parameter "factory"
    .parameter "manager"

    .prologue
    .line 54
    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->cardList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->cardList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/Card;

    .line 59
    .local v0, card:Lcom/zhangdan/preferential/data/model/Card;
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/Card;->composeLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/zhangdan/preferential/widget/CardSectionView;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;Lcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V

    .line 60
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->mNameView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/zhangdan/preferential/data/model/Card;->bankName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->mDiscountView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/Card;->getDiscount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupDiscount(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 63
    if-nez p2, :cond_1

    .line 64
    const v1, 0x7f0201dd

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/CardSectionView;->setIcon(I)V

    .line 69
    :goto_1
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->mContentView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/zhangdan/preferential/widget/CardSectionView$OnCardClickListener;

    invoke-direct {v2, p0, v0}, Lcom/zhangdan/preferential/widget/CardSectionView$OnCardClickListener;-><init>(Lcom/zhangdan/preferential/widget/CardSectionView;Lcom/zhangdan/preferential/data/model/Card;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 66
    :cond_1
    const v1, 0x7f0203a4

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/CardSectionView;->setIcon(I)V

    goto :goto_1
.end method
