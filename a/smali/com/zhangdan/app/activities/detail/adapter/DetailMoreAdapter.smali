.class public Lcom/zhangdan/app/activities/detail/adapter/DetailMoreAdapter;
.super Lcom/zhangdan/app/popmenu/PopMenuSingleAdapter;
.source "DetailMoreAdapter.java"


# static fields
.field public static final FLAG_DELETE_BILL:I = 0x3

.field public static final FLAG_EDIT_CREDIT_LIMIT:I = 0x2

.field public static final FLAG_HISTORY_BILL:I = 0x0

.field public static final FLAG_MERGE_BILL:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4
    .parameter "context"
    .parameter "isShowMerge"
    .parameter "isShowEdit"

    .prologue
    .line 36
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/zhangdan/app/popmenu/PopMenuSingleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v1, menuList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/popmenu/PopupMenuItem;>;"
    const/4 v0, 0x0

    .line 40
    .local v0, item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 43
    .local v2, res:Landroid/content/res/Resources;
    new-instance v0, Lcom/zhangdan/app/popmenu/PopupMenuItem;

    .end local v0           #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    invoke-direct {v0}, Lcom/zhangdan/app/popmenu/PopupMenuItem;-><init>()V

    .line 44
    .restart local v0       #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    const v3, 0x7f02022c

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setIconResId(I)V

    .line 45
    const v3, 0x7f070144

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setTitle(Ljava/lang/String;)V

    .line 46
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setFlag(I)V

    .line 47
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    if-eqz p2, :cond_0

    .line 51
    new-instance v0, Lcom/zhangdan/app/popmenu/PopupMenuItem;

    .end local v0           #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    invoke-direct {v0}, Lcom/zhangdan/app/popmenu/PopupMenuItem;-><init>()V

    .line 52
    .restart local v0       #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    const v3, 0x7f02022d

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setIconResId(I)V

    .line 53
    const v3, 0x7f070146

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setTitle(Ljava/lang/String;)V

    .line 54
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setFlag(I)V

    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    if-eqz p3, :cond_1

    .line 60
    new-instance v0, Lcom/zhangdan/app/popmenu/PopupMenuItem;

    .end local v0           #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    invoke-direct {v0}, Lcom/zhangdan/app/popmenu/PopupMenuItem;-><init>()V

    .line 61
    .restart local v0       #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    const v3, 0x7f02022b

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setIconResId(I)V

    .line 62
    const v3, 0x7f070145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setTitle(Ljava/lang/String;)V

    .line 63
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setFlag(I)V

    .line 64
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1
    new-instance v0, Lcom/zhangdan/app/popmenu/PopupMenuItem;

    .end local v0           #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    invoke-direct {v0}, Lcom/zhangdan/app/popmenu/PopupMenuItem;-><init>()V

    .line 69
    .restart local v0       #item:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    const v3, 0x7f02022a

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setIconResId(I)V

    .line 70
    const v3, 0x7f070147

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setTitle(Ljava/lang/String;)V

    .line 71
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->setFlag(I)V

    .line 72
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iput-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/DetailMoreAdapter;->mMenuList:Ljava/util/List;

    .line 75
    return-void
.end method
