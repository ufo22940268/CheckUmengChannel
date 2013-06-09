.class public final Lcom/zhangdan/preferential/bp;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/bm;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/bm;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/preferential/bp;->a:Lcom/zhangdan/preferential/bm;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/bp;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/bp;->b:Ljava/util/List;

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bp;->b:Ljava/util/List;

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
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/bp;->a:Lcom/zhangdan/preferential/bm;

    invoke-static {v0}, Lcom/zhangdan/preferential/bm;->d(Lcom/zhangdan/preferential/bm;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/preferential/bp;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/preferential/data/model/m;

    iget-object v2, v2, Lcom/zhangdan/preferential/data/model/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/zhangdan/preferential/bp;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/m;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zhangdan.preferential.MIX_VIEW_TAG_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "type_id"

    iget v3, v0, Lcom/zhangdan/preferential/data/model/m;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "type_name"

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/m;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/preferential/bp;->a:Lcom/zhangdan/preferential/bm;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/bm;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/bp;->a:Lcom/zhangdan/preferential/bm;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/bm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/z;->b(Landroid/app/Activity;)V

    return-void
.end method
