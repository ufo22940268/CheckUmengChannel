.class public final Lcom/zhangdan/app/activities/main/p;
.super Lcom/zhangdan/app/activities/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Lcom/zhangdan/app/activities/main/a/d;

.field private c:I

.field private d:Lcom/zhangdan/app/receiver/a;

.field private e:Lza/co/immedia/pinnedheaderlistview/a;

.field private f:Lcom/zhangdan/app/receiver/c;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/main/p;->c:I

    new-instance v0, Lcom/zhangdan/app/activities/main/q;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/q;-><init>(Lcom/zhangdan/app/activities/main/p;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/p;->e:Lza/co/immedia/pinnedheaderlistview/a;

    new-instance v0, Lcom/zhangdan/app/activities/main/r;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/r;-><init>(Lcom/zhangdan/app/activities/main/p;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/p;->f:Lcom/zhangdan/app/receiver/c;

    new-instance v0, Lcom/zhangdan/app/activities/main/s;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/main/s;-><init>(Lcom/zhangdan/app/activities/main/p;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/p;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/main/p;)Lcom/zhangdan/app/activities/main/a/d;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/p;->b:Lcom/zhangdan/app/activities/main/a/d;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/main/p;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/main/p;->c:I

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/main/p;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/p;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/main/p;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/main/p;->c:I

    return v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/main/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/p;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/p;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/p;->a:Landroid/view/View;

    const v2, 0x7f060043

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/AvatarView;

    invoke-static {v1, v0}, Lcom/zhangdan/app/e/c;->a(Landroid/content/Context;Lcom/zhangdan/app/widget/AvatarView;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/p;->a:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/p;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/p;->a:Landroid/view/View;

    const v1, 0x7f060042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/p;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/p;->a:Landroid/view/View;

    const v1, 0x7f06003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/p;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/p;->e()V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/main/p;->f()V

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/p;->c_()Lcom/zhangdan/app/data/model/l;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/p;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/p;->a:Landroid/view/View;

    const v1, 0x7f060047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08016f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/zhangdan/app/activities/main/p;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/p;->a:Landroid/view/View;

    const v3, 0x7f060045

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/l;->l()Ljava/lang/String;

    move-result-object v2

    const-string v3, "quick"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const v1, 0x7f080134

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/main/p;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/p;->a:Landroid/view/View;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/p;->b:Lcom/zhangdan/app/activities/main/a/d;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/zhangdan/app/activities/main/p;->c:I

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/p;->b:Lcom/zhangdan/app/activities/main/a/d;

    invoke-virtual {v0, p1}, Lcom/zhangdan/app/activities/main/a/d;->b(I)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/zhangdan/app/data/a/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/p;->a:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/p;->a:Landroid/view/View;

    const v3, 0x7f060046

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/p;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0xd

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "new_left_menu_bottom_search"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/p;->b:Lcom/zhangdan/app/activities/main/a/d;

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/main/a/d;->b(I)V

    iget v1, p0, Lcom/zhangdan/app/activities/main/p;->c:I

    if-eq v1, v2, :cond_0

    new-instance v1, Lcom/zhangdan/preferential/an;

    invoke-direct {v1}, Lcom/zhangdan/preferential/an;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->d()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f060027
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/zhangdan/app/activities/main/a/d;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/main/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/p;->b:Lcom/zhangdan/app/activities/main/a/d;

    new-instance v0, Lcom/zhangdan/app/receiver/a;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/receiver/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/p;->d:Lcom/zhangdan/app/receiver/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/p;->d:Lcom/zhangdan/app/receiver/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/p;->f:Lcom/zhangdan/app/receiver/c;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/c;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0300dd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f06008a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/p;->b:Lcom/zhangdan/app/activities/main/a/d;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/p;->e:Lza/co/immedia/pinnedheaderlistview/a;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v1
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/a;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/p;->d:Lcom/zhangdan/app/receiver/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/p;->d:Lcom/zhangdan/app/receiver/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/p;->d:Lcom/zhangdan/app/receiver/a;

    :cond_0
    return-void
.end method
