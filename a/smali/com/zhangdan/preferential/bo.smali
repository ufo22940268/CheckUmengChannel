.class public final Lcom/zhangdan/preferential/bo;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/bm;

.field private b:I

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/bm;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/preferential/bo;->a:Lcom/zhangdan/preferential/bm;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/bo;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/bo;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/bo;->c:Ljava/util/List;

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bo;->c:Ljava/util/List;

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

    iget-object v0, p0, Lcom/zhangdan/preferential/bo;->a:Lcom/zhangdan/preferential/bm;

    invoke-static {v0}, Lcom/zhangdan/preferential/bm;->d(Lcom/zhangdan/preferential/bm;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/IconTagView;

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/preferential/bo;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/f;

    invoke-virtual {v2, v0}, Lcom/zhangdan/preferential/widget/IconTagView;->a(Lcom/zhangdan/preferential/data/model/f;)V

    iget v1, p0, Lcom/zhangdan/preferential/bo;->b:I

    if-ne v1, p1, :cond_1

    move-object v1, v2

    check-cast v1, Lcom/zhangdan/preferential/widget/IconTagView;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/widget/IconTagView;->a()V

    iget-object v1, p0, Lcom/zhangdan/preferential/bo;->a:Lcom/zhangdan/preferential/bm;

    invoke-static {v1}, Lcom/zhangdan/preferential/bm;->e(Lcom/zhangdan/preferential/bm;)Lcom/zhangdan/preferential/bp;

    move-result-object v1

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/f;->b:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/bp;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/bo;->a:Lcom/zhangdan/preferential/bm;

    invoke-static {v0}, Lcom/zhangdan/preferential/bm;->e(Lcom/zhangdan/preferential/bm;)Lcom/zhangdan/preferential/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/bp;->notifyDataSetChanged()V

    :goto_1
    return-object v2

    :cond_0
    check-cast p2, Lcom/zhangdan/preferential/widget/IconTagView;

    move-object v2, p2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/zhangdan/preferential/widget/IconTagView;->b()V

    goto :goto_1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iput p3, p0, Lcom/zhangdan/preferential/bo;->b:I

    invoke-virtual {p0}, Lcom/zhangdan/preferential/bo;->notifyDataSetChanged()V

    return-void
.end method
