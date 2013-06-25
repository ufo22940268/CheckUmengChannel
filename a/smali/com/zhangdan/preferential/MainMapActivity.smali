.class public Lcom/zhangdan/preferential/MainMapActivity;
.super Lcom/baidu/mapapi/MapActivity;
.source "MainMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/MainMapActivity$OverItemT;,
        Lcom/zhangdan/preferential/MainMapActivity$SetupMenuTagTask;,
        Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MainMapActivity"

.field static mMapController:Lcom/baidu/mapapi/MapController;

.field static mMapView:Lcom/baidu/mapapi/MapView;


# instance fields
.field protected imageManager:Lcom/novoda/imageloader/core/ImageManager;

.field protected imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field private mArrowView:Landroid/view/View;

.field private mBackView:Landroid/view/View;

.field private mCurrentType:I

.field private mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mIsRunning:Z

.field private mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;

.field private mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

.field private mLocationView:Landroid/view/View;

.field private mMenuAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/zhangdan/preferential/data/model/MenuTag;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuPopupWindow:Landroid/widget/PopupWindow;

.field private mMenuView:Landroid/widget/ListView;

.field private mOverlay:Lcom/zhangdan/preferential/MainMapActivity$OverItemT;

.field private mParser:Lcom/zhangdan/preferential/utils/JsonParser;

.field private mPopView:Landroid/view/View;

.field private mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

.field private mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

.field private mTypeNameView:Landroid/widget/TextView;

