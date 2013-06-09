.class final Lcom/zhangdan/app/activities/account/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zhangdan/app/receiver/f;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/account/LoadingActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/account/LoadingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->c(Lcom/zhangdan/app/activities/account/LoadingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->a(Lcom/zhangdan/app/activities/account/LoadingActivity;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->a(Lcom/zhangdan/app/activities/account/LoadingActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->b(Lcom/zhangdan/app/activities/account/LoadingActivity;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    const v2, 0x7f0800af

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/account/LoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->a(Lcom/zhangdan/app/activities/account/LoadingActivity;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    const-class v2, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->setResult(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->finish()V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "msg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-static {v2, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->a(Lcom/zhangdan/app/activities/account/LoadingActivity;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/account/LoadingActivity;->b(Lcom/zhangdan/app/activities/account/LoadingActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/zhangdan/app/activities/account/LoadingActivity;->a(Lcom/zhangdan/app/activities/account/LoadingActivity;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-static {v2}, Lcom/zhangdan/app/activities/account/LoadingActivity;->a(Lcom/zhangdan/app/activities/account/LoadingActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/zhangdan/app/activities/account/LoadingActivity;->b(Lcom/zhangdan/app/activities/account/LoadingActivity;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/account/b;->a:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->c(Lcom/zhangdan/app/activities/account/LoadingActivity;I)V

    return-void
.end method
