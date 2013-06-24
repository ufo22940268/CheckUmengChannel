.class public Lcom/zhangdan/app/activities/MainFragmentActivity;
.super Lcom/zhangdan/app/activities/BaseSlidingActivity;
.source "MainFragmentActivity.java"

# interfaces
.implements Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;
.implements Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;
.implements Lcom/umeng/update/UmengUpdateListener;


# static fields
.field public static final EXTRA_KEY_LAUNCH_URI:Ljava/lang/String; = "launch_uri"

.field public static INSTANCE_FLAG:I


# instance fields
.field private mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

.field private mLastFragment:Lcom/zhangdan/app/activities/BaseFragment;

.field private mLeftMenuFragment:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

.field private mLocationListener:Lcom/zhangdan/app/location/BaiduLocation$LocationListener;

.field private mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

.field private mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

.field private mPressBackCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/zhangdan/app/activities/MainFragmentActivity;->INSTANCE_FLAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mPressBackCount:I

    .line 74
    new-instance v0, Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/PositionProvider;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    .line 130
    new-instance v0, Lcom/zhangdan/app/activities/MainFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/MainFragmentActivity$1;-><init>(Lcom/zhangdan/app/activities/MainFragmentActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLocationListener:Lcom/zhangdan/app/location/BaiduLocation$LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/MainFragmentActivity;)Lcom/zhangdan/preferential/utils/PositionProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    return-object v0
.end method

