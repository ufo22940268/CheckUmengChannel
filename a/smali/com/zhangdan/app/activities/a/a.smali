.class public final Lcom/zhangdan/app/activities/a/a;
.super Lcom/zhangdan/app/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0800d9

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0018

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/a/a;->a(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0800d2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v1, 0x7f0800d0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/app/activities/a/b;

    invoke-direct {v2, p0, p2, p1}, Lcom/zhangdan/app/activities/a/b;-><init>(Lcom/zhangdan/app/activities/a/a;Lcom/zhangdan/app/data/model/j;Landroid/content/Context;)V

    new-instance v3, Lcom/zhangdan/app/activities/a/c;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/a/c;-><init>(Lcom/zhangdan/app/activities/a/a;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zhangdan/app/activities/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const v0, 0x7f0800d1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
