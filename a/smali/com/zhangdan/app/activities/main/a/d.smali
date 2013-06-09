.class public final Lcom/zhangdan/app/activities/main/a/d;
.super Lza/co/immedia/pinnedheaderlistview/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const v7, 0x7f080050

    const v6, 0x7f080035

    const/4 v5, 0x1

    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/c;-><init>()V

    iput v5, p0, Lcom/zhangdan/app/activities/main/a/d;->c:I

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/a/d;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/app/activities/main/d/a;

    invoke-direct {v2, v6}, Lcom/zhangdan/app/activities/main/d/a;-><init>(I)V

    new-instance v3, Lcom/zhangdan/app/activities/main/d/b;

    const v4, 0x7f0202bb

    invoke-direct {v3, v6, v4, v5}, Lcom/zhangdan/app/activities/main/d/b;-><init>(III)V

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/main/d/a;->a(Lcom/zhangdan/app/activities/main/d/b;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/zhangdan/app/activities/main/d/a;

    const v3, 0x7f080045

    invoke-direct {v2, v3}, Lcom/zhangdan/app/activities/main/d/a;-><init>(I)V

    new-instance v3, Lcom/zhangdan/app/activities/main/d/b;

    const v4, 0x7f080036

    const v5, 0x7f0202af

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6}, Lcom/zhangdan/app/activities/main/d/b;-><init>(III)V

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/main/d/b;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/main/d/a;->a(Lcom/zhangdan/app/activities/main/d/b;)V

    new-instance v3, Lcom/zhangdan/app/activities/main/d/b;

    const v4, 0x7f080037

    const v5, 0x7f0202c9

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lcom/zhangdan/app/activities/main/d/b;-><init>(III)V

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/main/d/b;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/main/d/a;->a(Lcom/zhangdan/app/activities/main/d/b;)V

    new-instance v3, Lcom/zhangdan/app/activities/main/d/b;

    const v4, 0x7f080038

    const v5, 0x7f0202b5

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/zhangdan/app/activities/main/d/b;-><init>(III)V

    const v4, 0x7f080051

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/zhangdan/app/activities/main/d/b;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/main/d/a;->a(Lcom/zhangdan/app/activities/main/d/b;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/zhangdan/app/activities/main/d/a;

    const v2, 0x7f080046

    invoke-direct {v1, v2}, Lcom/zhangdan/app/activities/main/d/a;-><init>(I)V

    new-instance v2, Lcom/zhangdan/app/activities/main/d/b;

    const v3, 0x7f08003a

    const v4, 0x7f0202b2

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v5}, Lcom/zhangdan/app/activities/main/d/b;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/main/d/a;->a(Lcom/zhangdan/app/activities/main/d/b;)V

    new-instance v2, Lcom/zhangdan/app/activities/main/d/b;

    const v3, 0x7f08003b

    const v4, 0x7f0202ac

    const/4 v5, 0x7

    invoke-direct {v2, v3, v4, v5}, Lcom/zhangdan/app/activities/main/d/b;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/main/d/a;->a(Lcom/zhangdan/app/activities/main/d/b;)V

    new-instance v2, Lcom/zhangdan/app/activities/main/d/b;

    const v3, 0x7f08003c

    const v4, 0x7f0202cf

    const/16 v5, 0x9

    invoke-direct {v2, v3, v4, v5}, Lcom/zhangdan/app/activities/main/d/b;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/main/d/a;->a(Lcom/zhangdan/app/activities/main/d/b;)V

    new-instance v2, Lcom/zhangdan/app/activities/main/d/b;

    const v3, 0x7f08003d

    const v4, 0x7f0202a9

    const/16 v5, 0x8

    invoke-direct {v2, v3, v4, v5}, Lcom/zhangdan/app/activities/main/d/b;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/main/d/a;->a(Lcom/zhangdan/app/activities/main/d/b;)V

    new-instance v2, Lcom/zhangdan/app/activities/main/d/b;

    const v3, 0x7f08003f

    const v4, 0x7f0202c1

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Lcom/zhangdan/app/activities/main/d/b;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/main/d/a;->a(Lcom/zhangdan/app/activities/main/d/b;)V

    new-instance v2, Lcom/zhangdan/app/activities/main/d/b;

    const v3, 0x7f080040

    const v4, 0x7f0202a6

    const/16 v5, 0xb

    invoke-direct {v2, v3, v4, v5}, Lcom/zhangdan/app/activities/main/d/b;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/main/d/a;->a(Lcom/zhangdan/app/activities/main/d/b;)V

    new-instance v2, Lcom/zhangdan/app/activities/main/d/b;

    const v3, 0x7f080041

    const v4, 0x7f0202c4

    const/16 v5, 0xd

    invoke-direct {v2, v3, v4, v5}, Lcom/zhangdan/app/activities/main/d/b;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/main/d/a;->a(Lcom/zhangdan/app/activities/main/d/b;)V

    new-instance v2, Lcom/zhangdan/app/activities/main/d/b;

    const v3, 0x7f080042

    const v4, 0x7f0202be

    const/16 v5, 0xe

    invoke-direct {v2, v3, v4, v5}, Lcom/zhangdan/app/activities/main/d/b;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/main/d/a;->a(Lcom/zhangdan/app/activities/main/d/b;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/zhangdan/app/activities/main/d/a;

    const v2, 0x7f080047

    invoke-direct {v1, v2}, Lcom/zhangdan/app/activities/main/d/a;-><init>(I)V

    new-instance v2, Lcom/zhangdan/app/activities/main/d/b;

    const v3, 0x7f080043

    const v4, 0x7f0202ca

    const/16 v5, 0xf

    invoke-direct {v2, v3, v4, v5}, Lcom/zhangdan/app/activities/main/d/b;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/main/d/a;->a(Lcom/zhangdan/app/activities/main/d/b;)V

    new-instance v2, Lcom/zhangdan/app/activities/main/d/b;

    const v3, 0x7f080044

    const v4, 0x7f0202a3

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5}, Lcom/zhangdan/app/activities/main/d/b;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/main/d/a;->a(Lcom/zhangdan/app/activities/main/d/b;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/main/d/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/d/a;->b()I

    move-result v0

    goto :goto_0
.end method

.method public final a(IILandroid/view/View;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/d;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300b0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/main/a/d;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/main/d/b;

    if-nez v0, :cond_1

    :goto_0
    return-object p3

    :cond_1
    const v1, 0x7f060207

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f060173

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f060279

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f06027a

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/d/b;->a()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/d/b;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/d/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/d/b;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/d/b;->d()I

    move-result v1

    iget v2, p0, Lcom/zhangdan/app/activities/main/a/d;->c:I

    if-ne v1, v2, :cond_2

    const v1, 0x7f02025d

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/d/b;->d()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    const v0, 0x7f0202d2

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/d;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f060207

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p1, :cond_2

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a/d;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/main/d/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/d/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-object p2

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/main/d/a;

    invoke-virtual {v0, p2}, Lcom/zhangdan/app/activities/main/d/a;->a(I)Lcom/zhangdan/app/activities/main/d/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/main/a/d;->c:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/zhangdan/app/activities/main/a/d;->c:I

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a/d;->notifyDataSetChanged()V

    goto :goto_0
.end method
