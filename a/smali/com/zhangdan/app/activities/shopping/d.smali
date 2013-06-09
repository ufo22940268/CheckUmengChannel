.class public final Lcom/zhangdan/app/activities/shopping/d;
.super Lza/co/immedia/pinnedheaderlistview/c;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/text/SimpleDateFormat;

.field private d:Ljava/util/List;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[Ljava/lang/String;

.field private k:Lcom/a/a/a/f/b;

.field private l:Lcom/a/a/a/a;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/c;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->c:Ljava/text/SimpleDateFormat;

    iput v2, p0, Lcom/zhangdan/app/activities/shopping/d;->e:I

    iput v2, p0, Lcom/zhangdan/app/activities/shopping/d;->f:I

    new-instance v0, Lcom/zhangdan/app/activities/shopping/e;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/shopping/e;-><init>(Lcom/zhangdan/app/activities/shopping/d;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->m:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zhangdan/app/activities/shopping/f;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/shopping/f;-><init>(Lcom/zhangdan/app/activities/shopping/d;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->n:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->b:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/shopping/d;->g:I

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/shopping/d;->h:I

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/shopping/d;->i:I

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->j:[Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    const v1, 0x7f020391

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Landroid/content/Context;I)Lcom/a/a/a/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->k:Lcom/a/a/a/f/b;

    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->f()Lcom/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->l:Lcom/a/a/a/a;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/shopping/d;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/shopping/d;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/shopping/d;->e:I

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/shopping/d;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/shopping/d;->e:I

    return v0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/shopping/d;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/shopping/d;->f:I

    return-void
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/shopping/d;)I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/shopping/d;->f:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/shopping/c;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/c;->d()I

    move-result v0

    return v0
.end method

.method public final a(IILandroid/view/View;)Landroid/view/View;
    .locals 26

    if-nez p3, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/shopping/d;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f0300c9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    new-instance v24, Lcom/zhangdan/app/activities/shopping/g;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/shopping/g;-><init>(Lcom/zhangdan/app/activities/shopping/d;)V

    const v2, 0x7f0602c2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0602c4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0602c5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0602c6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0602c7

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0602c8

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0602c9

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0602cd

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0602ca

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    const v11, 0x7f0602cb

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v12, 0x7f0602cc

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v13, 0x7f0602d3

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v14, 0x7f0602d4

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    const v15, 0x7f0602c0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v16, 0x7f0602ce

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v17, 0x7f0602d0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const v18, 0x7f0602d2

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const v19, 0x7f0602d1

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f0602cf

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    const v20, 0x7f0602c1

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    const v21, 0x7f0602c3

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v22, v23

    check-cast v22, Lcom/zhangdan/app/widget/ShoppingSheetLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/zhangdan/app/activities/shopping/g;->a:Lcom/zhangdan/app/widget/ShoppingSheetLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/zhangdan/app/activities/shopping/g;->b:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/zhangdan/app/activities/shopping/g;->c:Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/zhangdan/app/activities/shopping/g;->d:Landroid/widget/TextView;

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/zhangdan/app/activities/shopping/g;->e:Landroid/widget/TextView;

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/zhangdan/app/activities/shopping/g;->f:Landroid/widget/TextView;

    move-object/from16 v0, v24

    iput-object v5, v0, Lcom/zhangdan/app/activities/shopping/g;->g:Landroid/widget/ImageView;

    move-object/from16 v0, v24

    iput-object v6, v0, Lcom/zhangdan/app/activities/shopping/g;->h:Landroid/widget/TextView;

    move-object/from16 v0, v24

    iput-object v7, v0, Lcom/zhangdan/app/activities/shopping/g;->i:Landroid/widget/TextView;

    move-object/from16 v0, v24

    iput-object v8, v0, Lcom/zhangdan/app/activities/shopping/g;->j:Landroid/widget/TextView;

    move-object/from16 v0, v24

    iput-object v9, v0, Lcom/zhangdan/app/activities/shopping/g;->k:Landroid/widget/TextView;

    move-object/from16 v0, v24

    iput-object v10, v0, Lcom/zhangdan/app/activities/shopping/g;->q:Landroid/widget/ImageView;

    move-object/from16 v0, v24

    iput-object v11, v0, Lcom/zhangdan/app/activities/shopping/g;->r:Landroid/widget/ImageView;

    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/zhangdan/app/activities/shopping/g;->s:Landroid/widget/ImageView;

    move-object/from16 v0, v24

    iput-object v13, v0, Lcom/zhangdan/app/activities/shopping/g;->u:Landroid/widget/ImageView;

    move-object/from16 v0, v24

    iput-object v14, v0, Lcom/zhangdan/app/activities/shopping/g;->v:Landroid/widget/ImageView;

    move-object/from16 v0, v24

    iput-object v15, v0, Lcom/zhangdan/app/activities/shopping/g;->t:Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/zhangdan/app/activities/shopping/g;->l:Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/zhangdan/app/activities/shopping/g;->o:Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/zhangdan/app/activities/shopping/g;->n:Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/zhangdan/app/activities/shopping/g;->m:Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/zhangdan/app/activities/shopping/g;->p:Landroid/view/View;

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/zhangdan/app/activities/shopping/g;->o:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zhangdan/app/activities/shopping/d;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/zhangdan/app/activities/shopping/g;->n:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zhangdan/app/activities/shopping/d;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/zhangdan/app/activities/shopping/g;->m:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zhangdan/app/activities/shopping/d;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/zhangdan/app/activities/shopping/g;->a:Lcom/zhangdan/app/widget/ShoppingSheetLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zhangdan/app/activities/shopping/d;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual/range {p0 .. p2}, Lcom/zhangdan/app/activities/shopping/d;->a(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/h;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/activities/shopping/g;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->f:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->i:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    const v6, 0x7f08016a

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->c()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->d()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->k()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->m()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->l:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->r:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->j:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/zhangdan/app/activities/shopping/d;->h:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->k:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/zhangdan/app/activities/shopping/d;->h:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->j:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->o()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->t()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->k:Landroid/widget/TextView;

    const v5, 0x7f080165

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_4
    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->o:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->n:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->m:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v5, v3, Lcom/zhangdan/app/activities/shopping/g;->o:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->v()I

    move-result v4

    if-nez v4, :cond_9

    const v4, 0x7f080139

    :goto_5
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, v3, Lcom/zhangdan/app/activities/shopping/g;->o:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->v()I

    move-result v4

    if-nez v4, :cond_a

    const v4, 0x7f02015c

    :goto_6
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v5, v3, Lcom/zhangdan/app/activities/shopping/g;->s:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->v()I

    move-result v4

    if-nez v4, :cond_b

    const/16 v4, 0x8

    :goto_7
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v3, Lcom/zhangdan/app/activities/shopping/g;->q:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->w()I

    move-result v4

    if-nez v4, :cond_c

    const/16 v4, 0x8

    :goto_8
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v3, Lcom/zhangdan/app/activities/shopping/g;->m:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->w()I

    move-result v4

    if-nez v4, :cond_d

    const/16 v4, 0x8

    :goto_9
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/zhangdan/app/activities/shopping/d;->a(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, p2

    if-ge v0, v4, :cond_f

    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/zhangdan/app/activities/shopping/d;->a(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/h;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/h;->s()I

    move-result v4

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->s()I

    move-result v5

    if-eq v4, v5, :cond_e

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->u:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->v:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_a
    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->p()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->c:Landroid/widget/ImageView;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->r:Landroid/widget/ImageView;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/zhangdan/app/activities/shopping/d;->e:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/zhangdan/app/activities/shopping/d;->f:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_10

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->p:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->a:Lcom/zhangdan/app/widget/ShoppingSheetLayout;

    const v5, 0x7f020351

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->setBackgroundResource(I)V

    :goto_b
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->s()I

    move-result v5

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->u()I

    move-result v6

    if-nez p2, :cond_12

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->t:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->t:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    const v8, 0x7f08016c

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v6, -0x1

    iget-object v5, v3, Lcom/zhangdan/app/activities/shopping/g;->d:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v3, Lcom/zhangdan/app/activities/shopping/g;->d:Landroid/widget/TextView;

    if-ltz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zhangdan/app/activities/shopping/d;->j:[Ljava/lang/String;

    aget-object v4, v7, v4

    :goto_c
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d
    const/4 v4, 0x1

    if-ne v6, v4, :cond_15

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->a:Lcom/zhangdan/app/widget/ShoppingSheetLayout;

    const v5, 0x7f020355

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->a(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->b:Landroid/widget/RelativeLayout;

    const v5, 0x7f020353

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->t:Landroid/widget/TextView;

    const v5, 0x7f020354

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->d:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/zhangdan/app/activities/shopping/d;->g:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_e
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->y()Lcom/zhangdan/app/data/model/m;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/m;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_1
    iget-object v2, v3, Lcom/zhangdan/app/activities/shopping/g;->h:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v3, Lcom/zhangdan/app/activities/shopping/g;->g:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v3, Lcom/zhangdan/app/activities/shopping/g;->g:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zhangdan/app/activities/shopping/d;->k:Lcom/a/a/a/f/b;

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_f
    return-object v23

    :cond_2
    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->f:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->l:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->l:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    const v6, 0x7f08009d

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/h;->m()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->r:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->j:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/zhangdan/app/activities/shopping/d;->i:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->k:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/zhangdan/app/activities/shopping/d;->g:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_5
    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->k:Landroid/widget/TextView;

    const v5, 0x7f080166

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_6
    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->k:Landroid/widget/TextView;

    const v5, 0x7f080167

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_7
    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->k:Landroid/widget/TextView;

    const v5, 0x7f080168

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_8
    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->k:Landroid/widget/TextView;

    const v5, 0x7f080169

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_9
    const v4, 0x7f08013a

    goto/16 :goto_5

    :cond_a
    const v4, 0x7f02015b

    goto/16 :goto_6

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_e
    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->u:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->v:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_f
    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->u:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->v:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_10
    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->p:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->a:Lcom/zhangdan/app/widget/ShoppingSheetLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->setBackgroundColor(I)V

    goto/16 :goto_b

    :cond_11
    const-string v4, ""

    goto/16 :goto_c

    :cond_12
    add-int/lit8 v4, p2, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/zhangdan/app/activities/shopping/d;->a(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/h;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/h;->s()I

    move-result v4

    if-ne v5, v4, :cond_13

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->t:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->d:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d

    :cond_13
    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->t:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->t:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    const v8, 0x7f08016c

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->d:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v4, v6, -0x1

    iget-object v5, v3, Lcom/zhangdan/app/activities/shopping/g;->d:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v3, Lcom/zhangdan/app/activities/shopping/g;->d:Landroid/widget/TextView;

    if-ltz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zhangdan/app/activities/shopping/d;->j:[Ljava/lang/String;

    aget-object v4, v7, v4

    :goto_10
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    :cond_14
    const-string v4, ""

    goto :goto_10

    :cond_15
    const/4 v4, 0x7

    if-ne v6, v4, :cond_16

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->a:Lcom/zhangdan/app/widget/ShoppingSheetLayout;

    const v5, 0x7f020350

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->a(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->b:Landroid/widget/RelativeLayout;

    const v5, 0x7f02034e

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->t:Landroid/widget/TextView;

    const v5, 0x7f02034f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->d:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/zhangdan/app/activities/shopping/d;->h:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_e

    :cond_16
    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->a:Lcom/zhangdan/app/widget/ShoppingSheetLayout;

    const v5, 0x7f02034d

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/widget/ShoppingSheetLayout;->a(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->b:Landroid/widget/RelativeLayout;

    const v5, 0x7f02034b

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->t:Landroid/widget/TextView;

    const v5, 0x7f02034c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->d:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/zhangdan/app/activities/shopping/d;->i:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_e

    :cond_17
    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->h:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->g:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->h:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    const v6, 0x7f08017e

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/m;->c()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/m;->b()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/zhangdan/app/activities/shopping/g;->g:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zhangdan/app/activities/shopping/d;->k:Lcom/a/a/a/f/b;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/m;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/shopping/d;->l:Lcom/a/a/a/a;

    invoke-virtual {v2}, Lcom/a/a/a/a;->a()Lcom/a/a/a/e/b;

    move-result-object v2

    iget-object v3, v3, Lcom/zhangdan/app/activities/shopping/g;->g:Landroid/widget/ImageView;

    invoke-interface {v2, v3}, Lcom/a/a/a/e/b;->a(Landroid/widget/ImageView;)V

    goto/16 :goto_f

    :cond_18
    move-object/from16 v23, p3

    goto/16 :goto_0
.end method

.method public final a(ILandroid/view/View;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300cb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0602c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/d;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/d;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/shopping/c;

    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    const v3, 0x7f08016b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/shopping/c;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/shopping/c;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/zhangdan/app/data/model/h;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->d:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/zhangdan/app/data/model/h;->e(I)V

    invoke-virtual {v3, p3}, Lcom/zhangdan/app/data/model/h;->h(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Lcom/zhangdan/app/data/model/h;->i(Ljava/lang/String;)V

    invoke-virtual {v3, p5}, Lcom/zhangdan/app/data/model/h;->d(I)V

    if-eqz p5, :cond_8

    :goto_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    invoke-static {v0, p5}, Lcom/zhangdan/app/data/db/b/g;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    invoke-static {v0, p5}, Lcom/zhangdan/app/data/db/b/g;->b(Landroid/content/Context;I)Lcom/zhangdan/app/data/model/http/p;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/p;->b()I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/p;->a()I

    move-result v0

    :cond_2
    invoke-static {v1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    const v2, 0x7f080112

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v3, v1}, Lcom/zhangdan/app/data/model/h;->g(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zhangdan/app/data/c;->a(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/zhangdan/app/data/model/h;->g(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/zhangdan/app/data/db/b/j;->a(Landroid/content/Context;Lcom/zhangdan/app/data/model/h;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    invoke-static {v0, v3, p6}, Lcom/zhangdan/app/data/db/b/k;->a(Landroid/content/Context;Lcom/zhangdan/app/data/model/h;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p6, v0}, Lcom/zhangdan/app/data/db/b/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zhangdan.app.mail_account_update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/d;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/d;->notifyDataSetChanged()V

    move-object v2, v3

    goto/16 :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/shopping/c;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/c;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    move-object v0, v1

    :goto_4
    if-nez v0, :cond_9

    move-object v1, v0

    goto/16 :goto_1

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/h;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->a()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_5

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/h;->i()I

    move-result p5

    goto/16 :goto_3

    :cond_9
    move-object v3, v0

    goto/16 :goto_2
.end method

.method public final a(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/shopping/c;

    invoke-virtual {v0, p2}, Lcom/zhangdan/app/activities/shopping/c;->c(I)Lcom/zhangdan/app/data/model/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/shopping/d;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/zhangdan/app/data/model/h;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->e()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/h;->h(I)V

    invoke-virtual {v1, v7}, Lcom/zhangdan/app/data/model/h;->i(I)V

    invoke-virtual {v1, v5}, Lcom/zhangdan/app/data/model/h;->j(I)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iget-object v8, p0, Lcom/zhangdan/app/activities/shopping/d;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x7

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/data/model/h;->l(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    :goto_2
    if-nez v0, :cond_1

    new-instance v0, Lcom/zhangdan/app/activities/shopping/c;

    invoke-direct {v0}, Lcom/zhangdan/app/activities/shopping/c;-><init>()V

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/activities/shopping/c;->a(I)V

    invoke-virtual {v0, v7}, Lcom/zhangdan/app/activities/shopping/c;->b(I)V

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/shopping/c;->a(Lcom/zhangdan/app/data/model/h;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/shopping/d;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_4
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/shopping/c;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/c;->a()I

    move-result v8

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/c;->b()I

    move-result v9

    if-ne v6, v8, :cond_3

    if-ne v7, v9, :cond_3

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/shopping/c;->a(Lcom/zhangdan/app/data/model/h;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    goto :goto_2
.end method

.method public final b()Ljava/util/List;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->d:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/shopping/c;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/shopping/c;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method
