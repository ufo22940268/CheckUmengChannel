.class public final Lcom/zhangdan/preferential/a/v;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/a/a/a/f/b;

.field protected b:Lcom/a/a/a/a;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;

.field private e:Z

.field private f:Lcom/zhangdan/preferential/a/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/preferential/a/v;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/zhangdan/preferential/a/v;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/a/v;->d:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/zhangdan/preferential/a/u;

    invoke-direct {v0, p1}, Lcom/zhangdan/preferential/a/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/a/v;->f:Lcom/zhangdan/preferential/a/u;

    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->f()Lcom/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/a/v;->b:Lcom/a/a/a/a;

    iget-object v0, p0, Lcom/zhangdan/preferential/a/v;->c:Landroid/content/Context;

    const v1, 0x7f020310

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Landroid/content/Context;I)Lcom/a/a/a/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/a/v;->a:Lcom/a/a/a/f/b;

    iget-object v0, p0, Lcom/zhangdan/preferential/a/v;->a:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->a()V

    iget-object v0, p0, Lcom/zhangdan/preferential/a/v;->a:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->b()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lcom/zhangdan/preferential/a/w;
    .locals 2

    new-instance v1, Lcom/zhangdan/preferential/a/w;

    invoke-direct {v1, p0}, Lcom/zhangdan/preferential/a/w;-><init>(Lcom/zhangdan/preferential/a/v;)V

    const v0, 0x7f0602bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/preferential/a/w;->a:Landroid/widget/TextView;

    const v0, 0x7f06026c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/preferential/a/w;->b:Landroid/widget/TextView;

    const v0, 0x7f06026d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/preferential/a/w;->c:Landroid/widget/TextView;

    const v0, 0x7f060151

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zhangdan/preferential/a/w;->d:Landroid/widget/ImageView;

    const v0, 0x7f0602b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/CustomStarView;

    iput-object v0, v1, Lcom/zhangdan/preferential/a/w;->e:Lcom/zhangdan/preferential/widget/CustomStarView;

    const v0, 0x7f0602be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zhangdan/preferential/a/w;->f:Landroid/widget/ImageView;

    return-object v1
.end method

.method public final a(IZ)Lcom/zhangdan/preferential/widget/ShopListItemView;
    .locals 3

    new-instance v0, Lcom/zhangdan/preferential/widget/ShopListItemView;

    iget-object v1, p0, Lcom/zhangdan/preferential/a/v;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/zhangdan/preferential/widget/ShopListItemView;-><init>(Landroid/content/Context;Z)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const v1, 0x7f060151

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/a/v;->f:Lcom/zhangdan/preferential/a/u;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/a/u;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/a/v;->e:Z

    return-void
.end method

.method public final a(Lcom/zhangdan/preferential/widget/ShopListItemView;Lcom/zhangdan/preferential/data/model/k;Z)V
    .locals 4

    invoke-virtual {p1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/a/w;

    iget-object v1, v0, Lcom/zhangdan/preferential/a/w;->a:Landroid/widget/TextView;

    invoke-static {v1, p2}, Lcom/zhangdan/preferential/a/z;->c(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/k;)V

    iget-object v1, v0, Lcom/zhangdan/preferential/a/w;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/preferential/a/v;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/zhangdan/preferential/a/w;->b:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/zhangdan/preferential/data/model/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/zhangdan/preferential/a/w;->c:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/zhangdan/preferential/data/model/k;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/zhangdan/preferential/a/w;->e:Lcom/zhangdan/preferential/widget/CustomStarView;

    iget v2, p2, Lcom/zhangdan/preferential/data/model/k;->h:I

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/widget/CustomStarView;->a(I)V

    invoke-virtual {p1, p2, p3}, Lcom/zhangdan/preferential/widget/ShopListItemView;->a(Lcom/zhangdan/preferential/data/model/k;Z)V

    if-nez p3, :cond_0

    iget-object v0, v0, Lcom/zhangdan/preferential/a/w;->d:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/zhangdan/preferential/data/model/k;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/zhangdan/preferential/a/v;->a:Lcom/a/a/a/f/b;

    iget-object v3, p0, Lcom/zhangdan/preferential/a/v;->c:Landroid/content/Context;

    invoke-virtual {v2, v1, v3}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/a/v;->b:Lcom/a/a/a/a;

    invoke-virtual {v1}, Lcom/a/a/a/a;->a()Lcom/a/a/a/e/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/a/a/a/e/b;->a(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method
