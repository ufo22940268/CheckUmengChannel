.class public Lcom/zhangdan/preferential/BankConfigurationActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Lcom/a/a/a/f/b;

.field protected b:Lcom/a/a/a/a;

.field private c:Landroid/widget/Button;

.field private d:Landroid/view/LayoutInflater;

.field private e:Lcom/gridlayout/GridLayout;

.field private f:Landroid/view/ViewGroup;

.field private g:Lcom/zhangdan/preferential/a/o;

.field private h:Lcom/zhangdan/preferential/a/f;

.field private i:Lcom/zhangdan/preferential/a/aa;

.field private j:Lcom/zhangdan/preferential/a/ab;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->n:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/a/aa;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->i:Lcom/zhangdan/preferential/a/aa;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/preferential/BankConfigurationActivity;Ljava/util/List;)V
    .locals 6

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

    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->d:Landroid/view/LayoutInflater;

    const v3, 0x7f03004e

    iget-object v4, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->e:Lcom/gridlayout/GridLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v4, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->k:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->e:Lcom/gridlayout/GridLayout;

    invoke-virtual {v0, v3}, Lcom/gridlayout/GridLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f06011f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/zhangdan/preferential/data/model/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f06011d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-wide v4, v1, Lcom/zhangdan/preferential/data/model/a;->a:J

    invoke-static {v4, v5}, Lcom/zhangdan/preferential/a/h;->a(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->a:Lcom/a/a/a/f/b;

    invoke-virtual {v5, v4, p0}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->b:Lcom/a/a/a/a;

    invoke-virtual {v4}, Lcom/a/a/a/a;->a()Lcom/a/a/a/e/b;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/a/a/a/e/b;->a(Landroid/widget/ImageView;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->n:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/a/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->h:Lcom/zhangdan/preferential/a/f;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/a/o;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->g:Lcom/zhangdan/preferential/a/o;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/a/ab;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->j:Lcom/zhangdan/preferential/a/ab;

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/preferential/BankConfigurationActivity;)V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->e:Lcom/gridlayout/GridLayout;

    invoke-virtual {v1}, Lcom/gridlayout/GridLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->e:Lcom/gridlayout/GridLayout;

    iget-object v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->e:Lcom/gridlayout/GridLayout;

    invoke-virtual {v2, v0}, Lcom/gridlayout/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gridlayout/GridLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic f(Lcom/zhangdan/preferential/BankConfigurationActivity;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->n:Ljava/util/Set;

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

.method private f()V
    .locals 3

    iget-object v1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->c:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->m:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0801e5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->e:Lcom/gridlayout/GridLayout;

    invoke-virtual {v0}, Lcom/gridlayout/GridLayout;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_1

    return-void

    :cond_0
    const v0, 0x7f0801e4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->e:Lcom/gridlayout/GridLayout;

    invoke-virtual {v0, v1}, Lcom/gridlayout/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->m:Z

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    const v2, 0x7f060147

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->m:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f060037

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->finish()V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->c(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v3, 0x7f060025

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->m:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->l:Z

    if-eqz v2, :cond_2

    new-instance v2, Lcom/zhangdan/preferential/c;

    invoke-direct {v2, p0, v0}, Lcom/zhangdan/preferential/c;-><init>(Lcom/zhangdan/preferential/BankConfigurationActivity;B)V

    new-array v3, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    iget-boolean v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->m:Z

    if-eqz v2, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->m:Z

    invoke-direct {p0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->f()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const v0, 0x7f060033

    if-ne v2, v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_ADD_BANK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->startActivity(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->e:Lcom/gridlayout/GridLayout;

    invoke-virtual {v0, p1}, Lcom/gridlayout/GridLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->l:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->setContentView(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->d:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/zhangdan/preferential/a/o;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/o;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->g:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/a/f;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->h:Lcom/zhangdan/preferential/a/f;

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->a(Landroid/app/Activity;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->k:I

    new-instance v0, Lcom/zhangdan/preferential/a/aa;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->i:Lcom/zhangdan/preferential/a/aa;

    new-instance v0, Lcom/zhangdan/preferential/a/ab;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/ab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->j:Lcom/zhangdan/preferential/a/ab;

    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->f()Lcom/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->b:Lcom/a/a/a/a;

    const v0, 0x7f02026c

    invoke-static {p0, v0}, Lcom/a/a/a/f/b;->a(Landroid/content/Context;I)Lcom/a/a/a/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->a:Lcom/a/a/a/f/b;

    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->a:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->a()V

    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->a:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->b()V

    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->f:Landroid/view/ViewGroup;

    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->c:Landroid/widget/Button;

    const v0, 0x7f0602e9

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onResume()V

    iput-boolean v1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->l:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->n:Ljava/util/Set;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f03004d

    iget-object v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f060146

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gridlayout/GridLayout;

    iput-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->e:Lcom/gridlayout/GridLayout;

    iget-object v0, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f03004e

    iget-object v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->e:Lcom/gridlayout/GridLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f060033

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->k:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->e:Lcom/gridlayout/GridLayout;

    invoke-virtual {v2, v0}, Lcom/gridlayout/GridLayout;->addView(Landroid/view/View;)V

    check-cast v0, Landroid/view/ViewGroup;

    const v2, 0x7f06011d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f020083

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iput-boolean v1, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->m:Z

    invoke-direct {p0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->f()V

    new-instance v0, Lcom/zhangdan/preferential/d;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/d;-><init>(Lcom/zhangdan/preferential/BankConfigurationActivity;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->f:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/zhangdan/preferential/BankConfigurationActivity;->f:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
