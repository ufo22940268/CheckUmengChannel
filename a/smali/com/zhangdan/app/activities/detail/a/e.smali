.class final Lcom/zhangdan/app/activities/detail/a/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/detail/a/b;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/a/e;->a:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan_finish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/e;->a:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/a/b;->b(Lcom/zhangdan/app/activities/detail/a/b;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/e;->a:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/a/b;->b(Lcom/zhangdan/app/activities/detail/a/b;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08009b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/e;->a:Lcom/zhangdan/app/activities/detail/a/b;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/e;->a:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/a/b;->b(Lcom/zhangdan/app/activities/detail/a/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/a/e;->a:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-static {v2}, Lcom/zhangdan/app/activities/detail/a/b;->d(Lcom/zhangdan/app/activities/detail/a/b;)Lcom/zhangdan/app/data/model/j;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/detail/p;->a(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/detail/a/b;->a(Lcom/zhangdan/app/activities/detail/a/b;Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/e;->a:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/a/b;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/a/e;->a:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/a/b;->b(Lcom/zhangdan/app/activities/detail/a/b;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/a/e;->a:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/a/b;->b(Lcom/zhangdan/app/activities/detail/a/b;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08009a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
