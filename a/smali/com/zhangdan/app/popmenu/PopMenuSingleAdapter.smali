.class public Lcom/zhangdan/app/popmenu/PopMenuSingleAdapter;
.super Landroid/widget/BaseAdapter;
.source "PopMenuSingleAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/popmenu/PopupMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/popmenu/PopupMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, menuList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/popmenu/PopupMenuItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/zhangdan/app/popmenu/PopMenuSingleAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/zhangdan/app/popmenu/PopMenuSingleAdapter;->mMenuList:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zhangdan/app/popmenu/PopMenuSingleAdapter;->mMenuList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/popmenu/PopMenuSingleAdapter;->mMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zhangdan/app/popmenu/PopMenuSingleAdapter;->mMenuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 49
    move-object v5, p2

    .line 50
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_0

    .line 51
    iget-object v6, p0, Lcom/zhangdan/app/popmenu/PopMenuSingleAdapter;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 52
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f0300c5

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 54
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/popmenu/PopMenuSingleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/popmenu/PopupMenuItem;

    .line 55
    .local v0, data:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    const v6, 0x7f0902b7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 56
    .local v1, imgView:Landroid/widget/ImageView;
    const v6, 0x7f0902b8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 57
    .local v3, tvContent1:Landroid/widget/TextView;
    const v6, 0x7f0902b9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 58
    .local v4, tvContent2:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->getIconResId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 59
    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->getSubDesc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->getFlag()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    return-object v5
.end method
