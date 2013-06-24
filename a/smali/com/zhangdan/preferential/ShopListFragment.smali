.class public Lcom/zhangdan/preferential/ShopListFragment;
.super Lcom/zhangdan/app/activities/BaseFragment;
.source "ShopListFragment.java"

# interfaces
.implements Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;,
        Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;,
        Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;,
        Lcom/zhangdan/preferential/ShopListFragment$GetNextPageTask;,
        Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;,
        Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;,
        Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;,
        Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;,
        Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;
    }
.end annotation


# static fields
.field public static final MODE_MAIN:I = 0x0

.field public static final MODE_SEARCH:I = 0x2

.field public static final MODE_TAG:I = 0x1


# instance fields
.field private mAbReturnView:Landroid/view/View;

.field private mAbTypeView:Landroid/widget/TextView;

.field private mAdapter:Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;

.field private mAddrView:Landroid/widget/TextView;

.field private mContentView:Landroid/view/ViewGroup;

.field private mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mHideImage:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKeyword:Ljava/lang/String;

.field public mListView:Landroid/widget/ListView;

.field private mMapView:Landroid/view/View;

.field private mMenuAdapter:Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;

.field private mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

.field private mMode:I

.field private mModeData:Landroid/os/Bundle;

.field private mOnReceiveListener:Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;

.field private mPage:I

.field private mParser:Lcom/zhangdan/preferential/utils/JsonParser;

.field private mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

.field private mProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

.field private mPullToRefreshMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

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

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingManager:Lcom/zhangdan/preferential/utils/SettingManager;

.field private mShowPrompt:Z

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

.field private mTotalPage:I

.field private mTypeId:I

