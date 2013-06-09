.class public Lcom/zhangdan/preferential/AddBankActivity;
.super Lcom/zhangdan/preferential/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Lcom/a/a/a/f/b;

.field protected b:Lcom/a/a/a/a;

.field private c:Landroid/widget/Button;

.field private d:Landroid/view/LayoutInflater;

.field private e:Lcom/gridlayout/GridLayout;

.field private f:I

.field private g:Lcom/zhangdan/preferential/a/f;

.field private h:Lcom/zhangdan/preferential/a/o;

.field private i:Ljava/util/Set;

.field private j:Lcom/zhangdan/preferential/a/aa;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/preferential/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->i:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/a/aa;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->j:Lcom/zhangdan/preferential/a/aa;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    check-cast p1, Landroid/view/ViewGroup;

    const v0, 0x7f06011e

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/AddBankActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/zhangdan/preferential/data/model/a;

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->d:Landroid/view/LayoutInflater;

    const v4, 0x7f030046

    iget-object v5, p0, Lcom/zhangdan/preferential/AddBankActivity;->e:Lcom/gridlayout/GridLayout;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v5, p0, Lcom/zhangdan/preferential/AddBankActivity;->f:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->e:Lcom/gridlayout/GridLayout;

    invoke-virtual {v0, v4}, Lcom/gridlayout/GridLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f06011f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/zhangdan/preferential/data/model/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f06011d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-wide v5, v1, Lcom/zhangdan/preferential/data/model/a;->a:J

    invoke-static {v5, v6}, Lcom/zhangdan/preferential/a/h;->a(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/preferential/AddBankActivity;->a:Lcom/a/a/a/f/b;

    invoke-virtual {v6, v5, p0}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/zhangdan/preferential/AddBankActivity;->b:Lcom/a/a/a/a;

    invoke-virtual {v5}, Lcom/a/a/a/a;->a()Lcom/a/a/a/e/b;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/a/a/a/e/b;->a(Landroid/widget/ImageView;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v3, :cond_1

    invoke-direct {p0, v4}, Lcom/zhangdan/preferential/AddBankActivity;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4}, Lcom/zhangdan/preferential/AddBankActivity;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/a/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->g:Lcom/zhangdan/preferential/a/f;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    check-cast p1, Landroid/view/ViewGroup;

    const v0, 0x7f06011e

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic c(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/a/o;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->h:Lcom/zhangdan/preferential/a/o;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/preferential/AddBankActivity;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/a;

    iget-wide v3, v0, Lcom/zhangdan/preferential/data/model/a;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060037

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/AddBankActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f060025

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/zhangdan/preferential/b;

    invoke-direct {v0, p0, v2}, Lcom/zhangdan/preferential/b;-><init>(Lcom/zhangdan/preferential/AddBankActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/AddBankActivity;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/AddBankActivity;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/preferential/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/AddBankActivity;->setContentView(I)V

    new-instance v0, Lcom/zhangdan/preferential/a/f;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->g:Lcom/zhangdan/preferential/a/f;

    new-instance v0, Lcom/zhangdan/preferential/a/o;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/o;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->h:Lcom/zhangdan/preferential/a/o;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->d:Landroid/view/LayoutInflater;

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->a(Landroid/app/Activity;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->f:I

    new-instance v0, Lcom/zhangdan/preferential/a/aa;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->j:Lcom/zhangdan/preferential/a/aa;

    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->f()Lcom/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->b:Lcom/a/a/a/a;

    const v0, 0x7f02026c

    invoke-static {p0, v0}, Lcom/a/a/a/f/b;->a(Landroid/content/Context;I)Lcom/a/a/a/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->a:Lcom/a/a/a/f/b;

    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->a:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->a()V

    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->a:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->b()V

    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/AddBankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->c:Landroid/widget/Button;

    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/AddBankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gridlayout/GridLayout;

    iput-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->e:Lcom/gridlayout/GridLayout;

    const v0, 0x7f0602e9

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/AddBankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/AddBankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/AddBankActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/zhangdan/preferential/a;

    invoke-direct {v0, p0, v2}, Lcom/zhangdan/preferential/a;-><init>(Lcom/zhangdan/preferential/AddBankActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
