.class public final Lcom/zhangdan/preferential/bd;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Ljava/util/List;

.field b:Lcom/zhangdan/preferential/a/v;

.field final synthetic c:Lcom/zhangdan/preferential/as;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/as;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/preferential/bd;->c:Lcom/zhangdan/preferential/as;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/bd;->a:Ljava/util/List;

    new-instance v0, Lcom/zhangdan/preferential/a/v;

    invoke-direct {v0, p2}, Lcom/zhangdan/preferential/a/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/bd;->b:Lcom/zhangdan/preferential/a/v;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bd;->b:Lcom/zhangdan/preferential/a/v;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/a/v;->a()V

    iput-object p1, p0, Lcom/zhangdan/preferential/bd;->a:Ljava/util/List;

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bd;->b:Lcom/zhangdan/preferential/a/v;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/a/v;->a()V

    iget-object v0, p0, Lcom/zhangdan/preferential/bd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bd;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/bd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/k;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/bd;->c:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->l(Lcom/zhangdan/preferential/as;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    check-cast p2, Lcom/zhangdan/preferential/widget/ShopListItemView;

    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/bd;->getItemViewType(I)I

    move-result v3

    iget-object v0, p0, Lcom/zhangdan/preferential/bd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/k;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/k;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/zhangdan/preferential/bd;->c:Lcom/zhangdan/preferential/as;

    invoke-static {v1}, Lcom/zhangdan/preferential/as;->l(Lcom/zhangdan/preferential/as;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/zhangdan/preferential/bd;->b:Lcom/zhangdan/preferential/a/v;

    invoke-virtual {v1, v3, v2}, Lcom/zhangdan/preferential/a/v;->a(IZ)Lcom/zhangdan/preferential/widget/ShopListItemView;

    move-result-object p2

    iget-object v1, p0, Lcom/zhangdan/preferential/bd;->b:Lcom/zhangdan/preferential/a/v;

    invoke-virtual {v1, p2}, Lcom/zhangdan/preferential/a/v;->a(Landroid/view/View;)Lcom/zhangdan/preferential/a/w;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lcom/zhangdan/preferential/widget/ShopListItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/a/w;

    iget-object v3, p0, Lcom/zhangdan/preferential/bd;->b:Lcom/zhangdan/preferential/a/v;

    invoke-virtual {v3, p2, v0, v2}, Lcom/zhangdan/preferential/a/v;->a(Lcom/zhangdan/preferential/widget/ShopListItemView;Lcom/zhangdan/preferential/data/model/k;Z)V

    iget-object v2, v0, Lcom/zhangdan/preferential/data/model/k;->i:[Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/zhangdan/preferential/widget/ShopListItemView;->a([Ljava/lang/String;)V

    iget-object v1, v1, Lcom/zhangdan/preferential/a/w;->f:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/k;->s:Lcom/zhangdan/preferential/data/model/Position;

    iget-object v2, p0, Lcom/zhangdan/preferential/bd;->c:Lcom/zhangdan/preferential/as;

    invoke-static {v2}, Lcom/zhangdan/preferential/as;->m(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    return-object p2

    :cond_2
    const/4 v1, 0x1

    move v2, v1

    goto :goto_0

    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    iget-wide v3, v0, Lcom/zhangdan/preferential/data/model/Position;->b:D

    iget-wide v5, v2, Lcom/zhangdan/preferential/data/model/Position;->b:D

    sub-double/2addr v3, v5

    iget-wide v5, v0, Lcom/zhangdan/preferential/data/model/Position;->a:D

    iget-wide v7, v2, Lcom/zhangdan/preferential/data/model/Position;->a:D

    sub-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/zhangdan/preferential/bd;->c:Lcom/zhangdan/preferential/as;

    invoke-static {p3}, Lcom/zhangdan/preferential/as;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/preferential/bd;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/k;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zhangdan.preferential.MIX_VIEW_SHOP_DETAIL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "shop_id"

    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "photo_url"

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/k;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/preferential/bd;->c:Lcom/zhangdan/preferential/as;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/as;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/bd;->c:Lcom/zhangdan/preferential/as;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/z;->b(Landroid/app/Activity;)V

    return-void
.end method
