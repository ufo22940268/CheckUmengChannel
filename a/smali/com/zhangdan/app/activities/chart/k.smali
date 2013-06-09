.class public final Lcom/zhangdan/app/activities/chart/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/List;

.field private e:Landroid/view/View;

.field private f:Landroid/support/v4/app/Fragment;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;

.field private l:Lcom/zhangdan/app/activities/chart/a/b;

.field private m:Lcom/zhangdan/app/activities/chart/c/c;

.field private n:Lcom/zhangdan/app/activities/chart/c/d;

.field private o:Ljava/lang/String;

.field private p:Landroid/view/View$OnClickListener;

.field private q:Lcom/zhangdan/app/activities/chart/u;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v4/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zhangdan/app/activities/chart/c/c;

    invoke-direct {v0}, Lcom/zhangdan/app/activities/chart/c/c;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->m:Lcom/zhangdan/app/activities/chart/c/c;

    new-instance v0, Lcom/zhangdan/app/activities/chart/c/d;

    invoke-direct {v0}, Lcom/zhangdan/app/activities/chart/c/d;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->n:Lcom/zhangdan/app/activities/chart/c/d;

    new-instance v0, Lcom/zhangdan/app/activities/chart/l;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/l;-><init>(Lcom/zhangdan/app/activities/chart/k;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->p:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zhangdan/app/activities/chart/m;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/chart/m;-><init>(Lcom/zhangdan/app/activities/chart/k;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->q:Lcom/zhangdan/app/activities/chart/u;

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/k;->e:Landroid/view/View;

    iput-object p2, p0, Lcom/zhangdan/app/activities/chart/k;->f:Landroid/support/v4/app/Fragment;

    const v0, 0x7f06018e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->g:Landroid/widget/TextView;

    const v0, 0x7f060193

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->h:Landroid/widget/TextView;

    const v0, 0x7f060194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->i:Landroid/widget/TextView;

    const v0, 0x7f060195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->j:Landroid/widget/TextView;

    const v0, 0x7f060192

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->k:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/chart/k;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/chart/k;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/chart/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/chart/k;->a:Ljava/util/List;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/chart/k;->b:Ljava/util/List;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/chart/k;->c:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/chart/k;->f:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zhangdan/app/activities/chart/k;->g:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/chart/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/chart/k;->c:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/chart/k;->b:Ljava/util/List;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/zhangdan/app/activities/chart/k;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/chart/k;->f:Landroid/support/v4/app/Fragment;

    const v4, 0x7f08019b

    invoke-virtual {v2, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/chart/k;->g:Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/chart/k;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1}, Lcom/zhangdan/app/activities/chart/k;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/activities/chart/b/d;

    new-instance v11, Lcom/zhangdan/app/activities/chart/b/d;

    invoke-direct {v11}, Lcom/zhangdan/app/activities/chart/b/d;-><init>()V

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/b/d;->a()I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/zhangdan/app/activities/chart/b/d;->a(I)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/b/d;->d()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/b/d;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v6, v3

    move-wide v7, v4

    :cond_6
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    :goto_4
    invoke-virtual {v11, v7, v8}, Lcom/zhangdan/app/activities/chart/b/d;->a(D)V

    invoke-virtual {v11, v6}, Lcom/zhangdan/app/activities/chart/b/d;->b(I)V

    invoke-virtual {v11, v12}, Lcom/zhangdan/app/activities/chart/b/d;->a(Ljava/util/List;)V

    if-lez v6, :cond_4

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/zhangdan/app/activities/chart/b/e;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/chart/b/e;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/chart/b/e;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v5, v4

    move v4, v2

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz v4, :cond_6

    new-instance v2, Lcom/zhangdan/app/activities/chart/b/e;

    invoke-direct {v2}, Lcom/zhangdan/app/activities/chart/b/e;-><init>()V

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/chart/b/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/chart/b/e;->a(Ljava/lang/String;)V

    int-to-double v15, v5

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Lcom/zhangdan/app/activities/chart/b/e;->a(D)V

    invoke-virtual {v2, v4}, Lcom/zhangdan/app/activities/chart/b/e;->a(I)V

    invoke-virtual {v2, v14}, Lcom/zhangdan/app/activities/chart/b/e;->a(Ljava/util/List;)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-double v2, v5

    add-double/2addr v7, v2

    add-int v2, v6, v4

    move v6, v2

    goto :goto_3

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/activities/chart/b/a;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/b/a;->a()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/activities/chart/b/a;

    int-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/b/a;->c()D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v5, v0

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/chart/b/a;->b()I

    move-result v2

    add-int/2addr v2, v4

    move v4, v2

    goto :goto_6

    :cond_c
    move v6, v3

    move-wide v7, v4

    goto/16 :goto_4
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v0, "#0.00"

    invoke-direct {v5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/k;->m:Lcom/zhangdan/app/activities/chart/c/c;

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v3, v0

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->i:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/zhangdan/app/activities/chart/k;->f:Landroid/support/v4/app/Fragment;

    const v7, 0x7f080190

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/k;->f:Landroid/support/v4/app/Fragment;

    const v4, 0x7f080194

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->f:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/zhangdan/app/data/db/b/p;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/k;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/k;->f:Landroid/support/v4/app/Fragment;

    const v4, 0x7f080195

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->l:Lcom/zhangdan/app/activities/chart/a/b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/zhangdan/app/activities/chart/a/b;

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/k;->f:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/zhangdan/app/activities/chart/a/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->l:Lcom/zhangdan/app/activities/chart/a/b;

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->k:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/k;->l:Lcom/zhangdan/app/activities/chart/a/b;

    invoke-virtual {v0, v1}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    return-void

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/d;->d()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v8, p0, Lcom/zhangdan/app/activities/chart/k;->n:Lcom/zhangdan/app/activities/chart/c/d;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/d;->b()D

    move-result-wide v7

    add-double/2addr v3, v7

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/d;->c()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->l:Lcom/zhangdan/app/activities/chart/a/b;

    invoke-virtual {v0, p1}, Lcom/zhangdan/app/activities/chart/a/b;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/chart/k;)Lcom/zhangdan/app/activities/chart/u;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->q:Lcom/zhangdan/app/activities/chart/u;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/chart/k;)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->f:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/chart/k;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->c:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->f:Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->e:Landroid/view/View;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->g:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->h:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->i:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->j:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->k:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->l:Lcom/zhangdan/app/activities/chart/a/b;

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/k;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/zhangdan/app/activities/chart/k;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/zhangdan/app/activities/chart/k;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/zhangdan/app/activities/chart/k;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->e:Landroid/view/View;

    const v1, 0x7f06018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/k;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iput-object v2, p0, Lcom/zhangdan/app/activities/chart/k;->o:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/zhangdan/app/activities/chart/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->k:Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->e:Landroid/view/View;

    const v1, 0x7f060196

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->l:Lcom/zhangdan/app/activities/chart/a/b;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->l:Lcom/zhangdan/app/activities/chart/a/b;

    invoke-virtual {v0, p3}, Lcom/zhangdan/app/activities/chart/a/b;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->l:Lcom/zhangdan/app/activities/chart/a/b;

    invoke-virtual {v0, p3}, Lcom/zhangdan/app/activities/chart/a/b;->d(I)I

    move-result v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->l:Lcom/zhangdan/app/activities/chart/a/b;

    invoke-virtual {v0, p3}, Lcom/zhangdan/app/activities/chart/a/b;->e(I)I

    move-result v0

    if-eq v1, v2, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/k;->l:Lcom/zhangdan/app/activities/chart/a/b;

    invoke-virtual {v2, v1, v0}, Lcom/zhangdan/app/activities/chart/a/b;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/e;

    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/k;->l:Lcom/zhangdan/app/activities/chart/a/b;

    invoke-virtual {v2, v1}, Lcom/zhangdan/app/activities/chart/a/b;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/chart/b/d;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "user_name"

    iget-object v4, p0, Lcom/zhangdan/app/activities/chart/k;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "year"

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/chart/b/d;->a()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "month"

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/e;->e()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->f:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/zhangdan/app/activities/chart/ConsumeCategoryActvity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->a:Ljava/util/List;

    sput-object v0, Lcom/zhangdan/app/activities/chart/a;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->b:Ljava/util/List;

    sput-object v0, Lcom/zhangdan/app/activities/chart/a;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->c:Ljava/util/ArrayList;

    sput-object v0, Lcom/zhangdan/app/activities/chart/a;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->d:Ljava/util/List;

    sput-object v0, Lcom/zhangdan/app/activities/chart/a;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/k;->f:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
