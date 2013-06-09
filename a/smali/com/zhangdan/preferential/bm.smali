.class public final Lcom/zhangdan/preferential/bm;
.super Lcom/zhangdan/app/activities/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/preferential/a/j;


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/view/View;

.field private e:Lcom/zhangdan/preferential/a/o;

.field private f:Lcom/zhangdan/preferential/a/f;

.field private g:Lcom/zhangdan/preferential/a/i;

.field private h:Landroid/app/Activity;

.field private i:Lcom/zhangdan/preferential/bo;

.field private j:Lcom/zhangdan/preferential/bp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/bm;)Lcom/zhangdan/preferential/a/o;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bm;->e:Lcom/zhangdan/preferential/a/o;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/preferential/bm;)Lcom/zhangdan/preferential/a/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bm;->f:Lcom/zhangdan/preferential/a/f;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/preferential/bm;)Lcom/zhangdan/preferential/bo;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bm;->i:Lcom/zhangdan/preferential/bo;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/preferential/bm;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bm;->h:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/preferential/bm;)Lcom/zhangdan/preferential/bp;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/bm;->j:Lcom/zhangdan/preferential/bp;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final e_()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zhangdan/preferential/bm;->g:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/preferential/bn;

    invoke-direct {v1, p0, v3}, Lcom/zhangdan/preferential/bn;-><init>(Lcom/zhangdan/preferential/bm;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/zhangdan/preferential/data/model/Position;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/bn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/bm;->h:Landroid/app/Activity;

    const v1, 0x7f06032b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/bm;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/zhangdan/preferential/bm;->h:Landroid/app/Activity;

    const v1, 0x7f06032c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/bm;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/zhangdan/preferential/bm;->h:Landroid/app/Activity;

    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/bm;->d:Landroid/view/View;

    new-instance v0, Lcom/zhangdan/preferential/bo;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/bo;-><init>(Lcom/zhangdan/preferential/bm;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/bm;->i:Lcom/zhangdan/preferential/bo;

    iget-object v0, p0, Lcom/zhangdan/preferential/bm;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/bm;->i:Lcom/zhangdan/preferential/bo;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/bm;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/bm;->i:Lcom/zhangdan/preferential/bo;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/zhangdan/preferential/bp;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/bp;-><init>(Lcom/zhangdan/preferential/bm;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/bm;->j:Lcom/zhangdan/preferential/bp;

    iget-object v0, p0, Lcom/zhangdan/preferential/bm;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/bm;->j:Lcom/zhangdan/preferential/bp;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/bm;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/bm;->j:Lcom/zhangdan/preferential/bp;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/bm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/bm;->g:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/bm;->g:Lcom/zhangdan/preferential/a/i;

    invoke-static {p0}, Lcom/zhangdan/preferential/a/i;->a(Lcom/zhangdan/preferential/a/j;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/zhangdan/preferential/bn;

    invoke-direct {v1, p0, v3}, Lcom/zhangdan/preferential/bn;-><init>(Lcom/zhangdan/preferential/bm;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/zhangdan/preferential/data/model/Position;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/bn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_OPEN_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/bm;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/bm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/z;->b(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f060027
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/zhangdan/preferential/bm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/bm;->h:Landroid/app/Activity;

    new-instance v0, Lcom/zhangdan/preferential/a/f;

    iget-object v1, p0, Lcom/zhangdan/preferential/bm;->h:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/bm;->f:Lcom/zhangdan/preferential/a/f;

    new-instance v0, Lcom/zhangdan/preferential/a/o;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/o;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/bm;->e:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/a/i;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/i;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/bm;->g:Lcom/zhangdan/preferential/a/i;

    const v0, 0x7f030101

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
