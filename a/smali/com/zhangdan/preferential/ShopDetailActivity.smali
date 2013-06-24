.class public Lcom/zhangdan/preferential/ShopDetailActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "ShopDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;,
        Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ShopDetailActivity"


# instance fields
.field protected imageManager:Lcom/novoda/imageloader/core/ImageManager;

.field protected imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field private mAdapter:Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;

.field private mBackView:Landroid/view/View;

.field private mFavIconView:Landroid/widget/ImageView;

.field private mFavView:Landroid/view/ViewGroup;

.field private mHeaderLayerView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsFavourite:Z

.field private mLayerView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mMainTitleView:Landroid/widget/TextView;

.field private mParser:Lcom/zhangdan/preferential/utils/JsonParser;

.field private mPhotoHeaderHeight:I

.field private mPhotoHeight:I

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPriceView:Landroid/widget/TextView;

.field private mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

.field private mSendManager:Lcom/zhangdan/preferential/utils/SendManager;

.field private mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

.field private mShopNameView:Landroid/widget/TextView;

.field public mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

.field private mStarView:Lcom/zhangdan/preferential/widget/CustomStarView;

.field private mSubTitleView:Landroid/widget/TextView;

.field private mWeibo:Lcom/weibo/sdk/android/Weibo;

.field private mWeiboKeeper:Lcom/zhangdan/preferential/utils/WeiboKeeper;

.field private mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 389
    return-void
.end method

