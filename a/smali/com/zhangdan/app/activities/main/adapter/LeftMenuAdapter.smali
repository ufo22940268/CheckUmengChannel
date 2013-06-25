.class public Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;
.super Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;
.source "LeftMenuAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItemFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const v12, 0x7f070052

    const v9, 0x7f070037

    const v11, 0x7f0202b2

    const/4 v8, 0x1

    const v10, 0x7f0202d6

    .line 33
    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/SectionedBaseAdapter;-><init>()V

    .line 31
    iput v8, p0, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->mSelectedItemFlag:I

    .line 34
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->mContext:Landroid/content/Context;

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v4, groupList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;>;"
    const/4 v5, 0x0

    .line 37
    .local v5, item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 40
    .local v6, res:Landroid/content/res/Resources;
    new-instance v0, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;

    invoke-direct {v0, v9, v10}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;-><init>(II)V

    .line 41
    .local v0, group0:Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;
    new-instance v5, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .end local v5           #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f0202c4

    invoke-direct {v5, v9, v7, v8}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;-><init>(III)V

    .line 42
    .restart local v5       #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    invoke-virtual {v0, v5}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V

    .line 43
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;

    const v7, 0x7f070047

    invoke-direct {v1, v7, v10}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;-><init>(II)V

    .line 48
    .local v1, group1:Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;
    new-instance v5, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .end local v5           #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f070038

    const v8, 0x7f0202b8

    const/4 v9, 0x2

    invoke-direct {v5, v7, v8, v9}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;-><init>(III)V

    .line 49
    .restart local v5       #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->setDesc(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v5}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V

    .line 52
    new-instance v5, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .end local v5           #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f070039

    const v8, 0x7f0202d2

    const/4 v9, 0x3

    invoke-direct {v5, v7, v8, v9}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;-><init>(III)V

    .line 53
    .restart local v5       #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->setDesc(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v5}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V

    .line 56
    new-instance v5, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .end local v5           #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f07003a

    const v8, 0x7f0202be

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;-><init>(III)V

    .line 57
    .restart local v5       #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f070053

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->setDesc(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v5}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V

    .line 60
    new-instance v5, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .end local v5           #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f07003b

    const v8, 0x7f0202c1

    const/4 v9, 0x5

    invoke-direct {v5, v7, v8, v9}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;-><init>(III)V

    .line 61
    .restart local v5       #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f070053

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->setDesc(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v5}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V

    .line 63
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v2, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;

    const v7, 0x7f070048

    invoke-direct {v2, v7, v10}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;-><init>(II)V

    .line 67
    .local v2, group2:Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;
    new-instance v5, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .end local v5           #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f07003c

    const v8, 0x7f0202bb

    const/4 v9, 0x6

    invoke-direct {v5, v7, v8, v9}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;-><init>(III)V

    .line 68
    .restart local v5       #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    invoke-virtual {v2, v5}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V

    .line 70
    new-instance v5, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .end local v5           #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f07003d

    const v8, 0x7f0202b5

    const/4 v9, 0x7

    invoke-direct {v5, v7, v8, v9}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;-><init>(III)V

    .line 71
    .restart local v5       #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    invoke-virtual {v2, v5}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V

    .line 73
    new-instance v5, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .end local v5           #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f07003e

    const v8, 0x7f0202d8

    const/16 v9, 0x9

    invoke-direct {v5, v7, v8, v9}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;-><init>(III)V

    .line 74
    .restart local v5       #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    invoke-virtual {v2, v5}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V

    .line 76
    new-instance v5, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .end local v5           #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f07003f

    const/16 v8, 0x8

    invoke-direct {v5, v7, v11, v8}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;-><init>(III)V

    .line 77
    .restart local v5       #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    invoke-virtual {v2, v5}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V

    .line 79
    new-instance v5, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .end local v5           #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f070040

    const/16 v8, 0xc

    invoke-direct {v5, v7, v11, v8}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;-><init>(III)V

    .line 80
    .restart local v5       #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    invoke-virtual {v2, v5}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V

    .line 83
    new-instance v5, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .end local v5           #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f070041

    const v8, 0x7f0202ca

    const/16 v9, 0xa

    invoke-direct {v5, v7, v8, v9}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;-><init>(III)V

    .line 84
    .restart local v5       #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    invoke-virtual {v2, v5}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V

    .line 86
    new-instance v5, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .end local v5           #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f070042

    const v8, 0x7f0202af

    const/16 v9, 0xb

    invoke-direct {v5, v7, v8, v9}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;-><init>(III)V

    .line 87
    .restart local v5       #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    invoke-virtual {v2, v5}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V

    .line 89
    new-instance v5, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .end local v5           #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f070043

    const v8, 0x7f0202cd

    const/16 v9, 0xd

    invoke-direct {v5, v7, v8, v9}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;-><init>(III)V

    .line 90
    .restart local v5       #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    invoke-virtual {v2, v5}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V

    .line 92
    new-instance v5, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .end local v5           #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f070044

    const v8, 0x7f0202c7

    const/16 v9, 0xe

    invoke-direct {v5, v7, v8, v9}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;-><init>(III)V

    .line 93
    .restart local v5       #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    invoke-virtual {v2, v5}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V

    .line 94
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v3, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;

    const v7, 0x7f070049

    invoke-direct {v3, v7, v10}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;-><init>(II)V

    .line 98
    .local v3, group3:Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;
    new-instance v5, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .end local v5           #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f070045

    const v8, 0x7f0202d3

    const/16 v9, 0xf

    invoke-direct {v5, v7, v8, v9}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;-><init>(III)V

    .line 99
    .restart local v5       #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    invoke-virtual {v3, v5}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V

    .line 101
    new-instance v5, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .end local v5           #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    const v7, 0x7f070046

    const v8, 0x7f0202ac

    const/16 v9, 0x10

    invoke-direct {v5, v7, v8, v9}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;-><init>(III)V

    .line 102
    .restart local v5       #item:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    invoke-virtual {v3, v5}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->addMenuItem(Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;)V

    .line 103
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iput-object v4, p0, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->mGroupList:Ljava/util/List;

    .line 106
    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->mGroupList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1
    .parameter "section"
    .parameter "position"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->mGroupList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;

    invoke-virtual {v0, p2}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->getPosition(I)Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(II)J
    .locals 2
    .parameter "section"
    .parameter "position"

    .prologue
    .line 126
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "section"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 142
    move-object v6, p3

    .line 143
    .local v6, view:Landroid/view/View;
    if-nez v6, :cond_0

    .line 144
    iget-object v7, p0, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 145
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f0300b5

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 147
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;

    .line 148
    .local v0, data:Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;
    if-nez v0, :cond_1

    .line 169
    :goto_0
    return-object v6

    .line 150
    :cond_1
    const v7, 0x7f090210

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 151
    .local v5, titleView:Landroid/widget/TextView;
    const v7, 0x7f09017b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 152
    .local v2, iconView:Landroid/widget/ImageView;
    const v7, 0x7f090284

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 153
    .local v1, descView:Landroid/widget/TextView;
    const v7, 0x7f090285

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 154
    .local v3, imgOther:Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->getTitleStrResId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 155
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->getIconResId()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 156
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->getDesc()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->getFlag()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->getFlag()I

    move-result v7

    iget v8, p0, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->mSelectedItemFlag:I

    if-ne v7, v8, :cond_2

    .line 159
    const v7, 0x7f020266

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 163
    :goto_1
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/menu/LeftMenuItem;->getFlag()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_3

    .line 164
    const v7, 0x7f0202db

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 165
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 167
    :cond_3
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->mGroupList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->mGroupList:Ljava/util/List;

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
    .line 175
    move-object v3, p2

    .line 176
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_0

    .line 177
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 178
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0300b6

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 180
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x7f090210

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 181
    .local v2, titleView:Landroid/widget/TextView;
    if-nez p1, :cond_2

    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;

    .line 183
    .local v0, data:Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;->getTitleStrResId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 186
    :cond_1
    return-object v3

    .line 181
    .end local v0           #data:Lcom/zhangdan/app/activities/main/menu/LeftMenuGroup;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setSelectedItemFlag(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 109
    iget v0, p0, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->mSelectedItemFlag:I

    if-ne v0, p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iput p1, p0, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->mSelectedItemFlag:I

    .line 113
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
