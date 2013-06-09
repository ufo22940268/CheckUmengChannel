.class public final Lcom/zhangdan/app/activities/chart/n;
.super Landroid/support/v4/app/DialogFragment;


# instance fields
.field private a:Lcom/zhangdan/app/activities/chart/r;

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/zhangdan/app/activities/chart/q;

.field private f:I

.field private g:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private h:Landroid/widget/ExpandableListView$OnChildClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/chart/n;->f:I

    new-instance v0, Lcom/zhangdan/app/activities/chart/o;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/o;-><init>(Lcom/zhangdan/app/activities/chart/n;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/n;->g:Landroid/widget/ExpandableListView$OnGroupClickListener;

    new-instance v0, Lcom/zhangdan/app/activities/chart/p;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/p;-><init>(Lcom/zhangdan/app/activities/chart/n;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/n;->h:Landroid/widget/ExpandableListView$OnChildClickListener;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/chart/n;)Lcom/zhangdan/app/activities/chart/r;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/n;->a:Lcom/zhangdan/app/activities/chart/r;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/chart/n;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/chart/n;->f:I

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/chart/n;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/chart/n;->f:I

    return v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/chart/n;)Lcom/zhangdan/app/activities/chart/q;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/n;->e:Lcom/zhangdan/app/activities/chart/q;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/chart/n;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/chart/n;->c:I

    return v0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/chart/n;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/chart/n;->d:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/zhangdan/app/activities/chart/r;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/n;->a:Lcom/zhangdan/app/activities/chart/r;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/n;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "first_year"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zhangdan/app/activities/chart/n;->d:I

    iput v2, p0, Lcom/zhangdan/app/activities/chart/n;->c:I

    iget v1, p0, Lcom/zhangdan/app/activities/chart/n;->c:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/zhangdan/app/activities/chart/n;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/chart/n;->c:I

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/zhangdan/app/activities/chart/n;->setStyle(II)V

    return-void

    :cond_0
    iput v0, p0, Lcom/zhangdan/app/activities/chart/n;->b:I

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const v0, 0x7f030071

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v0, 0x7f06018a

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/zhangdan/app/activities/chart/q;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/n;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/zhangdan/app/activities/chart/n;->c:I

    iget v4, p0, Lcom/zhangdan/app/activities/chart/n;->b:I

    iget v5, p0, Lcom/zhangdan/app/activities/chart/n;->d:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zhangdan/app/activities/chart/q;-><init>(Lcom/zhangdan/app/activities/chart/n;Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/n;->e:Lcom/zhangdan/app/activities/chart/q;

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/n;->e:Lcom/zhangdan/app/activities/chart/q;

    invoke-virtual {v6, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/n;->g:Landroid/widget/ExpandableListView$OnGroupClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/n;->h:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    return-object v7
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    return-void
.end method
