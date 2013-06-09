.class final Lcom/zhangdan/app/activities/newimport/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/newimport/k;

.field private final synthetic b:Lcom/zhangdan/app/widget/a;

.field private final synthetic c:Lcom/zhangdan/app/data/model/l;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/k;Lcom/zhangdan/app/widget/a;Lcom/zhangdan/app/data/model/l;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/l;->a:Lcom/zhangdan/app/activities/newimport/k;

    iput-object p2, p0, Lcom/zhangdan/app/activities/newimport/l;->b:Lcom/zhangdan/app/widget/a;

    iput-object p3, p0, Lcom/zhangdan/app/activities/newimport/l;->c:Lcom/zhangdan/app/data/model/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/l;->b:Lcom/zhangdan/app/widget/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/a;->dismiss()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/l;->c:Lcom/zhangdan/app/data/model/l;

    invoke-static {v0}, Lcom/zhangdan/app/b/a;->a(Lcom/zhangdan/app/data/model/l;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/l;->a:Lcom/zhangdan/app/activities/newimport/k;

    iget-object v1, v1, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zhangdan/app/data/db/b/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/l;->a:Lcom/zhangdan/app/activities/newimport/k;

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/l;->c:Lcom/zhangdan/app/data/model/l;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/ZhangdanApplication;->a(Lcom/zhangdan/app/data/model/l;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/l;->c:Lcom/zhangdan/app/data/model/l;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/l;->c:Lcom/zhangdan/app/data/model/l;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/l;->a:Lcom/zhangdan/app/activities/newimport/k;

    iget-object v1, v1, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zhangdan/app/data/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/l;->a:Lcom/zhangdan/app/activities/newimport/k;

    iget-object v1, v1, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v1

    const-class v2, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "email_name"

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/l;->a:Lcom/zhangdan/app/activities/newimport/k;

    iget-object v2, v2, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->a(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "email_pwd"

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/l;->a:Lcom/zhangdan/app/activities/newimport/k;

    iget-object v2, v2, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->b(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/l;->a:Lcom/zhangdan/app/activities/newimport/k;

    iget-object v1, v1, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v1}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/l;->a:Lcom/zhangdan/app/activities/newimport/k;

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->setResult(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/l;->a:Lcom/zhangdan/app/activities/newimport/k;

    iget-object v0, v0, Lcom/zhangdan/app/activities/newimport/k;->a:Lcom/zhangdan/app/activities/newimport/j;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/j;->b(Lcom/zhangdan/app/activities/newimport/j;)Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->finish()V

    return-void
.end method
