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

.field private final TYPE_DESCRIPTION:I

.field private final TYPE_HEAD:I

.field private final TYPE_LABEL:I

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
    const/4 v1, 0x3

    .line 382
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->TYPE_HEAD:I

    .line 385
    const/4 v0, 0x1

    iput v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->TYPE_DESCRIPTION:I

    .line 386
    const/4 v0, 0x2

    iput v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->TYPE_LABEL:I

    .line 387
    iput v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->TYPE_SHOP:I

    .line 389
    iput v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->FIXED_COUNT:I

    .line 390
    const/4 v0, 0x4

    iput v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->FIXED_TYPE_COUNT:I

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->shops:Ljava/util/List;

    .line 525
    return-void
.end method

.method static synthetic access$1300(Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->setShops(Ljava/util/List;)V

    return-void
.end method

.method private bindView(Landroid/view/View;Lcom/zhangdan/preferential/data/model/Shop;)V
    .locals 11
    .parameter "view"
    .parameter "shop"

    .prologue
    .line 483
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;

    .line 484
    .local v1, holder:Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;
    iget-object v8, v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-static {v8, p2}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupShopNameOrange(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/Shop;)V

    .line 485
    iget-object v8, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    iget-object v9, v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    iget-object v10, p2, Lcom/zhangdan/preferential/data/model/Shop;->imageUrl:Ljava/lang/String;

    #calls: Lcom/zhangdan/preferential/RecommendDetailActivity;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    invoke-static {v8, v9, v10}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1000(Lcom/zhangdan/preferential/RecommendDetailActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 486
    iget-object v8, v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->address:Landroid/widget/TextView;

    iget-object v9, p2, Lcom/zhangdan/preferential/data/model/Shop;->address:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v8, v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->distance:Landroid/widget/TextView;

    iget-object v9, p2, Lcom/zhangdan/preferential/data/model/Shop;->distance:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v8, v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->discountWeeks:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 490
    iget-object v8, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 491
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p2}, Lcom/zhangdan/preferential/data/model/Shop;->getDiscountWeeks()[Ljava/lang/String;

    move-result-object v7

    .line 492
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

    .line 493
    .local v6, week:Ljava/lang/String;
    const v8, 0x7f030110

    iget-object v9, v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->discountWeeks:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 495
    .local v5, tv:Landroid/widget/TextView;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v8, v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->discountWeeks:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 499
    .end local v5           #tv:Landroid/widget/TextView;
    .end local v6           #week:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mHideImage:Z
    invoke-static {v8}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1700(Lcom/zhangdan/preferential/RecommendDetailActivity;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 500
    iget-object v8, v1, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    :cond_1
    return-void
.end method

.method private buildViewHolder(Landroid/view/ViewGroup;)Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 505
    new-instance v0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;Lcom/zhangdan/preferential/RecommendDetailActivity$1;)V

    .line 506
    .local v0, holder:Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;
    const v1, 0x7f09015b

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 507
    const v1, 0x7f090151

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 508
    const v1, 0x7f090277

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->address:Landroid/widget/TextView;

    .line 509
    const v1, 0x7f090278

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->distance:Landroid/widget/TextView;

    .line 510
    const v1, 0x7f0902bf

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;->discountWeeks:Landroid/view/ViewGroup;

    .line 511
    return-object v0
.end method

.method private getShop(I)Lcom/zhangdan/preferential/data/model/Shop;
    .locals 2
    .parameter "pos"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->shops:Ljava/util/List;

    add-int/lit8 v1, p1, -0x3

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
    .line 405
    .local p1, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    if-nez p1, :cond_0

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->shops:Ljava/util/List;

    .line 410
    :goto_0
    return-void

    .line 408
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
    .line 413
    .local p1, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->shops:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 414
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->shops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$400(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 397
    const/4 v0, 0x2

    .line 400
    :goto_0
    return v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$400(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 400
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->shops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 417
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 421
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 431
    if-nez p1, :cond_1

    .line 432
    const/4 v0, 0x0

    .line 440
    :cond_0
    :goto_0
    return v0

    .line 433
    :cond_1
    if-eq p1, v0, :cond_0

    .line 435
    if-ne p1, v1, :cond_2

    move v0, v1

    .line 436
    goto :goto_0

    .line 437
    :cond_2
    if-le p1, v1, :cond_3

    .line 438
    const/4 v0, 0x3

    goto :goto_0

    .line 440
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 445
    move-object v2, p2

    .line 446
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->getItemViewType(I)I

    move-result v1

    .line 447
    .local v1, type:I
    iget-object v3, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 448
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-nez v2, :cond_0

    .line 449
    packed-switch v1, :pswitch_data_0

    .line 470
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;
    invoke-static {v3}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1200(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/data/model/Promotion;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 471
    check-cast v3, Lcom/zhangdan/preferential/widget/PromFillable;

    iget-object v4, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;
    invoke-static {v4}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1200(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/data/model/Promotion;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/zhangdan/preferential/widget/PromFillable;->setupProm(Lcom/zhangdan/preferential/data/model/Promotion;)V

    .line 475
    :cond_1
    :goto_1
    return-object v2

    .line 451
    :pswitch_0
    iget-object v3, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    iget-object v4, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-virtual {v4}, Lcom/zhangdan/preferential/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/zhangdan/preferential/utils/ViewUtils;->getListHeader(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    .line 453
    goto :goto_0

    .line 455
    :pswitch_1
    iget-object v3, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030070

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 457
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 460
    :pswitch_2
    const v3, 0x7f0300f2

    invoke-virtual {v0, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 462
    goto :goto_0

    .line 464
    :pswitch_3
    const v3, 0x7f0300c9

    invoke-virtual {v0, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    .line 465
    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->buildViewHolder(Landroid/view/ViewGroup;)Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter$ViewHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 472
    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 473
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->getShop(I)Lcom/zhangdan/preferential/data/model/Shop;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->bindView(Landroid/view/View;Lcom/zhangdan/preferential/data/model/Shop;)V

    goto :goto_1

    .line 449
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
    .line 426
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
    .line 516
    add-int/lit8 p3, p3, -0x1

    .line 517
    const/4 v1, 0x3

    if-ge p3, v1, :cond_0

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-direct {p0, p3}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->getShop(I)Lcom/zhangdan/preferential/data/model/Shop;

    move-result-object v0

    .line 522
    .local v0, shop:Lcom/zhangdan/preferential/data/model/Shop;
    new-instance v1, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;

    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/RecommendDetailActivity$1;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/zhangdan/preferential/data/model/Shop;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;
    invoke-static {v4}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1200(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/data/model/Promotion;

    move-result-object v4

    iget-object v4, v4, Lcom/zhangdan/preferential/data/model/Promotion;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
