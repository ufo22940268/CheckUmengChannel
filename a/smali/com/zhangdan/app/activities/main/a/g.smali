.class public final Lcom/zhangdan/app/activities/main/a/g;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:Ljava/text/DecimalFormat;

.field private d:Landroid/text/style/AbsoluteSizeSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/a/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zhangdan/app/activities/main/a/g;->b:Ljava/util/List;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a/g;->c:Ljava/text/DecimalFormat;

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a/g;->d:Landroid/text/style/AbsoluteSizeSpan;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/a/g;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a/g;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/g;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/main/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v3

    if-eq v3, v1, :cond_3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const v7, 0x7f0601a9

    const/16 v5, 0x8

    const/4 v9, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/main/a/g;->getItemViewType(I)I

    move-result v1

    if-nez p2, :cond_0

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/g;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f0300b8

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/zhangdan/app/activities/main/a/h;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/main/a/h;-><init>(Lcom/zhangdan/app/activities/main/a/g;)V

    const v0, 0x7f060282

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/h;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/h;->b:Landroid/widget/TextView;

    const v0, 0x7f060285

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/h;->c:Landroid/widget/TextView;

    const v0, 0x7f06029f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/h;->d:Landroid/widget/TextView;

    const v0, 0x7f0602a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/h;->e:Landroid/widget/TextView;

    const v0, 0x7f0602a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/h;->f:Landroid/widget/ImageView;

    const v0, 0x7f06028b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/h;->g:Landroid/widget/TextView;

    const v0, 0x7f060289

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/h;->h:Landroid/widget/TextView;

    const v0, 0x7f06028a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/h;->i:Landroid/widget/TextView;

    const v0, 0x7f06028c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/h;->j:Landroid/widget/TextView;

    const v0, 0x7f060288

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/h;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f060281

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/h;->m:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/zhangdan/app/activities/main/a/h;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06029d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/h;->l:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/main/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    if-nez v1, :cond_b

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/main/a/h;

    iget-object v6, v1, Lcom/zhangdan/app/activities/main/a/h;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->z()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v6

    if-ne v6, v4, :cond_1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->A()F

    move-result v6

    sub-float/2addr v2, v6

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\uffe5"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zhangdan/app/activities/main/a/g;->c:Ljava/text/DecimalFormat;

    float-to-double v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/zhangdan/app/activities/main/a/g;->d:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v7, v8, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->u()I

    move-result v6

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->g:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v1, Lcom/zhangdan/app/activities/main/a/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->m()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_2
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-gez v6, :cond_8

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v2

    if-ne v2, v4, :cond_7

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->A()F

    move-result v2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->l()F

    move-result v6

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_7

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->m:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/zhangdan/app/activities/main/a/h;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_a

    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_5
    return-object p2

    :cond_3
    if-ne v1, v9, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/g;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f0300b9

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/zhangdan/app/activities/main/a/i;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/main/a/i;-><init>(Lcom/zhangdan/app/activities/main/a/g;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/i;->b:Landroid/widget/TextView;

    const v0, 0x7f060285

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/i;->c:Landroid/widget/TextView;

    const v0, 0x7f06029f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/i;->d:Landroid/widget/TextView;

    const v0, 0x7f060281

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/i;->i:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/zhangdan/app/activities/main/a/i;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06029d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/i;->h:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/g;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f0300ba

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/zhangdan/app/activities/main/a/i;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/main/a/i;-><init>(Lcom/zhangdan/app/activities/main/a/g;)V

    const v0, 0x7f060282

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/i;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/i;->b:Landroid/widget/TextView;

    const v0, 0x7f060285

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/i;->c:Landroid/widget/TextView;

    const v0, 0x7f06029f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/i;->d:Landroid/widget/TextView;

    const v0, 0x7f0602a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/i;->e:Landroid/widget/TextView;

    const v0, 0x7f06028c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/i;->f:Landroid/widget/TextView;

    const v0, 0x7f0602a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/i;->g:Landroid/widget/ImageView;

    const v0, 0x7f060281

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/i;->i:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/zhangdan/app/activities/main/a/i;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06029d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/i;->h:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move v2, v4

    goto/16 :goto_1

    :cond_6
    move v2, v4

    goto/16 :goto_2

    :cond_7
    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->i:Landroid/widget/TextView;

    const v4, 0x7f080066

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->i:Landroid/widget/TextView;

    const v4, 0x7f020317

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_3

    :cond_8
    const/4 v2, 0x7

    if-ge v6, v2, :cond_9

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->i:Landroid/widget/TextView;

    const v4, 0x7f080065

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->i:Landroid/widget/TextView;

    const v4, 0x7f020318

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_3

    :cond_9
    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->i:Landroid/widget/TextView;

    const v4, 0x7f080065

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/h;->i:Landroid/widget/TextView;

    const v4, 0x7f020315

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_3

    :cond_a
    move v3, v5

    goto/16 :goto_4

    :cond_b
    if-ne v1, v9, :cond_d

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/main/a/i;

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/i;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/i;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/i;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/i;->i:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/zhangdan/app/activities/main/a/i;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_c

    :goto_6
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_c
    move v3, v5

    goto :goto_6

    :cond_d
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/main/a/i;

    iget-object v6, v1, Lcom/zhangdan/app/activities/main/a/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->z()Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v3

    :goto_7
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/i;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/i;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/i;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "\uffe5"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/zhangdan/app/activities/main/a/g;->c:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/zhangdan/app/activities/main/a/g;->d:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v7, v8, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/i;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v2

    if-ne v2, v9, :cond_11

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/i;->f:Landroid/widget/TextView;

    const v6, 0x7f080060

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_e
    :goto_8
    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/i;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->m()Z

    move-result v6

    if-eqz v6, :cond_f

    move v4, v3

    :cond_f
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/i;->i:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/zhangdan/app/activities/main/a/i;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_12

    :goto_9
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_10
    move v2, v4

    goto/16 :goto_7

    :cond_11
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_e

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/i;->f:Landroid/widget/TextView;

    const v6, 0x7f080061

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    :cond_12
    move v3, v5

    goto :goto_9
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a/g;->a:Landroid/content/Context;

    const v2, 0x7f080104

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->z()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/j;->b(Z)V

    const v1, 0x7f060282

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v1}, Lcom/zhangdan/app/ZhangdanApplication;->c()Lcom/zhangdan/app/data/model/l;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/a/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/zhangdan/app/data/db/b/n;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a/g;->a:Landroid/content/Context;

    const-class v3, Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/ZhangdanApplication;

    const-string v3, "key_user_bank"

    invoke-virtual {v1, v3, v0}, Lcom/zhangdan/app/ZhangdanApplication;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
