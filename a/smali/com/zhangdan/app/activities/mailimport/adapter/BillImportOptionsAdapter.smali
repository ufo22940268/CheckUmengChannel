.class public Lcom/zhangdan/app/activities/mailimport/adapter/BillImportOptionsAdapter;
.super Lcom/zhangdan/app/popmenu/PopMenuSingleAdapter;
.source "BillImportOptionsAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "currImportFlag"

    .prologue
    const v4, 0x7f070052

    .line 28
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/zhangdan/app/popmenu/PopMenuSingleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v1, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/popmenu/PopupMenuItem;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 32
    .local v2, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 34
    .local v0, item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    if-eqz p2, :cond_0

    .line 35
    new-instance v0, Lcom/zhangdan/app/popmenu/PopupMenuItem;

    .end local v0           #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    invoke-direct {v0}, Lcom/zhangdan/app/popmenu/PopupMenuItem;-><init>()V

    .line 36
    .restart local v0       #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    const v3, 0x7f0202ba

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setIconResId(I)V

    .line 37
    const v3, 0x7f070055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setTitle(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setSubDesc(Ljava/lang/String;)V

    .line 39
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    .line 44
    new-instance v0, Lcom/zhangdan/app/popmenu/PopupMenuItem;

    .end local v0           #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    invoke-direct {v0}, Lcom/zhangdan/app/popmenu/PopupMenuItem;-><init>()V

    .line 45
    .restart local v0       #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    const v3, 0x7f0202d1

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setIconResId(I)V

    .line 46
    const v3, 0x7f070056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setTitle(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setSubDesc(Ljava/lang/String;)V

    .line 48
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    .line 53
    new-instance v0, Lcom/zhangdan/app/popmenu/PopupMenuItem;

    .end local v0           #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    invoke-direct {v0}, Lcom/zhangdan/app/popmenu/PopupMenuItem;-><init>()V

    .line 54
    .restart local v0       #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    const v3, 0x7f0202c0

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setIconResId(I)V

    .line 55
    const v3, 0x7f070057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setTitle(Ljava/lang/String;)V

    .line 56
    const v3, 0x7f070053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setSubDesc(Ljava/lang/String;)V

    .line 57
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_2
    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/adapter/BillImportOptionsAdapter;->mMenuList:Ljava/util/List;

    .line 70
    return-void
.end method
