.class public final Lcom/zhangdan/preferential/h;
.super Lcom/zhangdan/app/activities/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected b:Lcom/a/a/a/f/b;

.field protected c:Lcom/a/a/a/a;

.field private d:I

.field private e:Landroid/widget/ListView;

.field private f:Lcom/zhangdan/preferential/i;

.field private g:Lcom/zhangdan/preferential/widget/e;

.field private h:Landroid/view/LayoutInflater;

.field private i:Lcom/zhangdan/preferential/a/ab;

.field private j:Lcom/zhangdan/preferential/a/f;

.field private k:Lcom/zhangdan/preferential/a/o;

.field private l:Lcom/zhangdan/preferential/a/i;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/h;->d:I

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/h;)Lcom/zhangdan/preferential/widget/e;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/h;->g:Lcom/zhangdan/preferential/widget/e;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/preferential/h;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/h;->b:Lcom/a/a/a/f/b;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/h;->c:Lcom/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a;->a()Lcom/a/a/a/e/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/a/e/b;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/preferential/h;)Lcom/zhangdan/preferential/a/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/h;->j:Lcom/zhangdan/preferential/a/f;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/preferential/h;)Lcom/zhangdan/preferential/a/o;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/h;->k:Lcom/zhangdan/preferential/a/o;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/preferential/h;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/preferential/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/preferential/h;)Lcom/zhangdan/preferential/i;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/h;->f:Lcom/zhangdan/preferential/i;

    return-object v0
.end method

.method static synthetic f(Lcom/zhangdan/preferential/h;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/preferential/h;->d:I

    return v0
.end method

.method static synthetic g(Lcom/zhangdan/preferential/h;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/h;->h:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic h(Lcom/zhangdan/preferential/h;)Lcom/zhangdan/preferential/a/i;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/h;->l:Lcom/zhangdan/preferential/a/i;

    return-object v0
.end method

.method static synthetic i(Lcom/zhangdan/preferential/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zhangdan/preferential/h;->m:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030004

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/h;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/zhangdan/preferential/h;->a:Landroid/view/View;

    const v2, 0x7f060040

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Lcom/zhangdan/preferential/m;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/m;-><init>(Lcom/zhangdan/preferential/h;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/zhangdan/preferential/h;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lcom/zhangdan/preferential/h;->d:I

    check-cast p1, Landroid/view/ViewGroup;

    const v0, 0x7f060182

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f060183

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/zhangdan/preferential/h;->d:I

    if-nez v3, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget v0, p0, Lcom/zhangdan/preferential/h;->d:I

    if-nez v0, :cond_2

    new-instance v0, Lcom/zhangdan/preferential/m;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/m;-><init>(Lcom/zhangdan/preferential/h;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/zhangdan/preferential/l;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/l;-><init>(Lcom/zhangdan/preferential/h;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/zhangdan/preferential/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->e()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f060040 -> :sswitch_1
        0x7f060180 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/zhangdan/preferential/a/ab;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/a/ab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/h;->i:Lcom/zhangdan/preferential/a/ab;

    new-instance v0, Lcom/zhangdan/preferential/a/f;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/h;->j:Lcom/zhangdan/preferential/a/f;

    new-instance v0, Lcom/zhangdan/preferential/a/o;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/o;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/h;->k:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/a/i;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/i;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/h;->l:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->f()Lcom/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/h;->c:Lcom/a/a/a/a;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f02037c

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Landroid/content/Context;I)Lcom/a/a/a/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/h;->b:Lcom/a/a/a/f/b;

    iget-object v0, p0, Lcom/zhangdan/preferential/h;->b:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->a()V

    iget-object v0, p0, Lcom/zhangdan/preferential/h;->b:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->b()V

    new-instance v0, Lcom/zhangdan/preferential/widget/e;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/widget/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/h;->g:Lcom/zhangdan/preferential/widget/e;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/data/a;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/h;->m:Z

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/h;->h:Landroid/view/LayoutInflater;

    const v0, 0x7f03006b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f06017f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zhangdan/preferential/h;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/zhangdan/preferential/i;

    invoke-direct {v1, p0}, Lcom/zhangdan/preferential/i;-><init>(Lcom/zhangdan/preferential/h;)V

    iput-object v1, p0, Lcom/zhangdan/preferential/h;->f:Lcom/zhangdan/preferential/i;

    iget-object v1, p0, Lcom/zhangdan/preferential/h;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zhangdan/preferential/h;->f:Lcom/zhangdan/preferential/i;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/zhangdan/preferential/h;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zhangdan/preferential/h;->f:Lcom/zhangdan/preferential/i;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/zhangdan/app/activities/a;->onResume()V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f04000d

    const v2, 0x7f04000e

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method
