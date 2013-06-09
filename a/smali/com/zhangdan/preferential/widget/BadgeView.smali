.class public Lcom/zhangdan/preferential/widget/BadgeView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->a:[Landroid/view/View;

    return-void
.end method

.method private static a(Landroid/view/View;I)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/zhangdan/preferential/data/model/k;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/BadgeView;->a:[Landroid/view/View;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->a:[Landroid/view/View;

    aget-object v0, v0, v1

    iget v1, p1, Lcom/zhangdan/preferential/data/model/k;->l:I

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/BadgeView;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->a:[Landroid/view/View;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget v1, p1, Lcom/zhangdan/preferential/data/model/k;->m:I

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/BadgeView;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->a:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v1, p1, Lcom/zhangdan/preferential/data/model/k;->n:I

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/BadgeView;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->a:[Landroid/view/View;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget v1, p1, Lcom/zhangdan/preferential/data/model/k;->o:I

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/BadgeView;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->a:[Landroid/view/View;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/k;->d()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/BadgeView;->a(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->a:[Landroid/view/View;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/k;->e()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/widget/BadgeView;->a(Landroid/view/View;Z)V

    return-void

    :cond_0
    aget-object v4, v2, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->a:[Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f060140

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/BadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->a:[Landroid/view/View;

    const/4 v1, 0x1

    const v2, 0x7f060142

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/BadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->a:[Landroid/view/View;

    const/4 v1, 0x2

    const v2, 0x7f060144

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/BadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->a:[Landroid/view/View;

    const/4 v1, 0x3

    const v2, 0x7f060145

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/BadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->a:[Landroid/view/View;

    const/4 v1, 0x5

    const v2, 0x7f060143

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/BadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/BadgeView;->a:[Landroid/view/View;

    const/4 v1, 0x4

    const v2, 0x7f060141

    invoke-virtual {p0, v2}, Lcom/zhangdan/preferential/widget/BadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method
