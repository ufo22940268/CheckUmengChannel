.class public Lcom/zhangdan/app/activities/main/MainContentFragment;
.super Lcom/zhangdan/app/activities/BaseFragment;
.source "MainContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;
    }
.end annotation


# static fields
.field private static final LIST_MODE_DETAIL:I = 0x1

.field private static final LIST_MODE_SIMPLE:I = 0x0

.field private static final REQ_SEL_BG_CODE:I = 0x3e8


# instance fields
.field private mAbImgRefresh:Landroid/widget/ImageView;

.field private mActionBarClickListener:Landroid/view/View$OnClickListener;

.field private mBannerContainer:Landroid/view/ViewGroup;

.field private mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

.field private mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

.field private mDataManager:Lcom/zhangdan/app/global/DataManager;

.field private mDetailCardAdapter:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

.field private mElasticView:Lcom/zhangdan/app/widget/ElasticView;

.field private mHeadClickListener:Landroid/view/View$OnClickListener;

.field private mHeadView:Landroid/view/View;

.field private mImgBg:Landroid/widget/ImageView;

.field private mImgMask:Landroid/widget/ImageView;

.field private mImgMaskClickListener:Landroid/view/View$OnClickListener;

.field private mImportPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

.field private mInitBannerTask:Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;

.field private mInitialTopMargin:I

.field private mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mListMode:I

.field private mListView:Lcom/zhangdan/preferential/widget/MainContentListView;

.field private mLocFlag:Z

.field private mLocationListener:Lcom/zhangdan/app/location/BaiduLocation$LocationListener;

.field private mMainPagePw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

.field private mNeedSyncData:Z

.field private mOnActionBarMainPageItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnAvatarChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;

.field private mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

.field private mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

.field private mOnMailAccountListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;

.field private mOnNewBillListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;

.field private mOnScrollListener:Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;

.field private mOnUserBankDataChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;

.field private mRatio:F

.field private mSimpleCardAdapter:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;

.field private mSlidingDrawer:Landroid/widget/SlidingDrawer;

.field private mSlidingDrawerClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragment;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mRatio:F

    .line 116
    iput-boolean v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mNeedSyncData:Z

    .line 129
    iput-boolean v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mLocFlag:Z

    .line 170
    new-instance v0, Lcom/zhangdan/app/activities/main/MainContentFragment$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainContentFragment$1;-><init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mLocationListener:Lcom/zhangdan/app/location/BaiduLocation$LocationListener;

    .line 314
    new-instance v0, Lcom/zhangdan/app/activities/main/MainContentFragment$2;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainContentFragment$2;-><init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnScrollListener:Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;

    .line 328
    new-instance v0, Lcom/zhangdan/app/activities/main/MainContentFragment$3;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainContentFragment$3;-><init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mHeadClickListener:Landroid/view/View$OnClickListener;

    .line 341
    new-instance v0, Lcom/zhangdan/app/activities/main/MainContentFragment$4;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainContentFragment$4;-><init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgMaskClickListener:Landroid/view/View$OnClickListener;

    .line 348
    new-instance v0, Lcom/zhangdan/app/activities/main/MainContentFragment$5;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainContentFragment$5;-><init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    .line 356
    new-instance v0, Lcom/zhangdan/app/activities/main/MainContentFragment$6;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainContentFragment$6;-><init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    .line 367
    new-instance v0, Lcom/zhangdan/app/activities/main/MainContentFragment$7;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainContentFragment$7;-><init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mSlidingDrawerClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 474
    new-instance v0, Lcom/zhangdan/app/activities/main/MainContentFragment$8;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainContentFragment$8;-><init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

    .line 503
    new-instance v0, Lcom/zhangdan/app/activities/main/MainContentFragment$9;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainContentFragment$9;-><init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnUserBankDataChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;

    .line 545
    new-instance v0, Lcom/zhangdan/app/activities/main/MainContentFragment$10;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainContentFragment$10;-><init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnNewBillListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;

    .line 553
    new-instance v0, Lcom/zhangdan/app/activities/main/MainContentFragment$11;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainContentFragment$11;-><init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnMailAccountListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;

    .line 560
    new-instance v0, Lcom/zhangdan/app/activities/main/MainContentFragment$12;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainContentFragment$12;-><init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnAvatarChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;

    .line 630
    new-instance v0, Lcom/zhangdan/app/activities/main/MainContentFragment$13;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainContentFragment$13;-><init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarClickListener:Landroid/view/View$OnClickListener;

    .line 707
    new-instance v0, Lcom/zhangdan/app/activities/main/MainContentFragment$14;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/MainContentFragment$14;-><init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnActionBarMainPageItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 759
    return-void
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/main/MainContentFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mLocFlag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/zhangdan/app/activities/main/MainContentFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->hasImportedEmailBillData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/zhangdan/app/activities/main/MainContentFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mLocFlag:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mAbImgRefresh:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/zhangdan/app/activities/main/MainContentFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->refreshCardList()V

    return-void
