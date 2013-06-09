.class final Lcom/baidu/location/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/e;


# direct methods
.method private constructor <init>(Lcom/baidu/location/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/j;->a:Lcom/baidu/location/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/e;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/j;-><init>(Lcom/baidu/location/e;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/j;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->g(Lcom/baidu/location/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/j;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->h(Lcom/baidu/location/e;)Z

    iget-object v0, p0, Lcom/baidu/location/j;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->a(Lcom/baidu/location/e;)Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/j;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->b(Lcom/baidu/location/e;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/j;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->i(Lcom/baidu/location/e;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/j;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->i(Lcom/baidu/location/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v0, p0, Lcom/baidu/location/j;->a:Lcom/baidu/location/e;

    invoke-static {v0}, Lcom/baidu/location/e;->f(Lcom/baidu/location/e;)Lcom/baidu/location/h;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/baidu/location/h;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
