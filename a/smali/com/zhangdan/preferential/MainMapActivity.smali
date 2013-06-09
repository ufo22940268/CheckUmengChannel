.class public Lcom/zhangdan/preferential/MainMapActivity;
.super Lcom/baidu/mapapi/MapActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field static a:Lcom/baidu/mapapi/MapView;

.field static b:Lcom/baidu/mapapi/MapController;


# instance fields
.field protected c:Lcom/a/a/a/f/b;

.field protected d:Lcom/a/a/a/a;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/PopupWindow;

.field private m:Lcom/zhangdan/preferential/p;

.field private n:Lcom/zhangdan/preferential/widget/e;

.field private o:Landroid/widget/ArrayAdapter;

.field private p:Lcom/zhangdan/preferential/a/i;

.field private q:Lcom/baidu/mapapi/MyLocationOverlay;

.field private r:Lcom/zhangdan/preferential/a/f;

.field private s:Lcom/zhangdan/preferential/a/o;

.field private t:Z

.field private u:I

.field private v:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/mapapi/MapActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->q:Lcom/baidu/mapapi/MyLocationOverlay;

    const/4 v0, 0x1

    iput v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->u:I

    new-instance v0, Lcom/zhangdan/preferential/n;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/n;-><init>(Lcom/zhangdan/preferential/MainMapActivity;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->v:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/preferential/MainMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .locals 5

    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    iget-object v3, p0, Lcom/zhangdan/preferential/MainMapActivity;->j:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/zhangdan/preferential/MainMapActivity;->j:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/MainMapActivity;)V
    .locals 2

    const/16 v0, 0xb4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/MainMapActivity;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/MainMapActivity;Ljava/util/List;)V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->m:Lcom/zhangdan/preferential/p;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/p;->b()V

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->m:Lcom/zhangdan/preferential/p;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/p;->a()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->a:Lcom/baidu/mapapi/MapView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->m:Lcom/zhangdan/preferential/p;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->q:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->m:Lcom/zhangdan/preferential/p;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/p;->a()V

    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->invalidate()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/k;

    new-instance v2, Lcom/baidu/mapapi/OverlayItem;

    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/k;->s:Lcom/zhangdan/preferential/data/model/Position;

    invoke-static {v3}, Lcom/zhangdan/preferential/a/g;->a(Lcom/zhangdan/preferential/data/model/Position;)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v3

    const-string v4, "item"

    const-string v5, "item"

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/mapapi/OverlayItem;-><init>(Lcom/baidu/mapapi/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v0, Lcom/zhangdan/preferential/data/model/k;->g:I

    invoke-static {v3}, Lcom/zhangdan/preferential/a/g;->a(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/zhangdan/preferential/MainMapActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/zhangdan/preferential/MainMapActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v4, v6, v6, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/zhangdan/preferential/MainMapActivity;->m:Lcom/zhangdan/preferential/p;

    invoke-static {v3, v2, v0}, Lcom/zhangdan/preferential/p;->a(Lcom/zhangdan/preferential/p;Lcom/baidu/mapapi/OverlayItem;Lcom/zhangdan/preferential/data/model/k;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/zhangdan/preferential/MainMapActivity;)Lcom/zhangdan/preferential/a/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->r:Lcom/zhangdan/preferential/a/f;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/preferential/MainMapActivity;)Lcom/zhangdan/preferential/a/o;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->s:Lcom/zhangdan/preferential/a/o;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/preferential/MainMapActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/widget/ArrayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->o:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/zhangdan/preferential/MainMapActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->t:Z

    return v0
.end method

.method static synthetic g(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->k:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->n:Lcom/zhangdan/preferential/widget/e;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/e;->show()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->n:Lcom/zhangdan/preferential/widget/e;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/e;->dismiss()V

    return-void
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/16 v1, 0xb4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/MainMapActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->l:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, v3}, Lcom/zhangdan/preferential/MainMapActivity;->a(II)V

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->l:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v1}, Lcom/zhangdan/preferential/MainMapActivity;->a(II)V

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->l:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->p:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->b:Lcom/baidu/mapapi/MapController;

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->p:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->b()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MapController;->animateTo(Lcom/baidu/mapapi/GeoPoint;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/zhangdan/preferential/data/model/k;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/k;->a:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zhangdan.preferential.MIX_VIEW_SHOP_DETAIL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "shop_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/zhangdan/preferential/MainMapActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/zhangdan/preferential/o;

    invoke-direct {v0, p0, v3}, Lcom/zhangdan/preferential/o;-><init>(Lcom/zhangdan/preferential/MainMapActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    iget v2, p0, Lcom/zhangdan/preferential/MainMapActivity;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060037 -> :sswitch_0
        0x7f0602ef -> :sswitch_1
        0x7f0602f1 -> :sswitch_2
        0x7f0602f2 -> :sswitch_4
        0x7f0602f3 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/baidu/mapapi/MapActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300d7

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->setContentView(I)V

    new-instance v0, Lcom/zhangdan/preferential/a/i;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/i;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->p:Lcom/zhangdan/preferential/a/i;

    new-instance v0, Lcom/zhangdan/preferential/widget/e;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/widget/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->n:Lcom/zhangdan/preferential/widget/e;

    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->f()Lcom/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->d:Lcom/a/a/a/a;

    const/16 v0, 0x48

    invoke-static {p0, v0}, Lcom/zhangdan/preferential/a/d;->a(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x35

    invoke-static {p0, v1}, Lcom/zhangdan/preferential/a/d;->a(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f02037c

    invoke-static {v0, v1, v2}, Lcom/a/a/a/f/b;->a(III)Lcom/a/a/a/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->c:Lcom/a/a/a/f/b;

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->c:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->a()V

    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->j:Landroid/view/View;

    const v0, 0x7f0602ef

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->e:Landroid/view/View;

    const v0, 0x7f0602f0

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->g:Landroid/view/View;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d8

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->h:Landroid/widget/ListView;

    const v0, 0x7f0602f1

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0300bb

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->o:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->o:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->h:Landroid/widget/ListView;

    const/16 v2, 0x66

    invoke-static {p0, v2}, Lcom/zhangdan/preferential/a/d;->a(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0xc0

    invoke-static {p0, v3}, Lcom/zhangdan/preferential/a/d;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->l:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->l:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->l:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->l:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->v:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->l:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const v0, 0x7f0602f2

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/MainMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/MainMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/mapapi/BMapManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    const-string v2, "118A822A3605D14F287715C841F9490DB6CB2379"

    new-instance v3, Lcom/zhangdan/app/a;

    invoke-direct {v3}, Lcom/zhangdan/app/a;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mapapi/BMapManager;->init(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z

    :cond_0
    iget-object v0, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-super {p0, v0}, Lcom/baidu/mapapi/MapActivity;->initMapActivity(Lcom/baidu/mapapi/BMapManager;)Z

    const v0, 0x7f06007c

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/MainMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/MapView;

    sput-object v0, Lcom/zhangdan/preferential/MainMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/preferential/MainMapActivity;->b:Lcom/baidu/mapapi/MapController;

    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, v4}, Lcom/baidu/mapapi/MapView;->setDrawOverlayWhenZooming(Z)V

    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->b:Lcom/baidu/mapapi/MapController;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MapController;->setZoom(I)I

    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, v4}, Lcom/baidu/mapapi/MapView;->setDrawOverlayWhenZooming(Z)V

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->p:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->p:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->b()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/MapController;->setCenter(Lcom/baidu/mapapi/GeoPoint;)V

    :cond_1
    new-instance v0, Lcom/zhangdan/preferential/p;

    const v1, 0x7f02020d

    invoke-direct {p0, v1}, Lcom/zhangdan/preferential/MainMapActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/zhangdan/preferential/p;-><init>(Lcom/zhangdan/preferential/MainMapActivity;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->m:Lcom/zhangdan/preferential/p;

    new-instance v0, Lcom/baidu/mapapi/MyLocationOverlay;

    sget-object v1, Lcom/zhangdan/preferential/MainMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-direct {v0, p0, v1}, Lcom/baidu/mapapi/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/baidu/mapapi/MapView;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->q:Lcom/baidu/mapapi/MyLocationOverlay;

    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->q:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->q:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MyLocationOverlay;->enableMyLocation()Z

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->q:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MyLocationOverlay;->enableCompass()Z

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d9

    sget-object v2, Lcom/zhangdan/preferential/MainMapActivity;->a:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->k:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/zhangdan/preferential/MainMapActivity;->a:Lcom/baidu/mapapi/MapView;

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity;->k:Landroid/view/View;

    new-instance v2, Lcom/baidu/mapapi/MapView$LayoutParams;

    const/16 v3, 0x33

    invoke-direct {v2, v6, v6, v7, v3}, Lcom/baidu/mapapi/MapView$LayoutParams;-><init>(IILcom/baidu/mapapi/GeoPoint;I)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/zhangdan/preferential/a/f;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->r:Lcom/zhangdan/preferential/a/f;

    new-instance v0, Lcom/zhangdan/preferential/a/o;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/o;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->s:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/o;

    invoke-direct {v0, p0, v5}, Lcom/zhangdan/preferential/o;-><init>(Lcom/zhangdan/preferential/MainMapActivity;B)V

    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xb4

    invoke-direct {p0, v0, v3}, Lcom/zhangdan/preferential/MainMapActivity;->a(II)V

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->l:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->o:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/g;

    iget v0, v0, Lcom/zhangdan/preferential/data/model/g;->c:I

    if-nez v0, :cond_1

    move v0, v1

    :cond_1
    iput v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->u:I

    new-instance v2, Lcom/zhangdan/preferential/o;

    invoke-direct {v2, p0, v3}, Lcom/zhangdan/preferential/o;-><init>(Lcom/zhangdan/preferential/MainMapActivity;B)V

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {v2, v1}, Lcom/zhangdan/preferential/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/zhangdan/preferential/MainMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->stop()Z

    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onPause()V

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->q:Lcom/baidu/mapapi/MyLocationOverlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->q:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MyLocationOverlay;->disableMyLocation()V

    :cond_1
    invoke-static {p0}, Lcom/umeng/a/a;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/MainMapActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    iget-object v1, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->start()Z

    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->t:Z

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->q:Lcom/baidu/mapapi/MyLocationOverlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->q:Lcom/baidu/mapapi/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MyLocationOverlay;->enableMyLocation()Z

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->o:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/zhangdan/preferential/q;

    invoke-direct {v0, p0, v2}, Lcom/zhangdan/preferential/q;-><init>(Lcom/zhangdan/preferential/MainMapActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    invoke-static {p0}, Lcom/umeng/a/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/MainMapActivity;->t:Z

    return-void
.end method
