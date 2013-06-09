.class public final Lcom/zhangdan/app/activities/main/a;
.super Lcom/zhangdan/app/activities/a;


# instance fields
.field private A:Lcom/zhangdan/app/receiver/j;

.field private B:Lcom/zhangdan/app/receiver/i;

.field private C:Lcom/zhangdan/app/receiver/g;

.field private D:Lcom/zhangdan/app/receiver/c;

.field private E:Landroid/view/View$OnClickListener;

.field private F:Landroid/widget/AdapterView$OnItemClickListener;

.field private G:Landroid/widget/AdapterView$OnItemClickListener;

.field private b:Lcom/zhangdan/app/c/a;

.field private c:Lcom/zhangdan/app/receiver/a;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/zhangdan/app/widget/ElasticView;

.field private f:I

.field private g:Landroid/widget/RelativeLayout$LayoutParams;

.field private h:F

.field private i:Landroid/widget/ListView;

.field private j:Lcom/zhangdan/app/activities/main/a/g;

.field private k:Lcom/zhangdan/app/activities/main/a/a;

.field private l:I

.field private m:Landroid/widget/SlidingDrawer;

.field private n:Landroid/widget/ImageView;

.field private o:Z

.field private p:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

.field private q:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/view/View;

.field private t:Lcom/zhangdan/app/widget/d;

.field private u:Landroid/view/View$OnClickListener;

.field private v:Landroid/view/View$OnClickListener;

.field private w:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

.field private x:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

.field private y:Landroid/widget/AdapterView$OnItemClickListener;

