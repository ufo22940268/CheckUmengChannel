.class public final Lcom/zhangdan/app/activities/bankservice/a;
.super Lcom/zhangdan/app/activities/a;

# interfaces
.implements Lcom/zhangdan/app/receiver/d;


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Lcom/zhangdan/app/activities/bankservice/c;

.field private d:Lcom/zhangdan/app/receiver/a;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/a;-><init>()V

    new-instance v0, Lcom/zhangdan/app/activities/bankservice/b;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/bankservice/b;-><init>(Lcom/zhangdan/app/activities/bankservice/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/a;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private f()V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->b()Lcom/zhangdan/app/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->b()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->c()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance v0, Lcom/zhangdan/app/activities/bankservice/e;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/bankservice/e;-><init>(Lcom/zhangdan/app/activities/bankservice/a;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/a;->c:Lcom/zhangdan/app/activities/bankservice/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/a;->c:Lcom/zhangdan/app/activities/bankservice/c;

    invoke-virtual {v0, v2, v3}, Lcom/zhangdan/app/activities/bankservice/c;->a(Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/a;->b()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-ne v5, v6, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v0

    invoke-virtual {v1, v0, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/zhangdan/app/activities/bankservice/c;

    invoke-direct {v0, p0, v2, v3}, Lcom/zhangdan/app/activities/bankservice/c;-><init>(Lcom/zhangdan/app/activities/bankservice/a;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/a;->c:Lcom/zhangdan/app/activities/bankservice/c;

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/a;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/a;->c:Lcom/zhangdan/app/activities/bankservice/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/a;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/a;->c:Lcom/zhangdan/app/activities/bankservice/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/a;->a:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/a;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/a;->a:Landroid/view/View;

    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/a;->a:Landroid/view/View;

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/a;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/a;->a:Landroid/view/View;

    return-object v0
.end method

.method public final e()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/bankservice/a;->f()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/zhangdan/app/receiver/a;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/bankservice/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/receiver/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/a;->d:Lcom/zhangdan/app/receiver/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/a;->d:Lcom/zhangdan/app/receiver/a;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/d;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0300de

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f06008a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/a;->b:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/zhangdan/app/activities/bankservice/a;->f()V

    return-object v1
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/a;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/a;->d:Lcom/zhangdan/app/receiver/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/bankservice/a;->d:Lcom/zhangdan/app/receiver/a;

    return-void
.end method
