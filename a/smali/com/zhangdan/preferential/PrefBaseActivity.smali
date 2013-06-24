.class Lcom/zhangdan/preferential/PrefBaseActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "PrefBaseActivity.java"


# instance fields
.field protected imageManager:Lcom/novoda/imageloader/core/ImageManager;

.field protected imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field protected mParser:Lcom/zhangdan/preferential/utils/JsonParser;

.field protected mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

.field protected mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

.field protected mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method

.method private initImageLoader()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/PrefBaseActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    .line 54
    const v0, 0x7f020274

    invoke-static {p0, v0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/PrefBaseActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 55
    iget-object v0, p0, Lcom/zhangdan/preferential/PrefBaseActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setSaveThumbnail(Z)V

    .line 56
    iget-object v0, p0, Lcom/zhangdan/preferential/PrefBaseActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setAnimation(I)V

    .line 57
    return-void
.end method


# virtual methods
.method protected loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zhangdan/preferential/PrefBaseActivity;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-virtual {v0, p2, p0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/zhangdan/preferential/PrefBaseActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 50
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/PositionProvider;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/PrefBaseActivity;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    .line 41
    new-instance v0, Lcom/zhangdan/preferential/utils/WeiboManager;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/WeiboManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/PrefBaseActivity;->mWeiboManager:Lcom/zhangdan/preferential/utils/WeiboManager;

    .line 42
    new-instance v0, Lcom/zhangdan/preferential/utils/JsonParser;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/JsonParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/PrefBaseActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    .line 43
    new-instance v0, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/PrefBaseActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    .line 44
    invoke-direct {p0}, Lcom/zhangdan/preferential/PrefBaseActivity;->initImageLoader()V

    .line 45
    return-void
.end method
