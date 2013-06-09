.class final Lcom/zhangdan/preferential/p;
.super Lcom/baidu/mapapi/ItemizedOverlay;


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/List;

.field final synthetic c:Lcom/zhangdan/preferential/MainMapActivity;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/MainMapActivity;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/preferential/p;->c:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {p2}, Lcom/zhangdan/preferential/p;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/p;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/p;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/zhangdan/preferential/p;->d:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/zhangdan/preferential/p;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/p;->populate()V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/p;Lcom/baidu/mapapi/OverlayItem;Lcom/zhangdan/preferential/data/model/k;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/p;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zhangdan/preferential/p;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/p;->populate()V

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/preferential/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/p;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zhangdan/preferential/p;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final createItem(I)Lcom/baidu/mapapi/OverlayItem;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/p;->a:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/zhangdan/preferential/p;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mapapi/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Z)V

    iget-object v0, p0, Lcom/zhangdan/preferential/p;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/zhangdan/preferential/p;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/p;->getItem(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/p;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

.method protected final onTap(I)Z
    .locals 7

    const v5, 0x7f0602bd

    const/4 v6, -0x2

    iget-object v0, p0, Lcom/zhangdan/preferential/p;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/OverlayItem;

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/p;->setFocus(Lcom/baidu/mapapi/OverlayItem;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/p;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/OverlayItem;

    invoke-virtual {v0}, Lcom/baidu/mapapi/OverlayItem;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v2

    iget-object v0, p0, Lcom/zhangdan/preferential/p;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/k;

    iget-object v1, p0, Lcom/zhangdan/preferential/p;->c:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/MainMapActivity;->g(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "kkkk"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/p;->c:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/MainMapActivity;->d(Lcom/zhangdan/preferential/MainMapActivity;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/p;->c:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/MainMapActivity;->g(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/zhangdan/preferential/a/z;->b(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/k;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/p;->c:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/MainMapActivity;->g(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0602bc

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/widget/BadgeView;

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/widget/BadgeView;->a(Lcom/zhangdan/preferential/data/model/k;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/p;->c:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/MainMapActivity;->g(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f060151

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/k;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/zhangdan/preferential/p;->c:Lcom/zhangdan/preferential/MainMapActivity;

    iget-object v4, v4, Lcom/zhangdan/preferential/MainMapActivity;->c:Lcom/a/a/a/f/b;

    iget-object v5, p0, Lcom/zhangdan/preferential/p;->e:Landroid/content/Context;

    invoke-virtual {v4, v3, v5}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/zhangdan/preferential/p;->c:Lcom/zhangdan/preferential/MainMapActivity;

    iget-object v3, v3, Lcom/zhangdan/preferential/MainMapActivity;->d:Lcom/a/a/a/a;

    invoke-virtual {v3}, Lcom/a/a/a/a;->a()Lcom/a/a/a/e/b;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/a/a/a/e/b;->a(Landroid/widget/ImageView;)V

    sget-object v1, Lcom/zhangdan/preferential/MainMapActivity;->a:Lcom/baidu/mapapi/MapView;

    iget-object v3, p0, Lcom/zhangdan/preferential/p;->c:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v3}, Lcom/zhangdan/preferential/MainMapActivity;->g(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/baidu/mapapi/MapView$LayoutParams;

    const/16 v5, 0x51

    invoke-direct {v4, v6, v6, v2, v5}, Lcom/baidu/mapapi/MapView$LayoutParams;-><init>(IILcom/baidu/mapapi/GeoPoint;I)V

    invoke-virtual {v1, v3, v4}, Lcom/baidu/mapapi/MapView;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/p;->c:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/MainMapActivity;->g(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/zhangdan/preferential/p;->c:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/MainMapActivity;->g(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->b:Lcom/baidu/mapapi/MapController;

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/MapController;->animateTo(Lcom/baidu/mapapi/GeoPoint;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onTap(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/MapView;)Z
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/p;->c:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/MainMapActivity;->g(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/ItemizedOverlay;->onTap(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/MapView;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
