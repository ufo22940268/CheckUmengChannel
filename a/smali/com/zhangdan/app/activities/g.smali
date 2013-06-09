.class final Lcom/zhangdan/app/activities/g;
.super Landroid/os/Handler;


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/SplashActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/g;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/SplashActivity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "0"

    if-eqz v1, :cond_2

    check-cast v1, Lcom/zhangdan/app/data/model/l;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/app/activities/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/zhangdan/app/activities/h;-><init>(Lcom/zhangdan/app/activities/SplashActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/h;->start()V

    invoke-static {v0}, Lcom/zhangdan/app/activities/SplashActivity;->a(Lcom/zhangdan/app/activities/SplashActivity;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/zhangdan/app/activities/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v0, v3, v2}, Lcom/zhangdan/app/activities/h;-><init>(Lcom/zhangdan/app/activities/SplashActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/h;->start()V

    invoke-static {v0}, Lcom/zhangdan/app/activities/SplashActivity;->b(Lcom/zhangdan/app/activities/SplashActivity;)V

    goto :goto_0

    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "0"

    if-eqz v1, :cond_4

    check-cast v1, Lcom/zhangdan/app/data/model/l;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/SplashActivity;->a(Lcom/zhangdan/app/data/model/l;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zhangdan/app/activities/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/zhangdan/app/activities/h;-><init>(Lcom/zhangdan/app/activities/SplashActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/h;->start()V

    invoke-static {v0}, Lcom/zhangdan/app/activities/SplashActivity;->c(Lcom/zhangdan/app/activities/SplashActivity;)V

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/zhangdan/app/activities/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v0, v3, v2}, Lcom/zhangdan/app/activities/h;-><init>(Lcom/zhangdan/app/activities/SplashActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/h;->start()V

    invoke-static {v0}, Lcom/zhangdan/app/activities/SplashActivity;->b(Lcom/zhangdan/app/activities/SplashActivity;)V

    goto :goto_0
.end method
