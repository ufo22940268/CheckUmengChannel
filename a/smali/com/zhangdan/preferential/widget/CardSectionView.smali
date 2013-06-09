.class public Lcom/zhangdan/preferential/widget/CardSectionView;
.super Lcom/zhangdan/preferential/widget/DetailSectionView;


# instance fields
.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/ViewGroup;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/DetailSectionView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/CardSectionView;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->f:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030051

    iget-object v2, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f06011d

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/CardSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->c:Landroid/widget/ImageView;

    const v0, 0x7f060149

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/CardSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->d:Landroid/widget/TextView;

    const v0, 0x7f06014a

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/CardSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->g:I

    const v1, 0x7f070048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->h:I

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/widget/CardSectionView;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->g:I

    return v0
.end method

.method static synthetic b(Lcom/zhangdan/preferential/widget/CardSectionView;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->h:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/zhangdan/preferential/data/model/l;ILcom/a/a/a/f/b;Lcom/a/a/a/a;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/l;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/l;->v:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/c;

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->c:Landroid/widget/ImageView;

    iget-wide v2, v0, Lcom/zhangdan/preferential/data/model/c;->b:J

    invoke-static {v2, v3}, Lcom/zhangdan/preferential/a/h;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/zhangdan/preferential/widget/CardSectionView;->a(Landroid/widget/ImageView;Ljava/lang/String;Lcom/a/a/a/f/b;Lcom/a/a/a/a;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/zhangdan/preferential/data/model/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0801c6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a0038

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v5, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    invoke-virtual {v4, v5, v8, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_1

    const v1, 0x7f0201d6

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/CardSectionView;->a(I)V

    :goto_1
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/CardSectionView;->f:Landroid/view/ViewGroup;

    new-instance v2, Lcom/zhangdan/preferential/widget/a;

    invoke-direct {v2, p0, v0}, Lcom/zhangdan/preferential/widget/a;-><init>(Lcom/zhangdan/preferential/widget/CardSectionView;Lcom/zhangdan/preferential/data/model/c;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f02039c

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/CardSectionView;->a(I)V

    goto :goto_1
.end method
