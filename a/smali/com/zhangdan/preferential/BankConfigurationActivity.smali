.class public Lcom/zhangdan/preferential/BankConfigurationActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;
.source "BankConfigurationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/BankConfigurationActivity$1;,
        Lcom/zhangdan/preferential/BankConfigurationActivity$DeleteBankTask;,
        Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;
    }
.end annotation


# instance fields
.field protected imageManager:Lcom/novoda/imageloader/core/ImageManager;

.field protected imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field private mContentView:Landroid/view/ViewGroup;

.field private mEditView:Landroid/widget/Button;

.field private mEditable:Z

.field private mGridView:Lcom/gridlayout/GridLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsModified:Z

.field private mItemWidth:I

.field private mParser:Lcom/zhangdan/preferential/utils/JsonParser;

.field private mRemainViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

.field private mWeiboKeeper:Lcom/zhangdan/preferential/utils/WeiboKeeper;

.field private mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mRemainViews:Ljava/util/Set;

    .line 232
    return-void
.end method

.method static synthetic access$200(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/utils/WeiboKeeper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mWeiboKeeper:Lcom/zhangdan/preferential/utils/WeiboKeeper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/utils/RequestGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/utils/JsonParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/utils/WeiboManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zhangdan/preferential/BankConfigurationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->clearItems()V

    return-void
.end method

.method static synthetic access$700(Lcom/zhangdan/preferential/BankConfigurationActivity;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/BankConfigurationActivity;->populateBanks(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/zhangdan/preferential/BankConfigurationActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->getRemainBankIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addItem(Lcom/zhangdan/preferential/data/model/Bank;)Landroid/view/ViewGroup;
    .locals 7
    .parameter "bank"

    .prologue
    .line 126
    iget-object v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030050

    iget-object v5, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mGridView:Lcom/gridlayout/GridLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, item:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 128
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mItemWidth:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mGridView:Lcom/gridlayout/GridLayout;

    invoke-virtual {v3, v1}, Lcom/gridlayout/GridLayout;->addView(Landroid/view/View;)V

    .line 132
    const v3, 0x7f090127

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p1, Lcom/zhangdan/preferential/data/model/Bank;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const v3, 0x7f090125

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 134
    .local v0, icon:Landroid/widget/ImageView;
    iget-wide v3, p1, Lcom/zhangdan/preferential/data/model/Bank;->id:J

    invoke-static {v3, v4}, Lcom/zhangdan/preferential/utils/NetUtils;->composeBankIconUrl(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/zhangdan/preferential/BankConfigurationActivity;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    iget-object v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mRemainViews:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #item:Landroid/view/View;
    return-object v1
.end method

.method private addPlusItem()V
    .locals 6

    .prologue
    .line 148
    iget-object v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030050

    iget-object v4, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mGridView:Lcom/gridlayout/GridLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, item:Landroid/view/View;
    const v2, 0x7f090033

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 152
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mItemWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mGridView:Lcom/gridlayout/GridLayout;

    invoke-virtual {v2, v0}, Lcom/gridlayout/GridLayout;->addView(Landroid/view/View;)V

    .line 156
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #item:Landroid/view/View;
    const v2, 0x7f090125

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020085

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 157
    return-void
.end method

.method private clearItems()V
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mGridView:Lcom/gridlayout/GridLayout;

    invoke-virtual {v1}, Lcom/gridlayout/GridLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mGridView:Lcom/gridlayout/GridLayout;

    iget-object v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mGridView:Lcom/gridlayout/GridLayout;

    invoke-virtual {v2, v0}, Lcom/gridlayout/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gridlayout/GridLayout;->removeView(Landroid/view/View;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mContentView:Landroid/view/ViewGroup;

    .line 94
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mEditView:Landroid/widget/Button;

    .line 95
    return-void
.end method

.method private getRemainBankIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v2, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mRemainViews:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 113
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/Bank;

    .line 114
    .local v0, bank:Lcom/zhangdan/preferential/data/model/Bank;
    iget-wide v4, v0, Lcom/zhangdan/preferential/data/model/Bank;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .end local v0           #bank:Lcom/zhangdan/preferential/data/model/Bank;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    return-object v2
.end method

.method private initImageLoader()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    .line 87
    const v0, 0x7f020274

    invoke-static {p0, v0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 88
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setSaveThumbnail(Z)V

    .line 89
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setAnimation(I)V

    .line 90
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 98
    const v0, 0x7f0902f5

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0701e5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mEditView:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mEditView:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method private loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-virtual {v0, p2, p0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 145
    return-void
.end method

.method private populateBanks(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Bank;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, banks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Bank;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/Bank;

    .line 106
    .local v0, bank:Lcom/zhangdan/preferential/data/model/Bank;
    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->addItem(Lcom/zhangdan/preferential/data/model/Bank;)Landroid/view/ViewGroup;

    goto :goto_0

    .line 108
    .end local v0           #bank:Lcom/zhangdan/preferential/data/model/Bank;
    :cond_0
    return-void
.end method

.method private removeItem(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mGridView:Lcom/gridlayout/GridLayout;

    invoke-virtual {v0, p1}, Lcom/gridlayout/GridLayout;->removeView(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mRemainViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 186
    return-void
.end method

.method private updateEditable()V
    .locals 5

    .prologue
    .line 189
    iget-object v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mEditView:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mEditable:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const v2, 0x7f0701ed

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(I)V

    .line 190
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mGridView:Lcom/gridlayout/GridLayout;

    invoke-virtual {v2}, Lcom/gridlayout/GridLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 191
    iget-object v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mGridView:Lcom/gridlayout/GridLayout;

    invoke-virtual {v2, v0}, Lcom/gridlayout/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 192
    .local v1, parent:Landroid/view/ViewGroup;
    iget-boolean v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mEditable:Z

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 193
    const v2, 0x7f09014f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mEditable:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    .end local v0           #i:I
    .end local v1           #parent:Landroid/view/ViewGroup;
    :cond_0
    const v2, 0x7f0701ec

    goto :goto_0

    .line 193
    .restart local v0       #i:I
    .restart local v1       #parent:Landroid/view/ViewGroup;
    :cond_1
    const/4 v2, 0x4

    goto :goto_2

    .line 195
    .end local v1           #parent:Landroid/view/ViewGroup;
    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 162
    .local v0, id:I
    const v3, 0x7f090037

    if-ne v0, v3, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->finish()V

    .line 164
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setReturnTransition(Landroid/app/Activity;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const v3, 0x7f090025

    if-ne v0, v3, :cond_4

    .line 166
    iget-boolean v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mEditable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mIsModified:Z

    if-eqz v3, :cond_2

    .line 167
    new-instance v3, Lcom/zhangdan/preferential/BankConfigurationActivity$DeleteBankTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/zhangdan/preferential/BankConfigurationActivity$DeleteBankTask;-><init>(Lcom/zhangdan/preferential/BankConfigurationActivity;Lcom/zhangdan/preferential/BankConfigurationActivity$1;)V

    new-array v4, v1, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/zhangdan/preferential/BankConfigurationActivity$DeleteBankTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 170
    :cond_2
    iget-boolean v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mEditable:Z

    if-ne v3, v2, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mEditable:Z

    .line 171
    invoke-direct {p0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->updateEditable()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 170
    goto :goto_1

    .line 172
    :cond_4
    const v1, 0x7f090033

    if-ne v0, v1, :cond_5

    .line 173
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zhangdan.preferential.MIX_ADD_BANK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/BankConfigurationActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setEnterTransition(Landroid/app/Activity;)V

    goto :goto_0

    .line 176
    :cond_5
    iget-boolean v1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mEditable:Z

    if-eqz v1, :cond_0

    .line 177
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/BankConfigurationActivity;->removeItem(Landroid/view/View;)V

    .line 178
    iput-boolean v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mIsModified:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedBundleInstance"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->setContentView(I)V

    .line 52
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    new-instance v0, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    .line 54
    new-instance v0, Lcom/zhangdan/preferential/utils/JsonParser;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    .line 55
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->getScreenWidth(Landroid/app/Activity;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mItemWidth:I

    .line 56
    new-instance v0, Lcom/zhangdan/preferential/utils/WeiboKeeper;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/WeiboKeeper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mWeiboKeeper:Lcom/zhangdan/preferential/utils/WeiboKeeper;

    .line 57
    new-instance v0, Lcom/zhangdan/preferential/utils/WeiboManager;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/WeiboManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;

    .line 58
    invoke-direct {p0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->initImageLoader()V

    .line 60
    invoke-direct {p0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->findViews()V

    .line 61
    invoke-direct {p0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->initViews()V

    .line 62
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onResume()V

    .line 68
    iput-boolean v4, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mIsModified:Z

    .line 69
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mRemainViews:Ljava/util/Set;

    .line 71
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03004f

    iget-object v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    const v1, 0x7f09014e

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/BankConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gridlayout/GridLayout;

    iput-object v1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mGridView:Lcom/gridlayout/GridLayout;

    .line 77
    invoke-direct {p0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->addPlusItem()V

    .line 79
    iput-boolean v4, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->mEditable:Z

    .line 80
    invoke-direct {p0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->updateEditable()V

    .line 82
    new-instance v1, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;-><init>(Lcom/zhangdan/preferential/BankConfigurationActivity;Lcom/zhangdan/preferential/BankConfigurationActivity$1;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/BankConfigurationActivity$GetMyBanksTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    return-void
.end method
