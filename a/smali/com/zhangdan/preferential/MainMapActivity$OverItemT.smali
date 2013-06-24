.class Lcom/zhangdan/preferential/MainMapActivity$OverItemT;
.super Lcom/baidu/mapapi/ItemizedOverlay;
.source "MainMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/MainMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OverItemT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/mapapi/ItemizedOverlay",
        "<",
        "Lcom/baidu/mapapi/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mGeoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field public mShopList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;"
        }
    .end annotation
.end field

.field private marker:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/zhangdan/preferential/MainMapActivity;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/MainMapActivity;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "marker"
    .parameter "context"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    .line 400
    invoke-static {p2}, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->mGeoList:Ljava/util/List;

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->mShopList:Ljava/util/List;

    .line 402
    iput-object p2, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->marker:Landroid/graphics/drawable/Drawable;

    .line 403
    iput-object p3, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->mContext:Landroid/content/Context;

    .line 405
    invoke-virtual {p0}, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->populate()V

    .line 406
    return-void
.end method

.method static synthetic access$700(Lcom/zhangdan/preferential/MainMapActivity$OverItemT;Lcom/baidu/mapapi/OverlayItem;Lcom/zhangdan/preferential/data/model/Shop;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 392
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->addGeoItem(Lcom/baidu/mapapi/OverlayItem;Lcom/zhangdan/preferential/data/model/Shop;)V

    return-void
.end method

.method private addGeoItem(Lcom/baidu/mapapi/OverlayItem;Lcom/zhangdan/preferential/data/model/Shop;)V
    .locals 1
    .parameter "item"
    .parameter "shop"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->mShopList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    return-void
.end method

.method private loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    iget-object v0, v0, Lcom/zhangdan/preferential/MainMapActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 495
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    iget-object v0, v0, Lcom/zhangdan/preferential/MainMapActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 496
    return-void
.end method

.method private setupPopup(Lcom/zhangdan/preferential/data/model/Shop;)V
    .locals 4
    .parameter "shop"

    .prologue
    .line 484
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mPopView:Landroid/view/View;
    invoke-static {v2}, Lcom/zhangdan/preferential/MainMapActivity;->access$1000(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0902c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 485
    .local v0, nameView:Landroid/widget/TextView;
    invoke-static {v0, p1}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupShopNameSmall(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/Shop;)V

    .line 487
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mPopView:Landroid/view/View;
    invoke-static {v2}, Lcom/zhangdan/preferential/MainMapActivity;->access$1000(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0902c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/preferential/widget/BadgeView;

    invoke-virtual {v2, p1}, Lcom/zhangdan/preferential/widget/BadgeView;->configureShop(Lcom/zhangdan/preferential/data/model/Shop;)V

    .line 489
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mPopView:Landroid/view/View;
    invoke-static {v2}, Lcom/zhangdan/preferential/MainMapActivity;->access$1000(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09015b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 490
    .local v1, photoView:Landroid/widget/ImageView;
    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/Shop;->imageUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 491
    return-void
.end method


# virtual methods
.method public clearItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 453
    :goto_0
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 455
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->mShopList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 457
    :cond_0
    return-void
.end method

.method protected createItem(I)Lcom/baidu/mapapi/OverlayItem;
    .locals 1
    .parameter "i"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/OverlayItem;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Z)V
    .locals 9
    .parameter "canvas"
    .parameter "mapView"
    .parameter "shadow"

    .prologue
    .line 417
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v4

    .line 418
    .local v4, projection:Lcom/baidu/mapapi/Projection;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 419
    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->getItem(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v1

    .line 420
    .local v1, overLayItem:Lcom/baidu/mapapi/OverlayItem;
    iget-object v7, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->mShopList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhangdan/preferential/data/model/Shop;

    .line 422
    .local v5, shop:Lcom/zhangdan/preferential/data/model/Shop;
    invoke-virtual {v1}, Lcom/baidu/mapapi/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 424
    .local v6, title:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/baidu/mapapi/OverlayItem;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    .line 427
    .local v3, point:Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 428
    .local v2, paintText:Landroid/graphics/Paint;
    const/high16 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    const/high16 v7, 0x4170

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    .end local v1           #overLayItem:Lcom/baidu/mapapi/OverlayItem;
    .end local v2           #paintText:Landroid/graphics/Paint;
    .end local v3           #point:Landroid/graphics/Point;
    .end local v5           #shop:Lcom/zhangdan/preferential/data/model/Shop;
    .end local v6           #title:Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mapapi/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Z)V

    .line 434
    iget-object v7, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->marker:Landroid/graphics/drawable/Drawable;

    invoke-static {v7}, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 435
    return-void
.end method

.method protected onTap(I)Z
    .locals 7
    .parameter "i"

    .prologue
    const/4 v6, -0x2

    .line 461
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/OverlayItem;

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->setFocus(Lcom/baidu/mapapi/OverlayItem;)V

    .line 463
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/OverlayItem;

    invoke-virtual {v2}, Lcom/baidu/mapapi/OverlayItem;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    .line 465
    .local v0, pt:Lcom/baidu/mapapi/GeoPoint;
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->mShopList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/Shop;

    .line 466
    .local v1, shop:Lcom/zhangdan/preferential/data/model/Shop;
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mPopView:Landroid/view/View;
    invoke-static {v2}, Lcom/zhangdan/preferential/MainMapActivity;->access$1000(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0902c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkkk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #calls: Lcom/zhangdan/preferential/MainMapActivity;->hidePopup()V
    invoke-static {v2}, Lcom/zhangdan/preferential/MainMapActivity;->access$600(Lcom/zhangdan/preferential/MainMapActivity;)V

    .line 470
    invoke-direct {p0, v1}, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->setupPopup(Lcom/zhangdan/preferential/data/model/Shop;)V

    .line 472
    sget-object v2, Lcom/zhangdan/preferential/MainMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    iget-object v3, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mPopView:Landroid/view/View;
    invoke-static {v3}, Lcom/zhangdan/preferential/MainMapActivity;->access$1000(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/baidu/mapapi/MapView$LayoutParams;

    const/16 v5, 0x51

    invoke-direct {v4, v6, v6, v0, v5}, Lcom/baidu/mapapi/MapView$LayoutParams;-><init>(IILcom/baidu/mapapi/GeoPoint;I)V

    invoke-virtual {v2, v3, v4}, Lcom/baidu/mapapi/MapView;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mPopView:Landroid/view/View;
    invoke-static {v2}, Lcom/zhangdan/preferential/MainMapActivity;->access$1000(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mPopView:Landroid/view/View;
    invoke-static {v2}, Lcom/zhangdan/preferential/MainMapActivity;->access$1000(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 478
    sget-object v2, Lcom/zhangdan/preferential/MainMapActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/MapController;->animateTo(Lcom/baidu/mapapi/GeoPoint;)V

    .line 480
    const/4 v2, 0x1

    return v2
.end method

.method public onTap(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/MapView;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mPopView:Landroid/view/View;
    invoke-static {v0}, Lcom/zhangdan/preferential/MainMapActivity;->access$1000(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 503
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/ItemizedOverlay;->onTap(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/MapView;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public updateOverlay()V
    .locals 0

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->populate()V

    .line 411
    return-void
.end method
