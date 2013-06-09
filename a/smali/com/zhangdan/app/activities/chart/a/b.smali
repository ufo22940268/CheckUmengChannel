.class public final Lcom/zhangdan/app/activities/chart/a/b;
.super Lza/co/immedia/pinnedheaderlistview/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:D

.field private d:I

.field private e:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/c;-><init>()V

    const-wide v0, 0x3f847ae147ae147bL

    iput-wide v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->c:D

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->e:Ljava/text/DecimalFormat;

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/a/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zhangdan/app/activities/chart/a/b;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/zhangdan/app/activities/chart/a/b;->b()V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/chart/a/b;->d()V

    return-void
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/d;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/e;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/e;->b()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/zhangdan/app/activities/chart/a/b;->c:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/e;->b()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/zhangdan/app/activities/chart/a/b;->c:D

    goto :goto_0
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/high16 v3, 0x4160

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v3, 0x4296

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, v1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\uffe5"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/a/b;->e:Ljava/text/DecimalFormat;

    iget-wide v4, p0, Lcom/zhangdan/app/activities/chart/a/b;->c:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/d;->e()I

    move-result v0

    return v0
.end method

.method public final a(IILandroid/view/View;)Landroid/view/View;
    .locals 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300a9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    const v0, 0x7f060265

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060267

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f060266

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/chart/a/b;->a(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/activities/chart/b/e;

    iget-object v6, p0, Lcom/zhangdan/app/activities/chart/a/b;->a:Landroid/content/Context;

    const v7, 0x7f08018f

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/chart/b/e;->e()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->a:Landroid/content/Context;

    const v6, 0x7f080193

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/chart/b/e;->c()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/zhangdan/app/activities/chart/a/b;->e:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/chart/b/e;->b()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/chart/b/e;->b()D

    move-result-wide v6

    iget-wide v8, p0, Lcom/zhangdan/app/activities/chart/a/b;->c:D

    div-double/2addr v6, v8

    iget v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->d:I

    int-to-double v8, v0

    mul-double/2addr v6, v8

    double-to-int v0, v6

    if-gtz v0, :cond_1

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/chart/b/e;->b()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-lez v3, :cond_1

    move v0, v4

    :cond_1
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/chart/a/b;->a(I)I

    move-result v0

    const v1, 0x7f060268

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_2

    move v0, v5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p3

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final a(ILandroid/view/View;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/d;

    const v1, 0x7f060089

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/a/b;->a:Landroid/content/Context;

    const v3, 0x7f080191

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/d;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public final a(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/d;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/a/b;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->d:I

    const-wide v0, 0x3f847ae147ae147bL

    iput-wide v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->c:D

    invoke-direct {p0}, Lcom/zhangdan/app/activities/chart/a/b;->b()V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/chart/a/b;->d()V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/a/b;->notifyDataSetChanged()V

    return-void
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/d;

    return-object v0
.end method