.method static synthetic access$100(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/utils/RequestGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mPriceView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zhangdan/preferential/ShopDetailActivity;Lcom/zhangdan/preferential/data/model/ShopExtra;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ShopDetailActivity;->updateMenuItems(Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mAdapter:Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mLayerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mHeaderLayerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/utils/JsonParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zhangdan/preferential/ShopDetailActivity;Lcom/zhangdan/preferential/data/model/ShopExtra;)Lcom/zhangdan/preferential/data/model/ShopExtra;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/preferential/ShopDetailActivity;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/ShopDetailActivity;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mMainTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mSubTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/widget/CustomStarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mStarView:Lcom/zhangdan/preferential/widget/CustomStarView;

    return-object v0
.end method

.method private buildDialog(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 245
    .local v3, names:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 246
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/preferential/data/model/Shop;

    iget-object v4, v4, Lcom/zhangdan/preferential/data/model/Shop;->name:Ljava/lang/String;

    aput-object v4, v3, v2

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    invoke-direct {v1, p0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 253
    .local v1, adapter:Landroid/widget/ArrayAdapter;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/zhangdan/preferential/ShopDetailActivity$2;

    invoke-direct {v5, p0, p1}, Lcom/zhangdan/preferential/ShopDetailActivity$2;-><init>(Lcom/zhangdan/preferential/ShopDetailActivity;Ljava/util/List;)V

    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 263
    .local v0, ad:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 264
    return-void
.end method

.method private buildDialog([Ljava/lang/String;[Landroid/content/Intent;)V
    .locals 4
    .parameter "content"
    .parameter "intents"

    .prologue
    .line 227
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {v1, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 231
    .local v1, adapter:Landroid/widget/ArrayAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/zhangdan/preferential/ShopDetailActivity$1;

    invoke-direct {v3, p0, p2}, Lcom/zhangdan/preferential/ShopDetailActivity$1;-><init>(Lcom/zhangdan/preferential/ShopDetailActivity;[Landroid/content/Intent;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 240
    .local v0, ad:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 241
    return-void
.end method

.method private composeTelIntents()[Landroid/content/Intent;
    .locals 6

    .prologue
    .line 267
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    iget-object v4, v4, Lcom/zhangdan/preferential/data/model/ShopExtra;->tels:[Ljava/lang/String;

    array-length v4, v4

    new-array v2, v4, [Landroid/content/Intent;

    .line 268
    .local v2, intents:[Landroid/content/Intent;
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    iget-object v3, v4, Lcom/zhangdan/preferential/data/model/ShopExtra;->tels:[Ljava/lang/String;

    .line 269
    .local v3, tels:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 270
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, intent:Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 272
    aput-object v1, v2, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-object v2
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 136
    const v0, 0x7f090187

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mListView:Landroid/widget/ListView;

    .line 137
    const v0, 0x7f09032b

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mMainTitleView:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f09032c

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mSubTitleView:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f09015b

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    .line 140
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mBackView:Landroid/view/View;

    .line 142
    const v0, 0x7f0902c8

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopNameView:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0901c5

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mPriceView:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0902bc

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/CustomStarView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mStarView:Lcom/zhangdan/preferential/widget/CustomStarView;

    .line 145
    const v0, 0x7f090322

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mLayerView:Landroid/view/View;

    .line 146
    const v0, 0x7f090323

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mHeaderLayerView:Landroid/view/View;

    .line 147
    const v0, 0x7f090325

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mFavView:Landroid/view/ViewGroup;

    .line 148
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mFavView:Landroid/view/ViewGroup;

    const v1, 0x7f090125

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mFavIconView:Landroid/widget/ImageView;

    .line 149
    return-void
.end method

.method private getListHeaderView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private initImageLoader()V
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    .line 125
    const v0, 0x7f020274

    invoke-static {p0, v0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 126
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setSaveThumbnail(Z)V

    .line 127
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setAnimation(I)V

    .line 128
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;-><init>(Lcom/zhangdan/preferential/ShopDetailActivity;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mAdapter:Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;

    .line 153
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mAdapter:Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 155
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mBackView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 158
    const v0, 0x7f090326

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v0, 0x7f090325

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v0, 0x7f09032e

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f09032f

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v0, 0x7f090330

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method

.method private loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-virtual {v0, p2, p0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 133
    return-void
.end method

.method private markFavView()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mFavIconView:Landroid/widget/ImageView;

    const v1, 0x7f0201e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    return-void
.end method

.method private unmarkFavView()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mFavIconView:Landroid/widget/ImageView;

    const v1, 0x7f0201e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    return-void
.end method

.method private updateMenuItems(Lcom/zhangdan/preferential/data/model/ShopExtra;)V
    .locals 1
    .parameter "extra"

    .prologue
    .line 290
    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/ShopExtra;->isFav()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mIsFavourite:Z

    .line 291
    iget-boolean v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mIsFavourite:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->markFavView()V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->unmarkFavView()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 550
    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/WrappedActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 552
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/weibo/sdk/android/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 555
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 559
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onBackPressed()V

    .line 560
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setReturnTransition(Landroid/app/Activity;)V

    .line 561
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 170
    :sswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->finish()V

    .line 171
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setReturnTransition(Landroid/app/Activity;)V

    goto :goto_0

    .line 174
    :sswitch_1
    const/4 v0, 0x0

    .line 175
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 176
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    :cond_1
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    if-eqz v3, :cond_0

    .line 180
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mSendManager:Lcom/zhangdan/preferential/utils/SendManager;

    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    invoke-virtual {v3, v4, v0}, Lcom/zhangdan/preferential/utils/SendManager;->buildDialog(Lcom/zhangdan/preferential/data/model/ShopExtra;Landroid/graphics/Bitmap;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 184
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :sswitch_2
    iget-boolean v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mIsFavourite:Z

    if-nez v3, :cond_2

    .line 186
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;

    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    iget-object v4, v4, Lcom/zhangdan/preferential/data/model/ShopExtra;->id:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/zhangdan/preferential/utils/WeiboManager;->markShopFav(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->markFavView()V

    .line 189
    iput-boolean v7, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mIsFavourite:Z

    goto :goto_0

    .line 193
    :cond_2
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;

    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    iget-object v4, v4, Lcom/zhangdan/preferential/data/model/ShopExtra;->id:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/zhangdan/preferential/utils/WeiboManager;->unmarkShopFav(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->unmarkFavView()V

    .line 195
    iput-boolean v6, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mIsFavourite:Z

    goto :goto_0

    .line 200
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.zhangdan.preferential.MIX_PICK_ERROR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 202
    .local v1, data:Landroid/os/Bundle;
    const-string v3, "shop_id"

    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    iget-object v4, v4, Lcom/zhangdan/preferential/data/model/ShopExtra;->id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/ShopDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    invoke-static {p0}, Lcom/zhangdan/preferential/utils/ViewUtils;->setEnterTransition(Landroid/app/Activity;)V

    goto :goto_0

    .line 208
    .end local v1           #data:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_4
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    iget-object v3, v3, Lcom/zhangdan/preferential/data/model/ShopExtra;->tels:[Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    iget-object v3, v3, Lcom/zhangdan/preferential/data/model/ShopExtra;->tels:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_3

    .line 209
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    iget-object v3, v3, Lcom/zhangdan/preferential/data/model/ShopExtra;->tels:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->composeTelIntents()[Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/zhangdan/preferential/ShopDetailActivity;->buildDialog([Ljava/lang/String;[Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 211
    :cond_3
    const v3, 0x7f0701f7

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 216
    :sswitch_5
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    iget-object v3, v3, Lcom/zhangdan/preferential/data/model/ShopExtra;->shopList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 217
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    iget-object v3, v3, Lcom/zhangdan/preferential/data/model/ShopExtra;->shopList:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/zhangdan/preferential/ShopDetailActivity;->buildDialog(Ljava/util/List;)V

    goto/16 :goto_0

    .line 219
    :cond_4
    const v3, 0x7f0701f8

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x7f090037 -> :sswitch_0
        0x7f090325 -> :sswitch_2
        0x7f090326 -> :sswitch_1
        0x7f09032e -> :sswitch_3
        0x7f09032f -> :sswitch_4
        0x7f090330 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 98
    new-instance v3, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v3}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    iput-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    .line 99
    new-instance v3, Lcom/zhangdan/preferential/utils/JsonParser;

    invoke-direct {v3, p0}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    .line 100
    new-instance v3, Lcom/zhangdan/preferential/utils/SendManager;

    invoke-direct {v3, p0}, Lcom/zhangdan/preferential/utils/SendManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mSendManager:Lcom/zhangdan/preferential/utils/SendManager;

    .line 101
    new-instance v3, Lcom/zhangdan/preferential/utils/WeiboManager;

    invoke-direct {v3, p0}, Lcom/zhangdan/preferential/utils/WeiboManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;

    .line 102
    new-instance v3, Lcom/zhangdan/preferential/utils/WeiboKeeper;

    invoke-direct {v3, p0}, Lcom/zhangdan/preferential/utils/WeiboKeeper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mWeiboKeeper:Lcom/zhangdan/preferential/utils/WeiboKeeper;

    .line 103
    const-string v3, "4101037885"

    const-string v4, "http://www.51zhangdan.com/service/user/sinalogin.ashx"

    invoke-static {v3, v4}, Lcom/weibo/sdk/android/Weibo;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/Weibo;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    .line 104
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->initImageLoader()V

    .line 105
    const v3, 0x7f0300fe

    invoke-virtual {p0, v3}, Lcom/zhangdan/preferential/ShopDetailActivity;->setContentView(I)V

    .line 107
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 108
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "shop_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, shopId:Ljava/lang/String;
    const-string v3, "photo_url"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, photoUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mPhotoHeaderHeight:I

    .line 112
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mPhotoHeight:I

    .line 113
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViews()V

    .line 114
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->initViews()V

    .line 116
    if-eqz v1, :cond_0

    .line 117
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 120
    :cond_0
    new-instance v3, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;-><init>(Lcom/zhangdan/preferential/ShopDetailActivity;Lcom/zhangdan/preferential/ShopDetailActivity$1;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 121
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

    .line 301
    iget-object v8, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_1

    if-nez p2, :cond_1

    .line 302
    iget-object v8, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 303
    .local v2, bottom:I
    iget v8, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mPhotoHeight:I

    sub-int v7, v8, v2

    .line 307
    .end local v2           #bottom:I
    .local v7, scrollY:I
    :goto_0
    iget-object v8, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mLayerView:Landroid/view/View;

    invoke-virtual {v8, v10, v7}, Landroid/view/View;->scrollTo(II)V

    .line 309
    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 328
    :cond_0
    :goto_1
    return-void

    .line 305
    .end local v7           #scrollY:I
    :cond_1
    iget v8, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mPhotoHeight:I

    iget v9, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mPhotoHeaderHeight:I

    sub-int v7, v8, v9

    .restart local v7       #scrollY:I
    goto :goto_0

    .line 313
    :cond_2
    const/4 v1, 0x0

    .line 314
    .local v1, alpha:F
    if-nez p2, :cond_3

    .line 315
    invoke-virtual {p1, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 316
    .local v6, firstView:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 317
    .local v5, firstHeight:I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mPhotoHeaderHeight:I

    sub-int v4, v8, v9

    .line 319
    .local v4, firstBottom:I
    const/high16 v8, 0x3f80

    int-to-float v9, v4

    int-to-float v10, v5

    div-float/2addr v9, v10

    sub-float v1, v8, v9

    .line 324
    .end local v4           #firstBottom:I
    .end local v5           #firstHeight:I
    .end local v6           #firstView:Landroid/view/View;
    :goto_2
    const/high16 v8, 0x437f

    mul-float/2addr v8, v1

    float-to-int v8, v8

    shl-int/lit8 v0, v8, 0x18

    .line 325
    .local v0, a:I
    const v3, 0xffffff

    .line 326
    .local v3, color:I
    iget-object v8, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mMainTitleView:Landroid/widget/TextView;

    add-int v9, v0, v3

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    iget-object v8, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->mSubTitleView:Landroid/widget/TextView;

    add-int v9, v0, v3

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 321
    .end local v0           #a:I
    .end local v3           #color:I
    :cond_3
    const/high16 v1, 0x3f80

    goto :goto_2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 332
    return-void
.end method
