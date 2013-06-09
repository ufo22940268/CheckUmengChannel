.class public final Lcom/zhangdan/app/activities/main/a/a;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:Ljava/text/DecimalFormat;

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/zhangdan/app/activities/main/a/b;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/a/b;-><init>(Lcom/zhangdan/app/activities/main/a/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a/a;->d:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/a/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zhangdan/app/activities/main/a/a;->b:Ljava/util/List;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a/a;->c:Ljava/text/DecimalFormat;

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/a;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez p1, :cond_5

    const v2, 0x7f0300b4

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :cond_0
    :goto_0
    new-instance v2, Lcom/zhangdan/app/activities/main/a/c;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/main/a/c;-><init>(Lcom/zhangdan/app/activities/main/a/a;)V

    const v0, 0x7f060281

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->a:Landroid/view/View;

    const v0, 0x7f060282

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->b:Landroid/widget/ImageView;

    const v0, 0x7f0601a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->c:Landroid/widget/ImageView;

    const v0, 0x7f0601a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->d:Landroid/widget/TextView;

    const v0, 0x7f060285

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->e:Landroid/widget/TextView;

    const v0, 0x7f060286

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->f:Landroid/widget/TextView;

    const v0, 0x7f06028f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->g:Landroid/widget/TextView;

    const v0, 0x7f060291

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    if-ne p1, v3, :cond_2

    :cond_1
    const v0, 0x7f060293

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->i:Landroid/widget/TextView;

    const v0, 0x7f060297

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->k:Landroid/widget/TextView;

    const v0, 0x7f060299

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->m:Landroid/widget/TextView;

    const v0, 0x7f06029a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->n:Landroid/widget/ImageView;

    :cond_2
    if-nez p1, :cond_3

    const v0, 0x7f060295

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->j:Landroid/widget/TextView;

    const v0, 0x7f06029b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->o:Landroid/widget/TextView;

    const v0, 0x7f06028b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->q:Landroid/widget/TextView;

    const v0, 0x7f060289

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->r:Landroid/widget/TextView;

    const v0, 0x7f06028a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->s:Landroid/widget/TextView;

    const v0, 0x7f06028c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->u:Landroid/widget/TextView;

    const v0, 0x7f060288

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->t:Landroid/widget/LinearLayout;

    :cond_3
    if-ne p1, v4, :cond_4

    const v0, 0x7f06029e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->l:Landroid/widget/TextView;

    :cond_4
    const v0, 0x7f06029c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->p:Landroid/widget/ImageView;

    iget-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->p:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/a/a;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06029d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/main/a/c;->v:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_5
    if-ne p1, v3, :cond_6

    const v2, 0x7f0300b6

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_6
    if-ne p1, v4, :cond_0

    const v2, 0x7f0300b5

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/main/a/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/a;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/main/a/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/a;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/a/a;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a/a;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/a;->b:Ljava/util/List;

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

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-eq v3, v1, :cond_1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/main/a/a;->getItemViewType(I)I

    move-result v4

    if-nez p2, :cond_1

    if-nez v4, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/main/a/a;->a(I)Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    const v0, 0x7f060281

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/main/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/main/a/c;

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->H()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->a:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/zhangdan/app/activities/main/a/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->z()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v5, v1, Lcom/zhangdan/app/activities/main/a/c;->e:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->y()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->f:Landroid/widget/TextView;

    const v3, 0x7f080072

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/a/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080071

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->s()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/zhangdan/app/activities/main/a/c;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "---"

    :goto_5
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->p:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-nez v4, :cond_15

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->i:Landroid/widget/TextView;

    const v3, 0x7f080062

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->p:Landroid/widget/ImageView;

    const v3, 0x7f0202fe

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_2
    :goto_6
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\uffe5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zhangdan/app/activities/main/a/a;->c:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->p()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\uffe5"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/a/a;->c:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0x12

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/zhangdan/app/activities/main/a/c;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->m()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->o:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/a/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08006f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/zhangdan/app/activities/main/a/a;->c:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->l()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_11

    :cond_3
    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->q:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->r:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->s:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->u:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_a
    iget-object v1, v1, Lcom/zhangdan/app/activities/main/a/c;->v:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2

    :cond_5
    const/4 v0, 0x1

    if-ne v4, v0, :cond_6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/main/a/a;->a(I)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x2

    if-ne v4, v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/main/a/a;->a(I)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x4

    goto/16 :goto_1

    :cond_8
    const-string v2, "---"

    goto/16 :goto_2

    :cond_9
    const-string v3, "---"

    goto/16 :goto_3

    :cond_a
    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_b
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->F()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->i:Landroid/widget/TextView;

    const v3, 0x7f080060

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->p:Landroid/widget/ImageView;

    const v3, 0x7f0202fa

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6

    :cond_d
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->i:Landroid/widget/TextView;

    const v3, 0x7f080063

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->p:Landroid/widget/ImageView;

    const v3, 0x7f0202fd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6

    :cond_e
    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->k:Landroid/widget/TextView;

    const-string v3, "---"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_f
    const/4 v2, 0x4

    goto/16 :goto_8

    :cond_10
    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->o:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :cond_11
    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->q:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->r:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->s:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->u()I

    move-result v2

    iget-object v3, v1, Lcom/zhangdan/app/activities/main/a/c;->q:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/zhangdan/app/activities/main/a/c;->t:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, v1, Lcom/zhangdan/app/activities/main/a/c;->q:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v1, Lcom/zhangdan/app/activities/main/a/c;->u:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-gez v2, :cond_13

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_12

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->A()F

    move-result v2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->l()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_12

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->t:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->q:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->u:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_12
    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->s:Landroid/widget/TextView;

    const v3, 0x7f080066

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->s:Landroid/widget/TextView;

    const v3, 0x7f020317

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_a

    :cond_13
    const/4 v3, 0x7

    if-ge v2, v3, :cond_14

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->s:Landroid/widget/TextView;

    const v3, 0x7f080065

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->s:Landroid/widget/TextView;

    const v3, 0x7f020318

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_a

    :cond_14
    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->s:Landroid/widget/TextView;

    const v3, 0x7f080065

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->s:Landroid/widget/TextView;

    const v3, 0x7f020315

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_a

    :cond_15
    const/4 v2, 0x1

    if-ne v4, v2, :cond_18

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->i:Landroid/widget/TextView;

    const v3, 0x7f080061

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\uffe5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zhangdan/app/activities/main/a/a;->c:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->p()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\uffe5"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/a/a;->c:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0x12

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/zhangdan/app/activities/main/a/c;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->m()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_16
    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->k:Landroid/widget/TextView;

    const-string v3, "---"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_17
    const/4 v2, 0x4

    goto :goto_d

    :cond_18
    const/4 v2, 0x2

    if-ne v4, v2, :cond_4

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->l:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\uffe5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zhangdan/app/activities/main/a/a;->c:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_19
    iget-object v2, v1, Lcom/zhangdan/app/activities/main/a/c;->l:Landroid/widget/TextView;

    const-string v3, "---"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_1a
    const/16 v0, 0x8

    goto/16 :goto_b
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

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a/a;->a:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v1}, Lcom/zhangdan/app/ZhangdanApplication;->c()Lcom/zhangdan/app/data/model/l;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/a/a;->a:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a/a;->a:Landroid/content/Context;

    const-class v3, Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/ZhangdanApplication;

    const-string v3, "key_user_bank"

    invoke-virtual {v1, v3, v0}, Lcom/zhangdan/app/ZhangdanApplication;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
