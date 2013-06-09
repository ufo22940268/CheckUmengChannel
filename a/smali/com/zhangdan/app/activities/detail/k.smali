.class final Lcom/zhangdan/app/activities/detail/k;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

.field private b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/k;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "action"

    const-string v6, "user_bank_del"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "token"

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_id"

    invoke-direct {v0, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "ub_id"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "http://www.51zhangdan.com/service/bill/set.ashx?"

    invoke-static {v0, v3}, Lcom/zhangdan/app/d/b;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/data/model/http/k;->b(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/k;->a()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/k;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->a(Lcom/zhangdan/app/activities/detail/CardDetailActivity;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final a()V
    .locals 3

    invoke-super {p0}, Lcom/a/a/a/e/a/a;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/k;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/k;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const v2, 0x7f080142

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/k;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/k;->b:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/k;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/zhangdan/app/data/model/http/k;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/k;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/k;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/k;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/k;->a()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zhangdan.app.user_bank_changed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ub_id"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/k;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-static {v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->d(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/data/model/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/k;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/k;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->finish()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/k;->a:Lcom/zhangdan/app/activities/detail/CardDetailActivity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