.end method

.method static synthetic access$1302(Lcom/zhangdan/app/activities/main/MainContentFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mNeedSyncData:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/global/DataManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mDataManager:Lcom/zhangdan/app/global/DataManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/zhangdan/app/activities/main/MainContentFragment;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->initAvatar(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mMainPagePw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/zhangdan/app/activities/main/MainContentFragment;Lcom/zhangdan/app/popmenu/ZdListPopupWindow;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mMainPagePw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnActionBarMainPageItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/zhangdan/app/activities/main/MainContentFragment;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->dismissPopupWindow(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/zhangdan/app/activities/main/MainContentFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mListMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mInitBannerTask:Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/zhangdan/app/activities/main/MainContentFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->setSimpleAdapter()V

    return-void
.end method

.method static synthetic access$202(Lcom/zhangdan/app/activities/main/MainContentFragment;Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;)Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mInitBannerTask:Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/zhangdan/app/activities/main/MainContentFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->setDetailAdapter()V

    return-void
.end method

.method static synthetic access$2200(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/ZhangdanApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getApplication()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/zhangdan/app/activities/main/MainContentFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/global/DataManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/zhangdan/app/activities/main/MainContentFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/preferential/widget/MainContentListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mListView:Lcom/zhangdan/preferential/widget/MainContentListView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mHeadView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/preferential/widget/PrefBannerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/zhangdan/app/activities/main/MainContentFragment;Lcom/zhangdan/preferential/widget/PrefBannerView;)Lcom/zhangdan/preferential/widget/PrefBannerView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBannerContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/main/MainContentFragment;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mRatio:F

    return v0
.end method

.method static synthetic access$3000(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mDetailCardAdapter:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zhangdan/app/activities/main/MainContentFragment;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mRatio:F

    return p1
.end method

.method static synthetic access$3100(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mSimpleCardAdapter:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/app/activities/main/MainContentFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mInitialTopMargin:I

    return v0
.end method

.method static synthetic access$600(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/SlidingDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mSlidingDrawer:Landroid/widget/SlidingDrawer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zhangdan/app/activities/main/MainContentFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->hasImportedEmailBillData()Z

    move-result v0

    return v0
.end method

.method private dismissPopupWindow(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V
    .locals 0
    .parameter "pw"

    .prologue
    .line 699
    if-eqz p1, :cond_0

    .line 700
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->dismiss()V

    .line 702
    :cond_0
    return-void
.end method

.method private findViews(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 247
    const v1, 0x7f09008e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/widget/MainContentListView;

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mListView:Lcom/zhangdan/preferential/widget/MainContentListView;

    .line 248
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/BaseSlidingActivity;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    .line 249
    .local v0, menu:Lcom/slidingmenu/lib/SlidingMenu;
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mListView:Lcom/zhangdan/preferential/widget/MainContentListView;

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/widget/MainContentListView;->setSlidingMenu(Lcom/slidingmenu/lib/SlidingMenu;)V

    .line 251
    const v1, 0x7f090306

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SlidingDrawer;

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mSlidingDrawer:Landroid/widget/SlidingDrawer;

    .line 252
    const v1, 0x7f090305

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgMask:Landroid/widget/ImageView;

    .line 254
    const v1, 0x7f090304

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/widget/ElasticView;

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mElasticView:Lcom/zhangdan/app/widget/ElasticView;

    .line 255
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mElasticView:Lcom/zhangdan/app/widget/ElasticView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnScrollListener:Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/widget/ElasticView;->setOnElastivViewScrollListener(Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;)V

    .line 257
    const v1, 0x7f090303

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgBg:Landroid/widget/ImageView;

    .line 258
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mElasticView:Lcom/zhangdan/app/widget/ElasticView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnScrollListener:Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/widget/ElasticView;->setOnElastivViewScrollListener(Lcom/zhangdan/app/widget/ElasticView$OnElasticViewScrollListener;)V

    .line 259
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 260
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mInitialTopMargin:I

    .line 261
    return-void
.end method

.method private initAvatar(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    const-string v0, "MainContent"

    const-string v1, "initAvatar()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/AvatarView;

    invoke-static {p1, v0}, Lcom/zhangdan/app/img/AvatarHandler;->loadAvatar(Landroid/content/Context;Lcom/zhangdan/app/widget/AvatarView;)V

    goto :goto_0
.end method

.method private initBroadcastManager()V
    .locals 3

    .prologue
    .line 453
    new-instance v0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0xeb

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 455
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->setOnDownloadProgressListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;)V

    .line 456
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnUserBankDataChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->setOnUserBankDataChangedListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;)V

    .line 457
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnNewBillListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->setOnNewBillListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;)V

    .line 458
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnMailAccountListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->setOnMailAccountListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;)V

    .line 459
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnAvatarChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->setOnAvatarChangedListener(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;)V

    .line 460
    return-void
.end method

.method private initSlidingDrawer(Landroid/widget/SlidingDrawer;)V
    .locals 6
    .parameter "slidingDrawer"

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 294
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f020295

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    mul-int/lit8 v3, v4, 0x2

    .line 295
    .local v3, slidingDrawerHeight:I
    const v4, 0x7f02035d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 297
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mSlidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v4}, Landroid/widget/SlidingDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 298
    .local v2, sdParams:Landroid/view/ViewGroup$LayoutParams;
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 299
    invoke-virtual {p1, v2}, Landroid/widget/SlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->open()V

    .line 301
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    invoke-virtual {p1, v4}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 302
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    invoke-virtual {p1, v4}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 303
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgMask:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgMask:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgMaskClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    const v4, 0x7f090308

    invoke-virtual {p1, v4}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 307
    .local v0, gridView:Landroid/widget/GridView;
    new-instance v4, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/zhangdan/app/activities/main/adapter/SlidingDrawerAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 308
    iget-object v4, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mSlidingDrawerClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 309
    return-void
.end method

.method private refreshCardList()V
    .locals 2

    .prologue
    .line 440
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mDataManager:Lcom/zhangdan/app/global/DataManager;

    invoke-virtual {v1}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v0

    .line 441
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    if-eqz v0, :cond_0

    .line 442
    new-instance v1, Lcom/zhangdan/app/activities/main/comparator/LeaveDaysComparator;

    invoke-direct {v1}, Lcom/zhangdan/app/activities/main/comparator/LeaveDaysComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mSimpleCardAdapter:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;

    if-eqz v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mSimpleCardAdapter:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;->setDataSource(Ljava/util/List;)V

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mDetailCardAdapter:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    if-eqz v1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mDetailCardAdapter:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;->setDataSource(Ljava/util/List;)V

    .line 447
    :cond_2
    return-void
.end method

.method private setDetailAdapter()V
    .locals 3

    .prologue
    .line 427
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mDetailCardAdapter:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    if-nez v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mDataManager:Lcom/zhangdan/app/global/DataManager;

    invoke-virtual {v1}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v0

    .line 429
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    new-instance v1, Lcom/zhangdan/app/activities/main/comparator/LeaveDaysComparator;

    invoke-direct {v1}, Lcom/zhangdan/app/activities/main/comparator/LeaveDaysComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 430
    new-instance v1, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mDetailCardAdapter:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    .line 432
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mListView:Lcom/zhangdan/preferential/widget/MainContentListView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mDetailCardAdapter:Lcom/zhangdan/app/activities/main/adapter/DetailCardAdapter;

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/widget/MainContentListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 433
    const/4 v1, 0x1

    iput v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mListMode:I

    .line 434
    return-void
.end method

.method private setSimpleAdapter()V
    .locals 3

    .prologue
    .line 417
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mSimpleCardAdapter:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;

    if-nez v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mDataManager:Lcom/zhangdan/app/global/DataManager;

    invoke-virtual {v1}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v0

    .line 419
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    new-instance v1, Lcom/zhangdan/app/activities/main/comparator/LeaveDaysComparator;

    invoke-direct {v1}, Lcom/zhangdan/app/activities/main/comparator/LeaveDaysComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 420
    new-instance v1, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mSimpleCardAdapter:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;

    .line 422
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mListView:Lcom/zhangdan/preferential/widget/MainContentListView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mSimpleCardAdapter:Lcom/zhangdan/app/activities/main/adapter/SimpleCardAdapter;

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/widget/MainContentListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 423
    const/4 v1, 0x0

    iput v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mListMode:I

    .line 424
    return-void
.end method

.method private startLocation()V
    .locals 6

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getApplication()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    .line 152
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrentCity()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, city:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/app/location/BaiduLocation;->getInstance(Landroid/content/Context;)Lcom/zhangdan/app/location/BaiduLocation;

    move-result-object v2

    .line 155
    .local v2, location:Lcom/zhangdan/app/location/BaiduLocation;
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mLocationListener:Lcom/zhangdan/app/location/BaiduLocation$LocationListener;

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/location/BaiduLocation;->registerListener(Lcom/zhangdan/app/location/BaiduLocation$LocationListener;)V

    .line 162
    .end local v2           #location:Lcom/zhangdan/app/location/BaiduLocation;
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mInitBannerTask:Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mInitBannerTask:Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 159
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mInitBannerTask:Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;

    goto :goto_0
.end method

.method private unRegisterBroadcast()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->destroy()V

    .line 468
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBroadcastMgr:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    .line 469
    return-void
.end method

.method private unregisterLocationListener()V
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/location/BaiduLocation;->getInstance(Landroid/content/Context;)Lcom/zhangdan/app/location/BaiduLocation;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mLocationListener:Lcom/zhangdan/app/location/BaiduLocation$LocationListener;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/location/BaiduLocation;->unregisterListener(Lcom/zhangdan/app/location/BaiduLocation$LocationListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getActionBarView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 593
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 594
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 595
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarView:Landroid/view/View;

    .line 596
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->initActionBarView()V

    .line 597
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->initAvatar(Landroid/content/Context;)V

    .line 599
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    sget v1, Lcom/zhangdan/app/service/DownloadDataService;->DOWNLOAD_DATA_FLAG:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 600
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mAbImgRefresh:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->startRefreshAnim(Landroid/view/View;)V

    .line 602
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarView:Landroid/view/View;

    return-object v1
.end method

.method public initActionBarView()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 615
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mAbImgRefresh:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public initViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgBg:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/zhangdan/app/img/PhotoSelectHandler;->displayMainPangeBg(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 265
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300e5

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mHeadView:Landroid/view/View;

    .line 266
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mHeadView:Landroid/view/View;

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mHeadClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v0, v2, 0x8

    .line 268
    .local v0, height:I
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mHeadView:Landroid/view/View;

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mListView:Lcom/zhangdan/preferential/widget/MainContentListView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mHeadView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/widget/MainContentListView;->addHeaderView(Landroid/view/View;)V

    .line 270
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mListView:Lcom/zhangdan/preferential/widget/MainContentListView;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030073

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/widget/MainContentListView;->addFooterView(Landroid/view/View;)V

    .line 271
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03006f

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBannerContainer:Landroid/view/ViewGroup;

    .line 272
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBannerContainer:Landroid/view/ViewGroup;

    const v3, 0x7f090259

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setId(I)V

    .line 273
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mListView:Lcom/zhangdan/preferential/widget/MainContentListView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBannerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/widget/MainContentListView;->addHeaderView(Landroid/view/View;)V

    .line 275
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mDataManager:Lcom/zhangdan/app/global/DataManager;

    invoke-virtual {v2}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    const/4 v1, 0x1

    .line 276
    .local v1, listMode:I
    :goto_0
    if-nez v1, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->setSimpleAdapter()V

    .line 281
    :goto_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mSlidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-direct {p0, v2}, Lcom/zhangdan/app/activities/main/MainContentFragment;->initSlidingDrawer(Landroid/widget/SlidingDrawer;)V

    .line 283
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->onClickActionBarRefresh()V

    .line 284
    return-void

    .line 275
    .end local v1           #listMode:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 279
    .restart local v1       #listMode:I
    :cond_1
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->setDetailAdapter()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 187
    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 188
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 189
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgBg:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/zhangdan/app/img/PhotoSelectHandler;->displayMainPangeBg(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 193
    :cond_0
    return-void
.end method

.method public onClickActionBarRefresh()V
    .locals 2

    .prologue
    .line 687
    sget v1, Lcom/zhangdan/app/service/DownloadDataService;->DOWNLOAD_DATA_FLAG:I

    if-nez v1, :cond_1

    .line 688
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->requestDownloadData()V

    .line 689
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mAbImgRefresh:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mAbImgRefresh:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->startRefreshAnim(Landroid/view/View;)V

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mAbImgRefresh:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mAbImgRefresh:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 693
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mAbImgRefresh:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->startRefreshAnim(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 135
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mDataManager:Lcom/zhangdan/app/global/DataManager;

    .line 136
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->initBroadcastManager()V

    .line 137
    new-instance v1, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;-><init>(Lcom/zhangdan/app/activities/main/MainContentFragment;Lcom/zhangdan/app/activities/main/MainContentFragment$1;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mInitBannerTask:Lcom/zhangdan/app/activities/main/MainContentFragment$InitBannerTask;

    .line 138
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 143
    const v1, 0x7f0300e4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->findViews(Landroid/view/View;)V

    .line 145
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->initViews()V

    .line 146
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->startLocation()V

    .line 147
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseFragment;->onDestroy()V

    .line 229
    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgBg:Landroid/widget/ImageView;

    .line 230
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->unregisterLocationListener()V

    .line 231
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mMainPagePw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mMainPagePw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    .line 233
    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mMainPagePw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mImportPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mImportPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    .line 237
    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mImportPw:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->unRegisterBroadcast()V

    .line 240
    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mSlidingDrawer:Landroid/widget/SlidingDrawer;

    .line 241
    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mImgMask:Landroid/widget/ImageView;

    .line 242
    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mListView:Lcom/zhangdan/preferential/widget/MainContentListView;

    .line 243
    iput-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mDataManager:Lcom/zhangdan/app/global/DataManager;

    .line 244
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseFragment;->onPause()V

    .line 206
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/PrefBannerView;->stopSliding()V

    .line 209
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseFragment;->onResume()V

    .line 198
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mBannerView:Lcom/zhangdan/preferential/widget/PrefBannerView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/PrefBannerView;->startSliding()V

    .line 201
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 5

    .prologue
    .line 213
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseFragment;->onStop()V

    .line 214
    iget-boolean v3, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mNeedSyncData:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 215
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/zhangdan/app/activities/main/MainContentFragment;->mNeedSyncData:Z

    .line 216
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/zhangdan/app/service/SyncService;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 219
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v2

    .line 220
    .local v2, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    const-string v3, "user_id"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v3, "token"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 224
    .end local v0           #app:Lcom/zhangdan/app/ZhangdanApplication;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    :cond_0
    return-void
.end method

.method public requestDownloadData()V
    .locals 3

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 576
    :goto_0
    return-void

    .line 573
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 574
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 575
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public startRefreshAnim(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    .line 582
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 589
    :goto_0
    return-void

    .line 584
    :cond_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 585
    .local v0, rotateAnim:Landroid/view/animation/RotateAnimation;
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 586
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 587
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 588
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
