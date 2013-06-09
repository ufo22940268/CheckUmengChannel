.class final Lcom/zhangdan/app/receiver/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/receiver/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/receiver/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.zhangdan.app.download_data_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v0}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v0}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zhangdan/app/receiver/f;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.zhangdan.app.download_data_end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v0}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v0}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/f;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zhangdan/app/receiver/f;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.zhangdan.app.download_progress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v0}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v0}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/f;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zhangdan/app/receiver/f;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.zhangdan.app.download_avatar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v0}, Lcom/zhangdan/app/receiver/a;->b(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v0}, Lcom/zhangdan/app/receiver/a;->b(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/zhangdan/app/receiver/c;->b_()V

    goto :goto_0

    :cond_4
    const-string v1, "com.zhangdan.app.mail_account_update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v0}, Lcom/zhangdan/app/receiver/a;->c(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v0}, Lcom/zhangdan/app/receiver/a;->c(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/zhangdan/app/receiver/g;->b()V

    goto :goto_0

    :cond_5
    const-string v1, "com.zhangdan.app.user_bank_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v0}, Lcom/zhangdan/app/receiver/a;->d(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/j;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ub_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "user_bank_type"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v3}, Lcom/zhangdan/app/receiver/a;->d(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/j;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lcom/zhangdan/app/receiver/j;->a(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "com.zhangdan.app.new_bill"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v0}, Lcom/zhangdan/app/receiver/a;->e(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/i;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "bill_count"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v1}, Lcom/zhangdan/app/receiver/a;->e(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zhangdan/app/receiver/i;->a(I)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "com.zhangdan.app.mail_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v0}, Lcom/zhangdan/app/receiver/a;->f(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/MailStatusResult;

    iget-object v1, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v1}, Lcom/zhangdan/app/receiver/a;->f(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zhangdan/app/receiver/h;->b(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "com.zhangdan.app.parse_bill"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v0}, Lcom/zhangdan/app/receiver/a;->g(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "bill"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/ab;

    iget-object v1, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v1}, Lcom/zhangdan/app/receiver/a;->g(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zhangdan/app/receiver/e;->a(Lcom/zhangdan/app/data/model/http/ab;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "com.zhangdan.app.bank_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v0}, Lcom/zhangdan/app/receiver/a;->h(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/receiver/b;->a:Lcom/zhangdan/app/receiver/a;

    invoke-static {v0}, Lcom/zhangdan/app/receiver/a;->h(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/zhangdan/app/receiver/d;->e()V

    goto/16 :goto_0
.end method
