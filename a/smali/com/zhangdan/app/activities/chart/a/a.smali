.class public final Lcom/zhangdan/app/activities/chart/a/a;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:D

.field private d:I

.field private e:Ljava/text/DecimalFormat;

.field private f:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-wide v0, 0x3f847ae147ae147bL

    iput-wide v0, p0, Lcom/zhangdan/app/activities/chart/a/a;->c:D

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/a/a;->e:Ljava/text/DecimalFormat;

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zhangdan/app/activities/chart/a/a;->f:[I

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/a/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zhangdan/app/activities/chart/a/a;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/zhangdan/app/activities/chart/a/a;->a()V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/chart/a/a;->b()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x25t 0x2ft 0xdft 0xfft
        0x0t 0x65t 0xfft 0xfft
        0x0t 0xc4t 0xfet 0xfft
        0x0t 0xc8t 0x85t 0xfft
        0xd0t 0xc9t 0x1t 0xfft
        0xbct 0x72t 0x0t 0xfft
        0x69t 0x0t 0xb2t 0xfft
        0x7ft 0x2et 0xfft 0xfft
        0x67t 0x7dt 0x9ft 0xfft
        0x41t 0xc6t 0xb6t 0xfft
        0xb2t 0xb2t 0xb2t 0xfft
    .end array-data
.end method

.method private a()V
    .locals 6

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/chart/b/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/b;->c()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/zhangdan/app/activities/chart/a/a;->c:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/chart/b/b;->c()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/zhangdan/app/activities/chart/a/a;->c:D

    goto :goto_0
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/a;->a:Landroid/content/Context;

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

    const/high16 v3, 0x42b4

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, v1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\uffe5"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/a/a;->e:Ljava/text/DecimalFormat;

    iget-wide v4, p0, Lcom/zhangdan/app/activities/chart/a/a;->c:D

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

    iput v0, p0, Lcom/zhangdan/app/activities/chart/a/a;->d:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/a/a;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/chart/a/a;->d:I

    const-wide v0, 0x3f847ae147ae147bL

    iput-wide v0, p0, Lcom/zhangdan/app/activities/chart/a/a;->c:D

    invoke-direct {p0}, Lcom/zhangdan/app/activities/chart/a/a;->a()V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/chart/a/a;->b()V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/a/a;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/a;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300a8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f060261

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060262

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f060263

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f060260

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/chart/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/activities/chart/b/b;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\uffe5"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/zhangdan/app/activities/chart/a/a;->e:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/chart/b/b;->c()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/chart/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/chart/b/b;->b()I

    move-result v0

    invoke-static {v0}, Lcom/zhangdan/app/data/c;->a(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/chart/b/b;->c()D

    move-result-wide v5

    iget-wide v7, p0, Lcom/zhangdan/app/activities/chart/a/a;->c:D

    div-double/2addr v5, v7

    iget v0, p0, Lcom/zhangdan/app/activities/chart/a/a;->d:I

    int-to-double v7, v0

    mul-double/2addr v5, v7

    double-to-int v0, v5

    if-gtz v0, :cond_1

    invoke-virtual {v4}, Lcom/zhangdan/app/activities/chart/b/b;->c()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/a/a;->f:[I

    iget-object v2, p0, Lcom/zhangdan/app/activities/chart/a/a;->f:[I

    array-length v2, v2

    rem-int v2, p1, v2

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-object p2
.end method
