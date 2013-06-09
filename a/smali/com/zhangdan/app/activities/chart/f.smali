.class final Lcom/zhangdan/app/activities/chart/f;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/chart/b;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/chart/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/f;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/f;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/b;->b(Lcom/zhangdan/app/activities/chart/b;)Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zhangdan/app/data/db/b/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/c/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/c/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/f;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/b;->b(Lcom/zhangdan/app/activities/chart/b;)Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/data/db/b/g;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/f;->b:Ljava/util/List;

    iput-object v2, p0, Lcom/zhangdan/app/activities/chart/f;->c:Ljava/util/List;

    iput-object v3, p0, Lcom/zhangdan/app/activities/chart/f;->d:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/f;->e:Ljava/util/List;

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/c;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/f;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/f;->a:Lcom/zhangdan/app/activities/chart/b;

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/f;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/chart/b;->a(Lcom/zhangdan/app/activities/chart/b;Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/f;->a:Lcom/zhangdan/app/activities/chart/b;

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/f;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/chart/b;->b(Lcom/zhangdan/app/activities/chart/b;Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/f;->a:Lcom/zhangdan/app/activities/chart/b;

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/f;->d:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/chart/b;->a(Lcom/zhangdan/app/activities/chart/b;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/f;->a:Lcom/zhangdan/app/activities/chart/b;

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/f;->e:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/chart/b;->c(Lcom/zhangdan/app/activities/chart/b;Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/f;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/b;->c(Lcom/zhangdan/app/activities/chart/b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/f;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/b;->d(Lcom/zhangdan/app/activities/chart/b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/f;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/b;->e(Lcom/zhangdan/app/activities/chart/b;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/f;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/b;->f(Lcom/zhangdan/app/activities/chart/b;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/app/activities/chart/e;

    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/f;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-direct {v1, v2}, Lcom/zhangdan/app/activities/chart/e;-><init>(Lcom/zhangdan/app/activities/chart/b;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/v;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/f;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v0}, Lcom/zhangdan/app/activities/chart/b;->f(Lcom/zhangdan/app/activities/chart/b;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/f;->a:Lcom/zhangdan/app/activities/chart/b;

    invoke-static {v1}, Lcom/zhangdan/app/activities/chart/b;->g(Lcom/zhangdan/app/activities/chart/b;)Landroid/support/v4/view/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/bb;)V

    goto :goto_0
.end method
