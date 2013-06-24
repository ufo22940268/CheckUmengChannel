.class public Lcom/zhangdan/app/popmenu/PopMenuGroupAdapter;
.super Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;
.source "PopMenuGroupAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/popmenu/PopupMenuGroup;",
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
            "Lcom/zhangdan/app/popmenu/PopupMenuGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/popmenu/PopupMenuGroup;>;"
    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/zhangdan/app/popmenu/PopMenuGroupAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/zhangdan/app/popmenu/PopMenuGroupAdapter;->mGroupList:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zhangdan/app/popmenu/PopMenuGroupAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/popmenu/PopupMenuGroup;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/PopupMenuGroup;->getSize()I

    move-result v0

    return v0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1
    .parameter "section"
    .parameter "position"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zhangdan/app/popmenu/PopMenuGroupAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/popmenu/PopupMenuGroup;

    invoke-virtual {v0, p2}, Lcom/zhangdan/app/popmenu/PopupMenuGroup;->getItem(I)Lcom/zhangdan/app/popmenu/PopupMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(II)J
    .locals 2
    .parameter "section"
    .parameter "position"

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "section"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 54
    move-object v5, p3

    .line 55
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_0

    .line 56
    iget-object v6, p0, Lcom/zhangdan/app/popmenu/PopMenuGroupAdapter;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 57
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f0300c5

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 59
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/popmenu/PopMenuGroupAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/popmenu/PopupMenuItem;

    .line 60
    .local v0, data:Lcom/zhangdan/app/popmenu/PopupMenuItem;
    const v6, 0x7f0902b7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 61
    .local v1, imgView:Landroid/widget/ImageView;
    const v6, 0x7f0902b8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 62
    .local v3, tvContent1:Landroid/widget/TextView;
    const v6, 0x7f0902b9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 63
    .local v4, tvContent2:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->getIconResId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 64
    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/PopupMenuItem;->getSubDesc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-object v5
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zhangdan/app/popmenu/PopMenuGroupAdapter;->mGroupList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/popmenu/PopMenuGroupAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "section"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 72
    move-object v2, p2

    .line 73
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 74
    iget-object v3, p0, Lcom/zhangdan/app/popmenu/PopMenuGroupAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 75
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0300c6

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 76
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v3, p0, Lcom/zhangdan/app/popmenu/PopMenuGroupAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/popmenu/PopupMenuGroup;

    .line 79
    .local v0, data:Lcom/zhangdan/app/popmenu/PopupMenuGroup;
    const v3, 0x7f0902ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/PopupMenuGroup;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-object v2
.end method
