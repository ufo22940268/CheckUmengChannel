.class public final Lcom/zhangdan/app/activities/chart/b;
.super Lcom/zhangdan/app/activities/a;


# instance fields
.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/List;

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Lcom/zhangdan/app/activities/chart/k;

.field private j:Lcom/zhangdan/app/activities/chart/g;

.field private k:Landroid/support/v4/view/bb;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/a;-><init>()V

    new-instance v0, Lcom/zhangdan/app/activities/chart/c;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/c;-><init>(Lcom/zhangdan/app/activities/chart/b;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->k:Landroid/support/v4/view/bb;

    new-instance v0, Lcom/zhangdan/app/activities/chart/d;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/d;-><init>(Lcom/zhangdan/app/activities/chart/b;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/chart/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/chart/b;I)V
    .locals 5

    const v2, 0x7f0201f6

    const v1, 0x7f0201f5

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->a:Landroid/view/View;

    const v3, 0x7f06003d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->a:Landroid/view/View;

    const v4, 0x7f06003e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/chart/b;Lcom/zhangdan/app/activities/chart/g;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/b;->j:Lcom/zhangdan/app/activities/chart/g;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/chart/b;Lcom/zhangdan/app/activities/chart/k;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/b;->i:Lcom/zhangdan/app/activities/chart/k;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/chart/b;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/b;->d:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/chart/b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/b;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/chart/b;)Lcom/zhangdan/app/ZhangdanApplication;
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/b;->c()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/chart/b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/b;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/chart/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/chart/b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/b;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/chart/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/chart/b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/zhangdan/app/activities/chart/b;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->f:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic g(Lcom/zhangdan/app/activities/chart/b;)Landroid/support/v4/view/bb;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->k:Landroid/support/v4/view/bb;

    return-object v0
.end method

.method static synthetic h(Lcom/zhangdan/app/activities/chart/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/zhangdan/app/activities/chart/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/zhangdan/app/activities/chart/b;)Lcom/zhangdan/app/activities/chart/k;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->i:Lcom/zhangdan/app/activities/chart/k;

    return-object v0
.end method

.method static synthetic k(Lcom/zhangdan/app/activities/chart/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/zhangdan/app/activities/chart/b;)Lcom/zhangdan/app/activities/chart/g;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->j:Lcom/zhangdan/app/activities/chart/g;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->a:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->a:Landroid/view/View;

    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080197

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->a:Landroid/view/View;

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/b;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->a:Landroid/view/View;

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    const v0, 0x7f030070

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f060189

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->f:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f030073

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->g:Landroid/view/View;

    const v0, 0x7f030072

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->h:Landroid/view/View;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/b;->c_()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/zhangdan/app/activities/chart/f;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/chart/f;-><init>(Lcom/zhangdan/app/activities/chart/b;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/chart/f;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    :cond_0
    return-object v1
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/zhangdan/app/activities/a;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->i:Lcom/zhangdan/app/activities/chart/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->i:Lcom/zhangdan/app/activities/chart/k;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/k;->a()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/b;->i:Lcom/zhangdan/app/activities/chart/k;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->j:Lcom/zhangdan/app/activities/chart/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b;->j:Lcom/zhangdan/app/activities/chart/g;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/g;->a()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/b;->j:Lcom/zhangdan/app/activities/chart/g;

    :cond_1
    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/b;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/b;->c:Ljava/util/List;

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/b;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public final onDetach()V
    .locals 2

    invoke-super {p0}, Lcom/zhangdan/app/activities/a;->onDetach()V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->c()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->a(I)V

    goto :goto_0
.end method
