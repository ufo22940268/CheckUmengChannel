.class public final Lcom/zhangdan/preferential/e;
.super Lcom/zhangdan/app/activities/a;


# instance fields
.field protected b:Lcom/a/a/a/f/b;

.field protected c:Lcom/a/a/a/a;

.field private d:Lcom/zhangdan/preferential/a/f;

.field private e:Lcom/zhangdan/preferential/a/i;

.field private f:Landroid/view/ViewGroup;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/e;)Lcom/zhangdan/preferential/a/i;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/e;->e:Lcom/zhangdan/preferential/a/i;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/preferential/e;Lcom/zhangdan/preferential/data/model/b;)V
    .locals 5

    invoke-virtual {p0}, Lcom/zhangdan/preferential/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007c

    iget-object v2, p0, Lcom/zhangdan/preferential/e;->f:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/zhangdan/preferential/e;->g:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/zhangdan/preferential/e;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x7f06011d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/zhangdan/preferential/e;->b:Lcom/a/a/a/f/b;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/zhangdan/preferential/e;->c:Lcom/a/a/a/a;

    invoke-virtual {v2}, Lcom/a/a/a/a;->a()Lcom/a/a/a/e/b;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/a/a/a/e/b;->a(Landroid/widget/ImageView;)V

    const v0, 0x7f060149

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/preferential/e;)Lcom/zhangdan/preferential/a/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/e;->d:Lcom/zhangdan/preferential/a/f;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/z;->a(Landroid/app/Activity;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/zhangdan/preferential/e;->g:I

    invoke-virtual {p0}, Lcom/zhangdan/preferential/e;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/e;->f:Landroid/view/ViewGroup;

    new-instance v0, Lcom/zhangdan/preferential/f;

    invoke-direct {v0, p0, v2}, Lcom/zhangdan/preferential/f;-><init>(Lcom/zhangdan/preferential/e;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/zhangdan/preferential/a/f;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/e;->d:Lcom/zhangdan/preferential/a/f;

    new-instance v0, Lcom/zhangdan/preferential/a/i;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/i;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/e;->e:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->f()Lcom/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/e;->c:Lcom/a/a/a/a;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f02026c

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Landroid/content/Context;I)Lcom/a/a/a/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/e;->b:Lcom/a/a/a/f/b;

    iget-object v0, p0, Lcom/zhangdan/preferential/e;->b:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->a()V

    iget-object v0, p0, Lcom/zhangdan/preferential/e;->b:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->b()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03004f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
