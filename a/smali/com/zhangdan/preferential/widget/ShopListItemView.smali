.class public Lcom/zhangdan/preferential/widget/ShopListItemView;
.super Landroid/widget/FrameLayout;
.source "ShopListItemView.java"


# static fields
.field public static final VIEW_INDEX_BADGE_CARD:I = 0x0

.field public static final VIEW_INDEX_BADGE_GROUPON:I = 0x2

.field public static final VIEW_INDEX_BADGE_IS_MINE:I = 0x4

.field public static final VIEW_INDEX_BADGE_IS_TODAY:I = 0x5

.field public static final VIEW_INDEX_BADGE_PROM:I = 0x1

.field public static final VIEW_INDEX_BADGE_TICKET:I = 0x3


# instance fields
.field private mBadgeStub:Landroid/view/ViewGroup;

.field private mBadgeViews:[Landroid/view/View;

.field private mFirstLineView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mSecondLineView:Landroid/view/View;

.field private mStarView:Lcom/zhangdan/preferential/widget/CustomStarView;

.field private mTagViews:[Landroid/widget/TextView;

.field private mTempBadgeStub:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isTemp"

    .prologue
    const/4 v3, 0x1

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeViews:[Landroid/view/View;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mTagViews:[Landroid/widget/TextView;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300cc

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    const v0, 0x7f09015b

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f0902bb

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mSecondLineView:Landroid/view/View;

    .line 50
    const v0, 0x7f0902c7

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeStub:Landroid/view/ViewGroup;

    .line 51
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mTempBadgeStub:Landroid/view/ViewGroup;

    .line 52
    const v0, 0x7f0901c4

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mFirstLineView:Landroid/view/View;

    .line 53
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mTagViews:[Landroid/widget/TextView;

    const/4 v2, 0x0

    const v0, 0x7f0902f4

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 54
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mTagViews:[Landroid/widget/TextView;

    const v0, 0x7f0902f3

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 55
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mTagViews:[Landroid/widget/TextView;

    const/4 v2, 0x2

    const v0, 0x7f0902f2

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 57
    invoke-direct {p0, p2}, Lcom/zhangdan/preferential/widget/ShopListItemView;->configureView(Z)V

    .line 58
    return-void
.end method

.method private configureView(Z)V
    .locals 4
    .parameter "isTemp"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mSecondLineView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeStub:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mTempBadgeStub:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mFirstLineView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 77
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mFirstLineView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    :goto_0
    return-void

    .line 80
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mSecondLineView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeStub:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mTempBadgeStub:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mFirstLineView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 86
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mFirstLineView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private hideAllBadges()V
    .locals 5

    .prologue
    .line 140
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeViews:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 141
    .local v3, view:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v3           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private hideAllTags()V
    .locals 5

    .prologue
    .line 93
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mTagViews:[Landroid/widget/TextView;

    .local v0, arr$:[Landroid/widget/TextView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 94
    .local v3, view:Landroid/widget/TextView;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v3           #view:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private setVisiblityByBool(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "bool"

    .prologue
    .line 132
    if-eqz p2, :cond_0

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setVisiblityByCount(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "count"

    .prologue
    .line 128
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->setVisiblityByBool(Landroid/view/View;Z)V

    .line 129
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateBadgeViews(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "badge"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f090148

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 62
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x1

    const v2, 0x7f09014a

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 63
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x2

    const v2, 0x7f09014c

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x3

    const v2, 0x7f09014d

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 65
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x5

    const v2, 0x7f09014b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 66
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x4

    const v2, 0x7f090149

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 67
    return-void
.end method


# virtual methods
.method public configureBadges(Lcom/zhangdan/preferential/data/model/Shop;Z)V
    .locals 2
    .parameter "shop"
    .parameter "hideImage"

    .prologue
    .line 111
    if-eqz p2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mTempBadgeStub:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->updateBadgeViews(Landroid/view/ViewGroup;)V

    .line 116
    :goto_0
    invoke-direct {p0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->hideAllBadges()V

    .line 118
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p1, Lcom/zhangdan/preferential/data/model/Shop;->cardCount:I

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->setVisiblityByCount(Landroid/view/View;I)V

    .line 119
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget v1, p1, Lcom/zhangdan/preferential/data/model/Shop;->grouponCount:I

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->setVisiblityByCount(Landroid/view/View;I)V

    .line 120
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v1, p1, Lcom/zhangdan/preferential/data/model/Shop;->promotionCount:I

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->setVisiblityByCount(Landroid/view/View;I)V

    .line 121
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget v1, p1, Lcom/zhangdan/preferential/data/model/Shop;->ticketCount:I

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->setVisiblityByCount(Landroid/view/View;I)V

    .line 123
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/Shop;->isMime()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->setVisiblityByBool(Landroid/view/View;Z)V

    .line 124
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/Shop;->isToday()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->setVisiblityByBool(Landroid/view/View;Z)V

    .line 125
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mBadgeStub:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->updateBadgeViews(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public configureTags([Ljava/lang/String;)V
    .locals 3
    .parameter "tags"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->hideAllTags()V

    .line 100
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 108
    :cond_0
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mTagViews:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->mTagViews:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
