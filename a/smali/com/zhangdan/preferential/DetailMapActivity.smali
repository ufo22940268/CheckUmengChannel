.class public Lcom/zhangdan/preferential/DetailMapActivity;
.super Lcom/baidu/mapapi/MapActivity;
.source "DetailMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;
    }
.end annotation


# instance fields
.field private mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

.field private mMapController:Lcom/baidu/mapapi/MapController;

.field private mMapView:Lcom/baidu/mapapi/MapView;

.field private mOverlay:Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/baidu/mapapi/MapActivity;-><init>()V

    .line 157
    return-void
.end method

.method private addItem(Lcom/zhangdan/preferential/data/model/Position;I)V
    .locals 7
    .parameter "pos"
    .parameter "category"

    .prologue
    const/4 v6, 0x0

    .line 92
    new-instance v0, Lcom/baidu/mapapi/OverlayItem;

    invoke-static {p1}, Lcom/zhangdan/preferential/utils/MapUtils;->convertToGeoPoint(Lcom/zhangdan/preferential/data/model/Position;)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v3

    const-string v4, "item"

    const-string v5, "item"

    invoke-direct {v0, v3, v4, v5}, Lcom/baidu/mapapi/OverlayItem;-><init>(Lcom/baidu/mapapi/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v0, item:Lcom/baidu/mapapi/OverlayItem;
    invoke-static {p2}, Lcom/zhangdan/preferential/utils/MapUtils;->getPointerRes(I)I

    move-result v2

    .line 95
    .local v2, res:I
    invoke-direct {p0, v2}, Lcom/zhangdan/preferential/DetailMapActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 96
    .local v1, marker:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v2}, Lcom/zhangdan/preferential/DetailMapActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    iget-object v3, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mOverlay:Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;

    #calls: Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->addGeoItem(Lcom/baidu/mapapi/OverlayItem;)V
    invoke-static {v3, v0}, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->access$000(Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;Lcom/baidu/mapapi/OverlayItem;)V

    .line 99
    return-void
.end method

.method private displayMarks()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mOverlay:Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mOverlay:Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->updateOverlay()V

    .line 136
    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->invalidate()V

    .line 137
    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "res"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private initMap()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 63
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/mapapi/BMapManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    .line 65
    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    const-string v2, "118A822A3605D14F287715C841F9490DB6CB2379"

    new-instance v3, Lcom/zhangdan/app/ZhangdanApplication$MyGeneralListener;

    invoke-direct {v3}, Lcom/zhangdan/app/ZhangdanApplication$MyGeneralListener;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mapapi/BMapManager;->init(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z

    .line 68
    :cond_0
    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    invoke-super {p0, v1}, Lcom/baidu/mapapi/MapActivity;->initMapActivity(Lcom/baidu/mapapi/BMapManager;)Z

    .line 70
    const v1, 0x7f090080

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/DetailMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/MapView;

    iput-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    .line 71
    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    .line 72
    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/MapView;->setDrawOverlayWhenZooming(Z)V

    .line 73
    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/MapController;->setZoom(I)I

    .line 75
    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/MapView;->setDrawOverlayWhenZooming(Z)V

    .line 76
    new-instance v1, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;

    const v2, 0x7f020214

    invoke-direct {p0, v2}, Lcom/zhangdan/preferential/DetailMapActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, p0, v2, p0}, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;-><init>(Lcom/zhangdan/preferential/DetailMapActivity;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mOverlay:Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;

    .line 78
    new-instance v1, Lcom/baidu/mapapi/MyLocationOverlay;

    iget-object v2, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-direct {v1, p0, v2}, Lcom/baidu/mapapi/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/baidu/mapapi/MapView;)V

    iput-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    .line 79
    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MyLocationOverlay;->enableMyLocation()Z

    .line 80
    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MyLocationOverlay;->enableCompass()Z

    .line 81
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/DetailMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 88
    const v0, 0x7f0902f5

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/DetailMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 152
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->finish()V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x7f090037
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "instance"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/baidu/mapapi/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v6, 0x7f03005c

    invoke-virtual {p0, v6}, Lcom/zhangdan/preferential/DetailMapActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 44
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 45
    .local v2, extra:Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, action:Ljava/lang/String;
    const-string v6, "category"

    const/16 v7, 0xa

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 47
    .local v1, category:I
    const-string v6, "title"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, title:Ljava/lang/String;
    const-string v6, "position"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/preferential/data/model/Position;

    .line 52
    .local v4, pos:Lcom/zhangdan/preferential/data/model/Position;
    invoke-direct {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->initViews()V

    .line 53
    invoke-direct {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->initMap()V

    .line 55
    invoke-virtual {p0, v4}, Lcom/zhangdan/preferential/DetailMapActivity;->setCenter(Lcom/zhangdan/preferential/data/model/Position;)V

    .line 56
    invoke-direct {p0, v4, v1}, Lcom/zhangdan/preferential/DetailMapActivity;->addItem(Lcom/zhangdan/preferential/data/model/Position;I)V

    .line 57
    invoke-direct {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->displayMarks()V

    .line 58
    invoke-direct {p0, v5}, Lcom/zhangdan/preferential/DetailMapActivity;->setTitle(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 120
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v1}, Lcom/baidu/mapapi/BMapManager;->stop()Z

    .line 123
    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onPause()V

    .line 124
    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MyLocationOverlay;->disableMyLocation()V

    .line 128
    :cond_1
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setReturnTransition(Landroid/app/Activity;)V

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 108
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v1}, Lcom/baidu/mapapi/BMapManager;->start()Z

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onResume()V

    .line 112
    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MyLocationOverlay;->enableMyLocation()Z

    .line 115
    :cond_1
    return-void
.end method

.method public setCenter(Lcom/zhangdan/preferential/data/model/Position;)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    invoke-static {p1}, Lcom/zhangdan/preferential/utils/MapUtils;->convertToGeoPoint(Lcom/zhangdan/preferential/data/model/Position;)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MapController;->setCenter(Lcom/baidu/mapapi/GeoPoint;)V

    .line 103
    return-void
.end method
