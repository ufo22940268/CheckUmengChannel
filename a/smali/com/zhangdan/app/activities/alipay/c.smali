.class final Lcom/zhangdan/app/activities/alipay/c;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/alipay/c;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/c;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 9

    const/16 v3, 0x8

    const/high16 v8, 0x40a0

    const/4 v0, 0x0

    check-cast p1, Lcom/zhangdan/app/data/model/http/c;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/c;->a()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/c;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/c;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->b(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/c;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/c;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->b(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/c;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/c;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/a;

    iget-object v4, p0, Lcom/zhangdan/app/activities/alipay/c;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-static {v4, v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->a(Lcom/zhangdan/app/activities/alipay/AlipayActivity;Lcom/zhangdan/app/data/model/http/a;)V

    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/c;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/zhangdan/app/activities/alipay/c;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v5, 0x7f020085

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/c;->a:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->c(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
