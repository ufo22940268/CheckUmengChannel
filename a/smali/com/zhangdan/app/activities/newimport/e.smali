.class final Lcom/zhangdan/app/activities/newimport/e;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/newimport/c;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/b/a;->a(Landroid/content/Context;)Lcom/zhangdan/app/data/model/http/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/aq;->a()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/aq;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/zhangdan/app/data/db/b/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-object v0
.end method

.method protected final a()V
    .locals 0

    invoke-super {p0}, Lcom/a/a/a/e/a/a;->a()V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/zhangdan/app/data/model/http/aq;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->c(Lcom/zhangdan/app/activities/newimport/c;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aq;->a()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aq;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/b/a;->a(Ljava/lang/String;)Lcom/zhangdan/app/data/model/l;

    move-result-object v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/ZhangdanApplication;->a(Lcom/zhangdan/app/data/model/l;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v2

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

    if-nez v2, :cond_1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->d(Lcom/zhangdan/app/activities/newimport/c;)Lcom/zhangdan/app/widget/EmailEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/c;->e(Lcom/zhangdan/app/activities/newimport/c;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v3}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "email_name"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "email_pwd"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zhangdan/app/data/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aq;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/aq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/e;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->f()V

    goto/16 :goto_0
.end method
