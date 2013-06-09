.class public final Lcom/zhangdan/app/activities/detail/a/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zhangdan/app/data/model/j;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zhangdan/app/data/model/j;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/a/o;->k:Ljava/text/DecimalFormat;

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/a/o;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/zhangdan/app/activities/detail/a/o;->a:Lcom/zhangdan/app/data/model/j;

    const v0, 0x7f0601c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0601c3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0601c4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0601c8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zhangdan/app/activities/detail/a/o;->c:Landroid/widget/TextView;

    const v3, 0x7f0601ca

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zhangdan/app/activities/detail/a/o;->d:Landroid/widget/TextView;

    const v3, 0x7f0601c7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zhangdan/app/activities/detail/a/o;->e:Landroid/widget/TextView;

    const v3, 0x7f0601c9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zhangdan/app/activities/detail/a/o;->f:Landroid/widget/TextView;

    const v3, 0x7f0601c5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zhangdan/app/activities/detail/a/o;->g:Landroid/widget/TextView;

    const v3, 0x7f0601c6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zhangdan/app/activities/detail/a/o;->h:Landroid/widget/TextView;

    const v3, 0x7f06024d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/zhangdan/app/activities/detail/a/o;->i:Landroid/widget/ImageView;

    const v3, 0x7f06024e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zhangdan/app/activities/detail/a/o;->j:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->H()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08008f

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/a/o;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    const/4 v2, 0x1

    const v0, 0x7f02018d

    const/4 v3, 0x0

    const/4 v10, 0x4

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/o;->a:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v4

    if-ne v4, v10, :cond_d

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/o;->a:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->u()I

    move-result v1

    if-gez v1, :cond_d

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/o;->a:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->A()F

    move-result v1

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->a:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/j;->l()F

    move-result v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_d

    move v1, v2

    :goto_0
    if-eq v4, v2, :cond_0

    if-ne v4, v10, :cond_3

    if-nez v1, :cond_3

    :cond_0
    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->i:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-nez v4, :cond_5

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->e:Landroid/widget/TextView;

    const v6, 0x7f0800b0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->f:Landroid/widget/TextView;

    const v6, 0x7f0800b1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->a:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/j;->E()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/a/o;->c:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/zhangdan/app/activities/detail/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->d:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/a/o;->a:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->G()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    if-nez v4, :cond_6

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/o;->i:Landroid/widget/ImageView;

    const v1, 0x7f0202e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/o;->j:Landroid/widget/TextView;

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/o;->j:Landroid/widget/TextView;

    const v1, 0x7f080090

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_4
    return-void

    :cond_3
    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->i:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/a/o;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->e:Landroid/widget/TextView;

    const v6, 0x7f08007a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->f:Landroid/widget/TextView;

    const v6, 0x7f08007b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->c:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\uffe5"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/a/o;->k:Ljava/text/DecimalFormat;

    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/a/o;->a:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "+$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/a/o;->k:Ljava/text/DecimalFormat;

    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/a/o;->a:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/j;->v()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->d:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\uffe5"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/a/o;->k:Ljava/text/DecimalFormat;

    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/a/o;->a:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/j;->l()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "+$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/a/o;->k:Ljava/text/DecimalFormat;

    iget-object v8, p0, Lcom/zhangdan/app/activities/detail/a/o;->a:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/j;->w()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_6
    if-eq v4, v2, :cond_7

    if-ne v4, v10, :cond_a

    if-nez v1, :cond_a

    :cond_7
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/o;->a:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->u()I

    move-result v2

    if-ltz v2, :cond_9

    const/4 v1, 0x6

    if-le v2, v1, :cond_8

    :goto_5
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/o;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080091

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    :goto_6
    new-instance v4, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/o;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08009f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v5, 0x4080

    invoke-direct {v2, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v2, v3, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/o;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/o;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/o;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_8
    const v0, 0x7f02019b

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/o;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f020198

    goto :goto_6

    :cond_a
    const/4 v2, 0x2

    if-ne v4, v2, :cond_b

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/o;->i:Landroid/widget/ImageView;

    const v2, 0x7f0202f4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/o;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/o;->j:Landroid/widget/TextView;

    const v1, 0x7f080093

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_b
    const/4 v2, 0x3

    if-ne v4, v2, :cond_c

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/o;->i:Landroid/widget/ImageView;

    const v2, 0x7f0202eb

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/o;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/o;->j:Landroid/widget/TextView;

    const v1, 0x7f080094

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_c
    if-ne v4, v10, :cond_2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/o;->i:Landroid/widget/ImageView;

    const v2, 0x7f0202f7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/o;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/o;->j:Landroid/widget/TextView;

    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_d
    move v1, v3

    goto/16 :goto_0
.end method
