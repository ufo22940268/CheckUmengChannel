.class public Lcom/zhangdan/preferential/SpecificRecommendActivity;
.super Lcom/zhangdan/preferential/t;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/preferential/a/j;


# instance fields
.field private i:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private j:Landroid/widget/ListView;

.field private k:Lcom/zhangdan/preferential/bk;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:[I

.field private o:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/preferential/t;-><init>()V

    new-instance v0, Lcom/zhangdan/preferential/bg;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/bg;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->o:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lcom/zhangdan/preferential/bk;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->k:Lcom/zhangdan/preferential/bk;

    return-object v0
.end method

.method private a(I)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->f:Lcom/zhangdan/preferential/a/o;

    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->n:[I

    const-string v3, ""

    invoke-static {v0, v1, p1, v3, v2}, Lcom/zhangdan/preferential/a/o;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[I)Lorg/json/JSONObject;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/preferential/SpecificRecommendActivity;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->l:I

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->e:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->f:Lcom/zhangdan/preferential/a/o;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/o;->a(Lcom/zhangdan/preferential/data/model/Position;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->c:Lcom/zhangdan/preferential/a/f;

    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->c:Lcom/zhangdan/preferential/a/f;

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/a/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->k(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->m:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/preferential/SpecificRecommendActivity;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->l:I

    return v0
.end method

.method static synthetic e(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lorg/json/JSONObject;
    .locals 1

    iget v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->l:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final e_()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->A()V

    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->e:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    new-instance v0, Lcom/zhangdan/preferential/bi;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/bi;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/bi;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f060040
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/preferential/t;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300ff

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->n:[I

    const v0, 0x7f060313

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->i()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->j:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->o:Lcom/handmark/pulltorefresh/library/j;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Lcom/handmark/pulltorefresh/library/j;)V

    new-instance v0, Lcom/zhangdan/preferential/bk;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/bk;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->k:Lcom/zhangdan/preferential/bk;

    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->k:Lcom/zhangdan/preferential/bk;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->k:Lcom/zhangdan/preferential/bk;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f06007a

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f060040

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->e:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->e:Lcom/zhangdan/preferential/a/i;

    invoke-static {p0}, Lcom/zhangdan/preferential/a/i;->a(Lcom/zhangdan/preferential/a/j;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/zhangdan/preferential/bi;

    invoke-direct {v0, p0, v2}, Lcom/zhangdan/preferential/bi;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/bi;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/zhangdan/preferential/t;->onResume()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UPDATE_POSITION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/zhangdan/preferential/t;->onStop()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UPDATE_POSITION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
