.class final Lcom/zhangdan/app/activities/sms/o;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/o;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan_finish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/o;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->a(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u641c\u7d22\u5b8c\u6bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/o;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-static {v0, v2}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->a(Lcom/zhangdan/app/activities/sms/SmsBillActivity;Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/o;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->b(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/o;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->c(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/o;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->a(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u641c\u7d22\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/o;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->a(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/o;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-static {v0, v3}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->a(Lcom/zhangdan/app/activities/sms/SmsBillActivity;Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/o;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->d(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->a(Lcom/zhangdan/app/activities/sms/SmsBillActivity;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "update_sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/o;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    const-string v1, "sms_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->a(Lcom/zhangdan/app/activities/sms/SmsBillActivity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/o;->a:Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/SmsBillActivity;->e(Lcom/zhangdan/app/activities/sms/SmsBillActivity;)Lcom/zhangdan/app/activities/sms/q;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v3, v1, v2}, Lcom/zhangdan/app/activities/sms/q;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