.field private mTypeView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/baidu/mapapi/MapActivity;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mCurrentType:I

    .line 225
    new-instance v0, Lcom/zhangdan/preferential/MainMapActivity$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/MainMapActivity$1;-><init>(Lcom/zhangdan/preferential/MainMapActivity;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 392
    return-void
.end method

.method static synthetic access$100(Lcom/zhangdan/preferential/MainMapActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/MainMapActivity;->rotateArrow(II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mPopView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/preferential/MainMapActivity;)Lcom/zhangdan/preferential/utils/RequestGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/preferential/MainMapActivity;)Lcom/zhangdan/preferential/utils/JsonParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/preferential/MainMapActivity;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/MainMapActivity;->populateShops(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/zhangdan/preferential/MainMapActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/zhangdan/preferential/MainMapActivity;->hidePopup()V

    return-void
.end method

.method static synthetic access$800(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zhangdan/preferential/MainMapActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mIsRunning:Z

    return v0
.end method

.method private addMark(Lcom/zhangdan/preferential/data/model/Shop;)V
    .locals 7
    .parameter "shop"

    .prologue
    const/4 v6, 0x0

    .line 347
    new-instance v0, Lcom/baidu/mapapi/OverlayItem;

    iget-object v3, p1, Lcom/zhangdan/preferential/data/model/Shop;->pos:Lcom/zhangdan/preferential/data/model/Position;

    invoke-static {v3}, Lcom/zhangdan/preferential/utils/MapUtils;->convertToGeoPoint(Lcom/zhangdan/preferential/data/model/Position;)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v3

    const-string v4, "item"

    const-string v5, "item"

    invoke-direct {v0, v3, v4, v5}, Lcom/baidu/mapapi/OverlayItem;-><init>(Lcom/baidu/mapapi/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .local v0, item:Lcom/baidu/mapapi/OverlayItem;
    iget v3, p1, Lcom/zhangdan/preferential/data/model/Shop;->category:I

    invoke-static {v3}, Lcom/zhangdan/preferential/utils/MapUtils;->getPointerRes(I)I

    move-result v2

    .line 350
    .local v2, res:I
    invoke-direct {p0, v2}, Lcom/zhangdan/preferential/MainMapActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 351
    .local v1, marker:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v2}, Lcom/zhangdan/preferential/MainMapActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 352
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 353
    iget-object v3, p0, Lcom/zhangdan/preferential/MainMapActivity;->mOverlay:Lcom/zhangdan/preferential/MainMapActivity$OverItemT;

    #calls: Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->addGeoItem(Lcom/baidu/mapapi/OverlayItem;Lcom/zhangdan/preferential/data/model/Shop;)V
    invoke-static {v3, v0, p1}, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->access$700(Lcom/zhangdan/preferential/MainMapActivity$OverItemT;Lcom/baidu/mapapi/OverlayItem;Lcom/zhangdan/preferential/data/model/Shop;)V

    .line 354
    return-void
.end method

.method private displayMarks()V
    .locals 2

    .prologue
    .line 357
    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    if-nez v0, :cond_0

    .line 358
    const-string v0, "MainMapActivity"

    const-string v1, "map view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return-void

    .line 362
    :cond_0
    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 363
    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mOverlay:Lcom/zhangdan/preferential/MainMapActivity$OverItemT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mOverlay:Lcom/zhangdan/preferential/MainMapActivity$OverItemT;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->updateOverlay()V

    .line 366
    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->invalidate()V

    goto :goto_0
.end method

.method private findViews()V
    .locals 3

    .prologue
    .line 105
    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mArrowView:Landroid/view/View;

    .line 106
    const v0, 0x7f0902fb

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mTypeView:Landroid/view/View;

    .line 107
    const v0, 0x7f0902fc

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mTypeNameView:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mBackView:Landroid/view/View;

    .line 109
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300dd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuView:Landroid/widget/ListView;

    .line 110
    const v0, 0x7f0902fd

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mLocationView:Landroid/view/View;

    .line 111
    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "res"

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/zhangdan/preferential/MainMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private hidePopup()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mPopView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mPopView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_0
    return-void
.end method

.method private initImageLoader()V
    .locals 3

    .prologue
    .line 168
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    .line 169
    const/16 v0, 0x48

    invoke-static {p0, v0}, Lcom/zhangdan/preferential/utils/CommonMethod;->toPx(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x35

    invoke-static {p0, v1}, Lcom/zhangdan/preferential/utils/CommonMethod;->toPx(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f020381

    invoke-static {v0, v1, v2}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(III)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 170
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setSaveThumbnail(Z)V

    .line 171
    return-void
.end method

.method private initMap()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x2

    .line 134
    invoke-virtual {p0}, Lcom/zhangdan/preferential/MainMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 136
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/MainMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/mapapi/BMapManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    .line 138
    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    const-string v2, "118A822A3605D14F287715C841F9490DB6CB2379"

    new-instance v3, Lcom/zhangdan/app/ZhangdanApplication$MyGeneralListener;

    invoke-direct {v3}, Lcom/zhangdan/app/ZhangdanApplication$MyGeneralListener;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mapapi/BMapManager;->init(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z

    .line 141
    :cond_0
    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    invoke-super {p0, v1}, Lcom/baidu/mapapi/MapActivity;->initMapActivity(Lcom/baidu/mapapi/BMapManager;)Z

    .line 143
    const v1, 0x7f090080

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/MainMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/MapView;

    sput-object v1, Lcom/zhangdan/preferential/MainMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    .line 144
    sget-object v1, Lcom/zhangdan/preferential/MainMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v1

    sput-object v1, Lcom/zhangdan/preferential/MainMapActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    .line 145
    sget-object v1, Lcom/zhangdan/preferential/MainMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/MapView;->setDrawOverlayWhenZooming(Z)V

    .line 146
    sget-object v1, Lcom/zhangdan/preferential/MainMapActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/MapController;->setZoom(I)I

    .line 148
    sget-object v1, Lcom/zhangdan/preferential/MainMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/MapView;->setDrawOverlayWhenZooming(Z)V

    .line 149
    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/PositionProvider;->hasLoadedPosition()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    sget-object v1, Lcom/zhangdan/preferential/MainMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/utils/PositionProvider;->getGeoPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/MapController;->setCenter(Lcom/baidu/mapapi/GeoPoint;)V

    .line 152
    :cond_1
    new-instance v1, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;

    const v2, 0x7f020215

    invoke-direct {p0, v2}, Lcom/zhangdan/preferential/MainMapActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, p0, v2, p0}, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;-><init>(Lcom/zhangdan/preferential/MainMapActivity;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mOverlay:Lcom/zhangdan/preferential/MainMapActivity$OverItemT;

    .line 155
    new-instance v1, Lcom/baidu/mapapi/MyLocationOverlay;

    sget-object v2, Lcom/zhangdan/preferential/MainMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-direct {v1, p0, v2}, Lcom/baidu/mapapi/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/baidu/mapapi/MapView;)V

    iput-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    .line 156
    sget-object v1, Lcom/zhangdan/preferential/MainMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MyLocationOverlay;->enableMyLocation()Z

    .line 158
    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MyLocationOverlay;->enableCompass()Z

    .line 160
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300de

    sget-object v3, Lcom/zhangdan/preferential/MainMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mPopView:Landroid/view/View;

    .line 161
    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mPopView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    sget-object v1, Lcom/zhangdan/preferential/MainMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity;->mPopView:Landroid/view/View;

    new-instance v3, Lcom/baidu/mapapi/MapView$LayoutParams;

    const/4 v4, 0x0

    const/16 v5, 0x33

    invoke-direct {v3, v6, v6, v4, v5}, Lcom/baidu/mapapi/MapView$LayoutParams;-><init>(IILcom/baidu/mapapi/GeoPoint;I)V

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mapapi/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mPopView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 114
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mBackView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mTypeView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mLocationView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0300c0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuAdapter:Landroid/widget/ArrayAdapter;

    .line 120
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuView:Landroid/widget/ListView;

    const/16 v2, 0x66

    invoke-static {p0, v2}, Lcom/zhangdan/preferential/utils/CommonMethod;->toPx(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0xc0

    invoke-static {p0, v3}, Lcom/zhangdan/preferential/utils/CommonMethod;->toPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    .line 125
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 126
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 128
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 130
    const v0, 0x7f0902fe

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method private populateShops(Ljava/util/List;)V
    .locals 3
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
    .line 335
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    iget-boolean v2, p0, Lcom/zhangdan/preferential/MainMapActivity;->mIsRunning:Z

    if-eqz v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity;->mOverlay:Lcom/zhangdan/preferential/MainMapActivity$OverItemT;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->clearItems()V

    .line 337
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity;->mOverlay:Lcom/zhangdan/preferential/MainMapActivity$OverItemT;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/MainMapActivity$OverItemT;->updateOverlay()V

    .line 339
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/Shop;

    .line 340
    .local v1, shop:Lcom/zhangdan/preferential/data/model/Shop;
    invoke-direct {p0, v1}, Lcom/zhangdan/preferential/MainMapActivity;->addMark(Lcom/zhangdan/preferential/data/model/Shop;)V

    goto :goto_0

    .line 342
    .end local v1           #shop:Lcom/zhangdan/preferential/data/model/Shop;
    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/preferential/MainMapActivity;->displayMarks()V

    .line 344
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private rotateArrow(II)V
    .locals 5
    .parameter "from"
    .parameter "to"

    .prologue
    .line 233
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    iget-object v3, p0, Lcom/zhangdan/preferential/MainMapActivity;->mArrowView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/zhangdan/preferential/MainMapActivity;->mArrowView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 234
    .local v0, anim:Landroid/view/animation/RotateAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 235
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 236
    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mArrowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 237
    return-void
.end method

.method private updateTypeView(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    const-string p1, ""

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mTypeNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    return-void
.end method


# virtual methods
.method public dismissLoading()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/LoadingDialog;->dismiss()V

    .line 179
    return-void
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/16 v5, 0xb4

    const/4 v7, 0x0

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 191
    :sswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/MainMapActivity;->finish()V

    goto :goto_0

    .line 194
    :sswitch_1
    iget-object v4, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    invoke-direct {p0, v5, v7}, Lcom/zhangdan/preferential/MainMapActivity;->rotateArrow(II)V

    .line 196
    iget-object v4, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 198
    :cond_1
    invoke-direct {p0, v7, v5}, Lcom/zhangdan/preferential/MainMapActivity;->rotateArrow(II)V

    .line 199
    iget-object v4, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/zhangdan/preferential/MainMapActivity;->mTypeView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 203
    :sswitch_2
    iget-object v4, p0, Lcom/zhangdan/preferential/MainMapActivity;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v4}, Lcom/zhangdan/preferential/utils/PositionProvider;->hasLoadedPosition()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    sget-object v4, Lcom/zhangdan/preferential/MainMapActivity;->mMapController:Lcom/baidu/mapapi/MapController;

    iget-object v5, p0, Lcom/zhangdan/preferential/MainMapActivity;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v5}, Lcom/zhangdan/preferential/utils/PositionProvider;->getGeoPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/MapController;->animateTo(Lcom/baidu/mapapi/GeoPoint;)V

    goto :goto_0

    .line 208
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 209
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 213
    check-cast v2, Lcom/zhangdan/preferential/data/model/Shop;

    .line 214
    .local v2, shop:Lcom/zhangdan/preferential/data/model/Shop;
    iget-object v3, v2, Lcom/zhangdan/preferential/data/model/Shop;->id:Ljava/lang/String;

    .line 215
    .local v3, shopId:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.zhangdan.preferential.MIX_VIEW_SHOP_DETAIL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "shop_id"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #obj:Ljava/lang/Object;
    .end local v2           #shop:Lcom/zhangdan/preferential/data/model/Shop;
    .end local v3           #shopId:Ljava/lang/String;
    :sswitch_4
    new-instance v4, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;-><init>(Lcom/zhangdan/preferential/MainMapActivity;Lcom/zhangdan/preferential/MainMapActivity$1;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    iget v6, p0, Lcom/zhangdan/preferential/MainMapActivity;->mCurrentType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090037 -> :sswitch_0
        0x7f0902fb -> :sswitch_1
        0x7f0902fd -> :sswitch_2
        0x7f0902fe -> :sswitch_4
        0x7f0902ff -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "onSavedInstance"

    .prologue
    const/4 v3, 0x1

    .line 87
    invoke-super {p0, p1}, Lcom/baidu/mapapi/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f0300dc

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->setContentView(I)V

    .line 90
    new-instance v0, Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/PositionProvider;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    .line 91
    new-instance v0, Lcom/zhangdan/preferential/widget/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/widget/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;

    .line 93
    invoke-direct {p0}, Lcom/zhangdan/preferential/MainMapActivity;->initImageLoader()V

    .line 94
    invoke-direct {p0}, Lcom/zhangdan/preferential/MainMapActivity;->findViews()V

    .line 95
    invoke-direct {p0}, Lcom/zhangdan/preferential/MainMapActivity;->initViews()V

    .line 96
    invoke-direct {p0}, Lcom/zhangdan/preferential/MainMapActivity;->initMap()V

    .line 98
    new-instance v0, Lcom/zhangdan/preferential/utils/JsonParser;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    .line 99
    new-instance v0, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    .line 101
    new-instance v0, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;-><init>(Lcom/zhangdan/preferential/MainMapActivity;Lcom/zhangdan/preferential/MainMapActivity$1;)V

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "parent"
    .parameter "view"
    .parameter "pos"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 284
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->updateTypeView(Ljava/lang/String;)V

    .line 286
    const/16 v2, 0xb4

    invoke-direct {p0, v2, v5}, Lcom/zhangdan/preferential/MainMapActivity;->rotateArrow(II)V

    .line 287
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 289
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/preferential/data/model/MenuTag;

    iget v1, v2, Lcom/zhangdan/preferential/data/model/MenuTag;->typeId:I

    .line 290
    .local v1, tid:I
    invoke-static {v1}, Lcom/zhangdan/preferential/utils/CommonMethod;->fixTypeId(I)I

    move-result v1

    .line 291
    iput v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mCurrentType:I

    .line 292
    new-instance v2, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;-><init>(Lcom/zhangdan/preferential/MainMapActivity;Lcom/zhangdan/preferential/MainMapActivity$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 293
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/zhangdan/preferential/MainMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 260
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v1}, Lcom/baidu/mapapi/BMapManager;->stop()Z

    .line 263
    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onPause()V

    .line 264
    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MyLocationOverlay;->disableMyLocation()V

    .line 267
    :cond_1
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 268
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setReturnTransition(Landroid/app/Activity;)V

    .line 269
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/zhangdan/preferential/MainMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 242
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->mBMapMan:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v1}, Lcom/baidu/mapapi/BMapManager;->start()Z

    .line 245
    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onResume()V

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mIsRunning:Z

    .line 247
    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MyLocationOverlay;->enableMyLocation()Z

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->mMenuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 252
    new-instance v1, Lcom/zhangdan/preferential/MainMapActivity$SetupMenuTagTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/MainMapActivity$SetupMenuTagTask;-><init>(Lcom/zhangdan/preferential/MainMapActivity;Lcom/zhangdan/preferential/MainMapActivity$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/MainMapActivity$SetupMenuTagTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 254
    :cond_2
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 255
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onStop()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mIsRunning:Z

    .line 275
    return-void
.end method

.method public showLoading()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/LoadingDialog;->show()V

    .line 175
    return-void
.end method
