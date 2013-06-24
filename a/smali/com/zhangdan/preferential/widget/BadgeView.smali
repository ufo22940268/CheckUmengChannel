.class public Lcom/zhangdan/preferential/widget/BadgeView;
.super Landroid/widget/LinearLayout;
.source "BadgeView.java"


# static fields
.field public static final VIEW_INDEX_BADGE_CARD:I = 0x0

.field public static final VIEW_INDEX_BADGE_GROUPON:I = 0x2

.field public static final VIEW_INDEX_BADGE_IS_MINE:I = 0x4

.field public static final VIEW_INDEX_BADGE_IS_TODAY:I = 0x5

.field public static final VIEW_INDEX_BADGE_PROM:I = 0x1

.field public static final VIEW_INDEX_BADGE_TICKET:I = 0x3


# instance fields
.field private mBadgeViews:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->mBadgeViews:[Landroid/view/View;

    .line 23
    return-void
.end method

.method private hideAllBadges()V
    .locals 5

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->mBadgeViews:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 70
    .local v3, view:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v3           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setTailVisiblity(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "bool"

    .prologue
    .line 61
    if-eqz p2, :cond_0

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setVisiblityByBool(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "bool"

    .prologue
    .line 53
    if-eqz p2, :cond_0

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :goto_0
    return-void

    .line 56
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
    .line 49
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/widget/BadgeView;->setVisiblityByBool(Landroid/view/View;Z)V

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public configureShop(Lcom/zhangdan/preferential/data/model/Shop;)V
    .locals 2
    .parameter "shop"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zhangdan/preferential/widget/BadgeView;->hideAllBadges()V

    .line 39
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p1, Lcom/zhangdan/preferential/data/model/Shop;->cardCount:I

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/widget/BadgeView;->setVisiblityByCount(Landroid/view/View;I)V

    .line 40
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget v1, p1, Lcom/zhangdan/preferential/data/model/Shop;->grouponCount:I

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/widget/BadgeView;->setVisiblityByCount(Landroid/view/View;I)V

    .line 41
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v1, p1, Lcom/zhangdan/preferential/data/model/Shop;->promotionCount:I

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/widget/BadgeView;->setVisiblityByCount(Landroid/view/View;I)V

    .line 42
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget v1, p1, Lcom/zhangdan/preferential/data/model/Shop;->ticketCount:I

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/widget/BadgeView;->setVisiblityByCount(Landroid/view/View;I)V

    .line 44
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/Shop;->isMime()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/widget/BadgeView;->setTailVisiblity(Landroid/view/View;Z)V

    .line 45
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/Shop;->isToday()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/widget/BadgeView;->setTailVisiblity(Landroid/view/View;Z)V

    .line 46
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 28
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f090148

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/BadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 29
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x1

    const v2, 0x7f09014a

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/BadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 30
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x2

    const v2, 0x7f09014c

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/BadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 31
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x3

    const v2, 0x7f09014d

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/BadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 32
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x5

    const v2, 0x7f09014b

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/BadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 33
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->mBadgeViews:[Landroid/view/View;

    const/4 v1, 0x4

    const v2, 0x7f090149

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/BadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 34
    return-void
.end method
