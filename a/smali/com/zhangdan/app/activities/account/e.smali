.class final Lcom/zhangdan/app/activities/account/e;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

.field private b:Landroid/app/Dialog;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/e;->c:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/e;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/e;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/e;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/aq;->a()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/aq;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-static {v2, v1}, Lcom/zhangdan/app/data/db/b/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-object v0
.end method

.method protected final a()V
    .locals 3

    invoke-super {p0}, Lcom/a/a/a/e/a/a;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v2, 0x7f08001c

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v2, 0x7f08002f

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/account/e;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/e;->b:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/e;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/zhangdan/app/data/model/http/aq;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/e;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v2, 0x7f080022

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-static {v1, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aq;->a()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v2, 0x7f0800ad

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aq;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/b/a;->a(Ljava/lang/String;)Lcom/zhangdan/app/data/model/l;

    move-result-object v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->a(Lcom/zhangdan/app/data/model/l;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v2, 0x7f0600d6

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/zhangdan/app/activities/account/e;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/app/h/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/zhangdan/app/data/db/b/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_avatar"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zhangdan/app/data/a/b;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->a(Lcom/zhangdan/app/activities/account/OfficialLoginActivity;)I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const-class v2, Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->setResult(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->finish()V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/e;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/zhangdan/app/data/db/b/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-static {v1, v0}, Lcom/zhangdan/app/data/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aq;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/e;->a:Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    const v2, 0x7f0800ae

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
