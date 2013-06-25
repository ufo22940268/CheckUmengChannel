.class public Lcom/zhangdan/preferential/SpecificRecommendActivity;
.super Lcom/zhangdan/preferential/PrefBaseActivity;
.source "SpecificRecommendActivity.java"

# interfaces
.implements Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;,
        Lcom/zhangdan/preferential/SpecificRecommendActivity$GetNextPageTask;,
        Lcom/zhangdan/preferential/SpecificRecommendActivity$GetInitPageTask;,
        Lcom/zhangdan/preferential/SpecificRecommendActivity$AbsGetPageTask;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;

.field private mBankIds:[I

.field private mCity:Ljava/lang/String;

.field private mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mListView:Landroid/widget/ListView;

.field private mPage:I

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/zhangdan/preferential/PrefBaseActivity;-><init>()V

    .line 181
    new-instance v0, Lcom/zhangdan/preferential/SpecificRecommendActivity$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/SpecificRecommendActivity$1;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 193
    return-void
.end method

.method static synthetic access$100(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mAdapter:Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zhangdan/preferential/SpecificRecommendActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mPage:I

    return p1
.end method

.method static synthetic access$412(Lcom/zhangdan/preferential/SpecificRecommendActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iget v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mPage:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mPage:I

    return v0
.end method

.method static synthetic access$500(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->getInitPageRequest()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->getNextPageRequest()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private configureCity()V
    .locals 5

    .prologue
    .line 148
    iget-object v3, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v3}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v1

    .line 149
    .local v1, pos:Lcom/zhangdan/preferential/data/model/Position;
    if-eqz v1, :cond_0

    .line 150
    iget-object v3, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-virtual {v3, v1}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getCityRequestUrl(Lcom/zhangdan/preferential/data/model/Position;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    iget-object v4, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    invoke-virtual {v4, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->parseUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateCity(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, city:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 153
    iput-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mCity:Ljava/lang/String;

    .line 156
    .end local v0           #city:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f090321

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 61
    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mListView:Landroid/widget/ListView;

    .line 62
    return-void
.end method

.method private getInitPageRequest()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->configureCity()V

    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->getPageRequest(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getNextPageRequest()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->getPageRequest(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getPageRequest(I)Lorg/json/JSONObject;
    .locals 4
    .parameter "page"

    .prologue
    const/4 v0, 0x0

    .line 174
    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mCity:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    iget-object v2, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mCity:Ljava/lang/String;

    iget-object v3, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mBankIds:[I

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getAllPromotionListRequest(Ljava/lang/String;Ljava/lang/String;I[I)Lorg/json/JSONObject;

    move-result-object v0

    .line 177
    :cond_0
    return-object v0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 66
    new-instance v0, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mAdapter:Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;

    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mAdapter:Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mAdapter:Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    const v0, 0x7f09007e

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0701aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 284
    :goto_0
    return-void

    .line 282
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->finish()V

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x7f09003f
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedBundleInstance"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/zhangdan/preferential/PrefBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v2, 0x7f030106

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    .local v0, extra:Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mBankIds:[I

    .line 48
    invoke-direct {p0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->findViews()V

    .line 49
    invoke-direct {p0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->initViews()V

    .line 51
    iget-object v2, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v1

    .line 52
    .local v1, pos:Lcom/zhangdan/preferential/data/model/Position;
    if-nez v1, :cond_0

    .line 53
    iget-object v2, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v2, p0}, Lcom/zhangdan/preferential/utils/PositionProvider;->setPositionListener(Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v2, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetInitPageTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetInitPageTask;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;Lcom/zhangdan/preferential/SpecificRecommendActivity$1;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetInitPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onPositionUpdated()V
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showLoading()V

    .line 160
    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    .line 161
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    new-instance v1, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetInitPageTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetInitPageTask;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;Lcom/zhangdan/preferential/SpecificRecommendActivity$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetInitPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/zhangdan/preferential/PrefBaseActivity;->onResume()V

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UPDATE_POSITION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 77
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/zhangdan/preferential/PrefBaseActivity;->onStop()V

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UPDATE_POSITION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->stopService(Landroid/content/Intent;)Z

    .line 83
    return-void
.end method
