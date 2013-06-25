.class public Lcom/zhangdan/preferential/TagFragment;
.super Lcom/zhangdan/app/activities/BaseFragment;
.source "TagFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/TagFragment$1;,
        Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;,
        Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;,
        Lcom/zhangdan/preferential/TagFragment$GetTagTask;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentView:Landroid/view/View;

.field private mHistoryView:Landroid/widget/ListView;

.field private mLeftContentView:Landroid/widget/ListView;

.field private mMainTagAdapter:Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;

.field private mParser:Lcom/zhangdan/preferential/utils/JsonParser;

.field private mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

.field private mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

.field private mRightContentView:Landroid/widget/ListView;

.field private mSearchView:Landroid/view/View;

.field private mSubTagAdapter:Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragment;-><init>()V

    .line 192
    return-void
.end method

.method static synthetic access$100(Lcom/zhangdan/preferential/TagFragment;)Lcom/zhangdan/preferential/utils/RequestGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/preferential/TagFragment;)Lcom/zhangdan/preferential/utils/JsonParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/preferential/TagFragment;)Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mMainTagAdapter:Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/preferential/TagFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/preferential/TagFragment;)Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mSubTagAdapter:Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;

    return-object v0
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090338

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mLeftContentView:Landroid/widget/ListView;

    .line 72
    iget-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090339

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mRightContentView:Landroid/widget/ListView;

    .line 73
    iget-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mContentView:Landroid/view/View;

    .line 74
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;-><init>(Lcom/zhangdan/preferential/TagFragment;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mMainTagAdapter:Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;

    .line 78
    iget-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mLeftContentView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/TagFragment;->mMainTagAdapter:Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mLeftContentView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/TagFragment;->mMainTagAdapter:Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    new-instance v0, Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;-><init>(Lcom/zhangdan/preferential/TagFragment;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mSubTagAdapter:Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;

    .line 82
    iget-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mRightContentView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/TagFragment;->mSubTagAdapter:Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mRightContentView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/TagFragment;->mSubTagAdapter:Lcom/zhangdan/preferential/TagFragment$SubTagAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/zhangdan/preferential/TagFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method


# virtual methods
.method public getActionBarView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter "context"

    .prologue
    .line 234
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initActionBarView()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    invoke-direct {p0}, Lcom/zhangdan/preferential/TagFragment;->findViews()V

    .line 55
    invoke-direct {p0}, Lcom/zhangdan/preferential/TagFragment;->initViews()V

    .line 57
    invoke-virtual {p0}, Lcom/zhangdan/preferential/TagFragment;->startLoadTag()V

    .line 58
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 91
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_OPEN_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/TagFragment;->startActivity(Landroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/zhangdan/preferential/TagFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/preferential/utils/ViewUtils;->setEnterTransition(Landroid/app/Activity;)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x7f090027
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/zhangdan/preferential/TagFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mActivity:Landroid/app/Activity;

    .line 46
    new-instance v0, Lcom/zhangdan/preferential/utils/JsonParser;

    iget-object v1, p0, Lcom/zhangdan/preferential/TagFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    .line 47
    new-instance v0, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    .line 48
    new-instance v0, Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/PositionProvider;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/TagFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    .line 49
    const v0, 0x7f030108

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPositionUpdated()V
    .locals 4

    .prologue
    .line 100
    iget-object v1, p0, Lcom/zhangdan/preferential/TagFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    .line 101
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    new-instance v1, Lcom/zhangdan/preferential/TagFragment$GetTagTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/TagFragment$GetTagTask;-><init>(Lcom/zhangdan/preferential/TagFragment;Lcom/zhangdan/preferential/TagFragment$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/zhangdan/preferential/data/model/Position;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/TagFragment$GetTagTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    return-void
.end method

.method public startLoadTag()V
    .locals 4

    .prologue
    .line 61
    iget-object v1, p0, Lcom/zhangdan/preferential/TagFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    .line 62
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    if-nez v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/zhangdan/preferential/TagFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v1, p0}, Lcom/zhangdan/preferential/utils/PositionProvider;->setPositionListener(Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v1, Lcom/zhangdan/preferential/TagFragment$GetTagTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/TagFragment$GetTagTask;-><init>(Lcom/zhangdan/preferential/TagFragment;Lcom/zhangdan/preferential/TagFragment$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/zhangdan/preferential/data/model/Position;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/TagFragment$GetTagTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
