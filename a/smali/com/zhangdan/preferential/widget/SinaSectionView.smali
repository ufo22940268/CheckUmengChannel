.class public Lcom/zhangdan/preferential/widget/SinaSectionView;
.super Lcom/zhangdan/preferential/widget/DetailSectionView;
.source "SinaSectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/widget/SinaSectionView$1;,
        Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;,
        Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;
    }
.end annotation


# instance fields
.field private mArrowView:Landroid/view/View;

.field private mBadgeContainer:Landroid/view/ViewGroup;

.field private mCommentView:Landroid/widget/TextView;

.field private mHasBinded:Z

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPrevIndex:I

.field private mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

.field private mTextContainer:Landroid/view/ViewGroup;

.field private mTextContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/DetailSectionView;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mPrevIndex:I

    .line 45
    const v0, 0x7f0201df

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->setIcon(I)V

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005f

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->getContentView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    const v0, 0x7f09015b

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mPhotoView:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f09015c

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mCommentView:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f09015a

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mBadgeContainer:Landroid/view/ViewGroup;

    .line 51
    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mArrowView:Landroid/view/View;

    .line 52
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->hideRightContainer()V

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/zhangdan/preferential/widget/SinaSectionView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mBadgeContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zhangdan/preferential/widget/SinaSectionView;Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/SinaSectionView;->updateContent(Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;)V

    return-void
.end method

.method private isMoreButton(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private translate(II)V
    .locals 9
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 141
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, p1

    int-to-float v4, p2

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 145
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 147
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mArrowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 148
    return-void
.end method

.method private updateContent(Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mCommentView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mPhotoView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;->photo:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    return-void
.end method


# virtual methods
.method public bindData(Lcom/zhangdan/preferential/data/model/ShopExtra;ILcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V
    .locals 5
    .parameter "extra"
    .parameter "typePos"
    .parameter "factory"
    .parameter "manager"

    .prologue
    const/4 v4, 0x1

    .line 57
    new-instance v0, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;-><init>(Lcom/zhangdan/preferential/widget/SinaSectionView;Lcom/zhangdan/preferential/widget/SinaSectionView$1;)V

    new-array v1, v4, [Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->weiboPoiList:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/widget/SinaSectionView$SetupDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    .line 59
    iput-boolean v4, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mHasBinded:Z

    .line 60
    return-void
.end method

.method public hasBinded()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mHasBinded:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/SinaSectionView;->isMoreButton(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    if-eqz v3, :cond_0

    .line 126
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.zhangdan.preferential.MIX_VIEW_SINA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "sina_id"

    iget-object v4, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;

    iget-object v4, v4, Lcom/zhangdan/preferential/data/model/ShopExtra;->weiboId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 129
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/zhangdan/preferential/utils/ViewUtils;->setEnterTransition(Landroid/app/Activity;)V

    .line 138
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;

    .line 133
    .local v1, holder:Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;
    invoke-direct {p0, v1}, Lcom/zhangdan/preferential/widget/SinaSectionView;->updateContent(Lcom/zhangdan/preferential/widget/SinaSectionView$DataHolder;)V

    .line 134
    iget-object v3, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mBadgeContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 135
    .local v0, curIndex:I
    iget v3, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mPrevIndex:I

    invoke-direct {p0, v3, v0}, Lcom/zhangdan/preferential/widget/SinaSectionView;->translate(II)V

    .line 136
    iput v0, p0, Lcom/zhangdan/preferential/widget/SinaSectionView;->mPrevIndex:I

    goto :goto_0
.end method