.field private z:Lcom/zhangdan/app/receiver/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/main/a;->h:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/main/a;->o:Z

    new-instance v0, Lcom/zhangdan/app/activities/main/b;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/b;-><init>(Lcom/zhangdan/app/activities/main/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->t:Lcom/zhangdan/app/widget/d;

    new-instance v0, Lcom/zhangdan/app/activities/main/h;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/h;-><init>(Lcom/zhangdan/app/activities/main/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->u:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zhangdan/app/activities/main/i;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/i;-><init>(Lcom/zhangdan/app/activities/main/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->v:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zhangdan/app/activities/main/j;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/j;-><init>(Lcom/zhangdan/app/activities/main/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->w:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    new-instance v0, Lcom/zhangdan/app/activities/main/k;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/k;-><init>(Lcom/zhangdan/app/activities/main/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->x:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    new-instance v0, Lcom/zhangdan/app/activities/main/l;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/l;-><init>(Lcom/zhangdan/app/activities/main/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->y:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/zhangdan/app/activities/main/m;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/m;-><init>(Lcom/zhangdan/app/activities/main/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->z:Lcom/zhangdan/app/receiver/f;

    new-instance v0, Lcom/zhangdan/app/activities/main/n;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/n;-><init>(Lcom/zhangdan/app/activities/main/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->A:Lcom/zhangdan/app/receiver/j;

    new-instance v0, Lcom/zhangdan/app/activities/main/o;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/o;-><init>(Lcom/zhangdan/app/activities/main/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->B:Lcom/zhangdan/app/receiver/i;

    new-instance v0, Lcom/zhangdan/app/activities/main/c;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/c;-><init>(Lcom/zhangdan/app/activities/main/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->C:Lcom/zhangdan/app/receiver/g;

    new-instance v0, Lcom/zhangdan/app/activities/main/d;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/d;-><init>(Lcom/zhangdan/app/activities/main/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->D:Lcom/zhangdan/app/receiver/c;

    new-instance v0, Lcom/zhangdan/app/activities/main/e;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/e;-><init>(Lcom/zhangdan/app/activities/main/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->E:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zhangdan/app/activities/main/f;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/f;-><init>(Lcom/zhangdan/app/activities/main/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->F:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/zhangdan/app/activities/main/g;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/g;-><init>(Lcom/zhangdan/app/activities/main/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->G:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/main/a;)V
    .locals 1

    const/high16 v0, -0x4180

    iput v0, p0, Lcom/zhangdan/app/activities/main/a;->h:F

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/main/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/main/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/main/a;Lcom/zhangdan/app/popmenu/ZdListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/a;->p:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/main/a;)F
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/main/a;->h:F

    return v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->a:Landroid/view/View;

    const v1, 0x7f060043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/AvatarView;

    invoke-static {p1, v0}, Lcom/zhangdan/app/e/c;->a(Landroid/content/Context;Lcom/zhangdan/app/widget/AvatarView;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/main/a;Lcom/zhangdan/app/popmenu/ZdListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/a;->q:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    return-void
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->g:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/main/a;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/main/a;->f:I

    return v0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->i:Landroid/widget/ListView;

    return-object v0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->j:Lcom/zhangdan/app/activities/main/a/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->b:Lcom/zhangdan/app/c/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/app/activities/main/b/b;

    invoke-direct {v1}, Lcom/zhangdan/app/activities/main/b/b;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Lcom/zhangdan/app/activities/main/a/g;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhangdan/app/activities/main/a/g;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/a;->j:Lcom/zhangdan/app/activities/main/a/g;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->j:Lcom/zhangdan/app/activities/main/a/g;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/main/a;->l:I

    return-void
.end method

.method static synthetic g(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/SlidingDrawer;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->m:Landroid/widget/SlidingDrawer;

    return-object v0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->k:Lcom/zhangdan/app/activities/main/a/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->b:Lcom/zhangdan/app/c/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/app/activities/main/b/b;

    invoke-direct {v1}, Lcom/zhangdan/app/activities/main/b/b;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Lcom/zhangdan/app/activities/main/a/a;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zhangdan/app/activities/main/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/a;->k:Lcom/zhangdan/app/activities/main/a/a;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->k:Lcom/zhangdan/app/activities/main/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/zhangdan/app/activities/main/a;->l:I

    return-void
.end method

.method static synthetic h(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/zhangdan/app/activities/main/a;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/zhangdan/app/activities/main/a;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->b:Lcom/zhangdan/app/c/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/zhangdan/app/activities/main/b/b;

    invoke-direct {v1}, Lcom/zhangdan/app/activities/main/b/b;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->j:Lcom/zhangdan/app/activities/main/a/g;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->j:Lcom/zhangdan/app/activities/main/a/g;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/main/a/g;->a(Ljava/util/List;)V

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->k:Lcom/zhangdan/app/activities/main/a/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->k:Lcom/zhangdan/app/activities/main/a/a;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/main/a/a;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method static synthetic l(Lcom/zhangdan/app/activities/main/a;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/main/a;->o:Z

    return-void
.end method

.method static synthetic m(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/c/a;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->b:Lcom/zhangdan/app/c/a;

    return-object v0
.end method

.method static synthetic n(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->p:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    return-object v0
.end method

.method static synthetic o(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->F:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic p(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->q:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    return-object v0
.end method

.method static synthetic q(Lcom/zhangdan/app/activities/main/a;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->G:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic r(Lcom/zhangdan/app/activities/main/a;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/main/a;->l:I

    return v0
.end method

.method static synthetic s(Lcom/zhangdan/app/activities/main/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/a;->f()V

    return-void
.end method

.method static synthetic t(Lcom/zhangdan/app/activities/main/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/a;->g()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->a:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->a:Landroid/view/View;

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->a:Landroid/view/View;

    const v1, 0x7f060048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->a:Landroid/view/View;

    const v1, 0x7f060049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->a:Landroid/view/View;

    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->a:Landroid/view/View;

    const v1, 0x7f06004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->r:Landroid/widget/ImageView;

    :cond_0
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/main/a;->b(Landroid/content/Context;)V

    :cond_1
    sget v0, Lcom/zhangdan/app/service/DownloadDataService;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->r:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->a(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->a:Landroid/view/View;

    return-object v0
.end method

.method public final e()V
    .locals 3

    sget v0, Lcom/zhangdan/app/service/DownloadDataService;->a:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->r:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->a(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/a;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/zhangdan/app/e/f;->a(Landroid/content/Context;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->b()Lcom/zhangdan/app/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->b:Lcom/zhangdan/app/c/a;

    new-instance v0, Lcom/zhangdan/app/receiver/a;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0xeb

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/receiver/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->c:Lcom/zhangdan/app/receiver/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->c:Lcom/zhangdan/app/receiver/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->z:Lcom/zhangdan/app/receiver/f;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/f;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->c:Lcom/zhangdan/app/receiver/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->A:Lcom/zhangdan/app/receiver/j;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/j;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->c:Lcom/zhangdan/app/receiver/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->B:Lcom/zhangdan/app/receiver/i;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/i;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->c:Lcom/zhangdan/app/receiver/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->C:Lcom/zhangdan/app/receiver/g;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/g;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->c:Lcom/zhangdan/app/receiver/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->D:Lcom/zhangdan/app/receiver/c;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/c;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const v3, 0x7f0602f7

    const/4 v1, 0x0

    const/4 v5, 0x0

    const v0, 0x7f0300df

    invoke-virtual {p1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f06008a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->i:Landroid/widget/ListView;

    const v0, 0x7f0602fa

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->m:Landroid/widget/SlidingDrawer;

    const v0, 0x7f0602f9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->n:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->d:Landroid/widget/ImageView;

    const v0, 0x7f0602f8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/ElasticView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->e:Lcom/zhangdan/app/widget/ElasticView;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->e:Lcom/zhangdan/app/widget/ElasticView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/a;->t:Lcom/zhangdan/app/widget/d;

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/widget/ElasticView;->a(Lcom/zhangdan/app/widget/d;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->g:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->g:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v0, p0, Lcom/zhangdan/app/activities/main/a;->f:I

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/a;->d:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/zhangdan/app/e/f;->a(Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300e0

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/a;->s:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->i:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/a;->s:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->s:Landroid/view/View;

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/a;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->i:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03006d

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->b:Lcom/zhangdan/app/c/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/a;->f()V

    :goto_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->m:Landroid/widget/SlidingDrawer;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02028c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    const v5, 0x7f020358

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/zhangdan/app/activities/main/a;->m:Landroid/widget/SlidingDrawer;

    invoke-virtual {v4}, Landroid/widget/SlidingDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Landroid/widget/SlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->open()V

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/a;->w:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    invoke-virtual {v0, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/a;->x:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    invoke-virtual {v0, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/a;->n:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->n:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/a;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0602fc

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Lcom/zhangdan/app/activities/main/a/j;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/zhangdan/app/activities/main/a/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/a;->y:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->e()V

    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/a;->g()V

    goto :goto_1
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/zhangdan/app/activities/a;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->p:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->p:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/a;->p:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->q:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->q:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->dismiss()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/a;->q:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->c:Lcom/zhangdan/app/receiver/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/a;->c:Lcom/zhangdan/app/receiver/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/a;->a()V

    :cond_2
    iput-object v1, p0, Lcom/zhangdan/app/activities/main/a;->c:Lcom/zhangdan/app/receiver/a;

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/a;->m:Landroid/widget/SlidingDrawer;

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/a;->n:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/a;->i:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/a;->d:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zhangdan/app/activities/main/a;->b:Lcom/zhangdan/app/c/a;

    return-void
.end method

.method public final onStop()V
    .locals 4

    invoke-super {p0}, Lcom/zhangdan/app/activities/a;->onStop()V

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/main/a;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/main/a;->o:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/zhangdan/app/service/SyncService;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->c()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    const-string v2, "user_id"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "token"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method
