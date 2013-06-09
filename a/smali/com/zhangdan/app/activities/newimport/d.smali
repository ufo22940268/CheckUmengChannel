.class final Lcom/zhangdan/app/activities/newimport/d;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/newimport/c;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/d;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/d;->b:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/d;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/d;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/d;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/d;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zhangdan/app/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/z;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 3

    invoke-super {p0}, Lcom/a/a/a/e/a/a;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/d;->a:Lcom/zhangdan/app/activities/newimport/c;

    new-instance v1, Lcom/zhangdan/app/widget/f;

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/d;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zhangdan/app/widget/f;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;Lcom/zhangdan/app/widget/f;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/d;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->b(Lcom/zhangdan/app/activities/newimport/c;)Lcom/zhangdan/app/widget/f;

    move-result-object v0

    const v1, 0x7f080126

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/f;->a(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/d;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->b(Lcom/zhangdan/app/activities/newimport/c;)Lcom/zhangdan/app/widget/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/f;->setCancelable(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/d;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->b(Lcom/zhangdan/app/activities/newimport/c;)Lcom/zhangdan/app/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/f;->show()V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/zhangdan/app/data/model/http/z;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/d;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->c(Lcom/zhangdan/app/activities/newimport/c;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/d;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/d;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/z;->a()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/z;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/d;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->c(Lcom/zhangdan/app/activities/newimport/c;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/d;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v0

    const-class v3, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/d;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    const-string v3, "user_info_list"

    invoke-virtual {v0, v3, v1}, Lcom/zhangdan/app/ZhangdanApplication;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mail_account"

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "maiL_pwd"

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/d;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/c;->a(Lcom/zhangdan/app/activities/newimport/c;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/zhangdan/app/activities/newimport/e;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/d;->a:Lcom/zhangdan/app/activities/newimport/c;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/newimport/e;-><init>(Lcom/zhangdan/app/activities/newimport/c;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/newimport/e;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    goto :goto_0
.end method
