.class public Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecommendDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/RecommendDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecommendDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final FIXED_COUNT:I

.field private final FIXED_TYPE_COUNT:I

.field private final TYPE_BRANDS:I

.field private final TYPE_DESCRIPTION:I

.field private final TYPE_HEAD:I

.field private final TYPE_SHOP:I

.field private shops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 389
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 391
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->TYPE_HEAD:I

    .line 392
    const/4 v0, 0x1

    iput v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->TYPE_DESCRIPTION:I

    .line 393
    iput v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->TYPE_BRANDS:I

    .line 394
    const/4 v0, 0x3

    iput v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->TYPE_SHOP:I

    .line 396
    iput v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->FIXED_COUNT:I

    .line 397
    const/4 v0, 0x4

    iput v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->FIXED_TYPE_COUNT:I

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->shops:Ljava/util/List;

    .line 543
    return-void
.end method

.method static synthetic access$1300(Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->setShops(Ljava/util/List;)V

    return-void
.end method

.method private bindView(Landroid/view/View;Lcom/zhangdan/preferential/data/model/Shop;)V
    .locals 11
    .parameter "view"
    .parameter "shop"

    .prologue
    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;

    .line 502
    .local v1, holder:Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;
    iget-object v8, v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-static {v8, p2}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupShopNameOrange(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/Shop;)V

    .line 503
    iget-object v8, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    iget-object v9, v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    iget-object v10, p2, Lcom/zhangdan/preferential/data/model/Shop;->imageUrl:Ljava/lang/String;

    #calls: Lcom/zhangdan/preferential/RecommendDetailActivity;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    invoke-static {v8, v9, v10}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1000(Lcom/zhangdan/preferential/RecommendDetailActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 504
    iget-object v8, v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->address:Landroid/widget/TextView;

    iget-object v9, p2, Lcom/zhangdan/preferential/data/model/Shop;->address:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v8, v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->distance:Landroid/widget/TextView;

    iget-object v9, p2, Lcom/zhangdan/preferential/data/model/Shop;->distance:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v8, v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->discountWeeks:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 508
    iget-object v8, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 509
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p2}, Lcom/zhangdan/preferential/data/model/Shop;->getDiscountWeeks()[Ljava/lang/String;

    move-result-object v7

    .line 510
    .local v7, weeks:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v6, v0, v2

    .line 511
    .local v6, week:Ljava/lang/String;
    const v8, 0x7f030112

    iget-object v9, v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->discountWeeks:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 513
    .local v5, tv:Landroid/widget/TextView;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v8, v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->discountWeeks:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 510
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 517
    .end local v5           #tv:Landroid/widget/TextView;
    .end local v6           #week:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mHideImage:Z
    invoke-static {v8}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1800(Lcom/zhangdan/preferential/RecommendDetailActivity;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 518
    iget-object v8, v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    :cond_1
    return-void
.end method

.method private buildViewHolder(Landroid/view/ViewGroup;)Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 523
    new-instance v0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;Lcom/zhangdan/preferential/RecommendDetailActivity$1;)V

    .line 524
    .local v0, holder:Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;
    const v1, 0x7f09015b

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 525
    const v1, 0x7f090151

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 526
    const v1, 0x7f090277

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->address:Landroid/widget/TextView;

    .line 527
    const v1, 0x7f090278

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->distance:Landroid/widget/TextView;

    .line 528
    const v1, 0x7f0902bf

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->discountWeeks:Landroid/view/ViewGroup;

    .line 529
    return-object v0
.end method

.method private getShop(I)Lcom/zhangdan/preferential/data/model/Shop;
    .locals 2
    .parameter "pos"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->shops:Ljava/util/List;

    add-int/lit8 v1, p1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/Shop;

    return-object v0
.end method

.method private setShops(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    if-nez p1, :cond_0

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->shops:Ljava/util/List;

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->shops:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public addShops(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->shops:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 429
    return-void
.end method

.method public getCount()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 402
    const/4 v0, 0x2

    .line 403
    .local v0, cnt:I
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/PromotionExtra;
    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1200(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/data/model/PromotionExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/PromotionExtra;
    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1200(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/data/model/PromotionExtra;

    move-result-object v1

    iget-object v1, v1, Lcom/zhangdan/preferential/data/model/PromotionExtra;->brandList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 405
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "++++++++++++++++++++brand list:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/PromotionExtra;
    invoke-static {v5}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1200(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/data/model/PromotionExtra;

    move-result-object v5

    iget-object v5, v5, Lcom/zhangdan/preferential/data/model/PromotionExtra;->brandList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "++++++++++++++++++++"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->shops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    add-int/2addr v0, v2

    .line 410
    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 411
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$400(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 415
    :goto_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++++++++++++++++++cnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "++++++++++++++++++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 416
    return v0

    :cond_1
    move v1, v3

    .line 404
    goto :goto_0

    :cond_2
    move v2, v3

    .line 408
    goto :goto_1

    .line 413
    :cond_3
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$400(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    goto :goto_2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 432
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 436
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 446
    if-nez p1, :cond_1

    .line 447
    const/4 v0, 0x0

    .line 455
    :cond_0
    :goto_0
    return v0

    .line 448
    :cond_1
    if-eq p1, v0, :cond_0

    .line 450
    if-ne p1, v1, :cond_2

    move v0, v1

    .line 451
    goto :goto_0

    .line 452
    :cond_2
    if-le p1, v1, :cond_3

    .line 453
    const/4 v0, 0x3

    goto :goto_0

    .line 455
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 460
    move-object v3, p2

    .line 461
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->getItemViewType(I)I

    move-result v2

    .line 462
    .local v2, type:I
    iget-object v4, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 463
    .local v1, inflater:Landroid/view/LayoutInflater;
    if-nez v3, :cond_0

    .line 464
    packed-switch v2, :pswitch_data_0

    .line 485
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    iget-object v4, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/PromotionExtra;
    invoke-static {v4}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1200(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/data/model/PromotionExtra;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 486
    check-cast v4, Lcom/zhangdan/preferential/widget/PromFillable;

    iget-object v5, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/PromotionExtra;
    invoke-static {v5}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1200(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/data/model/PromotionExtra;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/zhangdan/preferential/widget/PromFillable;->setupProm(Lcom/zhangdan/preferential/data/model/Promotion;)V

    .line 493
    :cond_1
    :goto_1
    return-object v3

    .line 466
    :pswitch_0
    iget-object v4, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    iget-object v5, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-virtual {v5}, Lcom/zhangdan/preferential/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a003d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Lcom/zhangdan/preferential/utils/ViewUtils;->getListHeader(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    .line 468
    goto :goto_0

    .line 470
    :pswitch_1
    iget-object v4, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030070

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 472
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 475
    :pswitch_2
    const v4, 0x7f0300f3

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 477
    goto :goto_0

    .line 479
    :pswitch_3
    const v4, 0x7f0300c9

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    .line 480
    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->buildViewHolder(Landroid/view/ViewGroup;)Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 487
    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 488
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->getShop(I)Lcom/zhangdan/preferential/data/model/Shop;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->bindView(Landroid/view/View;Lcom/zhangdan/preferential/data/model/Shop;)V

    goto :goto_1

    .line 489
    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    move-object v0, v3

    .line 490
    check-cast v0, Lcom/zhangdan/preferential/widget/BrandContainer;

    .line 491
    .local v0, container:Lcom/zhangdan/preferential/widget/BrandContainer;
    iget-object v4, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/PromotionExtra;
    invoke-static {v4}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1200(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/data/model/PromotionExtra;

    move-result-object v4

    iget-object v4, v4, Lcom/zhangdan/preferential/data/model/PromotionExtra;->brandList:Ljava/util/List;

    iget-object v5, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;
    invoke-static {v5}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1600(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;
    invoke-static {v6}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1700(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/zhangdan/preferential/widget/BrandContainer;->bindBrands(Ljava/util/List;Lcom/novoda/imageloader/core/ImageManager;Lcom/novoda/imageloader/core/model/ImageTagFactory;)V

    goto :goto_1

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x4

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "parent"
    .parameter "view"
    .parameter "pos"
    .parameter "id"

    .prologue
    const/4 v4, 0x2

    .line 534
    add-int/lit8 p3, p3, -0x1

    .line 535
    if-ge p3, v4, :cond_0

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-direct {p0, p3}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->getShop(I)Lcom/zhangdan/preferential/data/model/Shop;

    move-result-object v0

    .line 540
    .local v0, shop:Lcom/zhangdan/preferential/data/model/Shop;
    new-instance v1, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;

    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/RecommendDetailActivity$1;)V

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/zhangdan/preferential/data/model/Shop;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/PromotionExtra;
    invoke-static {v4}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1200(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/data/model/PromotionExtra;

    move-result-object v4

    iget-object v4, v4, Lcom/zhangdan/preferential/data/model/PromotionExtra;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
