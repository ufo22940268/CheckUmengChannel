.class public abstract Lcom/zhangdan/preferential/widget/DetailSectionView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field protected a:Landroid/view/LayoutInflater;

.field protected b:Landroid/content/Context;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->a:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030058

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f06014e

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/DetailSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->c:Landroid/widget/ImageView;

    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/DetailSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->d:Landroid/view/View;

    const v0, 0x7f06014f

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/DetailSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->e:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method protected final a()Landroid/view/ViewGroup;
    .locals 1

    const v0, 0x7f06014f

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/DetailSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected final a(Landroid/widget/ImageView;Ljava/lang/String;Lcom/a/a/a/f/b;Lcom/a/a/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->b:Landroid/content/Context;

    invoke-virtual {p3, p2, v0}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lcom/a/a/a/a;->a()Lcom/a/a/a/e/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/a/e/b;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method public a(Lcom/zhangdan/preferential/data/model/l;ILcom/a/a/a/f/b;Lcom/a/a/a/a;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected final c()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->e:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected final d()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/DetailSectionView;->e:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
