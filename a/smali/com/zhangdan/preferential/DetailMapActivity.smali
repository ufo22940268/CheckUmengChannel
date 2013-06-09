.class public Lcom/zhangdan/preferential/DetailMapActivity;
.super Lcom/baidu/mapapi/MapActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/baidu/mapapi/MapView;

.field private b:Lcom/baidu/mapapi/MapController;

.field private c:Lcom/zhangdan/preferential/g;

.field private d:Lcom/baidu/mapapi/MyLocationOverlay;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mapapi/MapActivity;-><init>()V

    return-void
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f060037
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/baidu/mapapi/MapActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/DetailMapActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    const-string v2, "category"

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "position"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/Position;

    const v1, 0x7f060037

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/DetailMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/ZhangdanApplication;

    iget-object v4, v1, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    if-nez v4, :cond_0

    new-instance v4, Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/baidu/mapapi/BMapManager;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    iget-object v4, v1, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    const-string v5, "118A822A3605D14F287715C841F9490DB6CB2379"

    new-instance v6, Lcom/zhangdan/app/a;

    invoke-direct {v6}, Lcom/zhangdan/app/a;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcom/baidu/mapapi/BMapManager;->init(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z

    :cond_0
    iget-object v1, v1, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-super {p0, v1}, Lcom/baidu/mapapi/MapActivity;->initMapActivity(Lcom/baidu/mapapi/BMapManager;)Z

    const v1, 0x7f06007c

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/DetailMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/MapView;

    iput-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->a:Lcom/baidu/mapapi/MapView;

    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->b:Lcom/baidu/mapapi/MapController;

    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1, v8}, Lcom/baidu/mapapi/MapView;->setDrawOverlayWhenZooming(Z)V

    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->b:Lcom/baidu/mapapi/MapController;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/MapController;->setZoom(I)I

    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1, v8}, Lcom/baidu/mapapi/MapView;->setDrawOverlayWhenZooming(Z)V

    new-instance v1, Lcom/zhangdan/preferential/g;

    const v4, 0x7f02020d

    invoke-direct {p0, v4}, Lcom/zhangdan/preferential/DetailMapActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, p0, v4, p0}, Lcom/zhangdan/preferential/g;-><init>(Lcom/zhangdan/preferential/DetailMapActivity;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->c:Lcom/zhangdan/preferential/g;

    new-instance v1, Lcom/baidu/mapapi/MyLocationOverlay;

    iget-object v4, p0, Lcom/zhangdan/preferential/DetailMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-direct {v1, p0, v4}, Lcom/baidu/mapapi/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/baidu/mapapi/MapView;)V

    iput-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->d:Lcom/baidu/mapapi/MyLocationOverlay;

    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->d:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MyLocationOverlay;->enableMyLocation()Z

    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->d:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MyLocationOverlay;->enableCompass()Z

    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->b:Lcom/baidu/mapapi/MapController;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/g;->a(Lcom/zhangdan/preferential/data/model/Position;)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/MapController;->setCenter(Lcom/baidu/mapapi/GeoPoint;)V

    new-instance v1, Lcom/baidu/mapapi/OverlayItem;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/g;->a(Lcom/zhangdan/preferential/data/model/Position;)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    const-string v4, "item"

    const-string v5, "item"

    invoke-direct {v1, v0, v4, v5}, Lcom/baidu/mapapi/OverlayItem;-><init>(Lcom/baidu/mapapi/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/zhangdan/preferential/a/g;->a(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/DetailMapActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/DetailMapActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v7, v7, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity;->c:Lcom/zhangdan/preferential/g;

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/g;->a(Lcom/zhangdan/preferential/g;Lcom/baidu/mapapi/OverlayItem;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->c:Lcom/zhangdan/preferential/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/DetailMapActivity;->d:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity;->c:Lcom/zhangdan/preferential/g;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/g;->a()V

    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->invalidate()V

    const v0, 0x7f0602e9

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/DetailMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->stop()Z

    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onPause()V

    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity;->d:Lcom/baidu/mapapi/MyLocationOverlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity;->d:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MyLocationOverlay;->disableMyLocation()V

    :cond_1
    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->start()Z

    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onResume()V

    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity;->d:Lcom/baidu/mapapi/MyLocationOverlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity;->d:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MyLocationOverlay;->enableMyLocation()Z

    :cond_1
    return-void
.end method
