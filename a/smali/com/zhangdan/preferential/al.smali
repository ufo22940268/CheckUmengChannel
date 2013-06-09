.class public final Lcom/zhangdan/preferential/al;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/ab;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/ab;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/preferential/al;->a:Lcom/zhangdan/preferential/ab;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/al;->b:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/al;->a:Lcom/zhangdan/preferential/ab;

    iget-object v0, v0, Lcom/zhangdan/preferential/ab;->d:Lcom/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a;->a()Lcom/a/a/a/e/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/a/e/b;->a(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/al;->b:Ljava/util/List;

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/al;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/al;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/al;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

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

    iget-object v0, p0, Lcom/zhangdan/preferential/al;->a:Lcom/zhangdan/preferential/ab;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c2

    iget-object v2, p0, Lcom/zhangdan/preferential/al;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v2}, Lcom/zhangdan/preferential/ab;->l(Lcom/zhangdan/preferential/ab;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/zhangdan/preferential/am;

    invoke-direct {v1, p0}, Lcom/zhangdan/preferential/am;-><init>(Lcom/zhangdan/preferential/al;)V

    const v0, 0x7f06011d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zhangdan/preferential/am;->a:Landroid/widget/ImageView;

    const v0, 0x7f060151

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zhangdan/preferential/am;->b:Landroid/widget/ImageView;

    const v0, 0x7f06014c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/preferential/am;->c:Landroid/widget/TextView;

    const v0, 0x7f060269

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/preferential/am;->d:Landroid/widget/TextView;

    const v0, 0x7f06002e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/preferential/am;->e:Landroid/widget/TextView;

    const v0, 0x7f0602b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/CustomStarView;

    iput-object v0, v1, Lcom/zhangdan/preferential/am;->f:Lcom/zhangdan/preferential/widget/CustomStarView;

    const v0, 0x7f0602b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/zhangdan/preferential/am;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/am;

    iget-object v1, p0, Lcom/zhangdan/preferential/al;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/i;

    iget-object v2, v0, Lcom/zhangdan/preferential/am;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zhangdan/preferential/al;->a:Lcom/zhangdan/preferential/ab;

    const v5, 0x7f0801d0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/zhangdan/preferential/data/model/i;->e:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x1

    iget-object v8, v1, Lcom/zhangdan/preferential/data/model/i;->l:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/zhangdan/preferential/ab;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/zhangdan/preferential/am;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/data/model/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/zhangdan/preferential/am;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/zhangdan/preferential/al;->a:Lcom/zhangdan/preferential/ab;

    iget-object v4, v4, Lcom/zhangdan/preferential/ab;->c:Lcom/a/a/a/f/b;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/data/model/i;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/preferential/al;->a:Lcom/zhangdan/preferential/ab;

    invoke-virtual {v6}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/zhangdan/preferential/am;->a:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/zhangdan/preferential/al;->a(Landroid/widget/ImageView;)V

    iget-object v2, v0, Lcom/zhangdan/preferential/am;->b:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/zhangdan/preferential/data/model/i;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/zhangdan/preferential/al;->a:Lcom/zhangdan/preferential/ab;

    iget-object v5, v5, Lcom/zhangdan/preferential/ab;->b:Lcom/a/a/a/f/b;

    iget-object v6, p0, Lcom/zhangdan/preferential/al;->a:Lcom/zhangdan/preferential/ab;

    invoke-virtual {v6}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/zhangdan/preferential/al;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v2}, Lcom/zhangdan/preferential/ab;->m(Lcom/zhangdan/preferential/ab;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/zhangdan/preferential/am;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/zhangdan/preferential/al;->a(Landroid/widget/ImageView;)V

    :cond_1
    iget-object v2, v0, Lcom/zhangdan/preferential/am;->f:Lcom/zhangdan/preferential/widget/CustomStarView;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/data/model/i;->c()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zhangdan/preferential/widget/CustomStarView;->a(I)V

    iget-object v2, v0, Lcom/zhangdan/preferential/am;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/zhangdan/preferential/al;->a:Lcom/zhangdan/preferential/ab;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v1}, Lcom/zhangdan/preferential/data/model/i;->g()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v2, v3

    :goto_0
    if-lt v2, v6, :cond_3

    iget-object v1, p0, Lcom/zhangdan/preferential/al;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v1}, Lcom/zhangdan/preferential/ab;->m(Lcom/zhangdan/preferential/ab;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/zhangdan/preferential/am;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-object p2

    :cond_3
    aget-object v7, v5, v2

    const v1, 0x7f03010b

    iget-object v8, v0, Lcom/zhangdan/preferential/am;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/zhangdan/preferential/am;->g:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/preferential/al;->b:Ljava/util/List;

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

    iget-object v0, p0, Lcom/zhangdan/preferential/al;->a:Lcom/zhangdan/preferential/ab;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/ab;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/al;->a:Lcom/zhangdan/preferential/ab;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/z;->b(Landroid/app/Activity;)V

    return-void
.end method
