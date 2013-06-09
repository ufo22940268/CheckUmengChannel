.class public Lcom/zhangdan/preferential/widget/PromSectionView;
.super Lcom/zhangdan/preferential/widget/DetailSectionView;


# instance fields
.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/DetailSectionView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/PromSectionView;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f0300e6

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f060151

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->c:Landroid/widget/ImageView;

    const v0, 0x7f06014c

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->d:Landroid/widget/TextView;

    const v0, 0x7f060269

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->f:I

    const v1, 0x7f07004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->g:I

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/PromSectionView;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/preferential/data/model/l;ILcom/a/a/a/f/b;Lcom/a/a/a/a;)V
    .locals 7

    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/l;->x:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/i;

    if-nez p2, :cond_0

    const v1, 0x7f0201d5

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/PromSectionView;->a(I)V

    :goto_0
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->c:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/zhangdan/preferential/data/model/i;->i:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/zhangdan/preferential/widget/PromSectionView;->a(Landroid/widget/ImageView;Ljava/lang/String;Lcom/a/a/a/f/b;Lcom/a/a/a/a;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/PromSectionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801cd

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/zhangdan/preferential/data/model/i;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/zhangdan/preferential/data/model/i;->l:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromSectionView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/PromSectionView;->a()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/preferential/widget/g;

    invoke-direct {v2, p0, v0, p3, p4}, Lcom/zhangdan/preferential/widget/g;-><init>(Lcom/zhangdan/preferential/widget/PromSectionView;Lcom/zhangdan/preferential/data/model/i;Lcom/a/a/a/f/b;Lcom/a/a/a/a;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const v1, 0x7f02039c

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/PromSectionView;->a(I)V

    goto :goto_0
.end method
