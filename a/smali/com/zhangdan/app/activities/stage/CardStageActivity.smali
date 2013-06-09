.class public Lcom/zhangdan/app/activities/stage/CardStageActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Lcom/zhangdan/app/data/model/e;

.field private d:Ljava/text/DecimalFormat;

.field private e:[I

.field private f:Lcom/zhangdan/app/activities/stage/CardStageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->d:Ljava/text/DecimalFormat;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->e:[I

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


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060039

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->setContentView(I)V

    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f02038b

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f0601da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    const-string v1, "bill_stage"

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/ZhangdanApplication;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/e;

    iput-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->c:Lcom/zhangdan/app/data/model/e;

    const-string v1, "bill_stage"

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/ZhangdanApplication;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->c:Lcom/zhangdan/app/data/model/e;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "bill_stage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/e;

    iput-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->c:Lcom/zhangdan/app/data/model/e;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->c:Lcom/zhangdan/app/data/model/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->c:Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/e;->f()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->c:Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/e;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/app/activities/stage/d;

    invoke-direct {v1}, Lcom/zhangdan/app/activities/stage/d;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->c:Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->c:Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]\u5206\u671f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0600ad

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->c:Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/e;->a()I

    move-result v1

    invoke-static {v1}, Lcom/zhangdan/app/data/a;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f0600ae

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uffe5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->d:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->c:Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/e;->g()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0600a9

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0600ab

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/zhangdan/app/activities/stage/CardStageView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->c:Lcom/zhangdan/app/data/model/e;

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/app/activities/stage/CardStageView;-><init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/e;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->f:Lcom/zhangdan/app/activities/stage/CardStageView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->f:Lcom/zhangdan/app/activities/stage/CardStageView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    const v0, 0x7f0600aa

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->c:Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/e;->b()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const v2, 0x7f0600ac

    const/4 v1, 0x0

    move v6, v1

    move v7, v2

    :goto_0
    if-lt v6, v9, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/d;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300d0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v2, 0x7f0602dd

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0602e3

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0602e0

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0602e2

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->e:[I

    rem-int/lit8 v12, v6, 0x5

    aget v11, v11, v12

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f08010b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/d;->c()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    invoke-virtual {p0, v2, v3}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\uffe5"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->d:Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/d;->e()D

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/\u671f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/stage/CardStageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4120

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/high16 v3, 0x4120

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/high16 v3, 0x4120

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v10, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0, v10, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v7, v2

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->f:Lcom/zhangdan/app/activities/stage/CardStageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->f:Lcom/zhangdan/app/activities/stage/CardStageView;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/stage/CardStageView;->a()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "bill_stage"

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/CardStageActivity;->c:Lcom/zhangdan/app/data/model/e;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
