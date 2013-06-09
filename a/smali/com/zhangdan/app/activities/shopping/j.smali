.class final Lcom/zhangdan/app/activities/shopping/j;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/shopping/h;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/shopping/h;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 13

    const/4 v3, 0x2

    const/4 v12, 0x1

    const/4 v8, 0x0

    aget-object v1, p1, v8

    aget-object v0, p1, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v0}, Lcom/zhangdan/app/activities/shopping/h;->b(Lcom/zhangdan/app/activities/shopping/h;)Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    mul-int/lit8 v2, v2, 0x32

    iget-object v4, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v4}, Lcom/zhangdan/app/activities/shopping/h;->c(Lcom/zhangdan/app/activities/shopping/h;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v5}, Lcom/zhangdan/app/activities/shopping/h;->d(Lcom/zhangdan/app/activities/shopping/h;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v6}, Lcom/zhangdan/app/activities/shopping/h;->e(Lcom/zhangdan/app/activities/shopping/h;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v7}, Lcom/zhangdan/app/activities/shopping/h;->f(Lcom/zhangdan/app/activities/shopping/h;)Ljava/util/List;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/zhangdan/app/data/db/b/j;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v5, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->b()Lcom/zhangdan/app/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->d()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/zhangdan/app/data/db/b/r;->b(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/h;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/a;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/h;->a(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "--"

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/h;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v10, 0x40b3880000000000L

    cmpl-double v4, v1, v10

    if-gtz v4, :cond_6

    const-wide/16 v10, 0x0

    cmpg-double v4, v1, v10

    if-gez v4, :cond_9

    :cond_6
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/h;->k(I)V

    :goto_3
    invoke-virtual {v5, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/h;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->g()I

    move-result v1

    invoke-static {v1}, Lcom/zhangdan/app/h/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/h;->j(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->i()I

    move-result v2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->j()I

    move-result v1

    if-eqz v1, :cond_7

    move v2, v1

    :cond_7
    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v1}, Lcom/zhangdan/app/activities/shopping/h;->g(Lcom/zhangdan/app/activities/shopping/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    move v4, v8

    :goto_5
    if-lt v4, v10, :cond_d

    move v1, v8

    :goto_6
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    const v4, 0x7f080112

    invoke-virtual {v2, v4}, Lcom/zhangdan/app/activities/shopping/h;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/data/model/h;->g(Ljava/lang/String;)V

    :cond_8
    invoke-static {v1}, Lcom/zhangdan/app/data/c;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/h;->g(I)V

    goto/16 :goto_1

    :cond_9
    const-wide v10, 0x409f400000000000L

    cmpl-double v4, v1, v10

    if-lez v4, :cond_a

    const/4 v4, 0x4

    :try_start_1
    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/h;->k(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "0.00"

    invoke-virtual {v0, v12}, Lcom/zhangdan/app/data/model/h;->k(I)V

    goto :goto_4

    :cond_a
    const-wide v10, 0x407f400000000000L

    cmpl-double v4, v1, v10

    if-lez v4, :cond_b

    const/4 v4, 0x3

    :try_start_2
    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/h;->k(I)V

    goto :goto_3

    :cond_b
    const-wide/high16 v10, 0x4059

    cmpl-double v4, v1, v10

    if-lez v4, :cond_c

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/h;->k(I)V

    goto :goto_3

    :cond_c
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/h;->k(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v1}, Lcom/zhangdan/app/activities/shopping/h;->g(Lcom/zhangdan/app/activities/shopping/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/http/p;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/p;->a()I

    move-result v11

    if-ne v2, v11, :cond_e

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/p;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/data/model/h;->g(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/p;->b()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_11

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/p;->a()I

    move-result v1

    goto :goto_6

    :cond_e
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/zhangdan/app/data/model/h;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/m;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/m;->a()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->a()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_10

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/data/model/h;->a(Lcom/zhangdan/app/data/model/m;)V

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_11
    move v1, v2

    goto/16 :goto_6
.end method


# virtual methods
.method protected final bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/shopping/j;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/a/a/a/e/a/a;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v0}, Lcom/zhangdan/app/activities/shopping/h;->a(Lcom/zhangdan/app/activities/shopping/h;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0602d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/shopping/h;->a(Lcom/zhangdan/app/activities/shopping/h;Z)V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 6

    const v2, 0x7f0602d5

    const/4 v5, 0x1

    const/4 v4, 0x0

    check-cast p1, Ljava/util/List;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v0, v4}, Lcom/zhangdan/app/activities/shopping/h;->a(Lcom/zhangdan/app/activities/shopping/h;Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v0}, Lcom/zhangdan/app/activities/shopping/h;->a(Lcom/zhangdan/app/activities/shopping/h;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080113

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v0}, Lcom/zhangdan/app/activities/shopping/h;->h(Lcom/zhangdan/app/activities/shopping/h;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x32

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v1}, Lcom/zhangdan/app/activities/shopping/h;->i(Lcom/zhangdan/app/activities/shopping/h;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v0}, Lcom/zhangdan/app/activities/shopping/h;->a(Lcom/zhangdan/app/activities/shopping/h;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080115

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v0}, Lcom/zhangdan/app/activities/shopping/h;->j(Lcom/zhangdan/app/activities/shopping/h;)Lcom/zhangdan/app/activities/shopping/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/app/activities/shopping/d;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v0}, Lcom/zhangdan/app/activities/shopping/h;->k(Lcom/zhangdan/app/activities/shopping/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/zhangdan/app/activities/remark/i;

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v1}, Lcom/zhangdan/app/activities/shopping/h;->k(Lcom/zhangdan/app/activities/shopping/h;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/remark/i;-><init>(Ljava/lang/String;)V

    new-array v1, v5, [Ljava/util/List;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/i;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/i;->a(Lcom/zhangdan/app/activities/remark/j;)V

    new-instance v0, Lcom/zhangdan/app/activities/shopping/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v1}, Lcom/zhangdan/app/activities/shopping/h;->b(Lcom/zhangdan/app/activities/shopping/h;)Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v2}, Lcom/zhangdan/app/activities/shopping/h;->k(Lcom/zhangdan/app/activities/shopping/h;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-static {v3}, Lcom/zhangdan/app/activities/shopping/h;->l(Lcom/zhangdan/app/activities/shopping/h;)Z

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/zhangdan/app/activities/shopping/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V

    new-array v1, v5, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/shopping/a;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/j;->a:Lcom/zhangdan/app/activities/shopping/h;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/shopping/a;->a(Lcom/zhangdan/app/activities/shopping/b;)V

    :cond_1
    return-void
.end method
