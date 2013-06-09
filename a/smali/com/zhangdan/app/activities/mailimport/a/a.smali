.class public final Lcom/zhangdan/app/activities/mailimport/a/a;
.super Lcom/zhangdan/app/popmenu/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    const v4, 0x7f080050

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/app/popmenu/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p2, :cond_0

    new-instance v2, Lcom/zhangdan/app/popmenu/d;

    invoke-direct {v2}, Lcom/zhangdan/app/popmenu/d;-><init>()V

    const v3, 0x7f0202b1

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->a(I)V

    const v3, 0x7f080053

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->b(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    new-instance v2, Lcom/zhangdan/app/popmenu/d;

    invoke-direct {v2}, Lcom/zhangdan/app/popmenu/d;-><init>()V

    const v3, 0x7f0202c8

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->a(I)V

    const v3, 0x7f080054

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->b(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    new-instance v2, Lcom/zhangdan/app/popmenu/d;

    invoke-direct {v2}, Lcom/zhangdan/app/popmenu/d;-><init>()V

    const v3, 0x7f0202b7

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->a(I)V

    const v3, 0x7f080055

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/d;->a(Ljava/lang/String;)V

    const v3, 0x7f080051

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zhangdan/app/popmenu/d;->b(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/a;->a:Ljava/util/List;

    return-void
.end method
