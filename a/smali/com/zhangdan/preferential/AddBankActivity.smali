.class public Lcom/zhangdan/preferential/AddBankActivity;
.super Lcom/zhangdan/preferential/BaseActivity;
.source "AddBankActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/AddBankActivity$1;,
        Lcom/zhangdan/preferential/AddBankActivity$SaveBankTask;,
        Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;
    }
.end annotation


# instance fields
.field protected imageManager:Lcom/novoda/imageloader/core/ImageManager;

.field protected imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field private mCheckedViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContentView:Lcom/gridlayout/GridLayout;

.field private mEditView:Landroid/widget/Button;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemWidth:I

.field private mParser:Lcom/zhangdan/preferential/utils/JsonParser;

.field private mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

.field private mWeiboKeeper:Lcom/zhangdan/preferential/utils/WeiboKeeper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/zhangdan/preferential/BaseActivity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->mCheckedViews:Ljava/util/Set;

    .line 178
    return-void
.end method

.method static synthetic access$200(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/utils/WeiboKeeper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->mWeiboKeeper:Lcom/zhangdan/preferential/utils/WeiboKeeper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/utils/RequestGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/utils/JsonParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/preferential/AddBankActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/AddBankActivity;->populateBanks(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/zhangdan/preferential/AddBankActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/zhangdan/preferential/AddBankActivity;->getSelectedBankIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addItem(Lcom/zhangdan/preferential/data/model/Bank;Z)V
    .locals 7
    .parameter "bank"
    .parameter "contains"

    .prologue
    .line 75
    iget-object v3, p0, Lcom/zhangdan/preferential/AddBankActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030048

    iget-object v5, p0, Lcom/zhangdan/preferential/AddBankActivity;->mContentView:Lcom/gridlayout/GridLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 76
    .local v1, item:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 77
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/zhangdan/preferential/AddBankActivity;->mItemWidth:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 78
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v3, p0, Lcom/zhangdan/preferential/AddBankActivity;->mContentView:Lcom/gridlayout/GridLayout;

    invoke-virtual {v3, v1}, Lcom/gridlayout/GridLayout;->addView(Landroid/view/View;)V

    .line 81
    const v3, 0x7f090127

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p1, Lcom/zhangdan/preferential/data/model/Bank;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v3, 0x7f090125

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 83
    .local v0, icon:Landroid/widget/ImageView;
    iget-wide v3, p1, Lcom/zhangdan/preferential/data/model/Bank;->id:J

    invoke-static {v3, v4}, Lcom/zhangdan/preferential/utils/NetUtils;->composeBankIconUrl(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/zhangdan/preferential/AddBankActivity;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    if-eqz p2, :cond_0

    .line 87
    invoke-direct {p0, v1}, Lcom/zhangdan/preferential/AddBankActivity;->check(Landroid/view/View;)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-direct {p0, v1}, Lcom/zhangdan/preferential/AddBankActivity;->uncheck(Landroid/view/View;)V

    goto :goto_0
.end method

.method private check(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/zhangdan/preferential/AddBankActivity;->mCheckedViews:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, p1

    .line 140
    check-cast v0, Landroid/view/ViewGroup;

    .line 141
    .local v0, parent:Landroid/view/ViewGroup;
    const v1, 0x7f090126

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/AddBankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->mEditView:Landroid/widget/Button;

    .line 64
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/AddBankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gridlayout/GridLayout;

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->mContentView:Lcom/gridlayout/GridLayout;

    .line 65
    return-void
.end method

.method private getSelectedBankIds()Ljava/util/List;
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
    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v2, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/zhangdan/preferential/AddBankActivity;->mCheckedViews:Ljava/util/Set;

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

    .line 126
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/Bank;

    .line 127
    .local v0, bank:Lcom/zhangdan/preferential/data/model/Bank;
    iget-wide v4, v0, Lcom/zhangdan/preferential/data/model/Bank;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v0           #bank:Lcom/zhangdan/preferential/data/model/Bank;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    return-object v2
.end method

.method private initImageLoader()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    .line 95
    const v0, 0x7f020275

    invoke-static {p0, v0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 96
    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setSaveThumbnail(Z)V

    .line 97
    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setAnimation(I)V

    .line 98
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 68
    const v0, 0x7f0902f5

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/AddBankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0701e5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/AddBankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->mEditView:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->mEditView:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method private loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-virtual {v0, p2, p0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 103
    return-void
.end method

.method private populateBanks(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Bank;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Bank;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, banks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Bank;>;"
    .local p2, myBanks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Bank;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/Bank;

    .line 146
    .local v0, bank:Lcom/zhangdan/preferential/data/model/Bank;
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 147
    .local v1, contains:Z
    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/AddBankActivity;->addItem(Lcom/zhangdan/preferential/data/model/Bank;Z)V

    goto :goto_0

    .line 149
    .end local v0           #bank:Lcom/zhangdan/preferential/data/model/Bank;
    .end local v1           #contains:Z
    :cond_0
    return-void
.end method

.method private uncheck(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/zhangdan/preferential/AddBankActivity;->mCheckedViews:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v0, p1

    .line 134
    check-cast v0, Landroid/view/ViewGroup;

    .line 135
    .local v0, parent:Landroid/view/ViewGroup;
    const v1, 0x7f090126

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 108
    .local v0, id:I
    const v1, 0x7f090037

    if-ne v0, v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/zhangdan/preferential/AddBankActivity;->finish()V

    .line 121
    :goto_0
    return-void

    .line 111
    :cond_0
    const v1, 0x7f090025

    if-ne v0, v1, :cond_1

    .line 112
    new-instance v1, Lcom/zhangdan/preferential/AddBankActivity$SaveBankTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/AddBankActivity$SaveBankTask;-><init>(Lcom/zhangdan/preferential/AddBankActivity;Lcom/zhangdan/preferential/AddBankActivity$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/AddBankActivity$SaveBankTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/preferential/AddBankActivity;->mCheckedViews:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/AddBankActivity;->uncheck(Landroid/view/View;)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/AddBankActivity;->check(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedBundleInstance"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/zhangdan/preferential/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/AddBankActivity;->setContentView(I)V

    .line 49
    new-instance v0, Lcom/zhangdan/preferential/utils/JsonParser;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    .line 50
    new-instance v0, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    .line 51
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->getScreenWidth(Landroid/app/Activity;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->mItemWidth:I

    .line 53
    new-instance v0, Lcom/zhangdan/preferential/utils/WeiboKeeper;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/WeiboKeeper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->mWeiboKeeper:Lcom/zhangdan/preferential/utils/WeiboKeeper;

    .line 54
    invoke-direct {p0}, Lcom/zhangdan/preferential/AddBankActivity;->initImageLoader()V

    .line 56
    invoke-direct {p0}, Lcom/zhangdan/preferential/AddBankActivity;->findViews()V

    .line 57
    invoke-direct {p0}, Lcom/zhangdan/preferential/AddBankActivity;->initViews()V

    .line 59
    new-instance v0, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;-><init>(Lcom/zhangdan/preferential/AddBankActivity;Lcom/zhangdan/preferential/AddBankActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/AddBankActivity$GetBankTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    return-void
.end method
