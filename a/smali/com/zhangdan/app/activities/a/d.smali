.class public final Lcom/zhangdan/app/activities/a/d;
.super Lcom/zhangdan/app/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0800d5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0021

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/a/d;->a(Ljava/lang/String;I)V

    const v0, 0x7f0800d1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800d0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/app/activities/a/e;

    invoke-direct {v2, p0, p1, p2}, Lcom/zhangdan/app/activities/a/e;-><init>(Lcom/zhangdan/app/activities/a/d;Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V

    new-instance v3, Lcom/zhangdan/app/activities/a/f;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/a/f;-><init>(Lcom/zhangdan/app/activities/a/d;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zhangdan/app/activities/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method
