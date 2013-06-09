.class final Lcom/zhangdan/app/activities/sms/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/p;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/p;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->g(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/p;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    const-string v1, "\u6b63\u5728\u626b\u63cf\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/p;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->b(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_0

    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/p;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->b(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/SmsBillData;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/p;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    const-class v3, Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "bank_name"

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "card_num"

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "true_name"

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v2, "bill_id"

    invoke-virtual {v0}, Lcom/zhangdan/app/sms/SmsBillData;->b()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/p;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
