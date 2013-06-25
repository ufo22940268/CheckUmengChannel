.class public Lcom/zhangdan/app/activities/chart/ChartFragment;
.super Lcom/zhangdan/app/activities/BaseFragment;
.source "ChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/chart/ChartFragment$ChartPageAdapter;,
        Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;
    }
.end annotation


# instance fields
.field private mCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mCateogryView:Landroid/view/View;

.field private mChartSumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChartYearList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConsumeCategoryManager:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

.field private mConsumeTrendMgr:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

.field private mConsumeTrendView:Landroid/view/View;

.field private mNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnActionBarClickListener:Landroid/view/View$OnClickListener;

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragment;-><init>()V

    .line 157
    new-instance v0, Lcom/zhangdan/app/activities/chart/ChartFragment$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/ChartFragment$1;-><init>(Lcom/zhangdan/app/activities/chart/ChartFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 260
    new-instance v0, Lcom/zhangdan/app/activities/chart/ChartFragment$2;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/ChartFragment$2;-><init>(Lcom/zhangdan/app/activities/chart/ChartFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mOnActionBarClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/chart/ChartFragment;)Lcom/zhangdan/app/ZhangdanApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/ChartFragment;->getApplication()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/app/activities/chart/ChartFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mChartSumList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zhangdan/app/activities/chart/ChartFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeTrendView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zhangdan/app/activities/chart/ChartFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mChartSumList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/zhangdan/app/activities/chart/ChartFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mCateogryView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/zhangdan/app/activities/chart/ChartFragment;)Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeTrendMgr:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/zhangdan/app/activities/chart/ChartFragment;Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;)Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeTrendMgr:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/zhangdan/app/activities/chart/ChartFragment;)Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeCategoryManager:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/zhangdan/app/activities/chart/ChartFragment;Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;)Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeCategoryManager:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/chart/ChartFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mChartYearList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zhangdan/app/activities/chart/ChartFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mChartYearList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/chart/ChartFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zhangdan/app/activities/chart/ChartFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mNameList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/chart/ChartFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mCategoryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zhangdan/app/activities/chart/ChartFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mCategoryList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zhangdan/app/activities/chart/ChartFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zhangdan/app/activities/chart/ChartFragment;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zhangdan/app/activities/chart/ChartFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/chart/ChartFragment;->changePageSelectedState(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/zhangdan/app/activities/chart/ChartFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zhangdan/app/activities/chart/ChartFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mActionBarView:Landroid/view/View;

    return-object v0
.end method

.method private changePageSelectedState(I)V
    .locals 6
    .parameter "index"

    .prologue
    const v4, 0x7f0201fe

    const v3, 0x7f0201fd

    .line 252
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mActionBarView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 258
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mActionBarView:Landroid/view/View;

    const v5, 0x7f09003d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 255
    .local v0, view1:Landroid/view/View;
    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mActionBarView:Landroid/view/View;

    const v5, 0x7f09003e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 256
    .local v1, view2:Landroid/view/View;
    if-nez p1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 257
    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 256
    goto :goto_1

    :cond_2
    move v4, v3

    .line 257
    goto :goto_2
.end method


# virtual methods
.method public getActionBarView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 237
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 238
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 239
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mActionBarView:Landroid/view/View;

    .line 240
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/ChartFragment;->initActionBarView()V

    .line 242
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mActionBarView:Landroid/view/View;

    return-object v1
.end method

.method public initActionBarView()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07019e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mOnActionBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 62
    const v2, 0x7f030076

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, view:Landroid/view/View;
    const v2, 0x7f090191

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 64
    const v2, 0x7f030079

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeTrendView:Landroid/view/View;

    .line 65
    const v2, 0x7f030078

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mCateogryView:Landroid/view/View;

    .line 67
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/ChartFragment;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v0

    .line 68
    .local v0, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-eqz v0, :cond_0

    .line 69
    new-instance v2, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;-><init>(Lcom/zhangdan/app/activities/chart/ChartFragment;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/chart/ChartFragment$LoadChartDataTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 71
    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseFragment;->onDestroy()V

    .line 86
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeTrendMgr:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeTrendMgr:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;->destroy()V

    .line 88
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeTrendMgr:Lcom/zhangdan/app/activities/chart/ConsumeTrendManager;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeCategoryManager:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeCategoryManager:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;->destroy()V

    .line 92
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mConsumeCategoryManager:Lcom/zhangdan/app/activities/chart/ConsumeCategoryManager;

    .line 94
    :cond_1
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mChartSumList:Ljava/util/List;

    .line 95
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mChartYearList:Ljava/util/List;

    .line 96
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/ChartFragment;->mNameList:Ljava/util/ArrayList;

    .line 97
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseFragment;->onDetach()V

    .line 77
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/ChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/ChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    .line 80
    .local v0, activity:Lcom/zhangdan/app/activities/MainFragmentActivity;
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    goto :goto_0
.end method
