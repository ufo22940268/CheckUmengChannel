.class public final Lcom/zhangdan/app/activities/chart/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Ljava/util/ArrayList;

.field private d:Landroid/view/View;

.field private e:Landroid/support/v4/app/Fragment;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ListView;

.field private i:Lcom/zhangdan/app/activities/chart/a/a;

.field private j:Ljava/util/Map;

.field private k:Ljava/util/Map;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Landroid/view/View$OnClickListener;

.field private p:Lcom/zhangdan/app/activities/chart/u;

.field private q:Lcom/zhangdan/app/activities/chart/r;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v4/app/Fragment;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->k:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->l:Ljava/lang/String;

    iput v1, p0, Lcom/zhangdan/app/activities/chart/g;->m:I

    iput v1, p0, Lcom/zhangdan/app/activities/chart/g;->n:I

    new-instance v0, Lcom/zhangdan/app/activities/chart/h;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/h;-><init>(Lcom/zhangdan/app/activities/chart/g;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->o:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zhangdan/app/activities/chart/i;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/i;-><init>(Lcom/zhangdan/app/activities/chart/g;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->p:Lcom/zhangdan/app/activities/chart/u;

    new-instance v0, Lcom/zhangdan/app/activities/chart/j;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/j;-><init>(Lcom/zhangdan/app/activities/chart/g;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->q:Lcom/zhangdan/app/activities/chart/r;

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/g;->d:Landroid/view/View;

    iput-object p2, p0, Lcom/zhangdan/app/activities/chart/g;->e:Landroid/support/v4/app/Fragment;

    const v0, 0x7f06018e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->f:Landroid/widget/TextView;

    const v0, 0x7f060191

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->g:Landroid/widget/TextView;

    const v0, 0x7f060192

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->h:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/chart/g;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/chart/g;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/chart/g;->m:I

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/chart/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/g;->l:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->a:Ljava/util/List;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->b:Ljava/util/List;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->c:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zhangdan/app/activities/chart/g;->m:I

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zhangdan/app/activities/chart/g;->n:I

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/chart/g;->f:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->c:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->g:Landroid/widget/TextView;

    const v2, 0x7f08019b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->b:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/chart/g;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->e:Landroid/support/v4/app/Fragment;

    const v3, 0x7f08019b

    invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    if-nez p1, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/chart/g;->f:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->c:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/zhangdan/app/activities/chart/g;->m:I

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zhangdan/app/activities/chart/g;->n:I

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->g:Landroid/widget/TextView;

    const v2, 0x7f08019b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    :goto_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/zhangdan/app/activities/chart/g;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->e:Landroid/support/v4/app/Fragment;

    const v3, 0x7f08019b

    invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->f:Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/zhangdan/app/activities/chart/g;->m:I

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zhangdan/app/activities/chart/g;->n:I

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->g:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/chart/g;->e:Landroid/support/v4/app/Fragment;

    const v3, 0x7f080191

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/zhangdan/app/activities/chart/g;->m:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/zhangdan/app/activities/chart/g;->m:I

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zhangdan/app/activities/chart/g;->n:I

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/chart/g;->g:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/chart/g;->e:Landroid/support/v4/app/Fragment;

    const v3, 0x7f080192

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/zhangdan/app/activities/chart/g;->m:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/zhangdan/app/activities/chart/g;->n:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/chart/b/d;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/zhangdan/app/activities/chart/g;->m:I

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/b/d;->a()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zhangdan/app/activities/chart/g;->m:I

    if-ne v2, v3, :cond_5

    :cond_b
    new-instance v10, Lcom/zhangdan/app/activities/chart/b/d;

    invoke-direct {v10}, Lcom/zhangdan/app/activities/chart/b/d;-><init>()V

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/b/d;->a()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/zhangdan/app/activities/chart/b/d;->a(I)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/b/d;->d()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/b/d;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v5, v2

    move-wide v6, v3

    :cond_c
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    :goto_7
    invoke-virtual {v10, v6, v7}, Lcom/zhangdan/app/activities/chart/b/d;->a(D)V

    invoke-virtual {v10, v5}, Lcom/zhangdan/app/activities/chart/b/d;->b(I)V

    invoke-virtual {v10, v11}, Lcom/zhangdan/app/activities/chart/b/d;->a(Ljava/util/List;)V

    if-lez v5, :cond_5

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_d
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/zhangdan/app/activities/chart/b/e;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/zhangdan/app/activities/chart/g;->n:I

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/b/e;->e()I

    move-result v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zhangdan/app/activities/chart/g;->n:I

    if-ne v1, v3, :cond_c

    :cond_e
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/b/e;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    if-nez p1, :cond_10

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/b/e;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_f
    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v4, v3

    move v3, v1

    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_12

    if-eqz v3, :cond_c

    new-instance v1, Lcom/zhangdan/app/activities/chart/b/e;

    invoke-direct {v1}, Lcom/zhangdan/app/activities/chart/b/e;-><init>()V

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/b/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/chart/b/e;->a(Ljava/lang/String;)V

    int-to-double v14, v4

    invoke-virtual {v1, v14, v15}, Lcom/zhangdan/app/activities/chart/b/e;->a(D)V

    invoke-virtual {v1, v3}, Lcom/zhangdan/app/activities/chart/b/e;->a(I)V

    invoke-virtual {v1, v13}, Lcom/zhangdan/app/activities/chart/b/e;->a(Ljava/util/List;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-double v1, v4

    add-double/2addr v6, v1

    add-int v1, v5, v3

    move v5, v1

    goto :goto_6

    :cond_10
    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/b/e;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/chart/b/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/b/a;->a()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_12
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/chart/b/a;

    int-to-double v15, v4

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/b/a;->c()D

    move-result-wide v17

    add-double v15, v15, v17

    double-to-int v4, v15

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/b/a;->b()I

    move-result v1

    add-int/2addr v1, v3

    move v3, v1

    goto :goto_8

    :cond_13
    move v5, v2

    move-wide v6, v3

    goto/16 :goto_7
.end method

.method private a(Ljava/util/List;)V
    .locals 11

    const-wide/16 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/zhangdan/app/activities/chart/c/a;

    invoke-direct {v0}, Lcom/zhangdan/app/activities/chart/c/a;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->i:Lcom/zhangdan/app/activities/chart/a/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/zhangdan/app/activities/chart/a/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/activities/chart/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->i:Lcom/zhangdan/app/activities/chart/a/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->i:Lcom/zhangdan/app/activities/chart/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    return-void

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/d;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/d;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/e;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/e;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/e;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/a;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/b;->c()D

    move-result-wide v9

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/b;->b()I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->j:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/p;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/p;->b()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->k:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/p;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-nez v1, :cond_6

    move-wide v1, v3

    :goto_3
    add-double/2addr v1, v9

    iget-object v9, p0, Lcom/zhangdan/app/activities/chart/g;->k:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/p;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->k:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/p;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-nez v1, :cond_8

    move-wide v1, v3

    :goto_4
    add-double/2addr v1, v9

    iget-object v9, p0, Lcom/zhangdan/app/activities/chart/g;->k:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/p;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_4

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v6, v6, v3

    if-lez v6, :cond_1

    new-instance v6, Lcom/zhangdan/app/activities/chart/b/b;

    invoke-direct {v6}, Lcom/zhangdan/app/activities/chart/b/b;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/zhangdan/app/activities/chart/b/b;->a(I)V

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/zhangdan/app/activities/chart/b/b;->a(D)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/p;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/p;->c()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v6, v0}, Lcom/zhangdan/app/activities/chart/b/b;->a(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const-string v0, ""

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->i:Lcom/zhangdan/app/activities/chart/a/a;

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/chart/a/a;->a(Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/chart/g;)Lcom/zhangdan/app/activities/chart/u;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->p:Lcom/zhangdan/app/activities/chart/u;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/chart/g;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/chart/g;->n:I

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/chart/g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/chart/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/chart/g;)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->e:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/chart/g;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/chart/g;)Lcom/zhangdan/app/activities/chart/r;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->q:Lcom/zhangdan/app/activities/chart/r;

    return-object v0
.end method

.method static synthetic f(Lcom/zhangdan/app/activities/chart/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/zhangdan/app/activities/chart/g;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/chart/g;->m:I

    return v0
.end method

.method static synthetic h(Lcom/zhangdan/app/activities/chart/g;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/chart/g;->n:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->a:Ljava/util/List;

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->j:Ljava/util/Map;

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->k:Ljava/util/Map;

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->e:Landroid/support/v4/app/Fragment;

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->d:Landroid/view/View;

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->f:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->h:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->i:Lcom/zhangdan/app/activities/chart/a/a;

    return-void
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 2

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/g;->l:Ljava/lang/String;

    iput p2, p0, Lcom/zhangdan/app/activities/chart/g;->m:I

    iput p3, p0, Lcom/zhangdan/app/activities/chart/g;->n:I

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->l:Ljava/lang/String;

    iget v1, p0, Lcom/zhangdan/app/activities/chart/g;->m:I

    iget v1, p0, Lcom/zhangdan/app/activities/chart/g;->n:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/chart/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 4

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/g;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/zhangdan/app/activities/chart/g;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/zhangdan/app/activities/chart/g;->c:Ljava/util/ArrayList;

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->d:Landroid/view/View;

    const v1, 0x7f06018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->d:Landroid/view/View;

    const v1, 0x7f060190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->l:Ljava/lang/String;

    iget v1, p0, Lcom/zhangdan/app/activities/chart/g;->m:I

    iget v1, p0, Lcom/zhangdan/app/activities/chart/g;->n:I

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/chart/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/g;->d:Landroid/view/View;

    const v1, 0x7f06018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/p;

    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/g;->j:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/p;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/b;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->e:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/b;->b()I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/g;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "category_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "username"

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/g;->l:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "year"

    iget v3, p0, Lcom/zhangdan/app/activities/chart/g;->m:I

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "month"

    iget v3, p0, Lcom/zhangdan/app/activities/chart/g;->n:I

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v0, Lcom/zhangdan/app/activities/shopping/AllShoppingSheetActivity;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
