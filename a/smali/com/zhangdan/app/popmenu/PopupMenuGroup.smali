.class public Lcom/zhangdan/app/popmenu/PopupMenuGroup;
.super Ljava/lang/Object;
.source "PopupMenuGroup.java"


# instance fields
.field private menuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/popmenu/PopupMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/zhangdan/app/popmenu/PopupMenuItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhangdan/app/popmenu/PopupMenuGroup;->menuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/popmenu/PopupMenuItem;

    return-object v0
.end method

.method public getMenuList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/popmenu/PopupMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zhangdan/app/popmenu/PopupMenuGroup;->menuList:Ljava/util/List;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/app/popmenu/PopupMenuGroup;->menuList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/popmenu/PopupMenuGroup;->menuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zhangdan/app/popmenu/PopupMenuGroup;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setMenuList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/popmenu/PopupMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, menuList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/popmenu/PopupMenuItem;>;"
    iput-object p1, p0, Lcom/zhangdan/app/popmenu/PopupMenuGroup;->menuList:Ljava/util/List;

    .line 25
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/zhangdan/app/popmenu/PopupMenuGroup;->title:Ljava/lang/String;

    .line 19
    return-void
.end method
