.class final Lcom/zhangdan/app/activities/sms/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zhangdan/app/activities/sms/c;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/zhangdan/app/sms/a;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    const-class v2, Lcom/zhangdan/app/activities/sms/SmsEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bill_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->a(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bank_name"

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->a(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->b(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "card_num"

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->b(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->c(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "true_name"

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->c(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final b(Lcom/zhangdan/app/sms/a;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    const-class v2, Lcom/zhangdan/app/activities/sms/SmsFeedBackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bill_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->a(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bank_name"

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->a(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->b(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "card_num"

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->b(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->c(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "true_name"

    iget-object v2, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->c(Lcom/zhangdan/app/activities/sms/AllSmsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/a;->a:Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/zhangdan/app/activities/sms/AllSmsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
