.class public Lcom/zhangdan/preferential/RecommendDetailActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lcom/zhangdan/preferential/a/o;

.field private c:Lcom/zhangdan/preferential/a/f;

.field private d:Lcom/zhangdan/preferential/a/i;

.field private e:Lcom/zhangdan/preferential/y;

.field private f:Landroid/widget/ListView;

.field private g:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/widget/ImageView;

.field private n:Lcom/a/a/a/f/b;

.field private o:Lcom/a/a/a/a;

.field private p:Lcom/zhangdan/preferential/a/q;

.field private q:Lcom/zhangdan/preferential/a/b;

.field private r:Lcom/zhangdan/preferential/a/ab;

.field private s:Lcom/zhangdan/preferential/data/model/i;

.field private t:I

.field private u:Ljava/lang/String;

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->t:I

    new-instance v0, Lcom/zhangdan/preferential/u;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/u;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->z:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lorg/json/JSONObject;
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->f()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/preferential/RecommendDetailActivity;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->t:I

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/RecommendDetailActivity;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->n:Lcom/a/a/a/f/b;

    invoke-virtual {v0, p2, p0}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->o:Lcom/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a;->a()Lcom/a/a/a/e/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/a/e/b;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/data/model/i;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->s:Lcom/zhangdan/preferential/data/model/i;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/data/model/j;)V
    .locals 1

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/j;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->x:Z

    iget-boolean v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->x:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->g()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->h()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lorg/json/JSONObject;
    .locals 5

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->d:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->b:Lcom/zhangdan/preferential/a/o;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->u:Ljava/lang/String;

    iget v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->t:I

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Lcom/zhangdan/preferential/data/model/d;

    const/16 v4, 0xc82

    invoke-direct {v3, v4}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    const-string v4, "id"

    invoke-virtual {v3, v4, v1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pageNo"

    invoke-virtual {v3, v1, v2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Lcom/zhangdan/preferential/data/model/d;->a(Lcom/zhangdan/preferential/data/model/Position;)V

    invoke-virtual {v3}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->g:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/a/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->c:Lcom/zhangdan/preferential/a/f;

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/y;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->e:Lcom/zhangdan/preferential/y;

    return-object v0
.end method

.method static synthetic f(Lcom/zhangdan/preferential/RecommendDetailActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()Lorg/json/JSONObject;
    .locals 6

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->d:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->b:Lcom/zhangdan/preferential/a/o;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->u:Ljava/lang/String;

    iget v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->t:I

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zhangdan/preferential/data/model/d;

    const/16 v5, 0xc82

    invoke-direct {v4, v5}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    const-string v5, "id"

    invoke-virtual {v4, v5, v1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pageNo"

    invoke-virtual {v4, v1, v2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;I)V

    invoke-virtual {v4, v3}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/zhangdan/preferential/data/model/d;->a(Lcom/zhangdan/preferential/data/model/Position;)V

    invoke-virtual {v4}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/zhangdan/preferential/RecommendDetailActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->m:Landroid/widget/ImageView;

    const v1, 0x7f0201e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic h(Lcom/zhangdan/preferential/RecommendDetailActivity;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->t:I

    return v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->m:Landroid/widget/ImageView;

    const v1, 0x7f0201e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic i(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/a/o;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->b:Lcom/zhangdan/preferential/a/o;

    return-object v0
.end method

.method static synthetic j(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/a/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->o:Lcom/a/a/a/a;

    return-object v0
.end method

.method static synthetic k(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/data/model/i;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->s:Lcom/zhangdan/preferential/data/model/i;

    return-object v0
.end method

.method static synthetic l(Lcom/zhangdan/preferential/RecommendDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->y:Z

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onBackPressed()V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->finish()V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->c(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->s:Lcom/zhangdan/preferential/data/model/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->p:Lcom/zhangdan/preferential/a/q;

    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->s:Lcom/zhangdan/preferential/data/model/i;

    invoke-virtual {v1, v2, v0}, Lcom/zhangdan/preferential/a/q;->a(Lcom/zhangdan/preferential/data/model/i;Landroid/graphics/Bitmap;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->s:Lcom/zhangdan/preferential/data/model/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->q:Lcom/zhangdan/preferential/a/b;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->s:Lcom/zhangdan/preferential/data/model/i;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/data/model/i;->h()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/a/b;->a([Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-boolean v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->x:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->r:Lcom/zhangdan/preferential/a/ab;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->s:Lcom/zhangdan/preferential/data/model/i;

    iget-object v2, v2, Lcom/zhangdan/preferential/data/model/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/a/ab;->c(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->g()V

    iput-boolean v3, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->x:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->r:Lcom/zhangdan/preferential/a/ab;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->s:Lcom/zhangdan/preferential/data/model/i;

    iget-object v2, v2, Lcom/zhangdan/preferential/data/model/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/a/ab;->d(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->x:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060037 -> :sswitch_0
        0x7f060316 -> :sswitch_2
        0x7f060317 -> :sswitch_3
        0x7f060318 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f060317

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300ea

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->setContentView(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->a:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/zhangdan/preferential/a/o;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/o;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->b:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/a/f;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->c:Lcom/zhangdan/preferential/a/f;

    new-instance v0, Lcom/zhangdan/preferential/a/i;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/i;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->d:Lcom/zhangdan/preferential/a/i;

    new-instance v0, Lcom/zhangdan/preferential/a/q;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->p:Lcom/zhangdan/preferential/a/q;

    new-instance v0, Lcom/zhangdan/preferential/a/b;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->q:Lcom/zhangdan/preferential/a/b;

    new-instance v0, Lcom/zhangdan/preferential/a/ab;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/ab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->r:Lcom/zhangdan/preferential/a/ab;

    invoke-static {p0}, Lcom/zhangdan/preferential/data/a;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->y:Z

    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->f()Lcom/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->o:Lcom/a/a/a/a;

    const v0, 0x7f02037c

    invoke-static {p0, v0}, Lcom/a/a/a/f/b;->a(Landroid/content/Context;I)Lcom/a/a/a/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->n:Lcom/a/a/a/f/b;

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->n:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->b()V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "prom_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->v:I

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->w:I

    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->h:Landroid/view/View;

    const v0, 0x7f060151

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->i:Landroid/widget/ImageView;

    const v0, 0x7f0602e9

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f060313

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->g:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->g:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->z:Lcom/handmark/pulltorefresh/library/j;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Lcom/handmark/pulltorefresh/library/j;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->g:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->q()V

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->g:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->i()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->f:Landroid/widget/ListView;

    const v0, 0x7f060314

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->k:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->l:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->l:Landroid/view/ViewGroup;

    const v1, 0x7f06011d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->m:Landroid/widget/ImageView;

    new-instance v0, Lcom/zhangdan/preferential/y;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/y;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->e:Lcom/zhangdan/preferential/y;

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->e:Lcom/zhangdan/preferential/y;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->e:Lcom/zhangdan/preferential/y;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    const v0, 0x7f060318

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060316

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Lcom/zhangdan/preferential/RecommendDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/zhangdan/preferential/w;

    invoke-direct {v0, p0, v3}, Lcom/zhangdan/preferential/w;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;B)V

    new-array v1, v2, [Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->f()Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/w;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->k:Landroid/view/View;

    invoke-virtual {v3, v1, v0}, Landroid/view/View;->scrollTo(II)V

    if-le p4, v4, :cond_0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-gt v0, v4, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x2

    if-lt p4, v0, :cond_2

    if-ne p2, v4, :cond_2

    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v3, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->w:I

    sub-int v0, v3, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->w:I

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    const/4 v0, 0x0

    :goto_2
    const/high16 v1, 0x437f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity;->j:Landroid/widget/TextView;

    const v2, 0xffffff

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    if-ne p2, v4, :cond_5

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
