.class final Lcom/zhangdan/app/activities/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/SplashActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/f;->a:Lcom/zhangdan/app/activities/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-wide/16 v3, 0x3e8

    iget-object v0, p0, Lcom/zhangdan/app/activities/f;->a:Lcom/zhangdan/app/activities/SplashActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/SplashActivity;->d(Lcom/zhangdan/app/activities/SplashActivity;)Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/zhangdan/app/data/db/b/o;

    iget-object v1, p0, Lcom/zhangdan/app/activities/f;->a:Lcom/zhangdan/app/activities/SplashActivity;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/app/data/db/b/o;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/zhangdan/app/data/db/b/o;->a()Lcom/zhangdan/app/data/model/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/db/b/o;->b()V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/f;->a:Lcom/zhangdan/app/activities/SplashActivity;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/SplashActivity;->a(Lcom/zhangdan/app/data/model/l;)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/f;->a:Lcom/zhangdan/app/activities/SplashActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/SplashActivity;->e(Lcom/zhangdan/app/activities/SplashActivity;)Lcom/zhangdan/app/activities/g;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/g;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/zhangdan/app/activities/f;->a:Lcom/zhangdan/app/activities/SplashActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/SplashActivity;->e(Lcom/zhangdan/app/activities/SplashActivity;)Lcom/zhangdan/app/activities/g;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v4}, Lcom/zhangdan/app/activities/g;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/db/b/o;->b()V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/f;->a:Lcom/zhangdan/app/activities/SplashActivity;

    invoke-static {v1}, Lcom/zhangdan/app/activities/SplashActivity;->e(Lcom/zhangdan/app/activities/SplashActivity;)Lcom/zhangdan/app/activities/g;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/g;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/zhangdan/app/activities/f;->a:Lcom/zhangdan/app/activities/SplashActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/SplashActivity;->e(Lcom/zhangdan/app/activities/SplashActivity;)Lcom/zhangdan/app/activities/g;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v4}, Lcom/zhangdan/app/activities/g;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
