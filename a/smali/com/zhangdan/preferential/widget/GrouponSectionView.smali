.class public Lcom/zhangdan/preferential/widget/GrouponSectionView;
.super Lcom/zhangdan/preferential/widget/DetailSectionView;


# instance fields
.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/widget/DetailSectionView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03007e

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f060151

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->c:Landroid/widget/ImageView;

    const v0, 0x7f06014c

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->d:Landroid/widget/TextView;

    const v0, 0x7f0601bc

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->e:Landroid/widget/TextView;

    const v0, 0x7f0601be

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->f:Landroid/widget/TextView;

    const v0, 0x7f0601bf

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/preferential/data/model/l;ILcom/a/a/a/f/b;Lcom/a/a/a/a;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/l;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/l;->y:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/e;

    if-nez p2, :cond_1

    const v1, 0x7f0201db

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->a(I)V

    :goto_1
    iget-object v1, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/zhangdan/preferential/data/model/e;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->e:Landroid/widget/TextView;

    iget-wide v2, v0, Lcom/zhangdan/preferential/data/model/e;->b:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801cc

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "?"

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801cb

    new-array v4, v6, [Ljava/lang/Object;

    iget-wide v5, v0, Lcom/zhangdan/preferential/data/model/e;->a:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v7, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/widget/GrouponSectionView;->c:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/zhangdan/preferential/data/model/e;->f:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->a(Landroid/widget/ImageView;Ljava/lang/String;Lcom/a/a/a/f/b;Lcom/a/a/a/a;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zhangdan.preferential.MIX_VIEW_GROUPON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "groupon_url"

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/e;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->a()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v2, Lcom/zhangdan/preferential/widget/b;

    invoke-direct {v2, p0, v1}, Lcom/zhangdan/preferential/widget/b;-><init>(Lcom/zhangdan/preferential/widget/DetailSectionView;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_1
    const v1, 0x7f02039c

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/widget/GrouponSectionView;->a(I)V

    goto/16 :goto_1
.end method
