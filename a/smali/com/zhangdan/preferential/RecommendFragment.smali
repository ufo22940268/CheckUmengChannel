.class public Lcom/zhangdan/preferential/RecommendFragment;
.super Lcom/zhangdan/app/activities/BaseFragment;
.source "RecommendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/preferential/widget/HorizontalScrollBar$OnCategoryClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/RecommendFragment$MenuAdapter;,
        Lcom/zhangdan/preferential/RecommendFragment$GetMenuTask;,
        Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;,
        Lcom/zhangdan/preferential/RecommendFragment$GetNextPageTask;,
        Lcom/zhangdan/preferential/RecommendFragment$GetInitPageTask;,
        Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;
    }
.end annotation


# instance fields
.field protected imageManager:Lcom/novoda/imageloader/core/ImageManager;

.field protected imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field private mAdapter:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;

.field private mCity:Ljava/lang/String;

.field private mContentView:Landroid/view/ViewGroup;

.field private mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mHasInitted:Z

.field private mHideImage:Z

.field private mInitPageListener:Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuAdapter:Lcom/zhangdan/preferential/RecommendFragment$MenuAdapter;

.field private mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

.field private mOnReceiveListener:Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;

.field private mPage:I

.field private mParser:Lcom/zhangdan/preferential/utils/JsonParser;

.field private mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

.field private mPromptBar:Landroid/view/ViewGroup;

.field private mReceiveManager:Lcom/zhangdan/preferential/utils/PrefReceiverManager;

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

.field private mShowPrompt:Z

.field private mTagName:Ljava/lang/String;

.field private mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/MenuTag;",
            ">;"
        }
    .end annotation
.end field

.field private mTodayDialog:Landroid/app/AlertDialog;

.field private mTypeId:I

.field private mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;

