.class public final Lcom/zhangdan/app/activities/mailimport/a/b;
.super Lza/co/immedia/pinnedheaderlistview/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/c;-><init>()V

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->c:Z

    iput v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->f:I

    iput v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->g:I

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->f:I

    return-void
.end method

.method private static a(Lcom/zhangdan/app/activities/mailimport/a/d;Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/a/d;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/a/d;->g:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/a/d;->h:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/d;->e:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(IILandroid/view/View;)Landroid/view/View;
    .locals 7

    const/4 v3, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030099

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/zhangdan/app/activities/mailimport/a/c;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/mailimport/a/c;-><init>(Lcom/zhangdan/app/activities/mailimport/a/b;)V

    const v0, 0x7f06020d

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/c;->a:Landroid/widget/TextView;

    const v0, 0x7f06020e

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/c;->b:Landroid/widget/TextView;

    const v0, 0x7f06020f

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/c;->c:Landroid/widget/TextView;

    const v0, 0x7f060210

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/c;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/mailimport/a/c;

    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/mailimport/a/b;->a(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/http/aa;

    if-nez v1, :cond_1

    :goto_0
    return-object p3

    :cond_1
    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/mailimport/a/b;->a(I)I

    move-result v4

    sub-int/2addr v4, p2

    iget-object v5, v0, Lcom/zhangdan/app/activities/mailimport/a/c;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/aa;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/zhangdan/app/activities/mailimport/a/c;->b:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/zhangdan/app/activities/mailimport/a/c;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/aa;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/zhangdan/app/activities/mailimport/a/c;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/zhangdan/app/activities/mailimport/a/c;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/aa;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/zhangdan/app/activities/mailimport/a/c;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/aa;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/aa;->j()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v0, v0, Lcom/zhangdan/app/activities/mailimport/a/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_2
.end method

.method public final a(ILandroid/view/View;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03009a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/zhangdan/app/activities/mailimport/a/d;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/mailimport/a/d;-><init>(Lcom/zhangdan/app/activities/mailimport/a/b;)V

    const v0, 0x7f060212

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/d;->a:Landroid/widget/TextView;

    const v0, 0x7f060213

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/d;->b:Landroid/widget/TextView;

    const v0, 0x7f060215

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/d;->c:Landroid/widget/TextView;

    const v0, 0x7f060214

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/d;->d:Landroid/widget/TextView;

    const v0, 0x7f060211

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/d;->h:Landroid/view/View;

    const v0, 0x7f06020b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/d;->f:Landroid/widget/ImageView;

    const v0, 0x7f06020c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/d;->g:Landroid/widget/ImageView;

    const v0, 0x7f060216

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/zhangdan/app/activities/mailimport/a/d;->e:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/mailimport/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "list \u6210\u529f\u5bfc\u5165..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, v0, Lcom/zhangdan/app/activities/mailimport/a/d;->a:Landroid/widget/TextView;

    const v2, 0x7f0800fe

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/zhangdan/app/activities/mailimport/a/d;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->g:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/zhangdan/app/activities/mailimport/a/d;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/zhangdan/app/activities/mailimport/a/d;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->c:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/mailimport/a/b;->a(Lcom/zhangdan/app/activities/mailimport/a/d;Z)V

    :goto_0
    return-object p2

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/mailimport/a/b;->a(Lcom/zhangdan/app/activities/mailimport/a/d;Z)V

    goto :goto_0
.end method

.method public final a(II)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/zhangdan/app/data/model/http/aa;)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/aa;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aa;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/aa;->a(I)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aa;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/aa;->b(I)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aa;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/aa;->c(I)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aa;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/aa;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aa;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/aa;->d(I)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aa;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/aa;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aa;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/aa;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aa;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/aa;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/a/b;->notifyDataSetChanged()V

    :goto_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->f:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->g:I

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/aa;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/aa;->a()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aa;->a()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/a/b;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->c:Z

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/a/b;->notifyDataSetChanged()V

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/a/b;->g:I

    return v0
.end method
