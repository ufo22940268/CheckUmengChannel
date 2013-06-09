.class public final Lcom/zhangdan/preferential/bb;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/as;

.field private b:Ljava/util/List;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/as;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/preferential/bb;->a:Lcom/zhangdan/preferential/as;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/bb;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/bb;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/zhangdan/preferential/bb;->d:I

    invoke-direct {p0}, Lcom/zhangdan/preferential/bb;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/bb;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->p(Lcom/zhangdan/preferential/as;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/bb;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->q(Lcom/zhangdan/preferential/as;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/bb;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/zhangdan/preferential/bb;->a()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bb;->b:Ljava/util/List;

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

.method public final getItemViewType(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zhangdan/preferential/bb;->c:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/zhangdan/preferential/bb;->d:I

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const v4, 0x7f0601cc

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/bb;->getItemViewType(I)I

    move-result v0

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/zhangdan/preferential/bb;->a:Lcom/zhangdan/preferential/as;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300bc

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/zhangdan/preferential/bb;->c:I

    if-ne v0, v2, :cond_0

    const v0, 0x7f0602a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/preferential/bb;->a:Lcom/zhangdan/preferential/as;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/preferential/bb;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/preferential/data/model/g;

    iget-object v2, v2, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    invoke-virtual {p0, p3}, Lcom/zhangdan/preferential/bb;->getItemViewType(I)I

    move-result v0

    iget v1, p0, Lcom/zhangdan/preferential/bb;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/bb;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->r(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/a/u;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/bb;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->s(Lcom/zhangdan/preferential/as;)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.zhangdan.preferential.UPDATE_CATEGORY"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "menu_tag"

    iget-object v0, p0, Lcom/zhangdan/preferential/bb;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/preferential/bb;->a:Lcom/zhangdan/preferential/as;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/bb;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->t(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    return-void
.end method

.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2

    invoke-virtual {p0, p3}, Lcom/zhangdan/preferential/bb;->getItemViewType(I)I

    move-result v0

    iget v1, p0, Lcom/zhangdan/preferential/bb;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/bb;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->u(Lcom/zhangdan/preferential/as;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/bb;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->t(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
