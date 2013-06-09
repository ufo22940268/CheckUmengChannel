.class public final Lcom/zhangdan/preferential/bs;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/TicketListActivity;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/TicketListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/bs;->a:Lcom/zhangdan/preferential/TicketListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bs;->a:Lcom/zhangdan/preferential/TicketListActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/TicketListActivity;->b(Lcom/zhangdan/preferential/TicketListActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/bs;->a:Lcom/zhangdan/preferential/TicketListActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/TicketListActivity;->b(Lcom/zhangdan/preferential/TicketListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bs;->a:Lcom/zhangdan/preferential/TicketListActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/TicketListActivity;->b(Lcom/zhangdan/preferential/TicketListActivity;)Ljava/util/List;

    move-result-object v0

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
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/bs;->a:Lcom/zhangdan/preferential/TicketListActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d3

    new-instance v2, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/zhangdan/preferential/bs;->a:Lcom/zhangdan/preferential/TicketListActivity;

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/zhangdan/preferential/bt;

    invoke-direct {v1, p0}, Lcom/zhangdan/preferential/bt;-><init>(Lcom/zhangdan/preferential/bs;)V

    const v0, 0x7f0602e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/preferential/bt;->a:Landroid/widget/TextView;

    const v0, 0x7f0602ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/preferential/bt;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/bs;->a:Lcom/zhangdan/preferential/TicketListActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/TicketListActivity;->b(Lcom/zhangdan/preferential/TicketListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/n;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/bt;

    iget-object v2, v1, Lcom/zhangdan/preferential/bt;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/n;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/zhangdan/preferential/bt;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
