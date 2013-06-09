.class public Lcom/zhangdan/preferential/widget/ShopListItemView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:[Landroid/view/View;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/view/View;

.field private h:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->a:[Landroid/view/View;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->h:[Landroid/widget/TextView;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->b:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300c7

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f060151

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0602b0

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->d:Landroid/view/View;

    const v0, 0x7f0602bc

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->e:Landroid/view/ViewGroup;

    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->f:Landroid/view/ViewGroup;

    const v0, 0x7f0601bb

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->h:[Landroid/widget/TextView;

    const v0, 0x7f0602e8

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->h:[Landroid/widget/TextView;

    const v0, 0x7f0602e7

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->h:[Landroid/widget/TextView;

    const/4 v2, 0x2

    const v0, 0x7f0602e6

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private static a(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->a(Landroid/view/View;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->a:[Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f060140

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->a:[Landroid/view/View;

    const/4 v1, 0x1

    const v2, 0x7f060142

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->a:[Landroid/view/View;

    const/4 v1, 0x2

    const v2, 0x7f060144

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->a:[Landroid/view/View;

    const/4 v1, 0x3

    const v2, 0x7f060145

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->a:[Landroid/view/View;

    const/4 v1, 0x5

    const v2, 0x7f060143

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->a:[Landroid/view/View;

    const/4 v1, 0x4

    const v2, 0x7f060141

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/preferential/data/model/k;Z)V
    .locals 6

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->f:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->a(Landroid/view/ViewGroup;)V

    :goto_0
    iget-object v2, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->a:[Landroid/view/View;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->a:[Landroid/view/View;

    aget-object v0, v0, v1

    iget v1, p1, Lcom/zhangdan/preferential/data/model/k;->l:I

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->a:[Landroid/view/View;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget v1, p1, Lcom/zhangdan/preferential/data/model/k;->m:I

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->a:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v1, p1, Lcom/zhangdan/preferential/data/model/k;->n:I

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->a:[Landroid/view/View;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget v1, p1, Lcom/zhangdan/preferential/data/model/k;->o:I

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->a:[Landroid/view/View;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/k;->d()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->a(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->a:[Landroid/view/View;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/k;->e()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/ShopListItemView;->a(Landroid/view/View;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->e:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/widget/ShopListItemView;->a(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    aget-object v4, v2, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final a([Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->h:[Landroid/widget/TextView;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    return-void

    :cond_1
    aget-object v4, v2, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->h:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/ShopListItemView;->h:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
