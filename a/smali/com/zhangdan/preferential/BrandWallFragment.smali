.class public Lcom/zhangdan/preferential/BrandWallFragment;
.super Lcom/zhangdan/app/activities/BaseFragment;
.source "BrandWallFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/BrandWallFragment$1;,
        Lcom/zhangdan/preferential/BrandWallFragment$GetBrandListTask;
    }
.end annotation


# instance fields
.field protected imageManager:Lcom/novoda/imageloader/core/ImageManager;

.field protected imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field private mGridContainer:Landroid/view/ViewGroup;

.field private mItemWidth:I

.field private mParser:Lcom/zhangdan/preferential/utils/JsonParser;

.field private mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragment;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/zhangdan/preferential/BrandWallFragment;)Lcom/zhangdan/preferential/utils/PositionProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/preferential/BrandWallFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/preferential/BrandWallFragment;)Lcom/zhangdan/preferential/utils/JsonParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/preferential/BrandWallFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/preferential/BrandWallFragment;Lcom/zhangdan/preferential/data/model/Brand;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/BrandWallFragment;->addBrand(Lcom/zhangdan/preferential/data/model/Brand;)V

    return-void
.end method

.method private addBrand(Lcom/zhangdan/preferential/data/model/Brand;)V
    .locals 7
    .parameter "b"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/zhangdan/preferential/BrandWallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030081

    iget-object v5, p0, Lcom/zhangdan/preferential/BrandWallFragment;->mGridContainer:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 107
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/zhangdan/preferential/BrandWallFragment;->mItemWidth:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    iget-object v3, p0, Lcom/zhangdan/preferential/BrandWallFragment;->mGridContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    const v3, 0x7f090125

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 111
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v3, p1, Lcom/zhangdan/preferential/data/model/Brand;->iconUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/zhangdan/preferential/BrandWallFragment;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 112
    const v3, 0x7f090151

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    .local v1, tv:Landroid/widget/TextView;
    iget-object v3, p1, Lcom/zhangdan/preferential/data/model/Brand;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/zhangdan/preferential/BrandWallFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/BrandWallFragment;->mGridContainer:Landroid/view/ViewGroup;

    .line 76
    return-void
.end method

.method private initImageLoader()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/BrandWallFragment;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    .line 50
    invoke-virtual {p0}, Lcom/zhangdan/preferential/BrandWallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f020274

    invoke-static {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/BrandWallFragment;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 51
    iget-object v0, p0, Lcom/zhangdan/preferential/BrandWallFragment;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setSaveThumbnail(Z)V

    .line 52
    iget-object v0, p0, Lcom/zhangdan/preferential/BrandWallFragment;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setAnimation(I)V

    .line 53
    return-void
.end method

.method private initViews()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method


# virtual methods
.method public getActionBarView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter "context"

    .prologue
    .line 117
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initActionBarView()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method protected loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zhangdan/preferential/BrandWallFragment;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/BrandWallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/zhangdan/preferential/BrandWallFragment;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 63
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/zhangdan/preferential/BrandWallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/utils/ViewUtils;->getScreenWidth(Landroid/app/Activity;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/zhangdan/preferential/BrandWallFragment;->mItemWidth:I

    .line 69
    invoke-direct {p0}, Lcom/zhangdan/preferential/BrandWallFragment;->findViews()V

    .line 70
    invoke-direct {p0}, Lcom/zhangdan/preferential/BrandWallFragment;->initViews()V

    .line 71
    new-instance v0, Lcom/zhangdan/preferential/BrandWallFragment$GetBrandListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/BrandWallFragment$GetBrandListTask;-><init>(Lcom/zhangdan/preferential/BrandWallFragment;Lcom/zhangdan/preferential/BrandWallFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/BrandWallFragment$GetBrandListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Lcom/zhangdan/preferential/utils/JsonParser;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/BrandWallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/BrandWallFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    .line 44
    new-instance v0, Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/PositionProvider;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/BrandWallFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    .line 45
    invoke-direct {p0}, Lcom/zhangdan/preferential/BrandWallFragment;->initImageLoader()V

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 57
    const v0, 0x7f030051

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
