.class public final Lcom/zhangdan/app/activities/main/c/a;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/text/DecimalFormat;

.field private c:Landroid/text/style/AbsoluteSizeSpan;

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    const v0, 0x7f0c005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/c/a;->b:Ljava/text/DecimalFormat;

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/c/a;->c:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/zhangdan/app/activities/main/c/a;->d:F

    iput-object p2, p0, Lcom/zhangdan/app/activities/main/c/a;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/c/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/c/a;->a:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/c/a;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/main/c/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/c/a;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/c/a;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f030062

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/c/a;->setContentView(I)V

    const v1, 0x7f060164

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f06008a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/main/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zhangdan/app/activities/main/c/a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    const/4 v3, 0x0

    move v10, v3

    :goto_0
    const/4 v3, 0x3

    if-ge v10, v3, :cond_0

    if-lt v10, v11, :cond_1

    :cond_0
    const/4 v1, 0x3

    if-gt v11, v1, :cond_b

    const v1, 0x7f060165

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const v1, 0x7f060088

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/c/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zhangdan/app/activities/main/c/a;->a:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/j;

    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/main/c/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03007a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    const v4, 0x7f0601a8

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0601a9

    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0601aa

    invoke-virtual {v12, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0601ab

    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0601ac

    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0601ad

    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->H()I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "---"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "---"

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/main/c/a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080076

    const/4 v4, 0x1

    new-array v13, v4, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->F()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "---"

    :goto_4
    aput-object v4, v13, v14

    invoke-virtual {v5, v6, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v4

    if-nez v4, :cond_6

    const v4, 0x7f080070

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    const v4, 0x7f080077

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v13

    invoke-virtual {v5, v4, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->s()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f08009f

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zhangdan/app/activities/main/c/a;->c:Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x2

    if-ge v10, v3, :cond_2

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/activities/main/c/a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f02039a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x4120

    move-object/from16 v0, p0

    iget v6, v0, Lcom/zhangdan/app/activities/main/c/a;->d:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v5, 0x4120

    move-object/from16 v0, p0

    iget v6, v0, Lcom/zhangdan/app/activities/main/c/a;->d:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->F()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_7

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_9

    :cond_7
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->i()F

    move-result v4

    float-to-double v13, v4

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->I()D

    move-result-wide v15

    sub-double/2addr v13, v15

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->J()D

    move-result-wide v15

    sub-double/2addr v13, v15

    double-to-float v4, v13

    const/4 v7, 0x0

    cmpg-float v7, v4, v7

    if-gez v7, :cond_8

    const/4 v4, 0x0

    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zhangdan/app/activities/main/c/a;->b:Ljava/text/DecimalFormat;

    const v13, 0x461c4000

    div-float/2addr v4, v13

    float-to-double v13, v4

    invoke-virtual {v7, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, "\u4e07"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->i()F

    move-result v4

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v7

    sub-float/2addr v4, v7

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->v()F

    move-result v7

    sget-object v13, Lcom/zhangdan/app/h/f;->a:Lcom/zhangdan/app/h/f;

    invoke-virtual {v13}, Lcom/zhangdan/app/h/f;->b()F

    move-result v13

    mul-float/2addr v7, v13

    sub-float/2addr v4, v7

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->A()F

    move-result v7

    add-float/2addr v4, v7

    float-to-double v13, v4

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->I()D

    move-result-wide v15

    sub-double/2addr v13, v15

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->J()D

    move-result-wide v15

    sub-double/2addr v13, v15

    double-to-float v4, v13

    const/4 v7, 0x0

    cmpg-float v7, v4, v7

    if-gez v7, :cond_a

    const/4 v4, 0x0

    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zhangdan/app/activities/main/c/a;->b:Ljava/text/DecimalFormat;

    const v13, 0x461c4000

    div-float/2addr v4, v13

    float-to-double v13, v4

    invoke-virtual {v7, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, "\u4e07"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :cond_b
    new-instance v1, Lcom/zhangdan/app/activities/main/c/b;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/zhangdan/app/activities/main/c/b;-><init>(Lcom/zhangdan/app/activities/main/c/a;)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1
.end method
