.class final Lcom/zhangdan/preferential/g;
.super Lcom/baidu/mapapi/ItemizedOverlay;


# instance fields
.field public a:Ljava/util/List;

.field final synthetic b:Lcom/zhangdan/preferential/DetailMapActivity;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/DetailMapActivity;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/preferential/g;->b:Lcom/zhangdan/preferential/DetailMapActivity;

    invoke-static {p2}, Lcom/zhangdan/preferential/g;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/g;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/zhangdan/preferential/g;->c:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/zhangdan/preferential/g;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/g;->populate()V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/g;Lcom/baidu/mapapi/OverlayItem;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/g;->populate()V

    return-void
.end method

.method protected final createItem(I)Lcom/baidu/mapapi/OverlayItem;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/OverlayItem;

    return-object v0
.end method

.method public final draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Z)V
    .locals 4

    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/g;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mapapi/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Z)V

    iget-object v0, p0, Lcom/zhangdan/preferential/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/zhangdan/preferential/g;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/g;->getItem(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mapapi/OverlayItem;->getTitle()Ljava/lang/String;

    invoke-virtual {v2}, Lcom/baidu/mapapi/OverlayItem;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/high16 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x4170

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
