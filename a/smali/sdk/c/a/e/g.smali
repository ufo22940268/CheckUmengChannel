.class final Lsdk/c/a/e/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/util/concurrent/BlockingQueue;

.field b:Lsdk/c/a/e/d;

.field c:Lsdk/c/a/e/d;

.field volatile d:I

.field e:Landroid/os/PowerManager$WakeLock;

.field final synthetic f:Lsdk/c/a/e/f;


# direct methods
.method public constructor <init>(Lsdk/c/a/e/f;Lsdk/c/a/e/d;)V
    .locals 3

    iput-object p1, p0, Lsdk/c/a/e/g;->f:Lsdk/c/a/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsdk/c/a/e/g;->b:Lsdk/c/a/e/d;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lsdk/c/a/e/g;->a:Ljava/util/concurrent/BlockingQueue;

    iget-object v0, p1, Lsdk/c/a/e/f;->i:Lsdk/c/a/e/e;

    iget-object v0, v0, Lsdk/c/a/e/e;->p:Landroid/os/PowerManager;

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lsdk/c/a/e/g;->e:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lsdk/c/a/e/g;->e:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lsdk/c/a/e/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iput-object v1, p0, Lsdk/c/a/e/g;->c:Lsdk/c/a/e/d;

    iput-object v1, p0, Lsdk/c/a/e/g;->e:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public final a(Lsdk/c/a/e/d;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget v1, p0, Lsdk/c/a/e/g;->d:I

    if-nez v1, :cond_0

    iget v1, p1, Lsdk/c/a/e/d;->M:I

    iput v1, p0, Lsdk/c/a/e/g;->d:I

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_b

    iget-boolean v0, p1, Lsdk/c/a/e/d;->G:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsdk/c/a/e/g;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lsdk/c/a/e/d;->b_()V

    invoke-virtual {p1}, Lsdk/c/a/e/d;->r()V

    invoke-virtual {p1}, Lsdk/c/a/e/d;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v0, p1, Lsdk/c/a/e/d;->G:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsdk/c/a/e/g;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    iget-boolean v0, p1, Lsdk/c/a/e/d;->F:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lsdk/c/a/e/d;->c()V

    :cond_4
    iget-boolean v0, p1, Lsdk/c/a/e/d;->x:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lsdk/c/a/e/d;->A:Z

    if-nez v0, :cond_1

    :cond_5
    move v1, v2

    move-object p1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p1, Lsdk/c/a/e/d;->F:Z

    iput-object v0, p1, Lsdk/c/a/e/d;->O:Ljava/lang/Exception;

    invoke-virtual {p1}, Lsdk/c/a/e/d;->u()V

    invoke-virtual {p1}, Lsdk/c/a/e/d;->n()V

    iget-object v0, p0, Lsdk/c/a/e/g;->f:Lsdk/c/a/e/f;

    iget-object v0, v0, Lsdk/c/a/e/f;->i:Lsdk/c/a/e/e;

    invoke-virtual {v0, p1}, Lsdk/c/a/e/e;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsdk/c/a/e/g;->f:Lsdk/c/a/e/f;

    iget-object v0, v0, Lsdk/c/a/e/f;->i:Lsdk/c/a/e/e;

    invoke-virtual {v0}, Lsdk/c/a/e/e;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v0, p1, Lsdk/c/a/e/d;->G:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lsdk/c/a/e/g;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    iget-boolean v0, p1, Lsdk/c/a/e/d;->F:Z

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lsdk/c/a/e/d;->c()V

    :cond_7
    iget-boolean v0, p1, Lsdk/c/a/e/d;->x:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lsdk/c/a/e/d;->A:Z

    if-eqz v0, :cond_5

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-boolean v4, p1, Lsdk/c/a/e/d;->G:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lsdk/c/a/e/g;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_8
    iget-boolean v4, p1, Lsdk/c/a/e/d;->F:Z

    if-nez v4, :cond_9

    invoke-virtual {p1}, Lsdk/c/a/e/d;->c()V

    :cond_9
    iget-boolean v4, p1, Lsdk/c/a/e/d;->x:Z

    if-nez v4, :cond_a

    iget-boolean v4, p1, Lsdk/c/a/e/d;->A:Z

    if-nez v4, :cond_1

    :cond_a
    throw v0

    :cond_b
    return-void
.end method

.method final b()Lsdk/c/a/e/d;
    .locals 5

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget v0, p0, Lsdk/c/a/e/g;->d:I

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lsdk/c/a/e/g;->a:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lsdk/c/a/e/g;->f:Lsdk/c/a/e/f;

    iget-wide v2, v2, Lsdk/c/a/e/f;->e:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/c/a/e/d;

    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lsdk/c/a/e/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsdk/c/a/e/g;->f:Lsdk/c/a/e/f;

    iget-object v2, v0, Lsdk/c/a/e/f;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lsdk/c/a/e/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lsdk/c/a/e/g;->f:Lsdk/c/a/e/f;

    iget-object v0, v0, Lsdk/c/a/e/f;->b:Ljava/util/HashMap;

    iget v3, p0, Lsdk/c/a/e/g;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsdk/c/a/e/g;->c:Lsdk/c/a/e/d;

    invoke-virtual {v0}, Lsdk/c/a/e/d;->e()V

    const/4 v0, 0x0

    iput v0, p0, Lsdk/c/a/e/g;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public final run()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lsdk/c/a/e/g;->b:Lsdk/c/a/e/d;

    const/4 v2, 0x0

    iput-object v2, p0, Lsdk/c/a/e/g;->b:Lsdk/c/a/e/d;

    :goto_1
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lsdk/c/a/e/g;->b()Lsdk/c/a/e/d;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsdk/c/a/e/g;->f:Lsdk/c/a/e/f;

    invoke-virtual {v0}, Lsdk/c/a/e/f;->a()Lsdk/c/a/e/d;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lsdk/c/a/e/g;->c:Lsdk/c/a/e/d;

    invoke-virtual {p0, v0}, Lsdk/c/a/e/g;->a(Lsdk/c/a/e/d;)V

    iput-object v0, p0, Lsdk/c/a/e/g;->c:Lsdk/c/a/e/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lsdk/c/a/e/g;->f:Lsdk/c/a/e/f;

    invoke-virtual {v0, p0}, Lsdk/c/a/e/f;->a(Lsdk/c/a/e/g;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsdk/c/a/e/g;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lsdk/c/a/e/g;->f:Lsdk/c/a/e/f;

    invoke-virtual {v1, p0}, Lsdk/c/a/e/f;->a(Lsdk/c/a/e/g;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lsdk/c/a/e/g;->a()V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method