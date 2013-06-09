.class public final Lcom/zhangdan/app/activities/main/a/f;
.super Lcom/zhangdan/app/popmenu/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/zhangdan/app/popmenu/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/zhangdan/app/popmenu/c;

    invoke-direct {v2}, Lcom/zhangdan/app/popmenu/c;-><init>()V

    const v3, 0x7f080049

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/c;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/zhangdan/app/popmenu/d;

    invoke-direct {v4}, Lcom/zhangdan/app/popmenu/d;-><init>()V

    const v5, 0x7f020221

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/popmenu/d;->a(I)V

    const v5, 0x7f08004b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/popmenu/d;->a(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/zhangdan/app/popmenu/d;

    invoke-direct {v4}, Lcom/zhangdan/app/popmenu/d;-><init>()V

    const v5, 0x7f02021e

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/popmenu/d;->a(I)V

    const v5, 0x7f08004c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/popmenu/d;->a(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/c;->a(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/zhangdan/app/popmenu/c;

    invoke-direct {v2}, Lcom/zhangdan/app/popmenu/c;-><init>()V

    const v3, 0x7f08004a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/c;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/zhangdan/app/popmenu/d;

    invoke-direct {v4}, Lcom/zhangdan/app/popmenu/d;-><init>()V

    const v5, 0x7f02021f

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/popmenu/d;->a(I)V

    const v5, 0x7f08004d

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/popmenu/d;->a(Ljava/lang/String;)V

    const v5, 0x7f08004f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/popmenu/d;->b(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/zhangdan/app/popmenu/d;

    invoke-direct {v4}, Lcom/zhangdan/app/popmenu/d;-><init>()V

    const v5, 0x7f020220

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/popmenu/d;->a(I)V

    const v5, 0x7f08004e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/popmenu/d;->a(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/c;->a(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/a/f;->a:Ljava/util/List;

    return-void
.end method
