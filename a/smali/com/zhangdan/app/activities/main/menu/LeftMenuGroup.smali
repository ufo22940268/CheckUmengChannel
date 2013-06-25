.class public Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;
.super Ljava/lang/Object;
.source "LeftMenuGroup.java"


# instance fields
.field private iconResId:I

.field private menuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private titleStrResId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "titleResId"
    .parameter "iconResId"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->titleStrResId:I

    .line 28
    iput p2, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->iconResId:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->menuItems:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V
    .locals 1
    .parameter "menuItem"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->menuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->menuItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->iconResId:I

    return v0
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->menuItems:Ljava/util/List;

    return-object v0
.end method

.method public getPosition(I)Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->menuItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->menuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitleStrResId()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->titleStrResId:I

    return v0
.end method

.method public removeMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V
    .locals 1
    .parameter "menuItem"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->menuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method
