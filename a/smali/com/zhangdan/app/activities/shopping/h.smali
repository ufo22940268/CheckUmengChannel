.class public final Lcom/zhangdan/app/activities/shopping/h;
.super Lcom/zhangdan/app/activities/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/zhangdan/app/activities/remark/j;
.implements Lcom/zhangdan/app/activities/shopping/b;
.implements Lcom/zhangdan/app/f/b;


# instance fields
.field private b:Landroid/view/View;

.field private c:Lcom/zhangdan/app/activities/shopping/d;

.field private d:Lcom/zhangdan/app/activities/shopping/j;

.field private e:Ljava/util/List;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Lcom/zhangdan/app/f/a;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/util/List;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/List;

.field private p:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/a;-><init>()V

    iput v0, p0, Lcom/zhangdan/app/activities/shopping/h;->g:I

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/shopping/h;->h:Z

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/shopping/h;->k:Z

    iput-object v1, p0, Lcom/zhangdan/app/activities/shopping/h;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/zhangdan/app/activities/shopping/h;->n:Ljava/lang/String;

    new-instance v0, Lcom/zhangdan/app/activities/shopping/i;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/shopping/i;-><init>(Lcom/zhangdan/app/activities/shopping/h;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->p:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/shopping/h;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/shopping/h;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zhangdan/app/activities/shopping/h;->h:Z

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/shopping/h;)Lcom/zhangdan/app/ZhangdanApplication;
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->c()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->c_()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/zhangdan/app/activities/shopping/j;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/shopping/j;-><init>(Lcom/zhangdan/app/activities/shopping/h;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/shopping/h;->d:Lcom/zhangdan/app/activities/shopping/j;

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/h;->d:Lcom/zhangdan/app/activities/shopping/j;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "50"

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/shopping/j;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    goto :goto_0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/shopping/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/shopping/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/shopping/h;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->l:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/shopping/h;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/zhangdan/app/activities/shopping/h;->g:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x32

    iget v1, p0, Lcom/zhangdan/app/activities/shopping/h;->f:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/zhangdan/app/activities/shopping/h;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zhangdan/app/activities/shopping/h;->g:I

    iget v0, p0, Lcom/zhangdan/app/activities/shopping/h;->g:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/shopping/h;->b(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/zhangdan/app/activities/shopping/h;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/zhangdan/app/activities/shopping/h;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/zhangdan/app/activities/shopping/h;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/shopping/h;->g:I

    return v0
.end method

.method static synthetic i(Lcom/zhangdan/app/activities/shopping/h;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/shopping/h;->f:I

    return v0
.end method

.method static synthetic j(Lcom/zhangdan/app/activities/shopping/h;)Lcom/zhangdan/app/activities/shopping/d;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->c:Lcom/zhangdan/app/activities/shopping/d;

    return-object v0
.end method

.method static synthetic k(Lcom/zhangdan/app/activities/shopping/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/zhangdan/app/activities/shopping/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/shopping/h;->k:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->a:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->a:Landroid/view/View;

    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080111

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->a:Landroid/view/View;

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/h;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->a:Landroid/view/View;

    return-object v0
.end method

.method public final a()V
    .locals 3

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->c()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->c()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/data/a/b;->a(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->c:Lcom/zhangdan/app/activities/shopping/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->c:Lcom/zhangdan/app/activities/shopping/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/d;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->c:Lcom/zhangdan/app/activities/shopping/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->c:Lcom/zhangdan/app/activities/shopping/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/d;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->c()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/zhangdan/app/ZhangdanApplication;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->i:Lcom/zhangdan/app/f/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->i:Lcom/zhangdan/app/f/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/f/a;->c()V

    :cond_2
    iput-object v7, p0, Lcom/zhangdan/app/activities/shopping/h;->i:Lcom/zhangdan/app/f/a;

    iput-object p1, p0, Lcom/zhangdan/app/activities/shopping/h;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->c:Lcom/zhangdan/app/activities/shopping/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->c:Lcom/zhangdan/app/activities/shopping/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/d;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->c:Lcom/zhangdan/app/activities/shopping/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/d;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/zhangdan/app/activities/remark/i;

    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/h;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/zhangdan/app/activities/remark/i;-><init>(Ljava/lang/String;)V

    new-array v2, v6, [Ljava/util/List;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/remark/i;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    invoke-virtual {v1, p0}, Lcom/zhangdan/app/activities/remark/i;->a(Lcom/zhangdan/app/activities/remark/j;)V

    new-instance v1, Lcom/zhangdan/app/activities/shopping/a;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->c()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/h;->j:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/zhangdan/app/activities/shopping/h;->k:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/zhangdan/app/activities/shopping/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V

    new-array v0, v6, [Ljava/lang/Void;

    aput-object v7, v0, v5

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/shopping/a;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    invoke-virtual {v1, p0}, Lcom/zhangdan/app/activities/shopping/a;->a(Lcom/zhangdan/app/activities/shopping/b;)V

    goto :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/a;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "custom_category_id"

    invoke-virtual {p3, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "store_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "remark"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "auto_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->c:Lcom/zhangdan/app/activities/shopping/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->c:Lcom/zhangdan/app/activities/shopping/d;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->c_()Lcom/zhangdan/app/data/model/l;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/zhangdan/app/activities/shopping/d;->a(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/zhangdan/app/data/model/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/h;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/zhangdan/app/activities/remark/i;

    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/h;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/zhangdan/app/activities/remark/i;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    aput-object v2, v0, v7

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/remark/i;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    invoke-virtual {v1, p0}, Lcom/zhangdan/app/activities/remark/i;->a(Lcom/zhangdan/app/activities/remark/j;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->b:Landroid/view/View;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/shopping/h;->e()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "category_id"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "username"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "year"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "month"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_4

    invoke-virtual {v4, v3, v7, v8}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->m:Ljava/lang/String;

    const/16 v0, 0xb

    const/16 v6, 0x1e

    invoke-virtual {v4, v3, v0, v6}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->n:Ljava/lang/String;

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/h;->m:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/h;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/db/b/g;->c(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->l:Ljava/util/List;

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/zhangdan/app/data/db/b/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->o:Ljava/util/List;

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v4, v3, v6, v8}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zhangdan/app/activities/shopping/h;->m:Ljava/lang/String;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v3, v0, v6}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->n:Ljava/lang/String;

    goto :goto_1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v4, 0x0

    const v0, 0x7f03006e

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->c_()Lcom/zhangdan/app/data/model/l;

    move-result-object v2

    if-eqz v2, :cond_0

    const v0, 0x7f060184

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const v3, 0x7f0300ca

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangdan/app/activities/shopping/h;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/h;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/h;->b:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/zhangdan/app/activities/shopping/d;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/zhangdan/app/activities/shopping/d;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/zhangdan/app/activities/shopping/h;->c:Lcom/zhangdan/app/activities/shopping/d;

    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/h;->c:Lcom/zhangdan/app/activities/shopping/d;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/data/db/b/j;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/shopping/h;->f:I

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/data/db/b/g;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->e:Ljava/util/List;

    iget v0, p0, Lcom/zhangdan/app/activities/shopping/h;->g:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/shopping/h;->b(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->c()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/zhangdan/app/f/a;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->c()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/zhangdan/app/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->i:Lcom/zhangdan/app/f/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->i:Lcom/zhangdan/app/f/a;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/f/a;->a(Lcom/zhangdan/app/f/b;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->i:Lcom/zhangdan/app/f/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/f/a;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->i:Lcom/zhangdan/app/f/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/f/a;->b()V

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v4, "card"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "weather_time"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/shopping/h;->k:Z

    :cond_2
    return-object v1

    :cond_3
    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/zhangdan/app/activities/a;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->i:Lcom/zhangdan/app/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->i:Lcom/zhangdan/app/f/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/f/a;->c()V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->d:Lcom/zhangdan/app/activities/shopping/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/h;->d:Lcom/zhangdan/app/activities/shopping/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/j;->e()Z

    iput-object v1, p0, Lcom/zhangdan/app/activities/shopping/h;->d:Lcom/zhangdan/app/activities/shopping/j;

    :cond_1
    iput-object v1, p0, Lcom/zhangdan/app/activities/shopping/h;->e:Ljava/util/List;

    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/shopping/h;->e()V

    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
