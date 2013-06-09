.class public final Lcom/zhangdan/preferential/as;
.super Lcom/zhangdan/app/activities/a;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/preferential/a/j;


# instance fields
.field private A:Lcom/zhangdan/preferential/a/l;

.field private B:Landroid/hardware/SensorManager;

.field private C:Lcom/zhangdan/preferential/a/u;

.field private D:Z

.field private E:Lcom/zhangdan/preferential/a/n;

.field private F:Lcom/handmark/pulltorefresh/library/j;

.field public b:Landroid/widget/ListView;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/ViewGroup;

.field private g:Lcom/zhangdan/preferential/a/i;

.field private h:Lcom/zhangdan/preferential/a/f;

.field private i:Lcom/zhangdan/preferential/a/o;

.field private j:Lcom/zhangdan/preferential/a/i;

.field private k:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/zhangdan/preferential/bd;

.field private o:Lcom/zhangdan/preferential/bb;

.field private p:Ljava/util/List;

.field private q:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

.field private r:Landroid/app/AlertDialog;

.field private s:I

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Lcom/handmark/pulltorefresh/library/f;

.field private y:Landroid/os/Bundle;

.field private z:Lcom/zhangdan/preferential/a/ab;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/as;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/a;-><init>()V

    iput v1, p0, Lcom/zhangdan/preferential/as;->s:I

    const v0, 0x1869f

    iput v0, p0, Lcom/zhangdan/preferential/as;->t:I

    iput v1, p0, Lcom/zhangdan/preferential/as;->u:I

    const-string v0, ""

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->v:Ljava/lang/String;

    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->d:Lcom/handmark/pulltorefresh/library/f;

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->x:Lcom/handmark/pulltorefresh/library/f;

    new-instance v0, Lcom/zhangdan/preferential/at;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/at;-><init>(Lcom/zhangdan/preferential/as;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->E:Lcom/zhangdan/preferential/a/n;

    new-instance v0, Lcom/zhangdan/preferential/au;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/au;-><init>(Lcom/zhangdan/preferential/as;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->F:Lcom/handmark/pulltorefresh/library/j;

    iput p1, p0, Lcom/zhangdan/preferential/as;->w:I

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/as;->setRetainInstance(Z)V

    return-void
.end method

.method static synthetic a(I)I
    .locals 1

    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method static synthetic a(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/bd;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->n:Lcom/zhangdan/preferential/bd;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/preferential/as;Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/be;
    .locals 1

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/as;->a(Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/be;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/be;
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/zhangdan/preferential/as;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/zhangdan/preferential/be;

    invoke-direct {v0, p0, v2}, Lcom/zhangdan/preferential/be;-><init>(Lcom/zhangdan/preferential/as;B)V

    new-instance v1, Lcom/zhangdan/preferential/a/o;

    invoke-direct {v1}, Lcom/zhangdan/preferential/a/o;-><init>()V

    iget-object v2, p0, Lcom/zhangdan/preferential/as;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/zhangdan/preferential/a/o;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/be;->b:Lorg/json/JSONObject;

    iput v3, v0, Lcom/zhangdan/preferential/be;->a:I

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/zhangdan/preferential/be;

    invoke-direct {v0, p0, v2}, Lcom/zhangdan/preferential/be;-><init>(Lcom/zhangdan/preferential/as;B)V

    iget-object v1, p0, Lcom/zhangdan/preferential/as;->i:Lcom/zhangdan/preferential/a/o;

    iget v1, p0, Lcom/zhangdan/preferential/as;->u:I

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v3, v1, v2}, Lcom/zhangdan/preferential/a/o;->a(Lcom/zhangdan/preferential/data/model/Position;IILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/be;->b:Lorg/json/JSONObject;

    iget v1, p0, Lcom/zhangdan/preferential/as;->u:I

    iput v1, v0, Lcom/zhangdan/preferential/be;->a:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/zhangdan/preferential/as;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/preferential/as;->u:I

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/as;Lcom/zhangdan/preferential/data/model/g;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->n:Lcom/zhangdan/preferential/bd;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/bd;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->n:Lcom/zhangdan/preferential/bd;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/bd;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->k:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->r()V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->g:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/preferential/az;

    invoke-direct {v1, p0, v3}, Lcom/zhangdan/preferential/az;-><init>(Lcom/zhangdan/preferential/as;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/zhangdan/preferential/be;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/as;->a(Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/be;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/az;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/as;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/as;->p:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/as;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zhangdan/preferential/as;->D:Z

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/preferential/as;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->r:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/preferential/as;Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/be;
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/zhangdan/preferential/as;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/zhangdan/preferential/be;

    invoke-direct {v0, p0, v2}, Lcom/zhangdan/preferential/be;-><init>(Lcom/zhangdan/preferential/as;B)V

    new-instance v1, Lcom/zhangdan/preferential/a/o;

    invoke-direct {v1}, Lcom/zhangdan/preferential/a/o;-><init>()V

    iget-object v2, p0, Lcom/zhangdan/preferential/as;->v:Ljava/lang/String;

    iget v3, p0, Lcom/zhangdan/preferential/as;->s:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/zhangdan/preferential/a/o;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/be;->b:Lorg/json/JSONObject;

    const/4 v1, 0x1

    iput v1, v0, Lcom/zhangdan/preferential/be;->a:I

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/zhangdan/preferential/be;

    invoke-direct {v0, p0, v2}, Lcom/zhangdan/preferential/be;-><init>(Lcom/zhangdan/preferential/as;B)V

    iget-object v1, p0, Lcom/zhangdan/preferential/as;->i:Lcom/zhangdan/preferential/a/o;

    iget v1, p0, Lcom/zhangdan/preferential/as;->s:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/zhangdan/preferential/as;->u:I

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/zhangdan/preferential/a/o;->a(Lcom/zhangdan/preferential/data/model/Position;IILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/be;->b:Lorg/json/JSONObject;

    iget v1, p0, Lcom/zhangdan/preferential/as;->u:I

    iput v1, v0, Lcom/zhangdan/preferential/be;->a:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/zhangdan/preferential/as;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/preferential/as;->s:I

    return-void
.end method

.method static synthetic c(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/i;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->g:Lcom/zhangdan/preferential/a/i;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/o;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->i:Lcom/zhangdan/preferential/a/o;

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->h:Lcom/zhangdan/preferential/a/f;

    return-object v0
.end method

.method static synthetic f(Lcom/zhangdan/preferential/as;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/zhangdan/preferential/as;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/preferential/as;->u:I

    return v0
.end method

.method static synthetic h(Lcom/zhangdan/preferential/as;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/preferential/as;->w:I

    return v0
.end method

.method static synthetic i(Lcom/zhangdan/preferential/as;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->k:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic j(Lcom/zhangdan/preferential/as;)Lcom/handmark/pulltorefresh/library/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->x:Lcom/handmark/pulltorefresh/library/f;

    return-object v0
.end method

.method static synthetic k(Lcom/zhangdan/preferential/as;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/preferential/as;->s:I

    return v0
.end method

.method static synthetic l(Lcom/zhangdan/preferential/as;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zhangdan/preferential/as;->D:Z

    return v0
.end method

.method static synthetic m(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/i;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->j:Lcom/zhangdan/preferential/a/i;

    return-object v0
.end method

.method static synthetic n(Lcom/zhangdan/preferential/as;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/bb;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->o:Lcom/zhangdan/preferential/bb;

    return-object v0
.end method

.method static synthetic p(Lcom/zhangdan/preferential/as;)V
    .locals 3

    iget v0, p0, Lcom/zhangdan/preferential/as;->w:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->a:Landroid/view/View;

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

    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/zhangdan/preferential/as;)V
    .locals 3

    iget v0, p0, Lcom/zhangdan/preferential/as;->w:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->a:Landroid/view/View;

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

    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/u;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->C:Lcom/zhangdan/preferential/a/u;

    return-object v0
.end method

.method static synthetic s(Lcom/zhangdan/preferential/as;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801a5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801a6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801a8

    new-instance v2, Lcom/zhangdan/preferential/av;

    invoke-direct {v2, p0}, Lcom/zhangdan/preferential/av;-><init>(Lcom/zhangdan/preferential/as;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801a7

    new-instance v2, Lcom/zhangdan/preferential/aw;

    invoke-direct {v2, p0}, Lcom/zhangdan/preferential/aw;-><init>(Lcom/zhangdan/preferential/as;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic t(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->q:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    return-object v0
.end method

.method static synthetic u(Lcom/zhangdan/preferential/as;)V
    .locals 4

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->r:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/as;->r:Landroid/app/AlertDialog;

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


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/preferential/as;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const v2, 0x7f060041

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->a:Landroid/view/View;

    const v2, 0x7f060040

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->a:Landroid/view/View;

    const v2, 0x7f06004d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->a:Landroid/view/View;

    const v2, 0x7f060050

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/as;->y:Landroid/os/Bundle;

    return-void
.end method

.method public final e_()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/as;->k:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->A()V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->g:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/preferential/az;

    invoke-direct {v1, p0, v4}, Lcom/zhangdan/preferential/az;-><init>(Lcom/zhangdan/preferential/as;B)V

    new-array v2, v5, [Lcom/zhangdan/preferential/be;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/as;->a(Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/be;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/az;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    new-instance v1, Lcom/zhangdan/preferential/ay;

    invoke-direct {v1, p0, v4}, Lcom/zhangdan/preferential/ay;-><init>(Lcom/zhangdan/preferential/as;B)V

    new-array v2, v5, [Lcom/zhangdan/preferential/data/model/Position;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/ay;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    goto :goto_0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->f:Landroid/view/ViewGroup;

    const v3, 0x7f060313

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->k:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->k:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->i()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->f:Landroid/view/ViewGroup;

    const v3, 0x7f060327

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->b:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/zhangdan/preferential/as;->n:Lcom/zhangdan/preferential/bd;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->b:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/zhangdan/preferential/as;->n:Lcom/zhangdan/preferential/bd;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->k:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v3, p0, Lcom/zhangdan/preferential/as;->F:Lcom/handmark/pulltorefresh/library/j;

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Lcom/handmark/pulltorefresh/library/j;)V

    new-instance v0, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->q:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    new-instance v0, Lcom/zhangdan/preferential/bb;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/bb;-><init>(Lcom/zhangdan/preferential/as;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->o:Lcom/zhangdan/preferential/bb;

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->q:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v3, p0, Lcom/zhangdan/preferential/as;->o:Lcom/zhangdan/preferential/bb;

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->q:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setContentWidth(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->q:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setContentHeight(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->q:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v3, p0, Lcom/zhangdan/preferential/as;->o:Lcom/zhangdan/preferential/bb;

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->q:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v3, p0, Lcom/zhangdan/preferential/as;->o:Lcom/zhangdan/preferential/bb;

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget v0, p0, Lcom/zhangdan/preferential/as;->w:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->y:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->y:Landroid/os/Bundle;

    const-string v3, "type_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/as;->u:I

    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->d:Lcom/handmark/pulltorefresh/library/f;

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->x:Lcom/handmark/pulltorefresh/library/f;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zhangdan/preferential/as;->n:Lcom/zhangdan/preferential/bd;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/bd;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->p:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_6

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->k:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->A()V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->k:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v3, Lcom/handmark/pulltorefresh/library/f;->a:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Lcom/handmark/pulltorefresh/library/f;)V

    iget v0, p0, Lcom/zhangdan/preferential/as;->w:I

    if-ne v0, v5, :cond_7

    new-instance v0, Lcom/zhangdan/preferential/az;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/az;-><init>(Lcom/zhangdan/preferential/as;B)V

    new-array v3, v2, [Lcom/zhangdan/preferential/be;

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/zhangdan/preferential/as;->a(Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/be;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lcom/zhangdan/preferential/az;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/zhangdan/preferential/as;->g:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v3, Lcom/zhangdan/preferential/ay;

    invoke-direct {v3, p0, v1}, Lcom/zhangdan/preferential/ay;-><init>(Lcom/zhangdan/preferential/as;B)V

    new-array v2, v2, [Lcom/zhangdan/preferential/data/model/Position;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/zhangdan/preferential/ay;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    :cond_3
    new-instance v0, Lcom/zhangdan/preferential/bc;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/bc;-><init>(Lcom/zhangdan/preferential/as;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/bc;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->A:Lcom/zhangdan/preferential/a/l;

    const-string v1, "com.zhangdan.preferential.UPDATE_IMAGE_HIDE"

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/a/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->A:Lcom/zhangdan/preferential/a/l;

    const-string v1, "com.zhangdan.preferential.UPDATE_CATEGORY"

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/a/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->A:Lcom/zhangdan/preferential/a/l;

    iget-object v1, p0, Lcom/zhangdan/preferential/as;->E:Lcom/zhangdan/preferential/a/n;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/a/l;->a(Lcom/zhangdan/preferential/a/n;)V

    return-void

    :cond_4
    iget v0, p0, Lcom/zhangdan/preferential/as;->w:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->y:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->y:Landroid/os/Bundle;

    const-string v3, "keyword"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->v:Ljava/lang/String;

    :cond_5
    sget-object v0, Lcom/handmark/pulltorefresh/library/f;->d:Lcom/handmark/pulltorefresh/library/f;

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->x:Lcom/handmark/pulltorefresh/library/f;

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/zhangdan/preferential/as;->g:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->g:Lcom/zhangdan/preferential/a/i;

    invoke-static {p0}, Lcom/zhangdan/preferential/a/i;->a(Lcom/zhangdan/preferential/a/j;)V

    goto :goto_2

    :cond_8
    new-instance v3, Lcom/zhangdan/preferential/az;

    invoke-direct {v3, p0, v1}, Lcom/zhangdan/preferential/az;-><init>(Lcom/zhangdan/preferential/as;B)V

    new-array v4, v2, [Lcom/zhangdan/preferential/be;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/as;->a(Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/be;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/zhangdan/preferential/az;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    goto :goto_2
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_VIEW_MAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/z;->b(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/zhangdan/preferential/as;->a:Landroid/view/View;

    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/as;->q:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->q:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->show()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->e()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f060040 -> :sswitch_2
        0x7f060041 -> :sswitch_1
        0x7f060050 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->n:Lcom/zhangdan/preferential/bd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zhangdan/preferential/bd;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/bd;-><init>(Lcom/zhangdan/preferential/as;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->n:Lcom/zhangdan/preferential/bd;

    :cond_0
    new-instance v0, Lcom/zhangdan/preferential/a/i;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/i;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->j:Lcom/zhangdan/preferential/a/i;

    new-instance v0, Lcom/zhangdan/preferential/a/ab;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/a/ab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->z:Lcom/zhangdan/preferential/a/ab;

    new-instance v0, Lcom/zhangdan/preferential/a/l;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/a/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->A:Lcom/zhangdan/preferential/a/l;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->B:Landroid/hardware/SensorManager;

    new-instance v0, Lcom/zhangdan/preferential/a/u;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/a/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->C:Lcom/zhangdan/preferential/a/u;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/data/a;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/as;->D:Z

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/preferential/as;->c:Landroid/view/LayoutInflater;

    new-instance v1, Lcom/zhangdan/preferential/a/i;

    invoke-direct {v1}, Lcom/zhangdan/preferential/a/i;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/preferential/as;->g:Lcom/zhangdan/preferential/a/i;

    new-instance v1, Lcom/zhangdan/preferential/a/f;

    invoke-direct {v1, v0}, Lcom/zhangdan/preferential/a/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zhangdan/preferential/as;->h:Lcom/zhangdan/preferential/a/f;

    new-instance v0, Lcom/zhangdan/preferential/a/o;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/o;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->i:Lcom/zhangdan/preferential/a/o;

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0300fb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/as;->f:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->f:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public final onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/a;->onDetach()V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->A:Lcom/zhangdan/preferential/a/l;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/a/l;->a()V

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->B:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/zhangdan/app/activities/a;->onResume()V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/as;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0801d5

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/as;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/as;->B:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/zhangdan/preferential/as;->B:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v1, v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/preferential/as;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/as;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v3, 0x7f0602be

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    float-to-double v6, v2

    sub-double/2addr v4, v6

    double-to-float v0, v4

    invoke-virtual {v3, v0}, Landroid/view/View;->setRotation(F)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
