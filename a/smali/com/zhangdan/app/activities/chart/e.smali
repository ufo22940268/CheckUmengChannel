.class final Lcom/zhangdan/app/activities/chart/e;
.super Landroid/support/v4/view/v;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/chart/b;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-direct {p0}, Landroid/support/v4/view/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/b;->h(Lcom/zhangdan/app/activities/chart/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/b;->i(Lcom/zhangdan/app/activities/chart/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/b;->h(Lcom/zhangdan/app/activities/chart/b;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/b;->j(Lcom/zhangdan/app/activities/chart/b;)Lcom/zhangdan/app/activities/chart/k;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    new-instance v2, Lcom/zhangdan/app/activities/chart/k;

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-direct {v2, v0, v3}, Lcom/zhangdan/app/activities/chart/k;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/chart/b;->a(Lcom/zhangdan/app/activities/chart/b;Lcom/zhangdan/app/activities/chart/k;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/b;->j(Lcom/zhangdan/app/activities/chart/b;)Lcom/zhangdan/app/activities/chart/k;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v2}, Lcom/zhangdan/app/activities/chart/b;->c(Lcom/zhangdan/app/activities/chart/b;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v3}, Lcom/zhangdan/app/activities/chart/b;->d(Lcom/zhangdan/app/activities/chart/b;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v4}, Lcom/zhangdan/app/activities/chart/b;->e(Lcom/zhangdan/app/activities/chart/b;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v5}, Lcom/zhangdan/app/activities/chart/b;->k(Lcom/zhangdan/app/activities/chart/b;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/zhangdan/app/activities/chart/k;->a(Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v0

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/b;->i(Lcom/zhangdan/app/activities/chart/b;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/b;->l(Lcom/zhangdan/app/activities/chart/b;)Lcom/zhangdan/app/activities/chart/g;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    new-instance v2, Lcom/zhangdan/app/activities/chart/g;

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-direct {v2, v0, v3}, Lcom/zhangdan/app/activities/chart/g;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/chart/b;->a(Lcom/zhangdan/app/activities/chart/b;Lcom/zhangdan/app/activities/chart/g;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/b;->l(Lcom/zhangdan/app/activities/chart/b;)Lcom/zhangdan/app/activities/chart/g;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v2}, Lcom/zhangdan/app/activities/chart/b;->c(Lcom/zhangdan/app/activities/chart/b;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v3}, Lcom/zhangdan/app/activities/chart/b;->d(Lcom/zhangdan/app/activities/chart/b;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v4}, Lcom/zhangdan/app/activities/chart/b;->e(Lcom/zhangdan/app/activities/chart/b;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/chart/e;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v5}, Lcom/zhangdan/app/activities/chart/b;->k(Lcom/zhangdan/app/activities/chart/b;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/zhangdan/app/activities/chart/g;->a(Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
