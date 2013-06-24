.class public Lcom/zhangdan/preferential/utils/ShopListItemGenerator;
.super Ljava/lang/Object;
.source "ShopListItemGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;
    }
.end annotation


# static fields
.field public static final VIEW_TYPE_COUNT:I = 0x2

.field public static final VIEW_TYPE_NORMAL:I = 0x0

.field public static final VIEW_TYPE_TEMP:I = 0x1


# instance fields
.field protected imageManager:Lcom/novoda/imageloader/core/ImageManager;

.field protected imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field private mContext:Landroid/content/Context;

.field private mHideImage:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSettingManager:Lcom/zhangdan/preferential/utils/SettingManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    new-instance v0, Lcom/zhangdan/preferential/utils/SettingManager;

    invoke-direct {v0, p1}, Lcom/zhangdan/preferential/utils/SettingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->mSettingManager:Lcom/zhangdan/preferential/utils/SettingManager;

    .line 36
    invoke-direct {p0}, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->initImageLoader()V

    .line 37
    return-void
.end method

.method private initImageLoader()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    .line 45
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->mContext:Landroid/content/Context;

    const v1, 0x7f020318

    invoke-static {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 46
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setSaveThumbnail(Z)V

    .line 47
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setAnimation(I)V

    .line 48
    return-void
.end method

.method private loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    iget-object v1, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 53
    return-void
.end method


# virtual methods
.method public bindView(Lcom/zhangdan/preferential/widget/ShopListItemView;Lcom/zhangdan/preferential/data/model/Shop;Z)V
    .locals 4
    .parameter "view"
    .parameter "shop"
    .parameter "hideImage"

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;

    .line 77
    .local v0, holder:Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;
    iget-object v1, v0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;->shopName:Landroid/widget/TextView;

    invoke-static {v1, p2}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupShopNameOrange(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/Shop;)V

    .line 78
    iget-object v1, v0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;->shopName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v1, v0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;->address:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/zhangdan/preferential/data/model/Shop;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, v0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;->distance:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/zhangdan/preferential/data/model/Shop;->distance:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, v0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;->star:Lcom/zhangdan/preferential/widget/CustomStarView;

    invoke-virtual {p2}, Lcom/zhangdan/preferential/data/model/Shop;->getRating()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/widget/CustomStarView;->setRating(I)V

    .line 83
    invoke-virtual {p1, p2, p3}, Lcom/zhangdan/preferential/widget/ShopListItemView;->configureBadges(Lcom/zhangdan/preferential/data/model/Shop;Z)V

    .line 85
    if-nez p3, :cond_0

    .line 86
    iget-object v1, v0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;->photo:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/zhangdan/preferential/data/model/Shop;->imageUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method public buildHolder(Landroid/view/View;)Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;
    .locals 2
    .parameter "view"

    .prologue
    .line 64
    new-instance v0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;-><init>(Lcom/zhangdan/preferential/utils/ShopListItemGenerator;)V

    .line 66
    .local v0, holder:Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;
    const v1, 0x7f0902c8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;->shopName:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f090277

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;->address:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f090278

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;->distance:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f09015b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 70
    const v1, 0x7f0902bc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/widget/CustomStarView;

    iput-object v1, v0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;->star:Lcom/zhangdan/preferential/widget/CustomStarView;

    .line 71
    const v1, 0x7f0902c9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;->direction:Landroid/widget/ImageView;

    .line 72
    return-object v0
.end method

.method public newView(Landroid/view/ViewGroup;IZ)Lcom/zhangdan/preferential/widget/ShopListItemView;
    .locals 3
    .parameter "container"
    .parameter "type"
    .parameter "hideImage"

    .prologue
    .line 56
    new-instance v0, Lcom/zhangdan/preferential/widget/ShopListItemView;

    iget-object v1, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/zhangdan/preferential/widget/ShopListItemView;-><init>(Landroid/content/Context;Z)V

    .line 57
    .local v0, itemView:Lcom/zhangdan/preferential/widget/ShopListItemView;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 58
    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :cond_0
    return-object v0
.end method

.method public updateHideImage()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->mSettingManager:Lcom/zhangdan/preferential/utils/SettingManager;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/utils/SettingManager;->readHideImage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->mHideImage:Z

    .line 41
    return-void
.end method
