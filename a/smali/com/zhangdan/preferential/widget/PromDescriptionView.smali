.class public Lcom/zhangdan/preferential/widget/PromDescriptionView;
.super Landroid/widget/ScrollView;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->a:Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->setFillViewport(Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/zhangdan/preferential/data/model/i;)V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/i;->e()Landroid/text/Spanned;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->g:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/i;->f()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->f:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/i;->g()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_1
    if-lt v1, v4, :cond_1

    return-void

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    aget-object v5, v3, v1

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->a:Landroid/view/LayoutInflater;

    const v6, 0x7f03010b

    iget-object v7, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->d:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    iget-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0300e4

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f060269

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->c:Landroid/widget/TextView;

    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->d:Landroid/view/ViewGroup;

    const v0, 0x7f060309

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->e:Landroid/widget/TextView;

    const v0, 0x7f060306

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->f:Landroid/widget/TextView;

    const v0, 0x7f060307

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->g:Landroid/view/ViewGroup;

    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/PromDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/PromDescriptionView;->b:Landroid/view/ViewGroup;

    return-void
.end method
