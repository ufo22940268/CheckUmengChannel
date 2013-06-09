.class public final Lcom/zhangdan/app/activities/detail/a/p;
.super Lcom/zhangdan/app/popmenu/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/app/popmenu/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/app/popmenu/d;

    invoke-direct {v2}, Lcom/zhangdan/app/popmenu/d;-><init>()V

    const v3, 0x7f020224

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->a(I)V

    const v3, 0x7f08013d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->b(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    new-instance v2, Lcom/zhangdan/app/popmenu/d;

    invoke-direct {v2}, Lcom/zhangdan/app/popmenu/d;-><init>()V

    const v3, 0x7f020225

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->a(I)V

    const v3, 0x7f08013f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->a(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->b(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    new-instance v2, Lcom/zhangdan/app/popmenu/d;

    invoke-direct {v2}, Lcom/zhangdan/app/popmenu/d;-><init>()V

    const v3, 0x7f020223

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->a(I)V

    const v3, 0x7f08013e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->a(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->b(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v2, Lcom/zhangdan/app/popmenu/d;

    invoke-direct {v2}, Lcom/zhangdan/app/popmenu/d;-><init>()V

    const v3, 0x7f020222

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->a(I)V

    const v3, 0x7f080140

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zhangdan/app/popmenu/d;->a(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Lcom/zhangdan/app/popmenu/d;->b(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/a/p;->a:Ljava/util/List;

    return-void
.end method
