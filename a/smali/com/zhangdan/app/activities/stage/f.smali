.class public final Lcom/zhangdan/app/activities/stage/f;
.super Lcom/zhangdan/app/activities/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/activities/stage/c;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/HorizontalScrollView;

.field private g:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

.field private h:Ljava/text/DecimalFormat;

.field private i:[I

.field private j:Landroid/view/View$OnTouchListener;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zhangdan/app/activities/a;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->h:Ljava/text/DecimalFormat;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->i:[I

    new-instance v0, Lcom/zhangdan/app/activities/stage/g;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/stage/g;-><init>(Lcom/zhangdan/app/activities/stage/f;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->j:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/zhangdan/app/activities/stage/h;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/stage/h;-><init>(Lcom/zhangdan/app/activities/stage/f;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->k:Landroid/view/View$OnClickListener;

    return-void

    nop

    :array_0
    .array-data 0x4
        0xeat 0x0t 0x2t 0x7ft
        0xebt 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
        0xedt 0x0t 0x2t 0x7ft
        0xeet 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/stage/f;)Lcom/zhangdan/app/ZhangdanApplication;
    .locals 1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/f;->c()Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .locals 13

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->g:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->b()I

    move-result v8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    move v6, v0

    move v7, v1

    :goto_0
    if-lt v6, v8, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v0, 0x7f0602e1

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0602e2

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v2, 0xa

    if-ge v7, v2, :cond_1

    const-string v2, "0"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-lt v2, v10, :cond_2

    const v0, 0x7f08010d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\uffe5"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/zhangdan/app/activities/stage/f;->h:Ljava/text/DecimalFormat;

    invoke-virtual {v12, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-virtual {p0, v0, v2}, Lcom/zhangdan/app/activities/stage/f;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v7, 0x1

    const/16 v1, 0xc

    if-le v0, v1, :cond_3

    const/4 v1, 0x1

    add-int/lit8 v0, v3, 0x1

    :goto_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v3, v0

    move v7, v1

    goto/16 :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1

    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/e;->b(I)D

    move-result-wide v11

    add-double/2addr v4, v11

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    move v1, v0

    move v0, v3

    goto :goto_3
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->a:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->a:Landroid/view/View;

    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08010c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->a:Landroid/view/View;

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/f;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->a:Landroid/view/View;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/stage/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/stage/f;->b:Landroid/view/View;

    const v2, 0x7f060115

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/stage/f;->b:Landroid/view/View;

    const v2, 0x7f060116

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const v2, 0x7f08010f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/stage/f;->b:Landroid/view/View;

    const v3, 0x7f0600a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/stage/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v10, v1, Landroid/util/DisplayMetrics;->density:F

    const-wide/16 v1, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v3, 0x0

    move v9, v3

    move-wide v14, v1

    move-wide v2, v14

    :goto_1
    if-lt v9, v11, :cond_3

    new-instance v1, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/stage/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-direct {v1, v4, v0}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;-><init>(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/zhangdan/app/activities/stage/f;->g:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/stage/f;->f:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zhangdan/app/activities/stage/f;->g:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/stage/f;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\uffe5"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zhangdan/app/activities/stage/f;->h:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p1}, Lcom/zhangdan/app/activities/stage/f;->b(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zhangdan/app/activities/stage/f;->g:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/stage/f;->j:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/e;->g()D

    move-result-wide v4

    add-double v7, v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/stage/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300ce

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    const v2, 0x7f0602de

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0602df

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0602e0

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0602dd

    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/e;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "--"

    :goto_2
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/e;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "--"

    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "["

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f08010b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/e;->f()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/zhangdan/app/activities/stage/f;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/stage/f;->i:[I

    rem-int/lit8 v3, v9, 0x5

    aget v2, v2, v3

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Lcom/zhangdan/app/activities/stage/i;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lcom/zhangdan/app/activities/stage/i;-><init>(Lcom/zhangdan/app/activities/stage/f;Lcom/zhangdan/app/data/model/e;)V

    invoke-virtual {v12, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x4120

    mul-float/2addr v2, v10

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v2, 0x4120

    mul-float/2addr v2, v10

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v2, 0x4120

    mul-float/2addr v2, v10

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/stage/f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v9, 0x1

    move-wide v2, v7

    move v9, v1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/e;->e()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/e;->d()Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method

.method public final d_()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->b:Landroid/view/View;

    const v1, 0x7f060116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08010e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600ac

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->b:Landroid/view/View;

    const v1, 0x7f060113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/f;->b:Landroid/view/View;

    const v2, 0x7f060112

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0200f1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0200f2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const v0, 0x7f030079

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/stage/f;->b:Landroid/view/View;

    const v0, 0x7f0600ae

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->c:Landroid/widget/TextView;

    const v0, 0x7f060114

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f060111

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0600ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->f:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0600ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/f;->c_()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/zhangdan/app/activities/stage/b;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zhangdan/app/activities/stage/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Lcom/zhangdan/app/activities/stage/b;->a(Lcom/zhangdan/app/activities/stage/c;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/stage/b;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->c()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->a(I)V

    return-object v1
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/a;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->g:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->g:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/f;->g:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    :cond_0
    return-void
.end method

.method public final onDetach()V
    .locals 2

    invoke-super {p0}, Lcom/zhangdan/app/activities/a;->onDetach()V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->c()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->a(I)V

    return-void
.end method
