.class final Lcom/zhangdan/app/activities/newimport/j;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

.field private b:Ljava/util/List;

.field private c:Ljava/text/SimpleDateFormat;

.field private d:Ljava/text/SimpleDateFormat;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;Ljava/util/List;)V
    .locals 2

    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/j;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/j;->c:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/j;->d:Ljava/text/SimpleDateFormat;

    new-instance v0, Lcom/zhangdan/app/activities/newimport/k;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/newimport/k;-><init>(Lcom/zhangdan/app/activities/newimport/j;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/j;->e:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zhangdan/app/activities/newimport/n;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/newimport/n;-><init>(Lcom/zhangdan/app/activities/newimport/j;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/j;->f:Landroid/view/View$OnLongClickListener;

    iput-object p2, p0, Lcom/zhangdan/app/activities/newimport/j;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/newimport/j;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/j;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/j;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/j;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/newimport/j;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/l;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/j;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/j;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/j;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/j;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/l;

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----- getView-------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/j;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0602a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0602a5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0602a6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0602a3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v3, 0x7f0602a7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v5, Lcom/zhangdan/app/activities/newimport/p;

    invoke-direct {v5, p0}, Lcom/zhangdan/app/activities/newimport/p;-><init>(Lcom/zhangdan/app/activities/newimport/j;)V

    iput-object v0, v5, Lcom/zhangdan/app/activities/newimport/p;->b:Landroid/widget/ImageView;

    iput-object v1, v5, Lcom/zhangdan/app/activities/newimport/p;->c:Landroid/widget/TextView;

    iput-object v2, v5, Lcom/zhangdan/app/activities/newimport/p;->d:Landroid/widget/TextView;

    iput-object v4, v5, Lcom/zhangdan/app/activities/newimport/p;->a:Landroid/view/View;

    iput-object v3, v5, Lcom/zhangdan/app/activities/newimport/p;->e:Landroid/widget/TextView;

    iget-object v0, v5, Lcom/zhangdan/app/activities/newimport/p;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/j;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v5, Lcom/zhangdan/app/activities/newimport/p;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/j;->f:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "holder.imgAvatar="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/zhangdan/app/activities/newimport/p;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/newimport/p;

    iget-object v1, v0, Lcom/zhangdan/app/activities/newimport/p;->a:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/newimport/j;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/l;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/zhangdan/app/activities/newimport/p;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/j;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-static {v3}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->c(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Lcom/a/a/a/f/b;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/zhangdan/app/activities/newimport/j;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-virtual {v5}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/zhangdan/app/activities/newimport/p;->b:Landroid/widget/ImageView;

    const v3, 0x7f020091

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "qq"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/zhangdan/app/activities/newimport/p;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/j;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    const v4, 0x7f08012c

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, v0, Lcom/zhangdan/app/activities/newimport/p;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/j;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    const v4, 0x7f08016f

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/j;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/j;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/zhangdan/app/activities/newimport/p;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object p2

    :cond_2
    iget-object v3, v0, Lcom/zhangdan/app/activities/newimport/p;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/j;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-static {v4}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->c(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Lcom/a/a/a/f/b;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/newimport/j;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-virtual {v5}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/j;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->d(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Lcom/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/a/a;->a()Lcom/a/a/a/e/b;

    move-result-object v2

    iget-object v3, v0, Lcom/zhangdan/app/activities/newimport/p;->b:Landroid/widget/ImageView;

    invoke-interface {v2, v3}, Lcom/a/a/a/e/b;->a(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_3
    const-string v2, "sina"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/zhangdan/app/activities/newimport/p;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/j;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    const v4, 0x7f08012e

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->c()Ljava/lang/String;

    move-result-object v2

    const-string v4, "quick"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-static {v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/j;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    const v3, 0x7f080134

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_6
    iget-object v3, v0, Lcom/zhangdan/app/activities/newimport/p;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zhangdan/app/activities/newimport/j;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    const v5, 0x7f08012d

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/p;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
