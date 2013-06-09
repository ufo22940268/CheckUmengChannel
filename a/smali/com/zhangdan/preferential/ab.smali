.class public final Lcom/zhangdan/preferential/ab;
.super Lcom/zhangdan/app/activities/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/preferential/widget/d;


# instance fields
.field private A:Lcom/zhangdan/preferential/a/n;

.field private B:Lcom/handmark/pulltorefresh/library/j;

.field protected b:Lcom/a/a/a/f/b;

.field protected c:Lcom/a/a/a/f/b;

.field protected d:Lcom/a/a/a/a;

.field private e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private f:Landroid/widget/ListView;

.field private g:Lcom/zhangdan/preferential/al;

.field private h:Lcom/zhangdan/preferential/a/i;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/view/ViewGroup;

.field private k:Lcom/zhangdan/preferential/a/f;

.field private l:Lcom/zhangdan/preferential/a/o;

.field private m:Lcom/zhangdan/preferential/a/ab;

.field private n:Lcom/zhangdan/preferential/a/l;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/util/List;

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

.field private x:Landroid/app/AlertDialog;

.field private y:Lcom/zhangdan/preferential/ak;

.field private z:Lcom/zhangdan/preferential/a/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/a;-><init>()V

    iput v0, p0, Lcom/zhangdan/preferential/ab;->r:I

    iput v0, p0, Lcom/zhangdan/preferential/ab;->v:I

    new-instance v0, Lcom/zhangdan/preferential/ac;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/ac;-><init>(Lcom/zhangdan/preferential/ab;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->z:Lcom/zhangdan/preferential/a/j;

    new-instance v0, Lcom/zhangdan/preferential/ad;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/ad;-><init>(Lcom/zhangdan/preferential/ab;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->A:Lcom/zhangdan/preferential/a/n;

    new-instance v0, Lcom/zhangdan/preferential/ae;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/ae;-><init>(Lcom/zhangdan/preferential/ab;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->B:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method private a(I)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zhangdan/preferential/ab;->o:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zhangdan/preferential/ab;->v:I

    invoke-static {v1}, Lcom/zhangdan/preferential/data/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->l:Lcom/zhangdan/preferential/a/o;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/ab;->o:Ljava/lang/String;

    iget v2, p0, Lcom/zhangdan/preferential/ab;->v:I

    new-instance v3, Lcom/zhangdan/preferential/data/model/d;

    const/16 v4, 0xc81

    invoke-direct {v3, v4}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    const-string v4, "pageNo"

    invoke-virtual {v3, v4, p1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;I)V

    const-string v4, "city"

    invoke-virtual {v3, v4, v1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;)V

    const-string v0, "day"

    invoke-static {v2}, Lcom/zhangdan/preferential/a/e;->a(I)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/preferential/ab;->l:Lcom/zhangdan/preferential/a/o;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/ab;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/zhangdan/preferential/ab;->p:Ljava/lang/String;

    invoke-static {v1, v2, p1, v3, v0}, Lcom/zhangdan/preferential/a/o;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[I)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhangdan/preferential/ab;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/preferential/ab;->e()V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/ab;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/preferential/ab;->v:I

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/ab;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/ab;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/ab;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/ab;->q:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/ab;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zhangdan/preferential/ab;->u:Z

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/preferential/ab;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/preferential/ab;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/preferential/ab;->r:I

    return-void
.end method

.method static synthetic c(Lcom/zhangdan/preferential/ab;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->x:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/preferential/ab;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->g:Lcom/zhangdan/preferential/al;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/al;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->g:Lcom/zhangdan/preferential/al;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/al;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->r()V

    new-instance v0, Lcom/zhangdan/preferential/ah;

    invoke-direct {v0, p0, v2}, Lcom/zhangdan/preferential/ah;-><init>(Lcom/zhangdan/preferential/ab;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/ah;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic e(Lcom/zhangdan/preferential/ab;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 4

    new-instance v0, Lcom/zhangdan/preferential/a/x;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/preferential/af;

    invoke-direct {v2, p0}, Lcom/zhangdan/preferential/af;-><init>(Lcom/zhangdan/preferential/ab;)V

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/preferential/a/x;-><init>(Landroid/content/Context;Lcom/zhangdan/preferential/a/y;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/a/x;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic f(Lcom/zhangdan/preferential/ab;)Lcom/zhangdan/preferential/a/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->k:Lcom/zhangdan/preferential/a/f;

    return-object v0
.end method

.method private f()V
    .locals 2

    iget v0, p0, Lcom/zhangdan/preferential/ab;->v:I

    const/4 v1, -0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/zhangdan/preferential/ab;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->j:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->j:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/zhangdan/preferential/ab;)Lcom/zhangdan/preferential/al;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->g:Lcom/zhangdan/preferential/al;

    return-object v0
.end method

.method static synthetic h(Lcom/zhangdan/preferential/ab;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic i(Lcom/zhangdan/preferential/ab;)Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->h:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/ab;->l:Lcom/zhangdan/preferential/a/o;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/o;->a(Lcom/zhangdan/preferential/data/model/Position;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/ab;->k:Lcom/zhangdan/preferential/a/f;

    iget-object v1, p0, Lcom/zhangdan/preferential/ab;->k:Lcom/zhangdan/preferential/a/f;

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/a/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->k(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->o:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/ab;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/zhangdan/preferential/ab;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/preferential/ab;->r:I

    return v0
.end method

.method static synthetic k(Lcom/zhangdan/preferential/ab;)Lorg/json/JSONObject;
    .locals 1

    iget v0, p0, Lcom/zhangdan/preferential/ab;->r:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/ab;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/zhangdan/preferential/ab;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic m(Lcom/zhangdan/preferential/ab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zhangdan/preferential/ab;->s:Z

    return v0
.end method

.method static synthetic n(Lcom/zhangdan/preferential/ab;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Lcom/zhangdan/preferential/ab;)Lcom/zhangdan/preferential/ak;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->y:Lcom/zhangdan/preferential/ak;

    return-object v0
.end method

.method static synthetic p(Lcom/zhangdan/preferential/ab;)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    const v1, 0x7f06004e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic q(Lcom/zhangdan/preferential/ab;)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    const v1, 0x7f06004e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic r(Lcom/zhangdan/preferential/ab;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->w:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    return-object v0
.end method

.method static synthetic s(Lcom/zhangdan/preferential/ab;)V
    .locals 4

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030107

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/TodayDialogView;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->x:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/ab;->x:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f070057

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070058

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method static synthetic t(Lcom/zhangdan/preferential/ab;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/preferential/ab;->f()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030007

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/zhangdan/preferential/ab;->a:Landroid/view/View;

    const v2, 0x7f060041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/ab;->a:Landroid/view/View;

    const v2, 0x7f060040

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public final a(Lcom/zhangdan/preferential/data/model/g;)V
    .locals 2

    iget v0, p1, Lcom/zhangdan/preferential/data/model/g;->c:I

    iput v0, p0, Lcom/zhangdan/preferential/ab;->v:I

    const-string v0, "\u5168\u90e8"

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->p:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/zhangdan/preferential/ab;->f()V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/zhangdan/preferential/ab;->t:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/zhangdan/preferential/ab;->t:Z

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->i:Landroid/view/ViewGroup;

    const v3, 0x7f060313

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v3, p0, Lcom/zhangdan/preferential/ab;->B:Lcom/handmark/pulltorefresh/library/j;

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Lcom/handmark/pulltorefresh/library/j;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->i()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->f:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->i:Landroid/view/ViewGroup;

    const v3, 0x7f060302

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->j:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->f:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/zhangdan/preferential/ab;->g:Lcom/zhangdan/preferential/al;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->f:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/zhangdan/preferential/ab;->g:Lcom/zhangdan/preferential/al;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->w:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    new-instance v0, Lcom/zhangdan/preferential/ak;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/ak;-><init>(Lcom/zhangdan/preferential/ab;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->y:Lcom/zhangdan/preferential/ak;

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->w:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v3, p0, Lcom/zhangdan/preferential/ab;->y:Lcom/zhangdan/preferential/ak;

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->w:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setContentWidth(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->w:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setContentHeight(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->w:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v3, p0, Lcom/zhangdan/preferential/ab;->y:Lcom/zhangdan/preferential/ak;

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->w:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v3, p0, Lcom/zhangdan/preferential/ab;->y:Lcom/zhangdan/preferential/ak;

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->g:Lcom/zhangdan/preferential/al;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/al;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->A()V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/f;->a:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Lcom/handmark/pulltorefresh/library/f;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->h:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/zhangdan/preferential/ah;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/ah;-><init>(Lcom/zhangdan/preferential/ab;B)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/zhangdan/preferential/ah;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_2
    new-instance v0, Lcom/zhangdan/preferential/ai;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/ai;-><init>(Lcom/zhangdan/preferential/ab;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/ai;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->n:Lcom/zhangdan/preferential/a/l;

    const-string v1, "com.zhangdan.preferential.UPDATE_WEIBO_STATUS"

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/a/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->n:Lcom/zhangdan/preferential/a/l;

    const-string v1, "com.zhangdan.preferential.UPDATE_CATEGORY"

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/a/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->n:Lcom/zhangdan/preferential/a/l;

    iget-object v1, p0, Lcom/zhangdan/preferential/ab;->A:Lcom/zhangdan/preferential/a/n;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/a/l;->a(Lcom/zhangdan/preferential/a/n;)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->h:Lcom/zhangdan/preferential/a/i;

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->z:Lcom/zhangdan/preferential/a/j;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/i;->a(Lcom/zhangdan/preferential/a/j;)V

    goto :goto_2
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->e()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->a:Landroid/view/View;

    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/ab;->w:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->w:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f060040
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0xf0

    const/16 v3, 0x59

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->g:Lcom/zhangdan/preferential/al;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zhangdan/preferential/al;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/al;-><init>(Lcom/zhangdan/preferential/ab;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->g:Lcom/zhangdan/preferential/al;

    :cond_0
    new-instance v0, Lcom/zhangdan/preferential/a/i;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/i;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->h:Lcom/zhangdan/preferential/a/i;

    new-instance v0, Lcom/zhangdan/preferential/a/ab;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/a/ab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->m:Lcom/zhangdan/preferential/a/ab;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/data/a;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/ab;->s:Z

    new-instance v0, Lcom/zhangdan/preferential/a/f;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->k:Lcom/zhangdan/preferential/a/f;

    new-instance v0, Lcom/zhangdan/preferential/a/o;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/o;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->l:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/a/l;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/a/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->n:Lcom/zhangdan/preferential/a/l;

    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->f()Lcom/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->d:Lcom/a/a/a/a;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/zhangdan/preferential/a/d;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/zhangdan/preferential/a/d;->a(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f020310

    invoke-static {v0, v1, v2}, Lcom/a/a/a/f/b;->a(III)Lcom/a/a/a/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->b:Lcom/a/a/a/f/b;

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->b:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->a()V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->b:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->b()V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/zhangdan/preferential/a/d;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/zhangdan/preferential/a/d;->a(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f02039c

    invoke-static {v0, v1, v2}, Lcom/a/a/a/f/b;->a(III)Lcom/a/a/a/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->c:Lcom/a/a/a/f/b;

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->c:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->a()V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->c:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->b()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->i:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    const v0, 0x7f0300ed

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/ab;->i:Landroid/view/ViewGroup;

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->i:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public final onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/a;->onDetach()V

    iget-object v0, p0, Lcom/zhangdan/preferential/ab;->n:Lcom/zhangdan/preferential/a/l;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/a/l;->a()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/zhangdan/app/activities/a;->onResume()V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0801d5

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/ab;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/preferential/ab;->e()V

    return-void
.end method
