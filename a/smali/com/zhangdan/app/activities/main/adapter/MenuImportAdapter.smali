.class public Lcom/zhangdan/app/activities/main/adapter/MenuImportAdapter;
.super Lcom/zhangdan/app/popmenu/PopMenuGroupAdapter;
.source "MenuImportAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const v6, 0x7f070052

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
    const v5, 0x7f070054

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
    const v5, 0x7f0202b9

    invoke-virtual {v2, v5}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setIconResId(I)V

    .line 32
    const v5, 0x7f070055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setTitle(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setSubDesc(Ljava/lang/String;)V

    .line 34
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v2, Lcom/zhangdan/app/popmenu/PopupMenuItem;

    .end local v2           #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    invoke-direct {v2}, Lcom/zhangdan/app/popmenu/PopupMenuItem;-><init>()V

    .line 37
    .restart local v2       #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    const v5, 0x7f0202d0

    invoke-virtual {v2, v5}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setIconResId(I)V

    .line 38
    const v5, 0x7f070056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setTitle(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setSubDesc(Ljava/lang/String;)V

    .line 40
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v2, Lcom/zhangdan/app/popmenu/PopupMenuItem;

    .end local v2           #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    invoke-direct {v2}, Lcom/zhangdan/app/popmenu/PopupMenuItem;-><init>()V

    .line 43
    .restart local v2       #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    const v5, 0x7f0202bf

    invoke-virtual {v2, v5}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setIconResId(I)V

    .line 44
    const v5, 0x7f070057

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setTitle(Ljava/lang/String;)V

    .line 45
    const v5, 0x7f070053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setSubDesc(Ljava/lang/String;)V

    .line 46
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuGroup;->setMenuList(Ljava/util/List;)V

    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iput-object v1, p0, Lcom/zhangdan/app/activities/main/adapter/MenuImportAdapter;->mGroupList:Ljava/util/List;

    .line 58
    return-void
.end method
