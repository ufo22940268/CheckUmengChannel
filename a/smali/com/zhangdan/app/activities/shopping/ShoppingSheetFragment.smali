.class public Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;
.super Lcom/zhangdan/app/activities/BaseFragment;
.source "ShoppingSheetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/location/BaiduLocation$LocationListener;
.implements Lcom/zhangdan/app/activities/remark/SearchDiscountTask$OnSearchDiscountListener;
.implements Lcom/zhangdan/app/activities/shopping/QueryWeatherTask$OnGetWeatherListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x32

.field public static final REQ_EDIT_REMARK:I = 0x64


# instance fields
.field private mBaiduLocation:Lcom/zhangdan/app/location/BaiduLocation;

.field private mBillIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private mCurrCity:Ljava/lang/String;

.field private mEndDate:Ljava/lang/String;

.field private mFooterView:Landroid/view/View;

.field private mIsRefreshWeather:Z

.field private mLoadDataTask:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;

.field private mLoading:Z

.field private mLocFlag:Z

.field private mOnActionBarClickListener:Landroid/view/View$OnClickListener;

.field private mPageNo:I

.field private mShoppingSheetAdapter:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

.field private mStartDate:Ljava/lang/String;

.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseFragment;-><init>()V

    .line 68
    iput v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mPageNo:I

    .line 69
    iput-boolean v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mLoading:Z

    .line 74
    iput-boolean v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mIsRefreshWeather:Z

    .line 77
    iput-object v1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mStartDate:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mEndDate:Ljava/lang/String;

    .line 81
    iput-boolean v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mLocFlag:Z

    .line 430
    new-instance v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$1;-><init>(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mOnActionBarClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mShoppingSheetAdapter:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mLoading:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCurrCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Lcom/zhangdan/app/ZhangdanApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getApplication()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mIsRefreshWeather:Z

    return v0
.end method

.method static synthetic access$200(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Lcom/zhangdan/app/ZhangdanApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getApplication()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mStartDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mEndDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCategoryIdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mBillIdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCategoryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mPageNo:I

    return v0
.end method

.method static synthetic access$900(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mTotalCount:I

    return v0
.end method

.method private initViews(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 4
    .parameter "view"
    .parameter "inflater"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v1

    .line 178
    .local v1, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-nez v1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 180
    :cond_0
    const v2, 0x7f09018c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 181
    .local v0, listView:Landroid/widget/ListView;
    const v2, 0x7f0300cf

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mFooterView:Landroid/view/View;

    .line 182
    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 183
    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mFooterView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    new-instance v2, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mShoppingSheetAdapter:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    .line 185
    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mShoppingSheetAdapter:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/data/db/util/ShoppingSheetDbUtil;->queryTotalCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mTotalCount:I

    .line 189
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/data/db/util/ConsumeCategoryDbUtil;->getCategory(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCategoryList:Ljava/util/List;

    .line 191
    iget v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mPageNo:I

    invoke-direct {p0, v2}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->loadShoppingSheet(I)V

    goto :goto_0
.end method

.method private loadNextPage()V
    .locals 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mLoading:Z

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mPageNo:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x32

    iget v1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mTotalCount:I

    if-ge v0, v1, :cond_0

    .line 208
    iget v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mPageNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mPageNo:I

    .line 209
    iget v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mPageNo:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->loadShoppingSheet(I)V

    goto :goto_0
.end method

.method private loadShoppingSheet(I)V
    .locals 6
    .parameter "pageNo"

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v0

    .line 219
    .local v0, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v1, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;-><init>(Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mLoadDataTask:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;

    .line 222
    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mLoadDataTask:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "50"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    goto :goto_0
.end method

.method private startLocation()V
    .locals 3

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getApplication()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    .line 349
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrentCity()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, city:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/location/BaiduLocation;->getInstance(Landroid/content/Context;)Lcom/zhangdan/app/location/BaiduLocation;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/zhangdan/app/location/BaiduLocation;->registerListener(Lcom/zhangdan/app/location/BaiduLocation$LocationListener;)V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    iput-object v1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCurrCity:Ljava/lang/String;

    goto :goto_0
.end method

.method private unregisterLocationListener()V
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/location/BaiduLocation;->getInstance(Landroid/content/Context;)Lcom/zhangdan/app/location/BaiduLocation;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/location/BaiduLocation;->unregisterListener(Lcom/zhangdan/app/location/BaiduLocation$LocationListener;)V

    goto :goto_0
.end method


# virtual methods
.method public OnGetWeather()V
    .locals 3

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getApplication()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getApplication()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setQueryWeatherTime(Landroid/content/Context;J)V

    .line 396
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mShoppingSheetAdapter:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mShoppingSheetAdapter:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getActionBarView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 416
    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 417
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 418
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mActionBarView:Landroid/view/View;

    .line 419
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->initActionBarView()V

    .line 421
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mActionBarView:Landroid/view/View;

    return-object v1
.end method

.method public initActionBarView()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070116

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 427
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mActionBarView:Landroid/view/View;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mOnActionBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 145
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 146
    if-nez p3, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string v0, "custom_category_id"

    const/4 v6, 0x0

    invoke-virtual {p3, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 149
    .local v5, customCategoryId:I
    const-string v0, "store_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, storeName:Ljava/lang/String;
    const-string v0, "remark"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, remark:Ljava/lang/String;
    const-string v0, "auto_id"

    const-wide/16 v10, 0x0

    invoke-virtual {p3, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 152
    .local v1, auotId:J
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mShoppingSheetAdapter:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mShoppingSheetAdapter:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->refreshShoopingInfo(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    move-result-object v8

    .line 154
    .local v8, shoppingInfo:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCurrCity:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v9, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCurrCity:Ljava/lang/String;

    invoke-direct {v9, v0}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;-><init>(Ljava/lang/String;)V

    .line 156
    .local v9, task:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    const/4 v6, 0x0

    aput-object v7, v0, v6

    invoke-virtual {v9, v0}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 159
    invoke-virtual {v9, p0}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->setOnSearchDiscountListener(Lcom/zhangdan/app/activities/remark/SearchDiscountTask$OnSearchDiscountListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mFooterView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->loadNextPage()V

    .line 199
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 88
    .local v3, data:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 89
    const-string v9, "category_id"

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 90
    .local v1, categoryId:I
    if-nez v1, :cond_1

    .line 123
    .end local v1           #categoryId:I
    :cond_0
    :goto_0
    return-void

    .line 92
    .restart local v1       #categoryId:I
    :cond_1
    const-string v9, "username"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, userName:Ljava/lang/String;
    const-string v9, "year"

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 94
    .local v8, year:I
    const-string v9, "month"

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 96
    .local v5, month:I
    if-eqz v8, :cond_2

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 98
    .local v0, cal:Ljava/util/Calendar;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v6, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 99
    .local v6, sdf:Ljava/text/SimpleDateFormat;
    if-nez v5, :cond_4

    .line 100
    invoke-virtual {v0, v8, v10, v11}, Ljava/util/Calendar;->set(III)V

    .line 101
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mStartDate:Ljava/lang/String;

    .line 102
    const/16 v9, 0xb

    const/16 v10, 0x1e

    invoke-virtual {v0, v8, v9, v10}, Ljava/util/Calendar;->set(III)V

    .line 103
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mEndDate:Ljava/lang/String;

    .line 111
    :goto_1
    const-string v9, "ShoppingSheetFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mStartDate:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mEndDate:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v6           #sdf:Ljava/text/SimpleDateFormat;
    :cond_2
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/zhangdan/app/data/db/util/ConsumeCategoryDbUtil;->queryCategoryByParentId(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 114
    .local v2, categoryList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v2, :cond_3

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #categoryList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .restart local v2       #categoryList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iput-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCategoryIdList:Ljava/util/List;

    .line 119
    invoke-static {v7}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/zhangdan/app/data/db/util/BillDbUtil;->queryBillIdsByName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mBillIdList:Ljava/util/List;

    goto/16 :goto_0

    .line 105
    .end local v2           #categoryList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v0       #cal:Ljava/util/Calendar;
    .restart local v6       #sdf:Ljava/text/SimpleDateFormat;
    :cond_4
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v0, v8, v9, v11}, Ljava/util/Calendar;->set(III)V

    .line 106
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mStartDate:Ljava/lang/String;

    .line 107
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    .line 108
    .local v4, endday:I
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v0, v8, v9, v4}, Ljava/util/Calendar;->set(III)V

    .line 109
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mEndDate:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 128
    const v5, 0x7f030074

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 129
    .local v4, view:Landroid/view/View;
    invoke-direct {p0, v4, p1}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->initViews(Landroid/view/View;Landroid/view/LayoutInflater;)V

    .line 130
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangdan/app/util/CommonMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->startLocation()V

    .line 133
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 134
    .local v2, now:J
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getQueryWeatherTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 136
    .local v0, lastQueryTime:J
    sub-long v5, v2, v0

    const-wide/32 v7, 0x36ee80

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 137
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mIsRefreshWeather:Z

    .line 139
    :cond_1
    return-object v4
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseFragment;->onDestroy()V

    .line 168
    invoke-direct {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->unregisterLocationListener()V

    .line 169
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mLoadDataTask:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mLoadDataTask:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;->cancel(Z)Z

    .line 171
    iput-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mLoadDataTask:Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment$LoadDataTask;

    .line 173
    :cond_0
    iput-object v2, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCategoryList:Ljava/util/List;

    .line 174
    return-void
.end method

.method public onLocationChanged(Lcom/baidu/location/BDLocation;DDLjava/lang/String;)V
    .locals 8
    .parameter "location"
    .parameter "longtitude"
    .parameter "latitude"
    .parameter "city"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 366
    iget-boolean v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mLocFlag:Z

    if-eqz v3, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iput-boolean v6, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mLocFlag:Z

    .line 369
    iput-object p6, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCurrCity:Ljava/lang/String;

    .line 371
    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mShoppingSheetAdapter:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mShoppingSheetAdapter:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 372
    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mShoppingSheetAdapter:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->getCurrAllShoppingSheet()Ljava/util/List;

    move-result-object v0

    .line 373
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    if-eqz v0, :cond_0

    .line 375
    new-instance v1, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;

    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCurrCity:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;-><init>(Ljava/lang/String;)V

    .line 376
    .local v1, task:Lcom/zhangdan/app/activities/remark/SearchDiscountTask;
    new-array v3, v6, [Ljava/util/List;

    aput-object v0, v3, v7

    invoke-virtual {v1, v3}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 377
    invoke-virtual {v1, p0}, Lcom/zhangdan/app/activities/remark/SearchDiscountTask;->setOnSearchDiscountListener(Lcom/zhangdan/app/activities/remark/SearchDiscountTask$OnSearchDiscountListener;)V

    .line 379
    new-instance v2, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->getApplication()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mCurrCity:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mIsRefreshWeather:Z

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V

    .line 380
    .local v2, weatherTask:Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;
    new-array v4, v6, [Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    aput-object v3, v4, v7

    invoke-virtual {v2, v4}, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 381
    invoke-virtual {v2, p0}, Lcom/zhangdan/app/activities/shopping/QueryWeatherTask;->setOnGetWeatherListener(Lcom/zhangdan/app/activities/shopping/QueryWeatherTask$OnGetWeatherListener;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibileItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 402
    const-string v0, "Shopping"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->loadNextPage()V

    .line 406
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 411
    return-void
.end method

.method public onSearchDiscount(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 387
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mShoppingSheetAdapter:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;->mShoppingSheetAdapter:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->notifyDataSetChanged()V

    .line 389
    :cond_0
    return-void
.end method
