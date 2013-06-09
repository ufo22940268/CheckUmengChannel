.class final Lcom/zhangdan/app/activities/newimport/q;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

.field private b:Landroid/app/Dialog;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/q;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/q;->c:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    const/4 v1, 0x2

    aget-object v1, p1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/q;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/q;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v0, v3, v1}, Lcom/zhangdan/app/b/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/k;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 3

    invoke-super {p0}, Lcom/a/a/a/e/a/a;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/q;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/q;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    const v2, 0x7f080128

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/q;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/q;->b:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/q;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/zhangdan/app/data/model/http/k;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/q;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/q;->b:Landroid/app/Dialog;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/q;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/q;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/k;->a()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/q;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;->e(Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;)Lcom/zhangdan/app/activities/newimport/j;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/newimport/j;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/q;->a:Lcom/zhangdan/app/activities/newimport/RelevantAccountActivity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
