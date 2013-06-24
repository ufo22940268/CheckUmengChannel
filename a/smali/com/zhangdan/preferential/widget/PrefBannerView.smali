.class public Lcom/zhangdan/preferential/widget/PrefBannerView;
.super Landroid/widget/RelativeLayout;
.source "PrefBannerView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;
    }
.end annotation


# static fields
.field public static final SLIDING_INTERVAL:I = 0x1388


# instance fields
.field protected imageManager:Lcom/novoda/imageloader/core/ImageManager;

.field protected imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field private mAdapter:Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;

.field private mCircleContainer:Landroid/view/ViewGroup;

.field private mIsTouched:Z

.field private mPaused:Z

.field private mPosition:I

.field private mProms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideHandler:Landroid/os/Handler;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attr"

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mProms:Ljava/util/List;

    .line 37
    iput-boolean v1, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mPaused:Z

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mSlideHandler:Landroid/os/Handler;

    .line 46
    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->getImageLoader()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    .line 47
    const v0, 0x7f020274

    invoke-static {p1, v0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 48
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setSaveThumbnail(Z)V

    .line 49
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->setAnimation(I)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/preferential/widget/PrefBannerView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mProms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zhangdan/preferential/widget/PrefBannerView;I)Lcom/zhangdan/preferential/data/model/Promotion;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/PrefBannerView;->getPromByPosition(I)Lcom/zhangdan/preferential/data/model/Promotion;

    move-result-object v0

    return-object v0
.end method

.method private getPromByPosition(I)Lcom/zhangdan/preferential/data/model/Promotion;
    .locals 2
    .parameter "position"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mProms:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mProms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mProms:Ljava/util/List;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mProms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/Promotion;

    goto :goto_0
.end method

.method private initCircles()V
    .locals 4

    .prologue
    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mProms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 102
    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/PrefBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030056

    iget-object v3, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mCircleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 101
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/PrefBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030058

    iget-object v3, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mCircleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    .line 108
    :cond_1
    return-void
.end method

.method private updateCircles(I)V
    .locals 3
    .parameter "enabledIndex"

    .prologue
    .line 111
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mCircleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mCircleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, child:Landroid/view/View;
    if-ne v1, p1, :cond_0

    .line 114
    const v2, 0x7f0201cb

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 111
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    const v2, 0x7f0201cc

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 119
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mIsTouched:Z

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    .line 63
    :cond_0
    iget-boolean v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mPaused:Z

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mSlideHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 66
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->imageTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/PrefBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 55
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 72
    const v0, 0x7f090310

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PrefBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mCircleContainer:Landroid/view/ViewGroup;

    .line 73
    const v0, 0x7f09030f

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PrefBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 74
    new-instance v0, Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/PrefBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;-><init>(Lcom/zhangdan/preferential/widget/PrefBannerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mAdapter:Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;

    .line 75
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mAdapter:Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 77
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 123
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 127
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 131
    iput p1, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mPosition:I

    .line 132
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mProms:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mProms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mProms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/widget/PrefBannerView;->updateCircles(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mIsTouched:Z

    .line 144
    :goto_0
    return v1

    .line 142
    :cond_0
    iput-boolean v1, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mIsTouched:Z

    goto :goto_0
.end method

.method public setProms(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Promotion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mProms:Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mAdapter:Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/PrefBannerView$MyPagerAdapter;->notifyDataSetChanged()V

    .line 83
    invoke-direct {p0}, Lcom/zhangdan/preferential/widget/PrefBannerView;->initCircles()V

    .line 84
    return-void
.end method

.method public startSliding()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    iget-boolean v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mPaused:Z

    if-eqz v0, :cond_0

    .line 88
    iput-boolean v3, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mPaused:Z

    .line 89
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mSlideHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mSlideHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    :cond_0
    return-void
.end method

.method public stopSliding()V
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mPaused:Z

    .line 96
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PrefBannerView;->mSlideHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    return-void
.end method
