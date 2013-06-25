.class public Lcom/zhangdan/preferential/widget/BrandContainer;
.super Landroid/widget/LinearLayout;
.source "BrandContainer.java"


# instance fields
.field private mArrowContainter:Landroid/view/View;

.field private mBrands:Landroid/view/ViewGroup;

.field private mPrev:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/preferential/widget/BrandContainer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/BrandContainer;->moveTo(I)V

    return-void
.end method

.method private loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;Lcom/novoda/imageloader/core/ImageManager;Lcom/novoda/imageloader/core/model/ImageTagFactory;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "manager"
    .parameter "factory"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/BrandContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p3}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 78
    return-void
.end method

.method private moveTo(I)V
    .locals 9
    .parameter "index"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 60
    iget v2, p0, Lcom/zhangdan/preferential/widget/BrandContainer;->mPrev:I

    if-ne p1, v2, :cond_0

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/zhangdan/preferential/widget/BrandContainer;->mPrev:I

    int-to-float v2, v2

    int-to-float v4, p1

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 68
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 70
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/BrandContainer;->mArrowContainter:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 72
    iput p1, p0, Lcom/zhangdan/preferential/widget/BrandContainer;->mPrev:I

    goto :goto_0
.end method


# virtual methods
.method public bindBrands(Ljava/util/List;Lcom/novoda/imageloader/core/ImageManager;Lcom/novoda/imageloader/core/model/ImageTagFactory;)V
    .locals 8
    .parameter
    .parameter "manager"
    .parameter "factory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Brand;",
            ">;",
            "Lcom/novoda/imageloader/core/ImageManager;",
            "Lcom/novoda/imageloader/core/model/ImageTagFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, brands:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Brand;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 43
    move v2, v1

    .line 44
    .local v2, index:I
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/Brand;

    .line 45
    .local v0, b:Lcom/zhangdan/preferential/data/model/Brand;
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/BrandContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300f2

    iget-object v6, p0, Lcom/zhangdan/preferential/widget/BrandContainer;->mBrands:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 47
    .local v3, iv:Landroid/widget/ImageView;
    new-instance v4, Lcom/zhangdan/preferential/widget/BrandContainer$1;

    invoke-direct {v4, p0, v2}, Lcom/zhangdan/preferential/widget/BrandContainer$1;-><init>(Lcom/zhangdan/preferential/widget/BrandContainer;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v4, v0, Lcom/zhangdan/preferential/data/model/Brand;->iconUrl:Ljava/lang/String;

    invoke-direct {p0, v3, v4, p2, p3}, Lcom/zhangdan/preferential/widget/BrandContainer;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;Lcom/novoda/imageloader/core/ImageManager;Lcom/novoda/imageloader/core/model/ImageTagFactory;)V

    .line 54
    iget-object v4, p0, Lcom/zhangdan/preferential/widget/BrandContainer;->mBrands:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v0           #b:Lcom/zhangdan/preferential/data/model/Brand;
    .end local v2           #index:I
    .end local v3           #iv:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 37
    const v0, 0x7f090324

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/BrandContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/BrandContainer;->mBrands:Landroid/view/ViewGroup;

    .line 38
    const v0, 0x7f090325

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/BrandContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/BrandContainer;->mArrowContainter:Landroid/view/View;

    .line 39
    return-void
.end method
