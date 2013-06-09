.class final Lcom/zhangdan/app/activities/sms/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/sms/d;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/d;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/g;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/g;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/d;->a(Lcom/zhangdan/app/activities/sms/d;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/a;

    new-instance v1, Lcom/zhangdan/app/widget/a;

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/g;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/d;->c(Lcom/zhangdan/app/activities/sms/d;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    const-string v2, "\u662f\u5426\u5220\u9664\u6b64\u4fe1\u606f?"

    const v3, 0x7f0a0024

    invoke-virtual {v1, v2, v3}, Lcom/zhangdan/app/widget/a;->a(Ljava/lang/String;I)V

    const-string v2, "\u662f"

    const-string v3, "\u5426"

    new-instance v4, Lcom/zhangdan/app/activities/sms/h;

    invoke-direct {v4, p0, v1, v0}, Lcom/zhangdan/app/activities/sms/h;-><init>(Lcom/zhangdan/app/activities/sms/g;Lcom/zhangdan/app/widget/a;Lcom/zhangdan/app/sms/a;)V

    new-instance v0, Lcom/zhangdan/app/activities/sms/i;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/activities/sms/i;-><init>(Lcom/zhangdan/app/activities/sms/g;Lcom/zhangdan/app/widget/a;)V

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/zhangdan/app/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/widget/a;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
