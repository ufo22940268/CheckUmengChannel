.class public final Lcom/zhangdan/app/activities/detail/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;

.field private c:Lcom/zhangdan/app/data/model/j;

.field private d:Ljava/lang/String;

.field private e:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/zhangdan/app/data/model/j;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->e:Ljava/text/DecimalFormat;

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/a/a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/detail/a/a;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/zhangdan/app/activities/detail/a/a;->c:Lcom/zhangdan/app/data/model/j;

    iput-object p4, p0, Lcom/zhangdan/app/activities/detail/a/a;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/a/a;->a()V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/a/a;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->b:Landroid/view/View;

    const v1, 0x7f060218

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->b:Landroid/view/View;

    const v1, 0x7f06021e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/a;->b:Landroid/view/View;

    const v3, 0x7f060220

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/a/a;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\uffe5"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/a/a;->e:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/a/a;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/j;->A()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/a;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->v()F

    move-result v2

    sget-object v3, Lcom/zhangdan/app/h/f;->a:Lcom/zhangdan/app/h/f;

    invoke-virtual {v3}, Lcom/zhangdan/app/h/f;->b()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\uffe5"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/a/a;->e:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/a/a;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/j;->A()F

    move-result v4

    sub-float/2addr v0, v4

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->b:Landroid/view/View;

    const v1, 0x7f06021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    const v6, 0x7f06022f

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->b:Landroid/view/View;

    const v1, 0x7f060221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->b:Landroid/view/View;

    const v1, 0x7f060224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/a;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->q()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/a/a;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/zhangdan/app/h/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/zhangdan/app/h/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->b:Landroid/view/View;

    const v1, 0x7f060226

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/a;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->b:Landroid/view/View;

    const v1, 0x7f060228

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/a;->e:Ljava/text/DecimalFormat;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/a;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->i()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->b:Landroid/view/View;

    const v1, 0x7f06022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/a;->e:Ljava/text/DecimalFormat;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/a;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->j()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->b:Landroid/view/View;

    const v1, 0x7f06022c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/zhangdan/app/h/f;->a:Lcom/zhangdan/app/h/f;

    invoke-virtual {v1}, Lcom/zhangdan/app/h/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->b:Landroid/view/View;

    const v1, 0x7f06022e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/a;->a:Landroid/app/Activity;

    const v2, 0x7f0800a0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/a/a;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/j;->D()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->b:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->b:Landroid/view/View;

    const v1, 0x7f060231

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/a;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v5, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->b:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06021b

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->a:Landroid/app/Activity;

    check-cast v0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->j()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06022f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/a;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/detail/p;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
