.class public Lcom/zhangdan/preferential/RecommendDetailActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;
.source "RecommendDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;,
        Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;,
        Lcom/zhangdan/preferential/RecommendDetailActivity$GetNextPageTask;,
        Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;,
        Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;
    }
.end annotation


# instance fields
.field private imageManager:Lcom/novoda/imageloader/core/ImageManager;

.field private imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field private mAdapter:Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;

.field private mBackView:Landroid/view/View;

.field private mCallManager:Lcom/zhangdan/preferential/utils/CallManager;

.field private mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mFavIconView:Landroid/widget/ImageView;

.field private mFavView:Landroid/view/ViewGroup;

.field private mHideImage:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsFavourite:Z

.field private mLayerView:Landroid/view/View;

.field private mListHeaderHeight:I

.field private mListView:Landroid/widget/ListView;

.field private mPage:I

.field private mParser:Lcom/zhangdan/preferential/utils/JsonParser;

.field private mPhotoHeight:I

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

.field private mProm:Lcom/zhangdan/preferential/data/model/Promotion;

.field private mPromId:Ljava/lang/String;

.field private mRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

.field private mSendManager:Lcom/zhangdan/preferential/utils/SendManager;

.field private mTitleView:Landroid/widget/TextView;

.field private mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPage:I

    .line 208
    new-instance v0, Lcom/zhangdan/preferential/RecommendDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/RecommendDetailActivity$1;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 382
    return-void
.end method

.method static synthetic access$100(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->getInitPageRequest()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zhangdan/preferential/RecommendDetailActivity;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/RecommendDetailActivity;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/zhangdan/preferential/RecommendDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/data/model/Promotion;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/data/model/Promotion;)Lcom/zhangdan/preferential/data/model/Promotion;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/zhangdan/preferential/RecommendDetailActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPage:I

    return p1
.end method