.field private mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/ShopListFragment;-><init>(I)V

    .line 111
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 113
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragment;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTags:Ljava/util/List;

    .line 93
    iput v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mPage:I

    .line 94
    const v0, 0x1869f

    iput v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTotalPage:I

    .line 95
    iput v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTypeId:I

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mKeyword:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mPullToRefreshMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 196
    new-instance v0, Lcom/zhangdan/preferential/ShopListFragment$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/ShopListFragment$1;-><init>(Lcom/zhangdan/preferential/ShopListFragment;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mOnReceiveListener:Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;

    .line 613
    new-instance v0, Lcom/zhangdan/preferential/ShopListFragment$2;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/ShopListFragment$2;-><init>(Lcom/zhangdan/preferential/ShopListFragment;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 114
    iput p1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMode:I

    .line 115
    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/ShopListFragment;->setRetainInstance(Z)V

    .line 116
    return-void
.end method

.method static synthetic access$1000(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/JsonParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zhangdan/preferential/ShopListFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mAddrView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/zhangdan/preferential/ShopListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMode:I

    return v0
.end method

.method static synthetic access$1300(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mPullToRefreshMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/zhangdan/preferential/ShopListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mPage:I

    return p1
.end method

.method static synthetic access$1612(Lcom/zhangdan/preferential/ShopListFragment;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iget v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mPage:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mPage:I

    return v0
.end method

.method static synthetic access$1700(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/PositionProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/zhangdan/preferential/ShopListFragment;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment;->removeHeaderCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/zhangdan/preferential/ShopListFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTags:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/zhangdan/preferential/ShopListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTags:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMenuAdapter:Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/PositionProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment;->getInitPageRequest(Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment;->getNextPageRequest(Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/SettingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mSettingManager:Lcom/zhangdan/preferential/utils/SettingManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/zhangdan/preferential/ShopListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopListFragment;->disableCategorySelector()V

    return-void
.end method

.method static synthetic access$2700(Lcom/zhangdan/preferential/ShopListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopListFragment;->enableCategorySelector()V

    return-void
.end method

.method static synthetic access$2800(Lcom/zhangdan/preferential/ShopListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopListFragment;->buildConfirmDialog()V

    return-void
.end method

.method static synthetic access$2900(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/preferential/ShopListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mHideImage:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/zhangdan/preferential/ShopListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopListFragment;->buildTodayDialog()V

    return-void
.end method

.method static synthetic access$302(Lcom/zhangdan/preferential/ShopListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mHideImage:Z

    return p1
.end method

.method static synthetic access$400(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mAdapter:Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/preferential/ShopListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTypeId:I

    return v0
.end method

.method static synthetic access$502(Lcom/zhangdan/preferential/ShopListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTypeId:I

    return p1
.end method

.method static synthetic access$600(Lcom/zhangdan/preferential/ShopListFragment;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTodayDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/data/model/MenuTag;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment;->updateCategory(Lcom/zhangdan/preferential/data/model/MenuTag;)V

    return-void
.end method

.method static synthetic access$900(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/RequestGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    return-object v0
.end method

.method private buildConfirmDialog()V
    .locals 3

    .prologue
    .line 666
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0701ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0701ad

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0701af

    new-instance v2, Lcom/zhangdan/preferential/ShopListFragment$4;

    invoke-direct {v2, p0}, Lcom/zhangdan/preferential/ShopListFragment$4;-><init>(Lcom/zhangdan/preferential/ShopListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0701ae

    new-instance v2, Lcom/zhangdan/preferential/ShopListFragment$3;

    invoke-direct {v2, p0}, Lcom/zhangdan/preferential/ShopListFragment$3;-><init>(Lcom/zhangdan/preferential/ShopListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 681
    return-void
.end method

.method private buildTodayDialog()V
    .locals 6

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03010c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/widget/TodayDialogView;

    .line 685
    .local v1, view:Lcom/zhangdan/preferential/widget/TodayDialogView;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTodayDialog:Landroid/app/AlertDialog;

    .line 688
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 689
    .local v0, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTodayDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f0a0057

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0a0058

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 690
    return-void
.end method

.method private configureDefaultMode()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method private configureSearchMode()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mModeData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mModeData:Landroid/os/Bundle;

    const-string v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mKeyword:Ljava/lang/String;

    .line 234
    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mPullToRefreshMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 235
    return-void
.end method

.method private configureTagMode()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mModeData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mModeData:Landroid/os/Bundle;

    const-string v1, "type_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTypeId:I

    .line 226
    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mPullToRefreshMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 227
    return-void
.end method

.method private disableCategorySelector()V
    .locals 3

    .prologue
    .line 650
    iget v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMode:I

    if-nez v1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mActionBarView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 652
    .local v0, parent:Landroid/view/ViewGroup;
    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 653
    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 655
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private enableCategorySelector()V
    .locals 3

    .prologue
    .line 658
    iget v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMode:I

    if-nez v1, :cond_0

    .line 659
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mActionBarView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 660
    .local v0, parent:Landroid/view/ViewGroup;
    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 661
    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 663
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private executeTasks()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 174
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopListFragment;->needToRefresh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showLoading()V

    .line 177
    iget v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 178
    new-instance v1, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;

    invoke-direct {v1, p0, v4}, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;-><init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V

    new-array v2, v6, [Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    invoke-direct {p0, v4}, Lcom/zhangdan/preferential/ShopListFragment;->getInitPageRequest(Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 189
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    .line 190
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    if-eqz v0, :cond_1

    .line 191
    new-instance v1, Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;

    invoke-direct {v1, p0, v4}, Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;-><init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V

    new-array v2, v6, [Lcom/zhangdan/preferential/data/model/Position;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 193
    :cond_1
    new-instance v1, Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;

    invoke-direct {v1, p0, v4}, Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;-><init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 194
    return-void

    .line 180
    .end local v0           #pos:Lcom/zhangdan/preferential/data/model/Position;
    :cond_2
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    .line 181
    .restart local v0       #pos:Lcom/zhangdan/preferential/data/model/Position;
    if-nez v0, :cond_3

    .line 182
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v1, p0}, Lcom/zhangdan/preferential/utils/PositionProvider;->setPositionListener(Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;)V

    goto :goto_0

    .line 184
    :cond_3
    new-instance v1, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;

    invoke-direct {v1, p0, v4}, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;-><init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V

    new-array v2, v6, [Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/ShopListFragment;->getInitPageRequest(Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto :goto_0
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f090321

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 326
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mListView:Landroid/widget/ListView;

    .line 327
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f090331

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mAddrView:Landroid/widget/TextView;

    .line 328
    return-void
.end method

.method private getInitPageRequest(Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;
    .locals 6
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 297
    iget v2, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 298
    new-instance v0, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    invoke-direct {v0, p0, v4}, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;-><init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V

    .line 299
    .local v0, tr:Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;
    new-instance v2, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v2}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment;->mKeyword:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getKeywordRequest(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;->request:Lorg/json/JSONObject;

    .line 300
    iput v5, v0, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;->typeId:I

    move-object v1, v0

    .line 306
    .end local v0           #tr:Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;
    .local v1, tr:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 303
    .end local v1           #tr:Ljava/lang/Object;
    :cond_0
    new-instance v0, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    invoke-direct {v0, p0, v4}, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;-><init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V

    .line 304
    .restart local v0       #tr:Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;
    iget-object v2, p0, Lcom/zhangdan/preferential/ShopListFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    iget v3, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTypeId:I

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v5, v3, v4}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getPageRequest(Lcom/zhangdan/preferential/data/model/Position;IILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;->request:Lorg/json/JSONObject;

    .line 305
    iget v2, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTypeId:I

    iput v2, v0, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;->typeId:I

    move-object v1, v0

    .line 306
    .restart local v1       #tr:Ljava/lang/Object;
    goto :goto_0
.end method

.method private getNextPageRequest(Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;
    .locals 6
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    .line 311
    iget v2, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 312
    new-instance v0, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    invoke-direct {v0, p0, v4}, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;-><init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V

    .line 313
    .local v0, tr:Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;
    new-instance v2, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v2}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment;->mKeyword:Ljava/lang/String;

    iget v4, p0, Lcom/zhangdan/preferential/ShopListFragment;->mPage:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getKeywordRequest(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;->request:Lorg/json/JSONObject;

    .line 314
    const/4 v2, 0x1

    iput v2, v0, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;->typeId:I

    move-object v1, v0

    .line 320
    .end local v0           #tr:Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;
    .local v1, tr:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 317
    .end local v1           #tr:Ljava/lang/Object;
    :cond_0
    new-instance v0, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    invoke-direct {v0, p0, v4}, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;-><init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V

    .line 318
    .restart local v0       #tr:Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;
    iget-object v2, p0, Lcom/zhangdan/preferential/ShopListFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    iget v3, p0, Lcom/zhangdan/preferential/ShopListFragment;->mPage:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTypeId:I

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getPageRequest(Lcom/zhangdan/preferential/data/model/Position;IILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;->request:Lorg/json/JSONObject;

    .line 319
    iget v2, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTypeId:I

    iput v2, v0, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;->typeId:I

    move-object v1, v0

    .line 320
    .restart local v1       #tr:Ljava/lang/Object;
    goto :goto_0
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mAdapter:Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 332
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mAdapter:Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 335
    new-instance v0, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    .line 336
    new-instance v0, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;-><init>(Lcom/zhangdan/preferential/ShopListFragment;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMenuAdapter:Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;

    .line 337
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMenuAdapter:Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 338
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setContentWidth(I)V

    .line 340
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setContentHeight(I)V

    .line 342
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMenuAdapter:Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMenuAdapter:Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 344
    return-void
.end method

.method private needToRefresh()Z
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mAdapter:Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTags:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeHeaderCount(I)I
    .locals 1
    .parameter "pos"

    .prologue
    .line 583
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method private updateCategory(Lcom/zhangdan/preferential/data/model/MenuTag;)V
    .locals 5
    .parameter "tag"

    .prologue
    .line 347
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mAdapter:Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->setShops(Ljava/util/List;)V

    .line 348
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mAdapter:Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->notifyDataSetChanged()V

    .line 349
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestLayout()V

    .line 350
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setForceRefreshing()V

    .line 351
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    .line 352
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    if-eqz v0, :cond_0

    .line 353
    new-instance v1, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;-><init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    const/4 v3, 0x0

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/ShopListFragment;->getInitPageRequest(Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mAbTypeView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    return-void
.end method


# virtual methods
.method public getActionBarView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .parameter "context"

    .prologue
    .line 633
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030009

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 634
    .local v0, view:Landroid/view/View;
    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mActionBarView:Landroid/view/View;

    .line 635
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->initActionBarView()V

    .line 636
    return-object v0
.end method

.method public initActionBarView()V
    .locals 3

    .prologue
    .line 640
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mActionBarView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 641
    .local v0, parent:Landroid/view/ViewGroup;
    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mActionBarView:Landroid/view/View;

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mAbReturnView:Landroid/view/View;

    .line 643
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mActionBarView:Landroid/view/View;

    const v2, 0x7f090050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mAbTypeView:Landroid/widget/TextView;

    .line 644
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mActionBarView:Landroid/view/View;

    const v2, 0x7f090053

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMapView:Landroid/view/View;

    .line 645
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mAbReturnView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMapView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 254
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saved"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 155
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopListFragment;->findViews()V

    .line 156
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopListFragment;->initViews()V

    .line 158
    iget v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopListFragment;->configureTagMode()V

    .line 166
    :goto_0
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopListFragment;->executeTasks()V

    .line 168
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mReceiveManager:Lcom/zhangdan/preferential/utils/PrefReceiverManager;

    const-string v1, "com.zhangdan.preferential.UPDATE_IMAGE_HIDE"

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->registerReceiver(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mReceiveManager:Lcom/zhangdan/preferential/utils/PrefReceiverManager;

    const-string v1, "com.zhangdan.preferential.UPDATE_CATEGORY"

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->registerReceiver(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mReceiveManager:Lcom/zhangdan/preferential/utils/PrefReceiverManager;

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mOnReceiveListener:Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->setOnReceiveListener(Lcom/zhangdan/preferential/utils/PrefReceiverManager$OnReceiveListener;)V

    .line 171
    return-void

    .line 160
    :cond_0
    iget v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopListFragment;->configureSearchMode()V

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopListFragment;->configureDefaultMode()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 294
    :goto_0
    return-void

    .line 278
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.zhangdan.preferential.MIX_VIEW_MAP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 280
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/preferential/utils/ViewUtils;->setEnterTransition(Landroid/app/Activity;)V

    goto :goto_0

    .line 284
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_1
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment;->mActionBarView:Landroid/view/View;

    const v4, 0x7f090040

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 285
    .local v0, abLeft:Landroid/view/View;
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v3, v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 286
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment;->mMenuPopup:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->show()V

    goto :goto_0

    .line 290
    .end local v0           #abLeft:Landroid/view/View;
    :sswitch_2
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/activities/MainFragmentActivity;

    .line 291
    .local v2, mainActivity:Lcom/zhangdan/app/activities/MainFragmentActivity;
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->showMenu()V

    goto :goto_0

    .line 276
    :sswitch_data_0
    .sparse-switch
        0x7f09003f -> :sswitch_2
        0x7f090040 -> :sswitch_1
        0x7f090053 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mAdapter:Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;-><init>(Lcom/zhangdan/preferential/ShopListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mAdapter:Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;

    .line 128
    :cond_0
    new-instance v0, Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/PositionProvider;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    .line 129
    new-instance v0, Lcom/zhangdan/preferential/utils/WeiboManager;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/utils/WeiboManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;

    .line 130
    new-instance v0, Lcom/zhangdan/preferential/utils/PrefReceiverManager;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/utils/PrefReceiverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mReceiveManager:Lcom/zhangdan/preferential/utils/PrefReceiverManager;

    .line 131
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mSensorManager:Landroid/hardware/SensorManager;

    .line 132
    new-instance v0, Lcom/zhangdan/preferential/utils/SettingManager;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/utils/SettingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mSettingManager:Lcom/zhangdan/preferential/utils/SettingManager;

    .line 133
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/data/AppConfig;->isHideImage(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mHideImage:Z

    .line 134
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 138
    if-nez p2, :cond_0

    .line 139
    const/4 v1, 0x0

    .line 148
    :goto_0
    return-object v1

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 143
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 144
    new-instance v1, Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-direct {v1}, Lcom/zhangdan/preferential/utils/PositionProvider;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    .line 145
    new-instance v1, Lcom/zhangdan/preferential/utils/JsonParser;

    invoke-direct {v1, v0}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    .line 146
    new-instance v1, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v1}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    .line 147
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030100

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mContentView:Landroid/view/ViewGroup;

    .line 148
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mContentView:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 375
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseFragment;->onDetach()V

    .line 376
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mReceiveManager:Lcom/zhangdan/preferential/utils/PrefReceiverManager;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/utils/PrefReceiverManager;->unregisterReceiver()V

    .line 377
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 378
    return-void
.end method

.method public onPositionUpdated()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 361
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showLoading()V

    .line 366
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    .line 367
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    if-eqz v0, :cond_0

    .line 368
    new-instance v1, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;

    invoke-direct {v1, p0, v6}, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;-><init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V

    new-array v2, v5, [Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/ShopListFragment;->getInitPageRequest(Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 369
    new-instance v1, Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;

    invoke-direct {v1, p0, v6}, Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;-><init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V

    new-array v2, v5, [Lcom/zhangdan/preferential/data/model/Position;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 242
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseFragment;->onResume()V

    .line 243
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701dd

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/ShopListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 248
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mPullToRefreshMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 249
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 258
    invoke-static {}, Lcom/zhangdan/preferential/utils/CommonMethod;->getApiLevel()I

    move-result v5

    const/16 v6, 0xe

    if-ge v5, v6, :cond_1

    .line 272
    :cond_0
    return-void

    .line 262
    :cond_1
    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 263
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v0, v5, v6

    .line 264
    .local v0, degree:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/zhangdan/preferential/ShopListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 265
    iget-object v5, p0, Lcom/zhangdan/preferential/ShopListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f0902c9

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 266
    .local v1, direction:Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 267
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 268
    .local v3, shopDegree:D
    float-to-double v5, v0

    sub-double v5, v3, v5

    double-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setRotation(F)V

    .line 264
    .end local v3           #shopDegree:D
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setModeData(Landroid/os/Bundle;)V
    .locals 0
    .parameter "modeData"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopListFragment;->mModeData:Landroid/os/Bundle;

    .line 120
    return-void
.end method
