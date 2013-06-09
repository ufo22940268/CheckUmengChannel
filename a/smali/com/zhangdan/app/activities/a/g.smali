.class public final Lcom/zhangdan/app/activities/a/g;
.super Lcom/zhangdan/app/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V
    .locals 8

    const v7, 0x7f0a0023

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->l()F

    move-result v0

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->A()F

    move-result v1

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const v0, 0x7f0800d6

    new-array v3, v4, [Ljava/lang/Object;

    float-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/zhangdan/app/activities/a/g;->a(Ljava/lang/String;I)V

    :goto_0
    const v0, 0x7f0800d1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800d0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/app/activities/a/h;

    invoke-direct {v2, p0, p1, p2}, Lcom/zhangdan/app/activities/a/h;-><init>(Lcom/zhangdan/app/activities/a/g;Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V

    new-instance v3, Lcom/zhangdan/app/activities/a/i;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/a/i;-><init>(Lcom/zhangdan/app/activities/a/g;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zhangdan/app/activities/a/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const v0, 0x7f0800d7

    new-array v3, v4, [Ljava/lang/Object;

    float-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/zhangdan/app/activities/a/g;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0800d8

    new-array v3, v4, [Ljava/lang/Object;

    float-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/zhangdan/app/activities/a/g;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
