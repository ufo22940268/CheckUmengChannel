.class public Lcom/zhangdan/app/activities/main/adapter/MenuMainPageAdapter;
.super Lcom/zhangdan/app/popmenu/PopMenuGroupAdapter;
.source "MenuMainPageAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 22
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/zhangdan/app/popmenu/PopMenuGroupAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 24
    .local v4, res:Landroid/content/res/Resources;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v1, groupList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/popmenu/PopupMenuGroup;>;"
    new-instance v0, Lcom/zhangdan/app/popmenu/PopupMenuGroup;

    invoke-direct {v0}, Lcom/zhangdan/app/popmenu/PopupMenuGroup;-><init>()V

    .line 27
    .local v0, group:Lcom/zhangdan/app/popmenu/PopupMenuGroup;
    const v5, 0x7f07004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/zhangdan/app/popmenu/PopupMenuGroup;->setTitle(Ljava/lang/String;)V

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v3, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/popmenu/PopupMenuItem;>;"
    new-instance v2, Lcom/zhangdan/app/popmenu/PopupMenuItem;

    invoke-direct {v2}, Lcom/zhangdan/app/popmenu/PopupMenuItem;-><init>()V

    .line 31
    .local v2, item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    const v5, 0x7f02022a

    invoke-virtual {v2, v5}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setIconResId(I)V

    .line 32
    const v5, 0x7f07004d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setTitle(Ljava/lang/String;)V

    .line 33
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v2, Lcom/zhangdan/app/popmenu/PopupMenuItem;

    .end local v2           #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    invoke-direct {v2}, Lcom/zhangdan/app/popmenu/PopupMenuItem;-><init>()V

    .line 36
    .restart local v2       #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    const v5, 0x7f020227

    invoke-virtual {v2, v5}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setIconResId(I)V

    .line 37
    const v5, 0x7f07004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setTitle(Ljava/lang/String;)V

    .line 38
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuGroup;->setMenuList(Ljava/util/List;)V

    .line 40
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iput-object v1, p0, Lcom/zhangdan/app/activities/main/adapter/MenuMainPageAdapter;->mGroupList:Ljava/util/List;

    .line 60
    return-void
.end method
