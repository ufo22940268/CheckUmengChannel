.class public Lcom/zhangdan/app/activities/stage/StageSummaryActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/activities/stage/c;


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/HorizontalScrollView;

.field private g:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

.field private h:Ljava/text/DecimalFormat;

.field private i:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->h:Ljava/text/DecimalFormat;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->i:[I

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

.method private b(Ljava/util/List;)V
    .locals 13

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->g:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

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
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

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

    iget-object v12, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->h:Ljava/text/DecimalFormat;

    invoke-virtual {v12, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-virtual {p0, v0, v2}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->d:Landroid/widget/LinearLayout;

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
.method public final a(Ljava/util/List;)V
    .locals 17

    const v2, 0x7f060115

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f060116

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const v3, 0x7f08010f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_1
    const v3, 0x7f0600a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v11, v2, Landroid/util/DisplayMetrics;->density:F

    const-wide/16 v2, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v4, 0x0

    move v10, v4

    move-wide v15, v2

    move-wide v3, v15

    :goto_1
    if-lt v10, v12, :cond_2

    new-instance v2, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;-><init>(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->g:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->f:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->g:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    invoke-virtual {v2, v5}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->c:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\uffe5"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->h:Ljava/text/DecimalFormat;

    invoke-virtual {v6, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p1}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->b(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/e;->g()D

    move-result-wide v5

    add-double v8, v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300ce

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    const v3, 0x7f0602de

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0602df

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0602e0

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0602dd

    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/e;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "--"

    :goto_2
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/e;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "--"

    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "["

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f08010b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/e;->f()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->i:[I

    rem-int/lit8 v4, v10, 0x5

    aget v3, v3, v4

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v3, Lcom/zhangdan/app/activities/stage/e;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/zhangdan/app/activities/stage/e;-><init>(Lcom/zhangdan/app/activities/stage/StageSummaryActivity;Lcom/zhangdan/app/data/model/e;)V

    invoke-virtual {v13, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x4120

    mul-float/2addr v3, v11

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v3, 0x4120

    mul-float/2addr v3, v11

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v3, 0x4120

    mul-float/2addr v3, v11

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v10, 0x1

    move-wide v3, v8

    move v10, v2

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/e;->e()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/e;->d()Ljava/lang/String;

    move-result-object v7

    goto :goto_3
.end method

.method public final d_()V
    .locals 2

    const v0, 0x7f060116

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08010e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600ac

    if-ne v0, v1, :cond_2

    const v0, 0x7f060113

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f060112

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0200f1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0200f2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060088

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->setContentView(I)V

    const v0, 0x7f0600ae

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f060114

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f060111

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0600ab

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->f:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0600ac

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060088

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/app/activities/stage/b;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/stage/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Lcom/zhangdan/app/activities/stage/b;->a(Lcom/zhangdan/app/activities/stage/c;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/stage/b;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->g:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/StageSummaryActivity;->g:Lcom/zhangdan/app/activities/stage/BillStageSummaryView;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/stage/BillStageSummaryView;->a()V

    :cond_0
    return-void
.end method