.method private changeActionBarContent(Lcom/zhangdan/app/activities/BaseFragment;)V
    .locals 5
    .parameter "fragment"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 231
    .local v0, actionBar:Lcom/actionbarsherlock/app/ActionBar;
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 232
    .local v2, layout:Landroid/widget/FrameLayout;
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 233
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 234
    .local v3, view:Landroid/view/View;
    invoke-virtual {p1, p0}, Lcom/zhangdan/app/activities/BaseFragment;->getActionBarView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 235
    .local v1, actionBarView:Landroid/view/View;
    if-ne v1, v3, :cond_0

    .line 244
    .end local v1           #actionBarView:Landroid/view/View;
    .end local v3           #view:Landroid/view/View;
    :goto_0
    return-void

    .line 238
    .restart local v1       #actionBarView:Landroid/view/View;
    .restart local v3       #view:Landroid/view/View;
    :cond_0
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 239
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 242
    .end local v1           #actionBarView:Landroid/view/View;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    invoke-virtual {p1, p0}, Lcom/zhangdan/app/activities/BaseFragment;->getActionBarView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private changeFragmentImmediate(Lcom/zhangdan/app/activities/BaseFragment;I)V
    .locals 3
    .parameter "fragment"
    .parameter "flag"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 273
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    if-ne v1, v2, :cond_1

    .line 274
    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 278
    :goto_0
    iput-object p1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    .line 279
    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    if-ne p1, v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 284
    :goto_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    iput-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLastFragment:Lcom/zhangdan/app/activities/BaseFragment;

    .line 285
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 286
    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->changeActionBarContent(Lcom/zhangdan/app/activities/BaseFragment;)V

    .line 287
    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLeftMenuFragment:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLeftMenuFragment:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v1, p2}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->setSelectedItemFlag(I)V

    .line 290
    :cond_0
    return-void

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 282
    :cond_2
    const v1, 0x7f09019f

    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method private processLaunchUri(Landroid/content/Intent;)V
    .locals 17
    .parameter "i"

    .prologue
    .line 373
    const-string v13, "launch_uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 374
    .local v9, launchUri:Landroid/net/Uri;
    if-eqz v9, :cond_2

    .line 375
    const-string v13, "appId"

    invoke-virtual {v9, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, appId:Ljava/lang/String;
    const-string v13, "sourceId"

    invoke-virtual {v9, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 377
    .local v11, sourceId:Ljava/lang/String;
    const-string v13, "tradeNo"

    invoke-virtual {v9, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 378
    .local v12, tradeNo:Ljava/lang/String;
    const-string v13, "billId"

    invoke-virtual {v9, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, billId:Ljava/lang/String;
    const-string v13, "09999999"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "alipay"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 380
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v8, intent:Landroid/content/Intent;
    const-class v13, Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/ZhangdanApplication;

    .line 383
    .local v1, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v1}, Lcom/zhangdan/app/ZhangdanApplication;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v6

    .line 384
    .local v6, dm:Lcom/zhangdan/app/global/DataManager;
    invoke-virtual {v6}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v10

    .line 385
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    const/4 v5, 0x0

    .line 386
    .local v5, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    if-eqz v10, :cond_1

    .line 387
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 388
    .local v3, b:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLastBillId()J

    move-result-wide v13

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_0

    .line 389
    move-object v5, v3

    .line 394
    .end local v3           #b:Lcom/zhangdan/app/data/model/UserBankInfo;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz v5, :cond_2

    .line 395
    const-string v13, "key_user_bank"

    invoke-virtual {v1, v13, v5}, Lcom/zhangdan/app/ZhangdanApplication;->addCacheObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 399
    sget v13, Lcom/zhangdan/app/service/DownloadDataService;->DOWNLOAD_DATA_FLAG:I

    if-nez v13, :cond_2

    .line 400
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    if-eqz v13, :cond_2

    .line 401
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v13}, Lcom/zhangdan/app/activities/main/MainContentFragment;->onClickActionBarRefresh()V

    .line 408
    .end local v1           #app:Lcom/zhangdan/app/ZhangdanApplication;
    .end local v2           #appId:Ljava/lang/String;
    .end local v4           #billId:Ljava/lang/String;
    .end local v5           #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    .end local v6           #dm:Lcom/zhangdan/app/global/DataManager;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    .end local v11           #sourceId:Ljava/lang/String;
    .end local v12           #tradeNo:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private processPushData(Ljava/lang/String;)V
    .locals 12
    .parameter "pushData"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 416
    const-string v7, "\\|"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, arr:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v7, v0

    if-ne v7, v11, :cond_0

    .line 419
    :try_start_0
    const-string v7, "GexinSdkDemo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 421
    .local v1, code:I
    const/4 v7, 0x1

    aget-object v6, v0, v7

    .line 422
    .local v6, value:Ljava/lang/String;
    if-ne v1, v10, :cond_1

    .line 423
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v3, i:Landroid/content/Intent;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 426
    const-string v7, "MainActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "open url..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .end local v1           #code:I
    .end local v3           #i:Landroid/content/Intent;
    .end local v6           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 427
    .restart local v1       #code:I
    .restart local v6       #value:Ljava/lang/String;
    :cond_1
    if-ne v1, v11, :cond_2

    .line 428
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 429
    .restart local v3       #i:Landroid/content/Intent;
    const-string v7, "com.zhangdan.preferential.MIX_VIEW_RECOMMEND_DETAIL"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v7, "prom_id"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 432
    const-string v7, "MainActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "open bank activity..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    .end local v1           #code:I
    .end local v3           #i:Landroid/content/Intent;
    .end local v6           #value:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 441
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 433
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #code:I
    .restart local v6       #value:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x3

    if-ne v1, v7, :cond_0

    .line 434
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 435
    .local v5, intent:Landroid/content/Intent;
    const-class v7, Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-virtual {v5, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 436
    const/4 v7, 0x1

    new-array v4, v7, [I

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v4, v7

    .line 437
    .local v4, idArr:[I
    const-string v7, "ids"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 438
    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 154
    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhangdan/app/activities/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 157
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    if-eq v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->changeFragmentImmediate(Lcom/zhangdan/app/activities/BaseFragment;I)V

    .line 171
    :goto_0
    return-void

    .line 164
    :cond_0
    iget v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mPressBackCount:I

    if-nez v0, :cond_1

    .line 165
    const v0, 0x7f070135

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mPressBackCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mPressBackCount:I

    goto :goto_0

    .line 168
    :cond_1
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClosed()V
    .locals 4

    .prologue
    .line 203
    const-string v2, "MainFragmentActivity"

    const-string v3, "onClosed()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLastFragment:Lcom/zhangdan/app/activities/BaseFragment;

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    invoke-direct {p0, v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->changeActionBarContent(Lcom/zhangdan/app/activities/BaseFragment;)V

    .line 207
    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    iget-object v3, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLastFragment:Lcom/zhangdan/app/activities/BaseFragment;

    if-ne v2, v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 210
    .local v0, fragmentMgr:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 211
    .local v1, transaction:Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    iget-object v3, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    if-eq v2, v3, :cond_3

    .line 212
    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 213
    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLastFragment:Lcom/zhangdan/app/activities/BaseFragment;

    iget-object v3, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    if-eq v2, v3, :cond_2

    .line 214
    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLastFragment:Lcom/zhangdan/app/activities/BaseFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 215
    :cond_2
    const v2, 0x7f09019f

    iget-object v3, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 220
    :goto_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    iput-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLastFragment:Lcom/zhangdan/app/activities/BaseFragment;

    goto :goto_0

    .line 217
    :cond_3
    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLastFragment:Lcom/zhangdan/app/activities/BaseFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 218
    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sput v9, Lcom/zhangdan/app/activities/MainFragmentActivity;->INSTANCE_FLAG:I

    .line 81
    invoke-static {v6}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateOnlyWifi(Z)V

    .line 82
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->update(Landroid/content/Context;)V

    .line 83
    invoke-static {v6}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateAutoPopup(Z)V

    .line 84
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateListener(Lcom/umeng/update/UmengUpdateListener;)V

    .line 85
    invoke-static {}, Lcom/igexin/slavesdk/MessageManager;->getInstance()Lcom/igexin/slavesdk/MessageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/igexin/slavesdk/MessageManager;->initialize(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v5

    .line 88
    .local v5, slidingMenu:Lcom/slidingmenu/lib/SlidingMenu;
    invoke-virtual {v5, p0}, Lcom/slidingmenu/lib/SlidingMenu;->setOnClosedListener(Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;)V

    .line 89
    invoke-virtual {v5, p0}, Lcom/slidingmenu/lib/SlidingMenu;->setOnOpenedListener(Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 92
    .local v0, fragmentMgr:Landroid/support/v4/app/FragmentManager;
    const v6, 0x7f03007a

    invoke-virtual {p0, v6}, Lcom/zhangdan/app/activities/MainFragmentActivity;->setContentView(I)V

    .line 93
    new-instance v6, Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {v6}, Lcom/zhangdan/app/activities/main/MainContentFragment;-><init>()V

    iput-object v6, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    .line 94
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f09019f

    iget-object v8, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 98
    new-instance v6, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-direct {v6}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;-><init>()V

    iput-object v6, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLeftMenuFragment:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    .line 99
    const v6, 0x7f03007b

    invoke-virtual {p0, v6}, Lcom/zhangdan/app/activities/MainFragmentActivity;->setBehindContentView(I)V

    .line 100
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f0901a0

    iget-object v8, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLeftMenuFragment:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 104
    iget-object v6, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {p0, v6}, Lcom/zhangdan/app/activities/MainFragmentActivity;->changeActionBarContent(Lcom/zhangdan/app/activities/BaseFragment;)V

    .line 105
    iget-object v6, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    iput-object v6, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    .line 106
    iget-object v6, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    iput-object v6, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLastFragment:Lcom/zhangdan/app/activities/BaseFragment;

    .line 108
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/zhangdan/app/activities/MainFragmentActivity;->processLaunchUri(Landroid/content/Intent;)V

    .line 110
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getPushData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, pushData:Ljava/lang/String;
    invoke-static {v3}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 112
    const-string v6, ""

    invoke-static {p0, v6}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->savePushData(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, v3}, Lcom/zhangdan/app/activities/MainFragmentActivity;->processPushData(Ljava/lang/String;)V

    .line 117
    :cond_0
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getLocalPwd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, pwd:Ljava/lang/String;
    invoke-static {v4}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 119
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v1, intent:Landroid/content/Intent;
    const-class v6, Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-virtual {v1, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 121
    const-string v6, "set_pwd"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    const v6, 0x7f040003

    const v7, 0x7f040005

    invoke-virtual {p0, v6, v7}, Lcom/zhangdan/app/activities/MainFragmentActivity;->overridePendingTransition(II)V

    .line 126
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    invoke-static {p0}, Lcom/zhangdan/app/location/BaiduLocation;->getInstance(Landroid/content/Context;)Lcom/zhangdan/app/location/BaiduLocation;

    move-result-object v2

    .line 127
    .local v2, location:Lcom/zhangdan/app/location/BaiduLocation;
    iget-object v6, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLocationListener:Lcom/zhangdan/app/location/BaiduLocation$LocationListener;

    invoke-virtual {v2, v6}, Lcom/zhangdan/app/location/BaiduLocation;->registerListener(Lcom/zhangdan/app/location/BaiduLocation$LocationListener;)V

    .line 128
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->onDestroy()V

    .line 190
    invoke-static {p0}, Lcom/zhangdan/app/location/BaiduLocation;->getInstance(Landroid/content/Context;)Lcom/zhangdan/app/location/BaiduLocation;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLocationListener:Lcom/zhangdan/app/location/BaiduLocation$LocationListener;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/location/BaiduLocation;->unregisterListener(Lcom/zhangdan/app/location/BaiduLocation$LocationListener;)V

    .line 191
    const/4 v0, 0x0

    sput v0, Lcom/zhangdan/app/activities/MainFragmentActivity;->INSTANCE_FLAG:I

    .line 192
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 141
    const-string v1, "MainActivity"

    const-string v2, "onNewIntent()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->processLaunchUri(Landroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->showContent()V

    .line 144
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getPushData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, pushData:Ljava/lang/String;
    invoke-static {v0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string v1, ""

    invoke-static {p0, v1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->savePushData(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->processPushData(Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onOpened()V
    .locals 2

    .prologue
    .line 196
    const-string v0, "MainFragmentActivity"

    const-string v1, "onOpened()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLeftMenuFragment:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->changeActionBarContent(Lcom/zhangdan/app/activities/BaseFragment;)V

    .line 199
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->onPause()V

    .line 183
    invoke-static {p0}, Lcom/zhangdan/app/location/BaiduLocation;->getInstance(Landroid/content/Context;)Lcom/zhangdan/app/location/BaiduLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/location/BaiduLocation;->stop()V

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mPressBackCount:I

    .line 185
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->onResume()V

    .line 176
    invoke-static {p0}, Lcom/zhangdan/app/location/BaiduLocation;->getInstance(Landroid/content/Context;)Lcom/zhangdan/app/location/BaiduLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/location/BaiduLocation;->start()V

    .line 177
    invoke-static {p0}, Lcom/zhangdan/app/location/BaiduLocation;->getInstance(Landroid/content/Context;)Lcom/zhangdan/app/location/BaiduLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/location/BaiduLocation;->requestLoction()V

    .line 178
    return-void
.end method

.method public onUpdateReturned(ILcom/umeng/update/UpdateResponse;)V
    .locals 4
    .parameter "updateStatus"
    .parameter "updateInfo"

    .prologue
    .line 343
    packed-switch p1, :pswitch_data_0

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 346
    :pswitch_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 347
    .local v1, obj:Lorg/json/JSONObject;
    const-string v2, "version"

    iget-object v3, p2, Lcom/umeng/update/UpdateResponse;->version:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string v2, "path"

    iget-object v3, p2, Lcom/umeng/update/UpdateResponse;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v2, "hasUpdate"

    iget-boolean v3, p2, Lcom/umeng/update/UpdateResponse;->hasUpdate:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 350
    const-string v2, "updateLog"

    iget-object v3, p2, Lcom/umeng/update/UpdateResponse;->updateLog:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v2, "delta"

    iget-boolean v3, p2, Lcom/umeng/update/UpdateResponse;->delta:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 352
    const-string v2, "new_md5"

    iget-object v3, p2, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v2, "patch_md5"

    iget-object v3, p2, Lcom/umeng/update/UpdateResponse;->patch_md5:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v2, "proto_ver"

    iget-object v3, p2, Lcom/umeng/update/UpdateResponse;->proto_ver:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    const-string v2, "size"

    iget-object v3, p2, Lcom/umeng/update/UpdateResponse;->size:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v2, "target_size"

    iget-object v3, p2, Lcom/umeng/update/UpdateResponse;->target_size:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setCurrApkUpdateInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p2, Lcom/umeng/update/UpdateResponse;->version:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setCurrNewVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 359
    invoke-static {p0, p2}, Lcom/umeng/update/UmengUpdateAgent;->showUpdateDialog(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    .line 360
    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLeftMenuFragment:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    if-eqz v2, :cond_0

    .line 361
    iget-object v2, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mLeftMenuFragment:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->checkNewVersion()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    .end local v1           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 363
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public switchFragment(Lcom/zhangdan/app/activities/BaseFragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    .line 262
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 263
    return-void
.end method

.method public switchToBankActivity()V
    .locals 2

    .prologue
    .line 324
    new-instance v0, Lcom/zhangdan/preferential/RecommendFragment;

    invoke-direct {v0}, Lcom/zhangdan/preferential/RecommendFragment;-><init>()V

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->changeFragmentImmediate(Lcom/zhangdan/app/activities/BaseFragment;I)V

    .line 325
    return-void
.end method

.method public switchToBankService()V
    .locals 2

    .prologue
    .line 310
    new-instance v0, Lcom/zhangdan/app/activities/bankservice/BankListFragment;

    invoke-direct {v0}, Lcom/zhangdan/app/activities/bankservice/BankListFragment;-><init>()V

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->changeFragmentImmediate(Lcom/zhangdan/app/activities/BaseFragment;I)V

    .line 311
    return-void
.end method

.method public switchToBillAnalyze()V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Lcom/zhangdan/app/activities/chart/ChartFragment;

    invoke-direct {v0}, Lcom/zhangdan/app/activities/chart/ChartFragment;-><init>()V

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->changeFragmentImmediate(Lcom/zhangdan/app/activities/BaseFragment;I)V

    .line 304
    return-void
.end method

.method public switchToBillList()V
    .locals 2

    .prologue
    .line 296
    new-instance v0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    invoke-direct {v0}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;-><init>()V

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->changeFragmentImmediate(Lcom/zhangdan/app/activities/BaseFragment;I)V

    .line 297
    return-void
.end method

.method public switchToHomePage()V
    .locals 2

    .prologue
    .line 250
    iget-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mMainContentFragment:Lcom/zhangdan/app/activities/main/MainContentFragment;

    iput-object v1, p0, Lcom/zhangdan/app/activities/MainFragmentActivity;->mCurrContentFragment:Lcom/zhangdan/app/activities/BaseFragment;

    .line 251
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    .line 252
    .local v0, menu:Lcom/slidingmenu/lib/SlidingMenu;
    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 253
    return-void
.end method

.method public switchToMyFavorite()V
    .locals 2

    .prologue
    .line 338
    new-instance v0, Lcom/zhangdan/preferential/FavoriteFragment;

    invoke-direct {v0}, Lcom/zhangdan/preferential/FavoriteFragment;-><init>()V

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->changeFragmentImmediate(Lcom/zhangdan/app/activities/BaseFragment;I)V

    .line 339
    return-void
.end method

.method public switchToNearYouhui()V
    .locals 2

    .prologue
    .line 317
    new-instance v0, Lcom/zhangdan/preferential/ShopListFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/ShopListFragment;-><init>(I)V

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->changeFragmentImmediate(Lcom/zhangdan/app/activities/BaseFragment;I)V

    .line 318
    return-void
.end method

.method public switchToSearch()V
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lcom/zhangdan/preferential/SearchFragment;

    invoke-direct {v0}, Lcom/zhangdan/preferential/SearchFragment;-><init>()V

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->changeFragmentImmediate(Lcom/zhangdan/app/activities/BaseFragment;I)V

    .line 332
    return-void
.end method