.field protected transImageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragment;-><init>()V

    .line 71
    iput v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mPage:I

    .line 75
    iput v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mTypeId:I

    .line 137
    new-instance v0, Lcom/zhangdan/preferential/RecommendFragment$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/RecommendFragment$1;-><init>(Lcom/zhangdan/preferential/RecommendFragment;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mInitPageListener:Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;

    .line 144
    new-instance v0, Lcom/zhangdan/preferential/RecommendFragment$2;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/RecommendFragment$2;-><init>(Lcom/zhangdan/preferential/RecommendFragment;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mOnReceiveListener:Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;

    .line 326
    new-instance v0, Lcom/zhangdan/preferential/RecommendFragment$3;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/RecommendFragment$3;-><init>(Lcom/zhangdan/preferential/RecommendFragment;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 81
    return-void
.end method

.method static synthetic access$1000(Lcom/zhangdan/preferential/RecommendFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/zhangdan/preferential/RecommendFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/zhangdan/preferential/RecommendFragment;->mPage:I

    return p1
.end method

.method static synthetic access$1212(Lcom/zhangdan/preferential/RecommendFragment;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iget v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mPage:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mPage:I

    return v0
.end method

.method static synthetic access$1300(Lcom/zhangdan/preferential/RecommendFragment;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getInitPageRequest()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/zhangdan/preferential/RecommendFragment;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getNextPageRequest()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/zhangdan/preferential/RecommendFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/zhangdan/preferential/RecommendFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mHideImage:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/zhangdan/preferential/RecommendFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mTags:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/zhangdan/preferential/RecommendFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendFragment;->mTags:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/zhangdan/preferential/RecommendFragment;)Lcom/zhangdan/preferential/RecommendFragment$MenuAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mMenuAdapter:Lcom/zhangdan/preferential/RecommendFragment$MenuAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/zhangdan/preferential/RecommendFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendFragment;->disableCategorySelector()V

    return-void
.end method

.method static synthetic access$202(Lcom/zhangdan/preferential/RecommendFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/zhangdan/preferential/RecommendFragment;->mTypeId:I

    return p1
.end method

.method static synthetic access$2100(Lcom/zhangdan/preferential/RecommendFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendFragment;->enableCategorySelector()V

    return-void
.end method

.method static synthetic access$2200(Lcom/zhangdan/preferential/RecommendFragment;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/zhangdan/preferential/RecommendFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendFragment;->buildTodayDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/zhangdan/preferential/RecommendFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zhangdan/preferential/RecommendFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendFragment;->mTagName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zhangdan/preferential/RecommendFragment;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mTodayDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zhangdan/preferential/RecommendFragment;Lcom/zhangdan/preferential/data/model/MenuTag;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/RecommendFragment;->updateCategory(Lcom/zhangdan/preferential/data/model/MenuTag;)V

    return-void
.end method

.method static synthetic access$700(Lcom/zhangdan/preferential/RecommendFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/zhangdan/preferential/RecommendFragment;)Lcom/zhangdan/preferential/utils/JsonParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zhangdan/preferential/RecommendFragment;)Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mAdapter:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;

    return-object v0
.end method

.method private buildTodayDialog()V
    .locals 6

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03010c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/widget/TodayDialogView;

    .line 479
    .local v1, view:Lcom/zhangdan/preferential/widget/TodayDialogView;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment;->mTodayDialog:Landroid/app/AlertDialog;

    .line 482
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 483
    .local v0, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment;->mTodayDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f0a0057

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0a0058

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 484
    return-void
.end method

.method private configureCity()V
    .locals 5

    .prologue
    .line 229
    iget-object v3, p0, Lcom/zhangdan/preferential/RecommendFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v3}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v1

    .line 230
    .local v1, pos:Lcom/zhangdan/preferential/data/model/Position;
    if-eqz v1, :cond_0

    .line 231
    iget-object v3, p0, Lcom/zhangdan/preferential/RecommendFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-virtual {v3, v1}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getCityRequestUrl(Lcom/zhangdan/preferential/data/model/Position;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/preferential/RecommendFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    iget-object v4, p0, Lcom/zhangdan/preferential/RecommendFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    invoke-virtual {v4, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->parseUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateCity(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, city:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 234
    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mCity:Ljava/lang/String;

    .line 237
    .end local v0           #city:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private disableCategorySelector()V
    .locals 3

    .prologue
    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mActionBarView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 523
    .local v0, parent:Landroid/view/ViewGroup;
    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 524
    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v0           #parent:Landroid/view/ViewGroup;
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private enableCategorySelector()V
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mActionBarView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 531
    .local v0, parent:Landroid/view/ViewGroup;
    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 532
    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 533
    return-void
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f090321

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 208
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendFragment;->mRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 209
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mListView:Landroid/widget/ListView;

    .line 210
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f09030e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mPromptBar:Landroid/view/ViewGroup;

    .line 211
    return-void
.end method

.method private getInitPageRequest()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendFragment;->configureCity()V

    .line 241
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/RecommendFragment;->getPageRequest(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getNextPageRequest()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/RecommendFragment;->getPageRequest(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getPageRequest(I)Lorg/json/JSONObject;
    .locals 4
    .parameter "page"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mCity:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 250
    iget v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mTypeId:I

    invoke-static {v0}, Lcom/zhangdan/preferential/data/TypeConstants;->isWeekType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment;->mCity:Ljava/lang/String;

    iget v3, p0, Lcom/zhangdan/preferential/RecommendFragment;->mTypeId:I

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getDayPromotionListRequest(Ljava/lang/String;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment;->mCity:Ljava/lang/String;

    iget-object v3, p0, Lcom/zhangdan/preferential/RecommendFragment;->mTagName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getPromotionListRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initImageLoader()V
    .locals 7

    .prologue
    const v6, 0x7f040001

    const/16 v5, 0xf0

    const/16 v4, 0x59

    const/4 v3, 0x1

    .line 194
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    .line 195
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/zhangdan/preferential/utils/CommonMethod;->toPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/zhangdan/preferential/utils/CommonMethod;->toPx(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f020318

    invoke-static {v0, v1, v2}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(III)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 197
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-virtual {v0, v3}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setSaveThumbnail(Z)V

    .line 198
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-virtual {v0, v6}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setAnimation(I)V

    .line 200
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/zhangdan/preferential/utils/CommonMethod;->toPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/zhangdan/preferential/utils/CommonMethod;->toPx(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f0203a3

    invoke-static {v0, v1, v2}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(III)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->transImageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 202
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->transImageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-virtual {v0, v3}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setSaveThumbnail(Z)V

    .line 203
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->transImageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-virtual {v0, v6}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setAnimation(I)V

    .line 204
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendFragment;->mAdapter:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendFragment;->mAdapter:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 217
    new-instance v0, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    .line 218
    new-instance v0, Lcom/zhangdan/preferential/RecommendFragment$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/RecommendFragment$MenuAdapter;-><init>(Lcom/zhangdan/preferential/RecommendFragment;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mMenuAdapter:Lcom/zhangdan/preferential/RecommendFragment$MenuAdapter;

    .line 219
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendFragment;->mMenuAdapter:Lcom/zhangdan/preferential/RecommendFragment$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setContentWidth(I)V

    .line 222
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setContentHeight(I)V

    .line 224
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendFragment;->mMenuAdapter:Lcom/zhangdan/preferential/RecommendFragment$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendFragment;->mMenuAdapter:Lcom/zhangdan/preferential/RecommendFragment$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 226
    return-void
.end method

.method private needToRefresh()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mAdapter:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mCity:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCategory(Lcom/zhangdan/preferential/data/model/MenuTag;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mAdapter:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->setProms(Ljava/util/List;)V

    .line 167
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mAdapter:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->notifyDataSetChanged()V

    .line 168
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 169
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setForceRefreshing()V

    .line 170
    new-instance v0, Lcom/zhangdan/preferential/RecommendFragment$GetInitPageTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/RecommendFragment$GetInitPageTask;-><init>(Lcom/zhangdan/preferential/RecommendFragment;Lcom/zhangdan/preferential/RecommendFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/RecommendFragment$GetInitPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 171
    return-void
.end method

.method private updatePromptBar()V
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mTypeId:I

    const/4 v1, -0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mShowPrompt:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mPromptBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mPromptBar:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getActionBarView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .parameter "context"

    .prologue
    .line 509
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030007

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 510
    .local v0, view:Landroid/view/View;
    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mActionBarView:Landroid/view/View;

    .line 511
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->initActionBarView()V

    .line 512
    return-object v0
.end method

.method public initActionBarView()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    iget-boolean v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mHasInitted:Z

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mHasInitted:Z

    .line 119
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendFragment;->findViews()V

    .line 120
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendFragment;->initViews()V

    .line 122
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendFragment;->needToRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showLoading()V

    .line 124
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 125
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/utils/PositionProvider;->hasLoadedPosition()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    new-instance v0, Lcom/zhangdan/preferential/RecommendFragment$GetInitPageTask;

    invoke-direct {v0, p0, v3}, Lcom/zhangdan/preferential/RecommendFragment$GetInitPageTask;-><init>(Lcom/zhangdan/preferential/RecommendFragment;Lcom/zhangdan/preferential/RecommendFragment$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/RecommendFragment$GetInitPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    :cond_1
    :goto_1
    new-instance v0, Lcom/zhangdan/preferential/RecommendFragment$GetMenuTask;

    invoke-direct {v0, p0, v3}, Lcom/zhangdan/preferential/RecommendFragment$GetMenuTask;-><init>(Lcom/zhangdan/preferential/RecommendFragment;Lcom/zhangdan/preferential/RecommendFragment$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/RecommendFragment$GetMenuTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mReceiveManager:Lcom/zhangdan/preferential/utils/PrefReceiverManager;

    const-string v1, "com.zhangdan.preferential.UPDATE_CATEGORY"

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->registerReceiver(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mReceiveManager:Lcom/zhangdan/preferential/utils/PrefReceiverManager;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendFragment;->mOnReceiveListener:Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->setOnReceiveListener(Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendFragment;->mInitPageListener:Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/utils/PositionProvider;->setPositionListener(Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 458
    :goto_0
    return-void

    .line 448
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/MainFragmentActivity;

    .line 449
    .local v1, mainActivity:Lcom/zhangdan/app/activities/MainFragmentActivity;
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->showMenu()V

    goto :goto_0

    .line 452
    .end local v1           #mainActivity:Lcom/zhangdan/app/activities/MainFragmentActivity;
    :pswitch_1
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment;->mActionBarView:Landroid/view/View;

    const v3, 0x7f090040

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 453
    .local v0, abLeft:Landroid/view/View;
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 454
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v2}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->show()V

    goto :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x7f09003f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClickCategory(Lcom/zhangdan/preferential/data/model/MenuTag;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 461
    iget v0, p1, Lcom/zhangdan/preferential/data/model/MenuTag;->typeId:I

    iput v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mTypeId:I

    .line 462
    const-string v0, "\u5168\u90e8"

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const-string v0, ""

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mTagName:Ljava/lang/String;

    .line 468
    :goto_0
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendFragment;->updatePromptBar()V

    .line 469
    return-void

    .line 465
    :cond_0
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mTagName:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mAdapter:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;-><init>(Lcom/zhangdan/preferential/RecommendFragment;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mAdapter:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;

    .line 89
    :cond_0
    new-instance v0, Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/PositionProvider;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    .line 90
    new-instance v0, Lcom/zhangdan/preferential/utils/WeiboManager;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/utils/WeiboManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;

    .line 91
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/data/AppConfig;->isHideImage(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mHideImage:Z

    .line 92
    new-instance v0, Lcom/zhangdan/preferential/utils/JsonParser;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    .line 93
    new-instance v0, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    .line 94
    new-instance v0, Lcom/zhangdan/preferential/utils/PrefReceiverManager;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/utils/PrefReceiverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mReceiveManager:Lcom/zhangdan/preferential/utils/PrefReceiverManager;

    .line 95
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendFragment;->initImageLoader()V

    .line 96
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mContentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 105
    const v0, 0x7f0300f4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mContentView:Landroid/view/ViewGroup;

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mContentView:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 473
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseFragment;->onDetach()V

    .line 474
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment;->mReceiveManager:Lcom/zhangdan/preferential/utils/PrefReceiverManager;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->unregisterReceiver()V

    .line 475
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 187
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseFragment;->onResume()V

    .line 188
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701dd

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/RecommendFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    :cond_0
    return-void
.end method
