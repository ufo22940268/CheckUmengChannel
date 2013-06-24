.class public Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShopListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/ShopListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShopAdapter"
.end annotation


# instance fields
.field itemGen:Lcom/zhangdan/preferential/utils/ShopListItemGenerator;

.field shops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zhangdan/preferential/ShopListFragment;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 493
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->shops:Ljava/util/List;

    .line 494
    new-instance v0, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;

    invoke-direct {v0, p2}, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->itemGen:Lcom/zhangdan/preferential/utils/ShopListItemGenerator;

    .line 495
    return-void
.end method

.method private renderDirection(Landroid/view/View;Lcom/zhangdan/preferential/data/model/Position;)V
    .locals 9
    .parameter "view"
    .parameter "shopPos"

    .prologue
    .line 555
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;
    invoke-static {v3}, Lcom/zhangdan/preferential/ShopListFragment;->access$1700(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/PositionProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v2

    .line 556
    .local v2, myPos:Lcom/zhangdan/preferential/data/model/Position;
    if-nez v2, :cond_1

    .line 557
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    invoke-static {}, Lcom/zhangdan/preferential/utils/CommonMethod;->getApiLevel()I

    move-result v3

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 565
    iget-wide v3, p2, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    iget-wide v5, v2, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    sub-double/2addr v3, v5

    iget-wide v5, p2, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    iget-wide v7, v2, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    sub-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 566
    .local v0, degree:D
    double-to-float v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->setRotation(F)V

    .line 567
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

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
    .line 503
    .local p1, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->itemGen:Lcom/zhangdan/preferential/utils/ShopListItemGenerator;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->updateHideImage()V

    .line 504
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->shops:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 505
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->shops:Ljava/util/List;

    if-nez v0, :cond_0

    .line 509
    const/4 v0, 0x0

    .line 511
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->shops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 516
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 520
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->shops:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/Shop;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/Shop;->isTemp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mHideImage:Z
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$300(Lcom/zhangdan/preferential/ShopListFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    :cond_0
    const/4 v0, 0x1

    .line 528
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 538
    move-object v3, p2

    check-cast v3, Lcom/zhangdan/preferential/widget/ShopListItemView;

    .line 539
    .local v3, view:Lcom/zhangdan/preferential/widget/ShopListItemView;
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->getItemViewType(I)I

    move-result v4

    .line 540
    .local v4, viewType:I
    iget-object v5, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->shops:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/preferential/data/model/Shop;

    .line 541
    .local v2, shop:Lcom/zhangdan/preferential/data/model/Shop;
    invoke-virtual {v2}, Lcom/zhangdan/preferential/data/model/Shop;->isTemp()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mHideImage:Z
    invoke-static {v5}, Lcom/zhangdan/preferential/ShopListFragment;->access$300(Lcom/zhangdan/preferential/ShopListFragment;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 542
    .local v0, hideImage:Z
    :goto_0
    if-nez v3, :cond_1

    .line 543
    iget-object v5, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->itemGen:Lcom/zhangdan/preferential/utils/ShopListItemGenerator;

    invoke-virtual {v5, p3, v4, v0}, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->newView(Landroid/view/ViewGroup;IZ)Lcom/zhangdan/preferential/widget/ShopListItemView;

    move-result-object v3

    .line 544
    iget-object v5, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->itemGen:Lcom/zhangdan/preferential/utils/ShopListItemGenerator;

    invoke-virtual {v5, v3}, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->buildHolder(Landroid/view/View;)Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zhangdan/preferential/widget/ShopListItemView;->setTag(Ljava/lang/Object;)V

    .line 547
    :cond_1
    invoke-virtual {v3}, Lcom/zhangdan/preferential/widget/ShopListItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;

    .line 548
    .local v1, holder:Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;
    iget-object v5, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->itemGen:Lcom/zhangdan/preferential/utils/ShopListItemGenerator;

    invoke-virtual {v5, v3, v2, v0}, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->bindView(Lcom/zhangdan/preferential/widget/ShopListItemView;Lcom/zhangdan/preferential/data/model/Shop;Z)V

    .line 549
    iget-object v5, v2, Lcom/zhangdan/preferential/data/model/Shop;->tags:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/zhangdan/preferential/widget/ShopListItemView;->configureTags([Ljava/lang/String;)V

    .line 550
    iget-object v5, v1, Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;->direction:Landroid/widget/ImageView;

    iget-object v6, v2, Lcom/zhangdan/preferential/data/model/Shop;->pos:Lcom/zhangdan/preferential/data/model/Position;

    invoke-direct {p0, v5, v6}, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->renderDirection(Landroid/view/View;Lcom/zhangdan/preferential/data/model/Position;)V

    .line 551
    return-object v3

    .line 541
    .end local v0           #hideImage:Z
    .end local v1           #holder:Lcom/zhangdan/preferential/utils/ShopListItemGenerator$ViewHolder;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x2

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "view"
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 572
    iget-object v2, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #calls: Lcom/zhangdan/preferential/ShopListFragment;->removeHeaderCount(I)I
    invoke-static {v2, p3}, Lcom/zhangdan/preferential/ShopListFragment;->access$1800(Lcom/zhangdan/preferential/ShopListFragment;I)I

    move-result p3

    .line 573
    iget-object v2, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->shops:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/Shop;

    .line 574
    .local v1, shop:Lcom/zhangdan/preferential/data/model/Shop;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.zhangdan.preferential.MIX_VIEW_SHOP_DETAIL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "shop_id"

    iget-object v3, v1, Lcom/zhangdan/preferential/data/model/Shop;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string v2, "photo_url"

    iget-object v3, v1, Lcom/zhangdan/preferential/data/model/Shop;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    iget-object v2, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-virtual {v2, v0}, Lcom/zhangdan/preferential/ShopListFragment;->startActivity(Landroid/content/Intent;)V

    .line 578
    iget-object v2, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/preferential/utils/ViewUtils;->setEnterTransition(Landroid/app/Activity;)V

    .line 579
    return-void
.end method

.method public setShops(Ljava/util/List;)V
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
    .line 498
    .local p1, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->itemGen:Lcom/zhangdan/preferential/utils/ShopListItemGenerator;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/utils/ShopListItemGenerator;->updateHideImage()V

    .line 499
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->shops:Ljava/util/List;

    .line 500
    return-void
.end method
