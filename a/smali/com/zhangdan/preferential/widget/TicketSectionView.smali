.class public Lcom/zhangdan/preferential/widget/TicketSectionView;
.super Lcom/zhangdan/preferential/widget/DetailSectionView;


# instance fields
.field private c:[Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/DetailSectionView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->c:[Landroid/view/ViewGroup;

    const v0, 0x7f0201d8

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/TicketSectionView;->a(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030105

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TicketSectionView;->a()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->c:[Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const v0, 0x7f06032d

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/TicketSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->c:[Landroid/view/ViewGroup;

    const/4 v2, 0x1

    const v0, 0x7f06032f

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/TicketSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v1, v2

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/preferential/data/model/l;ILcom/a/a/a/f/b;Lcom/a/a/a/a;)V
    .locals 8

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->c:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->c:[Landroid/view/ViewGroup;

    aget-object v0, v0, v7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/l;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v3, v0, 0x1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/l;->B:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->c:[Landroid/view/ViewGroup;

    aget-object v6, v1, v3

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v1, 0x7f06011d

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0, p3, p4}, Lcom/zhangdan/preferential/widget/TicketSectionView;->a(Landroid/widget/ImageView;Ljava/lang/String;Lcom/a/a/a/f/b;Lcom/a/a/a/a;)V

    const v0, 0x7f06032e

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v3, v7, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://m.dianping.com/shop/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/l;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TicketSectionView;->c:[Landroid/view/ViewGroup;

    aget-object v6, v0, v7

    if-ne v5, v7, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.zhangdan.preferential.MIX_ACTION_VEW_SINGLE_TICKET"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "url"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    new-instance v1, Lcom/zhangdan/preferential/widget/b;

    invoke-direct {v1, p0, v0}, Lcom/zhangdan/preferential/widget/b;-><init>(Lcom/zhangdan/preferential/widget/DetailSectionView;Landroid/content/Intent;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_VEW_MULTIBLE_TICKETS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "shop_id"

    iget-object v5, p1, Lcom/zhangdan/preferential/data/model/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
