.class public final Lcom/zhangdan/app/activities/detail/a/h;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field private b:Landroid/app/Activity;

.field private c:Lcom/zhangdan/app/data/model/j;

.field private d:Ljava/util/List;

.field private e:Lcom/zhangdan/app/activities/detail/a/a;

.field private f:Ljava/lang/String;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/zhangdan/app/data/model/j;Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/zhangdan/app/activities/detail/a/i;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/a/i;-><init>(Lcom/zhangdan/app/activities/detail/a/h;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/a/h;->g:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zhangdan/app/activities/detail/a/j;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/a/j;-><init>(Lcom/zhangdan/app/activities/detail/a/h;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/a/h;->a:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/a/h;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/detail/a/h;->c:Lcom/zhangdan/app/data/model/j;

    iput-object p3, p0, Lcom/zhangdan/app/activities/detail/a/h;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/h;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/a/h;->f:Ljava/lang/String;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "scan_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "scan_finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/h;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/h;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/detail/a/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/h;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/detail/a/h;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/a/h;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/detail/a/h;)Lcom/zhangdan/app/data/model/j;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/h;->c:Lcom/zhangdan/app/data/model/j;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/h;->e:Lcom/zhangdan/app/activities/detail/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/h;->e:Lcom/zhangdan/app/activities/detail/a/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/a/a;->b()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/h;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/h;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/h;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/h;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

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
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/detail/a/h;->getItemViewType(I)I

    move-result v1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/h;->b:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez v1, :cond_3

    const v2, 0x7f03009b

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/h;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/zhangdan/app/activities/detail/a/a;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/a/h;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/a/h;->c:Lcom/zhangdan/app/data/model/j;

    invoke-direct {v2, v3, p2, v4, v0}, Lcom/zhangdan/app/activities/detail/a/a;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/zhangdan/app/data/model/j;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/zhangdan/app/activities/detail/a/h;->e:Lcom/zhangdan/app/activities/detail/a/a;

    :cond_0
    :goto_0
    if-ne v1, v6, :cond_6

    const v0, 0x7f060253

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/h;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/h;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    :cond_1
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-object p2

    :cond_3
    if-ne v1, v6, :cond_4

    const v2, 0x7f0300a2

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f06024a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060252

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/h;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    if-ne v1, v5, :cond_0

    new-instance v2, Lcom/zhangdan/app/activities/detail/a/k;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/detail/a/k;-><init>(Lcom/zhangdan/app/activities/detail/a/h;)V

    const v3, 0x7f0300a1

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f06024f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/k;->a:Landroid/widget/TextView;

    const v0, 0x7f060250

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/k;->b:Landroid/widget/TextView;

    const v0, 0x7f060251

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/zhangdan/app/activities/detail/a/k;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    if-ne v1, v5, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/detail/a/k;

    add-int/lit8 v1, p1, -0x2

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/h;->d:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/h;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/h;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->h()I

    move-result v2

    if-ne v2, v5, :cond_b

    iget-object v2, v0, Lcom/zhangdan/app/activities/detail/a/k;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/a/h;->b:Landroid/app/Activity;

    const v4, 0x7f080157

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "\uffe5"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_9

    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    const-string v4, "$"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    iget-object v3, v0, Lcom/zhangdan/app/activities/detail/a/k;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->q()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/zhangdan/app/h/c;->a(J)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/zhangdan/app/activities/detail/a/k;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/a/h;->b:Landroid/app/Activity;

    const v4, 0x7f080099

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->k()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    if-ne v2, v6, :cond_7

    iget-object v2, v0, Lcom/zhangdan/app/activities/detail/a/k;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/a/h;->b:Landroid/app/Activity;

    const v4, 0x7f080158

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
