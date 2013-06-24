.class public Lcom/zhangdan/preferential/FavoriteFragment;
.super Lcom/zhangdan/app/activities/BaseFragment;
.source "FavoriteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/FavoriteFragment$1;,
        Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;,
        Lcom/zhangdan/preferential/FavoriteFragment$GetFavPromTask;,
        Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;
    }
.end annotation


# static fields
.field public static final MODE_PROM:I = 0x1

.field public static final MODE_SHOP:I


# instance fields
.field protected imageManager:Lcom/novoda/imageloader/core/ImageManager;

.field protected imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field private mAdapter:Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;

.field private mHideImage:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;

.field private mMode:I

.field private mParser:Lcom/zhangdan/preferential/utils/JsonParser;

.field private mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

.field private mPromSelectorView:Landroid/view/View;

.field private mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

.field private mShopSelectorView:Landroid/view/View;

.field private mTitleBar:Landroid/view/ViewGroup;

.field private mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mMode:I

    .line 63
    return-void
.end method

.method static synthetic access$1000(Lcom/zhangdan/preferential/FavoriteFragment;)Lcom/zhangdan/preferential/utils/PositionProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zhangdan/preferential/FavoriteFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mHideImage:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/zhangdan/preferential/FavoriteFragment;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/FavoriteFragment;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zhangdan/preferential/FavoriteFragment;)Lcom/zhangdan/preferential/widget/LoadingDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/preferential/FavoriteFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/zhangdan/preferential/FavoriteFragment;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/preferential/FavoriteFragment;)Lcom/zhangdan/preferential/utils/RequestGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/preferential/FavoriteFragment;)Lcom/zhangdan/preferential/utils/JsonParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zhangdan/preferential/FavoriteFragment;)Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mAdapter:Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zhangdan/preferential/FavoriteFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/zhangdan/preferential/FavoriteFragment;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/zhangdan/preferential/FavoriteFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/zhangdan/preferential/FavoriteFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private findViews(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "contentView"

    .prologue
    .line 115
    const v0, 0x7f090187

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mListView:Landroid/widget/ListView;

    .line 116
    return-void
.end method

.method private initImageLoader()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    .line 79
    invoke-virtual {p0}, Lcom/zhangdan/preferential/FavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f020380

    invoke-static {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 80
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setSaveThumbnail(Z)V

    .line 81
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setAnimation(I)V

    .line 82
    return-void
.end method

.method private initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "contentView"

    .prologue
    .line 119
    new-instance v0, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;-><init>(Lcom/zhangdan/preferential/FavoriteFragment;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mAdapter:Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;

    .line 120
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mAdapter:Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mAdapter:Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    return-void
.end method

.method private loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/FavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 87
    return-void
.end method

.method private updateByMode(Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 139
    const v2, 0x7f09018a

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, shop:Landroid/view/View;
    const v2, 0x7f09018b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, prom:Landroid/view/View;
    iget v2, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mMode:I

    if-nez v2, :cond_0

    .line 143
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :goto_0
    iget v2, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mMode:I

    if-nez v2, :cond_1

    .line 152
    new-instance v2, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;

    invoke-direct {v2, p0, v5}, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;-><init>(Lcom/zhangdan/preferential/FavoriteFragment;Lcom/zhangdan/preferential/FavoriteFragment$1;)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    :goto_1
    return-void

    .line 146
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 154
    :cond_1
    new-instance v2, Lcom/zhangdan/preferential/FavoriteFragment$GetFavPromTask;

    invoke-direct {v2, p0, v5}, Lcom/zhangdan/preferential/FavoriteFragment$GetFavPromTask;-><init>(Lcom/zhangdan/preferential/FavoriteFragment;Lcom/zhangdan/preferential/FavoriteFragment$1;)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/FavoriteFragment$GetFavPromTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method


# virtual methods
.method public getActionBarView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .parameter "context"

    .prologue
    .line 393
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, view:Landroid/view/View;
    iput-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mActionBarView:Landroid/view/View;

    .line 395
    invoke-virtual {p0}, Lcom/zhangdan/preferential/FavoriteFragment;->initActionBarView()V

    .line 396
    return-object v0
.end method

.method public initActionBarView()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    new-instance v0, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;-><init>(Lcom/zhangdan/preferential/FavoriteFragment;Lcom/zhangdan/preferential/FavoriteFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 106
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 136
    .end local p1
    :goto_0
    return-void

    .line 128
    .restart local p1
    :sswitch_0
    iget v1, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mMode:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    iput v1, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mMode:I

    .line 129
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/FavoriteFragment;->updateByMode(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 128
    .restart local p1
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 132
    :sswitch_1
    invoke-virtual {p0}, Lcom/zhangdan/preferential/FavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    .line 133
    .local v0, mainActivity:Lcom/zhangdan/app/activities/MainFragmentActivity;
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->showMenu()V

    goto :goto_0

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09003f -> :sswitch_1
        0x7f090188 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    new-instance v0, Lcom/zhangdan/preferential/utils/WeiboManager;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/FavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/utils/WeiboManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;

    .line 69
    new-instance v0, Lcom/zhangdan/preferential/utils/JsonParser;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/FavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    .line 70
    new-instance v0, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    .line 71
    new-instance v0, Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/PositionProvider;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    .line 72
    invoke-direct {p0}, Lcom/zhangdan/preferential/FavoriteFragment;->initImageLoader()V

    .line 73
    new-instance v0, Lcom/zhangdan/preferential/widget/LoadingDialog;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/FavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/widget/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;

    .line 74
    invoke-virtual {p0}, Lcom/zhangdan/preferential/FavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/data/AppConfig;->isHideImage(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mHideImage:Z

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 91
    if-nez p2, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/FavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/preferential/FavoriteFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    const v1, 0x7f030071

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 96
    .local v0, contentView:Landroid/view/ViewGroup;
    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/FavoriteFragment;->findViews(Landroid/view/ViewGroup;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/FavoriteFragment;->initViews(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseFragment;->onResume()V

    .line 111
    invoke-virtual {p0}, Lcom/zhangdan/preferential/FavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f04000d

    const v2, 0x7f04000e

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 112
    return-void
.end method
