.class public final Lcom/zhangdan/app/activities/detail/a/b;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field private b:Landroid/app/Activity;

.field private c:Lcom/zhangdan/app/data/model/j;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/lang/String;

.field private g:Lcom/zhangdan/app/activities/detail/a/a;

.field private h:Ljava/text/DecimalFormat;

.field private i:I

.field private j:Landroid/view/View$OnClickListener;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/zhangdan/app/data/model/j;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->h:Ljava/text/DecimalFormat;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->i:I

    new-instance v0, Lcom/zhangdan/app/activities/detail/a/c;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/a/c;-><init>(Lcom/zhangdan/app/activities/detail/a/b;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zhangdan/app/activities/detail/a/d;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/a/d;-><init>(Lcom/zhangdan/app/activities/detail/a/b;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->k:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zhangdan/app/activities/detail/a/e;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/a/e;-><init>(Lcom/zhangdan/app/activities/detail/a/b;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->a:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/detail/a/b;->c:Lcom/zhangdan/app/data/model/j;

    iput-object p3, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/zhangdan/app/activities/detail/a/b;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->f:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "scan_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "scan_finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/b;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/detail/a/b;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->i:I

    return v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/detail/a/b;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/detail/a/b;->i:I

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/detail/a/b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/a/b;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/detail/a/b;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/detail/a/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/detail/a/b;)Lcom/zhangdan/app/data/model/j;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->c:Lcom/zhangdan/app/data/model/j;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/h;->e(I)V

    invoke-virtual {v2, p3}, Lcom/zhangdan/app/data/model/h;->h(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Lcom/zhangdan/app/data/model/h;->i(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Lcom/zhangdan/app/data/model/h;->d(I)V

    if-eqz p5, :cond_6

    :goto_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    invoke-static {v0, p5}, Lcom/zhangdan/app/data/db/b/g;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    invoke-static {v1, p5}, Lcom/zhangdan/app/data/db/b/g;->b(Landroid/content/Context;I)Lcom/zhangdan/app/data/model/http/p;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/p;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/p;->b()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/p;->a()I

    move-result v1

    :cond_3
    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    const v3, 0x7f080112

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/h;->g(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/zhangdan/app/data/c;->a(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/h;->g(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/zhangdan/app/data/db/b/j;->a(Landroid/content/Context;Lcom/zhangdan/app/data/model/h;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    invoke-static {v0, v2, p6}, Lcom/zhangdan/app/data/db/b/k;->a(Landroid/content/Context;Lcom/zhangdan/app/data/model/h;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p6, v0}, Lcom/zhangdan/app/data/db/b/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zhangdan.app.mail_account_update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/a/b;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/h;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->a()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    move-object v2, v0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->i()I

    move-result p5

    goto :goto_2
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->g:Lcom/zhangdan/app/activities/detail/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->g:Lcom/zhangdan/app/activities/detail/a/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/a/a;->a()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->g:Lcom/zhangdan/app/activities/detail/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->g:Lcom/zhangdan/app/activities/detail/a/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/a/a;->b()V

    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->e:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 4

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    if-eqz v3, :cond_6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, -0x2

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p1, -0x2

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/detail/a/b;->getItemViewType(I)I

    move-result v1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez v1, :cond_2

    const v2, 0x7f03009b

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/zhangdan/app/activities/detail/a/a;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/b;->c:Lcom/zhangdan/app/data/model/j;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/a/b;->f:Ljava/lang/String;

    invoke-direct {v0, v2, p2, v5, v6}, Lcom/zhangdan/app/activities/detail/a/a;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/zhangdan/app/data/model/j;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->g:Lcom/zhangdan/app/activities/detail/a/a;

    :cond_0
    :goto_0
    if-ne v1, v11, :cond_10

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/detail/a/g;

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    iget-object v1, v0, Lcom/zhangdan/app/activities/detail/a/g;->j:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/zhangdan/app/activities/detail/a/g;->l:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/zhangdan/app/activities/detail/a/g;->k:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v2, p1, -0x2

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    if-ltz v2, :cond_1

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/h;

    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->p()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->h()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->f:Landroid/widget/TextView;

    const v6, -0xb05cf4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->f:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->o()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->e:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    const v7, 0x7f08009c

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->e()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->d()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->k()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->m()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->n:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget v5, p0, Lcom/zhangdan/app/activities/detail/a/b;->i:I

    if-ne v5, v2, :cond_a

    iget-object v2, v0, Lcom/zhangdan/app/activities/detail/a/g;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/zhangdan/app/activities/detail/a/g;->i:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/zhangdan/app/activities/detail/a/g;->a:Landroid/view/View;

    const v5, 0x7f020194

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_4
    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->v()I

    move-result v2

    if-nez v2, :cond_b

    const v2, 0x7f080139

    :goto_5
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->v()I

    move-result v2

    if-nez v2, :cond_c

    const v2, 0x7f02015c

    :goto_6
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->o:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->v()I

    move-result v2

    if-nez v2, :cond_d

    move v2, v3

    :goto_7
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->m:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->w()I

    move-result v2

    if-nez v2, :cond_e

    move v2, v3

    :goto_8
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/zhangdan/app/activities/detail/a/g;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->w()I

    move-result v1

    if-nez v1, :cond_f

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_a
    return-object p2

    :cond_2
    if-ne v1, v10, :cond_3

    const v2, 0x7f03009e

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f06024a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    if-ne v1, v11, :cond_4

    const v2, 0x7f03009c

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/zhangdan/app/activities/detail/a/g;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/detail/a/g;-><init>(Lcom/zhangdan/app/activities/detail/a/b;)V

    const v0, 0x7f060232

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->b:Landroid/widget/ImageView;

    const v0, 0x7f060237

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->c:Landroid/widget/TextView;

    const v0, 0x7f060238

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->d:Landroid/widget/TextView;

    const v0, 0x7f060239

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->e:Landroid/widget/TextView;

    const v0, 0x7f060233

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->f:Landroid/widget/TextView;

    const v0, 0x7f06023a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->g:Landroid/widget/TextView;

    const v0, 0x7f06023b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->h:Landroid/widget/ImageView;

    const v0, 0x7f06023c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->i:Landroid/view/View;

    const v0, 0x7f06023d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->j:Landroid/widget/TextView;

    const v0, 0x7f06023f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->k:Landroid/widget/TextView;

    const v0, 0x7f06023e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->l:Landroid/widget/TextView;

    const v0, 0x7f060234

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->m:Landroid/widget/ImageView;

    const v0, 0x7f060235

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->n:Landroid/widget/ImageView;

    const v0, 0x7f060236

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->o:Landroid/widget/ImageView;

    iget-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->j:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/b;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->k:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/b;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v2, Lcom/zhangdan/app/activities/detail/a/g;->l:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/b;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, v2, Lcom/zhangdan/app/activities/detail/a/g;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/b;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const v2, 0x7f03009d

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f060240

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060243

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "\uffe5"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/b;->h:Ljava/text/DecimalFormat;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/a/b;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->C()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060245

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "\uffe5"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/b;->h:Ljava/text/DecimalFormat;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/a/b;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->p()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "+$"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/b;->h:Ljava/text/DecimalFormat;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/a/b;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->x()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060247

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "\uffe5"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/b;->h:Ljava/text/DecimalFormat;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/a/b;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->B()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060249

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "\uffe5"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/b;->h:Ljava/text/DecimalFormat;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/a/b;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "+$"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/a/b;->h:Ljava/text/DecimalFormat;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/a/b;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->v()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    const v2, 0x7f0300a2

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f06024a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060252

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/b;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const v2, 0x7f0300a1

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/zhangdan/app/activities/detail/a/f;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/detail/a/f;-><init>(Lcom/zhangdan/app/activities/detail/a/b;)V

    const v0, 0x7f06024f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/f;->a:Landroid/widget/TextView;

    const v0, 0x7f060250

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/f;->b:Landroid/widget/TextView;

    const v0, 0x7f060251

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/f;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->f:Landroid/widget/TextView;

    const v6, -0x909091

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->g:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    const v7, 0x7f08009d

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->m()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/zhangdan/app/activities/detail/a/g;->n:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    iget-object v2, v0, Lcom/zhangdan/app/activities/detail/a/g;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/zhangdan/app/activities/detail/a/g;->i:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/zhangdan/app/activities/detail/a/g;->a:Landroid/view/View;

    const v5, 0x7f020193

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_4

    :cond_b
    const v2, 0x7f08013a

    goto/16 :goto_5

    :cond_c
    const v2, 0x7f02015b

    goto/16 :goto_6

    :cond_d
    move v2, v4

    goto/16 :goto_7

    :cond_e
    move v2, v4

    goto/16 :goto_8

    :cond_f
    move v3, v4

    goto/16 :goto_9

    :cond_10
    const/4 v0, 0x5

    if-ne v1, v0, :cond_17

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/detail/a/f;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 p1, v1, -0x4

    :cond_11
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->e:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v2

    if-ne v2, v11, :cond_16

    iget-object v2, v0, Lcom/zhangdan/app/activities/detail/a/f;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    const v5, 0x7f080157

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    :goto_b
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "\uffe5"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_14

    const-string v5, "+"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_14
    const-string v5, "$"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_15
    iget-object v3, v0, Lcom/zhangdan/app/activities/detail/a/f;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->q()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/zhangdan/app/h/c;->a(J)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/zhangdan/app/activities/detail/a/f;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    const v5, 0x7f080099

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v2, v6, v4

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->k()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v10

    invoke-virtual {v3, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_16
    if-ne v2, v10, :cond_12

    iget-object v2, v0, Lcom/zhangdan/app/activities/detail/a/f;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/a/b;->b:Landroid/app/Activity;

    const v5, 0x7f080158

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_17
    const/4 v0, 0x4

    if-ne v1, v0, :cond_1

    const v0, 0x7f060253

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->e:Ljava/util/List;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_19

    :cond_18
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_19
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
