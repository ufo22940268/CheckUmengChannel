.class public final Lcom/zhangdan/app/activities/main/c/d;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/text/DecimalFormat;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    const v0, 0x7f0c005a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/c/d;->a:Ljava/text/DecimalFormat;

    iput-object p2, p0, Lcom/zhangdan/app/activities/main/c/d;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/c/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/c/d;->b:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/c/d;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/main/c/d;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030068

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/c/d;->setContentView(I)V

    const v0, 0x7f060088

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/c/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060174

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/c/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060176

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/main/c/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f060178

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/main/c/d;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f06017a

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/main/c/d;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f06017b

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/main/c/d;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f06017c

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/main/c/d;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/zhangdan/app/activities/main/c/d;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v8, v7

    move v7, v6

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "\uffe5"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/zhangdan/app/activities/main/c/d;->a:Ljava/text/DecimalFormat;

    float-to-double v10, v8

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/zhangdan/app/activities/main/c/d;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v9, v6

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "\uffe5"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/zhangdan/app/activities/main/c/d;->a:Ljava/text/DecimalFormat;

    float-to-double v11, v9

    invoke-virtual {v10, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sub-float v6, v8, v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\uffe5"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/zhangdan/app/activities/main/c/d;->a:Ljava/text/DecimalFormat;

    float-to-double v12, v6

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_5

    const v0, 0x7f060177

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/c/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/c/d;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v1, v0

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "\uffe5"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/zhangdan/app/activities/main/c/d;->a:Ljava/text/DecimalFormat;

    invoke-virtual {v6, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/c/d;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v0

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/zhangdan/app/activities/main/c/d;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\u5f20)\uffe5"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/zhangdan/app/activities/main/c/d;->a:Ljava/text/DecimalFormat;

    const v7, 0x461c4000

    div-float v7, v3, v7

    float-to-double v10, v7

    invoke-virtual {v6, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\u4e07"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sub-float v0, v3, v8

    add-float/2addr v0, v9

    float-to-double v3, v0

    sub-double v0, v3, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\uffe5"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/main/c/d;->a:Ljava/text/DecimalFormat;

    const-wide v6, 0x40c3880000000000L

    div-double/2addr v0, v6

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e07"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/main/c/d;->b:Ljava/util/List;

    return-void

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v10

    add-float/2addr v8, v10

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->m()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    move v7, v6

    goto/16 :goto_0

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v6

    add-float/2addr v6, v9

    move v9, v6

    goto/16 :goto_1

    :cond_4
    const/4 v12, 0x4

    if-ne v11, v12, :cond_1

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->A()F

    move-result v6

    add-float/2addr v6, v9

    move v9, v6

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v7, 0x0

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v6, 0x0

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f060175

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/c/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f060177

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/c/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f060179

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/main/c/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->I()D

    move-result-wide v10

    add-double/2addr v1, v10

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->J()D

    move-result-wide v10

    add-double v0, v1, v10

    move-wide v1, v0

    goto/16 :goto_3

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->i()F

    move-result v0

    add-float/2addr v0, v3

    move v3, v0

    goto/16 :goto_4
.end method

.method protected final onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method
