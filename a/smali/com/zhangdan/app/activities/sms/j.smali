.class final Lcom/zhangdan/app/activities/sms/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/sms/d;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/d;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/j;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/j;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/zhangdan/app/activities/sms/d;->a(Lcom/zhangdan/app/activities/sms/d;I)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f06012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/j;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/d;->e(Lcom/zhangdan/app/activities/sms/d;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/j;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/d;->e(Lcom/zhangdan/app/activities/sms/d;)Landroid/view/View;

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/j;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/d;->e(Lcom/zhangdan/app/activities/sms/d;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/j;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-static {v1, v0}, Lcom/zhangdan/app/activities/sms/d;->a(Lcom/zhangdan/app/activities/sms/d;Landroid/view/View;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/j;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/d;->e(Lcom/zhangdan/app/activities/sms/d;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
