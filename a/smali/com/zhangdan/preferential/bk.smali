.class public final Lcom/zhangdan/preferential/bk;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/preferential/bk;->a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/bk;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/bk;->b:Ljava/util/List;

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bk;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bk;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/bk;->a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cd

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/zhangdan/preferential/bl;

    invoke-direct {v1, p0}, Lcom/zhangdan/preferential/bl;-><init>(Lcom/zhangdan/preferential/bk;)V

    const v0, 0x7f060151

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zhangdan/preferential/bl;->a:Landroid/widget/ImageView;

    const v0, 0x7f06014c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/preferential/bl;->b:Landroid/widget/TextView;

    const v0, 0x7f060269

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/preferential/bl;->c:Landroid/widget/TextView;

    const v0, 0x7f06002e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/preferential/bl;->d:Landroid/widget/TextView;

    const v0, 0x7f0602b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/CustomStarView;

    iput-object v0, v1, Lcom/zhangdan/preferential/bl;->e:Lcom/zhangdan/preferential/widget/CustomStarView;

    const v0, 0x7f0602b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/zhangdan/preferential/bl;->f:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/bl;

    iget-object v1, p0, Lcom/zhangdan/preferential/bk;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/i;

    iget-object v2, v0, Lcom/zhangdan/preferential/bl;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zhangdan/preferential/bk;->a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    const v5, 0x7f0801d0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/zhangdan/preferential/data/model/i;->e:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x1

    iget-object v8, v1, Lcom/zhangdan/preferential/data/model/i;->l:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/zhangdan/preferential/bl;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/data/model/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/zhangdan/preferential/bk;->a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    iget-object v4, v0, Lcom/zhangdan/preferential/bl;->a:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/zhangdan/preferential/data/model/i;->i:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/zhangdan/preferential/bl;->e:Lcom/zhangdan/preferential/widget/CustomStarView;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/data/model/i;->c()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zhangdan/preferential/widget/CustomStarView;->a(I)V

    iget-object v2, v0, Lcom/zhangdan/preferential/bl;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/zhangdan/preferential/bk;->a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v1}, Lcom/zhangdan/preferential/data/model/i;->g()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v2, v3

    :goto_0
    if-lt v2, v6, :cond_1

    return-object p2

    :cond_1
    aget-object v7, v5, v2

    const v1, 0x7f03010b

    iget-object v8, v0, Lcom/zhangdan/preferential/bl;->f:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/zhangdan/preferential/bl;->f:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/preferential/bk;->b:Ljava/util/List;

    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/i;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zhangdan.preferential.MIX_VIEW_RECOMMEND_DETAIL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "prom_id"

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/preferential/bk;->a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/bk;->a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/z;->b(Landroid/app/Activity;)V

    return-void
.end method
