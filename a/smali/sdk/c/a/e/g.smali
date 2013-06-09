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

.method private a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lsdk/c/a/e/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iput-object v1, p0, Lsdk/c/a/e/g;->c:Lsdk/c/a/e/d;

    iput-object v1, p0, Lsdk/c/a/e/g;->e:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private b()Lsdk/c/a/e/d;
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

    invoke-virtual {v0}, Lsdk/c/a/e/d;->f()V

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


# virtual methods
.method public final run()V
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    move v0, v2

    :cond_0
    :goto_0
    if-eqz v0, :cond_11

    :try_start_0
    iget-object v5, p0, Lsdk/c/a/e/g;->b:Lsdk/c/a/e/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lsdk/c/a/e/g;->b:Lsdk/c/a/e/d;

    :goto_1
    if-nez v5, :cond_1

    invoke-direct {p0}, Lsdk/c/a/e/g;->b()Lsdk/c/a/e/d;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v0, p0, Lsdk/c/a/e/g;->f:Lsdk/c/a/e/f;

    invoke-virtual {v0}, Lsdk/c/a/e/f;->b()Lsdk/c/a/e/d;

    move-result-object v5

    if-eqz v5, :cond_10

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lsdk/c/a/e/g;->c:Lsdk/c/a/e/d;

    iget v0, p0, Lsdk/c/a/e/g;->d:I

    if-nez v0, :cond_2

    iget v0, v5, Lsdk/c/a/e/d;->M:I

    iput v0, p0, Lsdk/c/a/e/g;->d:I

    :cond_2
    move v1, v2

    move-object v4, v5

    :cond_3
    :goto_2
    if-eqz v1, :cond_f

    iget-boolean v0, v4, Lsdk/c/a/e/d;->G:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lsdk/c/a/e/g;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_4
    :try_start_1
    invoke-virtual {v4}, Lsdk/c/a/e/d;->c()V

    invoke-virtual {v4}, Lsdk/c/a/e/d;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-boolean v0, v4, Lsdk/c/a/e/d;->G:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lsdk/c/a/e/g;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5
    iget-boolean v0, v4, Lsdk/c/a/e/d;->F:Z

    if-nez v0, :cond_6

    invoke-virtual {v4}, Lsdk/c/a/e/d;->d()V

    :cond_6
    iget-boolean v0, v4, Lsdk/c/a/e/d;->x:Z

    if-nez v0, :cond_7

    iget-boolean v0, v4, Lsdk/c/a/e/d;->A:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_3

    :cond_7
    move v1, v3

    move-object v4, v6

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v7, 0x1

    :try_start_3
    iput-boolean v7, v4, Lsdk/c/a/e/d;->F:Z

    iput-object v0, v4, Lsdk/c/a/e/d;->O:Ljava/lang/Exception;

    invoke-virtual {v4}, Lsdk/c/a/e/d;->s()V

    invoke-virtual {v4}, Lsdk/c/a/e/d;->l()V

    iget-object v0, p0, Lsdk/c/a/e/g;->f:Lsdk/c/a/e/f;

    iget-object v0, v0, Lsdk/c/a/e/f;->i:Lsdk/c/a/e/e;

    invoke-virtual {v0, v4}, Lsdk/c/a/e/e;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsdk/c/a/e/g;->f:Lsdk/c/a/e/f;

    iget-object v0, v0, Lsdk/c/a/e/f;->i:Lsdk/c/a/e/e;

    invoke-virtual {v0}, Lsdk/c/a/e/e;->h()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v0, v4, Lsdk/c/a/e/d;->G:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lsdk/c/a/e/g;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_8
    iget-boolean v0, v4, Lsdk/c/a/e/d;->F:Z

    if-nez v0, :cond_9

    invoke-virtual {v4}, Lsdk/c/a/e/d;->d()V

    :cond_9
    iget-boolean v0, v4, Lsdk/c/a/e/d;->x:Z

    if-nez v0, :cond_a

    iget-boolean v0, v4, Lsdk/c/a/e/d;->A:Z

    if-nez v0, :cond_3

    :cond_a
    move v1, v3

    move-object v4, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-boolean v7, v4, Lsdk/c/a/e/d;->G:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lsdk/c/a/e/g;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_b
    iget-boolean v7, v4, Lsdk/c/a/e/d;->F:Z

    if-nez v7, :cond_c

    invoke-virtual {v4}, Lsdk/c/a/e/d;->d()V

    :cond_c
    iget-boolean v7, v4, Lsdk/c/a/e/d;->x:Z

    if-nez v7, :cond_d

    iget-boolean v7, v4, Lsdk/c/a/e/d;->A:Z

    if-nez v7, :cond_3

    :cond_d
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lsdk/c/a/e/g;->f:Lsdk/c/a/e/f;

    invoke-virtual {v1, p0}, Lsdk/c/a/e/f;->a(Lsdk/c/a/e/g;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-direct {p0}, Lsdk/c/a/e/g;->a()V

    :cond_e
    throw v0

    :cond_f
    :try_start_5
    iput-object v5, p0, Lsdk/c/a/e/g;->c:Lsdk/c/a/e/d;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v5, v6

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lsdk/c/a/e/g;->f:Lsdk/c/a/e/f;

    invoke-virtual {v0, p0}, Lsdk/c/a/e/f;->a(Lsdk/c/a/e/g;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsdk/c/a/e/g;->a()V

    goto/16 :goto_0

    :cond_11
    return-void
.end method
