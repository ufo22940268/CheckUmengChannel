.class Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;
.super Lcom/baidu/mapapi/ItemizedOverlay;
.source "DetailMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/DetailMapActivity;
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

.field private marker:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/zhangdan/preferential/DetailMapActivity;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/DetailMapActivity;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "marker"
    .parameter "context"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->this$0:Lcom/zhangdan/preferential/DetailMapActivity;

    .line 164
    invoke-static {p2}, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->mGeoList:Ljava/util/List;

    .line 166
    iput-object p2, p0, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->marker:Landroid/graphics/drawable/Drawable;

    .line 167
    iput-object p3, p0, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->populate()V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;Lcom/baidu/mapapi/OverlayItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->addGeoItem(Lcom/baidu/mapapi/OverlayItem;)V

    return-void
.end method

.method private addGeoItem(Lcom/baidu/mapapi/OverlayItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method


# virtual methods
.method public clearItems()V
    .locals 2

    .prologue
    .line 215
    :goto_0
    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->mGeoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method

.method protected createItem(I)Lcom/baidu/mapapi/OverlayItem;
    .locals 1
    .parameter "i"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/OverlayItem;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Z)V
    .locals 8
    .parameter "canvas"
    .parameter "mapView"
    .parameter "shadow"

    .prologue
    .line 181
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v4

    .line 182
    .local v4, projection:Lcom/baidu/mapapi/Projection;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 183
    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->getItem(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v1

    .line 185
    .local v1, overLayItem:Lcom/baidu/mapapi/OverlayItem;
    invoke-virtual {v1}, Lcom/baidu/mapapi/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, title:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/baidu/mapapi/OverlayItem;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    .line 190
    .local v3, point:Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 191
    .local v2, paintText:Landroid/graphics/Paint;
    const/high16 v6, -0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    const/high16 v6, 0x4170

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v1           #overLayItem:Lcom/baidu/mapapi/OverlayItem;
    .end local v2           #paintText:Landroid/graphics/Paint;
    .end local v3           #point:Landroid/graphics/Point;
    .end local v5           #title:Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mapapi/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Z)V

    .line 197
    iget-object v6, p0, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->marker:Landroid/graphics/drawable/Drawable;

    invoke-static {v6}, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 198
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->mGeoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public updateOverlay()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/zhangdan/preferential/DetailMapActivity$OverItemT;->populate()V

    .line 175
    return-void
.end method