.method static synthetic access$1412(Lcom/zhangdan/preferential/RecommendDetailActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iget v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPage:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPage:I

    return v0
.end method

.method static synthetic access$1500(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/utils/RequestGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/novoda/imageloader/core/ImageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/zhangdan/preferential/RecommendDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mHideImage:Z

    return v0
.end method

.method static synthetic access$200(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->getNextPageRequest()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/utils/JsonParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mAdapter:Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/data/model/PromotionExtra;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->updateMenuItems(Lcom/zhangdan/preferential/data/model/PromotionExtra;)V

    return-void
.end method

.method static synthetic access$900(Lcom/zhangdan/preferential/RecommendDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 121
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mBackView:Landroid/view/View;

    .line 122
    const v0, 0x7f09015b

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f0902f5

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mTitleView:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f090321

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 126
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 127
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 128
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mListView:Landroid/widget/ListView;

    .line 129
    const v0, 0x7f090322

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mLayerView:Landroid/view/View;

    .line 130
    const v0, 0x7f090325

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mFavView:Landroid/view/ViewGroup;

    .line 131
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mFavView:Landroid/view/ViewGroup;

    const v1, 0x7f090125

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mFavIconView:Landroid/widget/ImageView;

    .line 132
    return-void
.end method

.method private getInitPageRequest()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 103
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    .line 104
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    if-nez v0, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 108
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPromId:Ljava/lang/String;

    iget v3, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPage:I

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getPromotionExtraRequest(Lcom/zhangdan/preferential/data/model/Position;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0
.end method

.method private getNextPageRequest()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 112
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    .line 113
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    if-nez v0, :cond_0

    .line 114
    const/4 v1, 0x0

    .line 117
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPromId:Ljava/lang/String;

    iget v3, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getPromotionExtraRequest(Lcom/zhangdan/preferential/data/model/Position;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0
.end method

.method private initImageLoader()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    .line 154
    const v0, 0x7f020380

    invoke-static {p0, v0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 155
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setAnimation(I)V

    .line 156
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mAdapter:Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;

    .line 136
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mAdapter:Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 138
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mAdapter:Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mBackView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 142
    const v0, 0x7f090326

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v0, 0x7f090324

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v0, 0x7f090325

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method

.method private loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-virtual {v0, p2, p0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 150
    return-void
.end method

.method private markFavView()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mFavIconView:Landroid/widget/ImageView;

    const v1, 0x7f0201e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    return-void
.end method

.method private unmarkFavView()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mFavIconView:Landroid/widget/ImageView;

    const v1, 0x7f0201e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 278
    return-void
.end method

.method private updateMenuItems(Lcom/zhangdan/preferential/data/model/PromotionExtra;)V
    .locals 1
    .parameter "extra"

    .prologue
    .line 264
    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/PromotionExtra;->isFav()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mIsFavourite:Z

    .line 265
    iget-boolean v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mIsFavourite:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->markFavView()V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->unmarkFavView()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onBackPressed()V

    .line 205
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setReturnTransition(Landroid/app/Activity;)V

    .line 206
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 162
    :sswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->finish()V

    .line 163
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setReturnTransition(Landroid/app/Activity;)V

    goto :goto_0

    .line 166
    :sswitch_1
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mSendManager:Lcom/zhangdan/preferential/utils/SendManager;

    iget-object v3, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    invoke-virtual {v2, v3, v0}, Lcom/zhangdan/preferential/utils/SendManager;->buildDialog(Lcom/zhangdan/preferential/data/model/Promotion;Landroid/graphics/Bitmap;)Landroid/app/Dialog;

    move-result-object v1

    .line 172
    .local v1, d:Landroid/app/Dialog;
    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 178
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #d:Landroid/app/Dialog;
    :sswitch_2
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mCallManager:Lcom/zhangdan/preferential/utils/CallManager;

    iget-object v3, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    invoke-virtual {v3}, Lcom/zhangdan/preferential/data/model/Promotion;->getTels()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/utils/CallManager;->buildDialog([Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :sswitch_3
    iget-boolean v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mIsFavourite:Z

    if-nez v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    iget-object v4, v4, Lcom/zhangdan/preferential/data/model/Promotion;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/zhangdan/preferential/utils/WeiboManager;->markPromFav(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->markFavView()V

    .line 189
    iput-boolean v5, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mIsFavourite:Z

    goto :goto_0

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/Promotion;

    iget-object v4, v4, Lcom/zhangdan/preferential/data/model/Promotion;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/zhangdan/preferential/utils/WeiboManager;->unmarkPromFav(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->unmarkFavView()V

    .line 195
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mIsFavourite:Z

    goto :goto_0

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090037 -> :sswitch_0
        0x7f090324 -> :sswitch_2
        0x7f090325 -> :sswitch_3
        0x7f090326 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f0300f1

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->setContentView(I)V

    .line 81
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    new-instance v0, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    .line 83
    new-instance v0, Lcom/zhangdan/preferential/utils/JsonParser;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    .line 84
    new-instance v0, Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/PositionProvider;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    .line 85
    new-instance v0, Lcom/zhangdan/preferential/utils/SendManager;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/SendManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mSendManager:Lcom/zhangdan/preferential/utils/SendManager;

    .line 86
    new-instance v0, Lcom/zhangdan/preferential/utils/CallManager;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/CallManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mCallManager:Lcom/zhangdan/preferential/utils/CallManager;

    .line 87
    new-instance v0, Lcom/zhangdan/preferential/utils/WeiboManager;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/WeiboManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;

    .line 88
    invoke-static {p0}, Lcom/zhangdan/preferential/data/AppConfig;->isHideImage(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mHideImage:Z

    .line 89
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->initImageLoader()V

    .line 90
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "prom_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPromId:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mPhotoHeight:I

    .line 93
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mListHeaderHeight:I

    .line 96
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViews()V

    .line 97
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->initViews()V

    .line 99
    new-instance v0, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/RecommendDetailActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->getInitPageRequest()Lorg/json/JSONObject;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 11
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 224
    if-nez p2, :cond_1

    .line 225
    const/4 v7, 0x0

    .line 233
    .local v7, scrollY:I
    :goto_0
    iget-object v8, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mLayerView:Landroid/view/View;

    invoke-virtual {v8, v10, v7}, Landroid/view/View;->scrollTo(II)V

    .line 237
    if-le p4, v9, :cond_0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    if-gt v8, v9, :cond_3

    .line 257
    :cond_0
    :goto_1
    return-void

    .line 226
    .end local v7           #scrollY:I
    :cond_1
    const/4 v8, 0x2

    if-lt p4, v8, :cond_2

    if-ne p2, v9, :cond_2

    .line 227
    iget-object v8, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 228
    .local v2, bottom:I
    iget v8, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mListHeaderHeight:I

    sub-int v7, v8, v2

    .line 229
    .restart local v7       #scrollY:I
    goto :goto_0

    .line 230
    .end local v2           #bottom:I
    .end local v7           #scrollY:I
    :cond_2
    iget v7, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mListHeaderHeight:I

    .restart local v7       #scrollY:I
    goto :goto_0

    .line 241
    :cond_3
    const/4 v1, 0x0

    .line 242
    .local v1, alpha:F
    if-nez p2, :cond_4

    .line 243
    const/4 v1, 0x0

    .line 254
    :goto_2
    const/high16 v8, 0x437f

    mul-float/2addr v8, v1

    float-to-int v8, v8

    shl-int/lit8 v0, v8, 0x18

    .line 255
    .local v0, a:I
    const v3, 0xffffff

    .line 256
    .local v3, color:I
    iget-object v8, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->mTitleView:Landroid/widget/TextView;

    add-int v9, v0, v3

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 244
    .end local v0           #a:I
    .end local v3           #color:I
    :cond_4
    if-ne p2, v9, :cond_5

    .line 245
    invoke-virtual {p1, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 246
    .local v6, firstView:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 247
    .local v5, firstHeight:I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 249
    .local v4, firstBottom:I
    const/high16 v8, 0x3f80

    int-to-float v9, v4

    int-to-float v10, v5

    div-float/2addr v9, v10

    sub-float v1, v8, v9

    .line 250
    goto :goto_2

    .line 251
    .end local v4           #firstBottom:I
    .end local v5           #firstHeight:I
    .end local v6           #firstView:Landroid/view/View;
    :cond_5
    const/high16 v1, 0x3f80

    goto :goto_2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 261
    return-void
.end method
