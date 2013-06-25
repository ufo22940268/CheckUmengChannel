.class public Lcom/zhangdan/preferential/widget/TextSectionView;
.super Lcom/zhangdan/preferential/widget/DetailSectionView;
.source "TextSectionView.java"


# instance fields
.field private mTextContainer:Landroid/view/ViewGroup;

.field private mTextContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/DetailSectionView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TextSectionView;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 32
    .local v0, contentView:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TextSectionView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030061

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    const v1, 0x7f09015e

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/TextSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/TextSectionView;->mTextContent:Landroid/widget/TextView;

    .line 34
    const v1, 0x7f09015d

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/TextSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/zhangdan/preferential/widget/TextSectionView;->mTextContainer:Landroid/view/ViewGroup;

    .line 35
    return-void
.end method


# virtual methods
.method protected addBackground()V
    .locals 5

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TextSectionView;->getTextContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0200d6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 47
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TextSectionView;->getTextContent()Landroid/widget/TextView;

    move-result-object v0

    .line 48
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TextSectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/zhangdan/preferential/utils/CommonMethod;->toPx(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 50
    return-void
.end method

.method protected getTextContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TextSectionView;->mTextContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getTextContent()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TextSectionView;->mTextContent:Landroid/widget/TextView;

    return-object v0
.end method
