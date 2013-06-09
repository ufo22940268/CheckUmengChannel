.class public Lcom/zhangdan/preferential/widget/TextSectionView;
.super Lcom/zhangdan/preferential/widget/DetailSectionView;


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/DetailSectionView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TextSectionView;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/TextSectionView;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03005c

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f060154

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/TextSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/TextSectionView;->c:Landroid/widget/TextView;

    const v0, 0x7f060153

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/TextSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/TextSectionView;->d:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method protected final e()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TextSectionView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method protected final f()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TextSectionView;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected final g()V
    .locals 5

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TextSectionView;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/TextSectionView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/TextSectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/zhangdan/preferential/a/d;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method
