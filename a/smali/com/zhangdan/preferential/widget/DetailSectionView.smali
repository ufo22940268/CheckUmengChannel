.class public abstract Lcom/zhangdan/preferential/widget/DetailSectionView;
.super Landroid/widget/RelativeLayout;
.source "DetailSectionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/widget/DetailSectionView$OnLaunchIntentListener;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDividerView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIntent:Landroid/content/Intent;

.field private mRightContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03005d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    const v0, 0x7f090158

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/DetailSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->mIconView:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/DetailSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->mDividerView:Landroid/view/View;

    .line 43
    const v0, 0x7f090159

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/DetailSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->mRightContainer:Landroid/view/ViewGroup;

    .line 44
    return-void
.end method


# virtual methods
.method public bindData(Lcom/zhangdan/preferential/data/model/ShopExtra;ILcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V
    .locals 0
    .parameter "extra"
    .parameter "typePos"
    .parameter "factory"
    .parameter "manager"

    .prologue
    .line 47
    return-void
.end method

.method protected getContentView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f090159

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/DetailSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hideDivider()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->mDividerView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    return-void
.end method

.method protected hideRightContainer()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->mRightContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 78
    return-void
.end method

.method public launchIntent(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;Lcom/novoda/imageloader/core/model/ImageTagFactory;Lcom/novoda/imageloader/core/ImageManager;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "factory"
    .parameter "manager"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p2, v0}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p4}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 56
    return-void
.end method

.method protected setIcon(I)V
    .locals 1
    .parameter "res"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    return-void
.end method

.method protected setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->mIntent:Landroid/content/Intent;

    .line 64
    return-void
.end method

.method protected showRightContainer()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->mRightContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 82
    return-void
.end method
