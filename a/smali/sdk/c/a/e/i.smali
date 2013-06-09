.class final Lsdk/c/a/e/i;
.super Ljava/lang/Thread;


# instance fields
.field volatile a:Z

.field b:Lsdk/c/a/e/f;

.field final synthetic c:Lsdk/c/a/e/e;


# direct methods
.method public constructor <init>(Lsdk/c/a/e/e;)V
    .locals 1

    iput-object p1, p0, Lsdk/c/a/e/i;->c:Lsdk/c/a/e/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/c/a/e/i;->a:Z

    const-string v0, "taskService-processor"

    invoke-virtual {p0, v0}, Lsdk/c/a/e/i;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lsdk/c/a/e/i;->c:Lsdk/c/a/e/e;

    iget-object v4, v0, Lsdk/c/a/e/e;->m:Lsdk/c/a/e/c;

    move v0, v1

    move-object v2, v3

    :goto_0
    iget-boolean v5, p0, Lsdk/c/a/e/i;->a:Z

    if-eqz v5, :cond_11

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2}, Lsdk/c/a/e/d;->e()V

    invoke-virtual {v2}, Lsdk/c/a/e/d;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lsdk/c/a/e/i;->b:Lsdk/c/a/e/f;

    if-nez v0, :cond_0

    new-instance v0, Lsdk/c/a/e/f;

    iget-object v5, p0, Lsdk/c/a/e/i;->c:Lsdk/c/a/e/e;

    invoke-direct {v0, v5}, Lsdk/c/a/e/f;-><init>(Lsdk/c/a/e/e;)V

    iput-object v0, p0, Lsdk/c/a/e/i;->b:Lsdk/c/a/e/f;

    :cond_0
    iget-object v5, p0, Lsdk/c/a/e/i;->b:Lsdk/c/a/e/f;

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v0, v2, Lsdk/c/a/e/d;->M:I

    if-eqz v0, :cond_4

    iget-object v6, v5, Lsdk/c/a/e/f;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, v5, Lsdk/c/a/e/f;->b:Ljava/util/HashMap;

    iget v7, v2, Lsdk/c/a/e/d;->M:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/c/a/e/g;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lsdk/c/a/e/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    :goto_1
    move v0, v1

    move-object v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_4
    iget v0, v5, Lsdk/c/a/e/f;->g:I

    iget v6, v5, Lsdk/c/a/e/f;->f:I

    if-ge v0, v6, :cond_5

    invoke-virtual {v5, v2}, Lsdk/c/a/e/f;->a(Lsdk/c/a/e/d;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_5
    iget-object v0, v5, Lsdk/c/a/e/f;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v5, Lsdk/c/a/e/f;->g:I

    if-nez v0, :cond_2

    invoke-virtual {v5}, Lsdk/c/a/e/f;->a()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_6
    invoke-virtual {v5, v2}, Lsdk/c/a/e/f;->b(Lsdk/c/a/e/d;)Z

    goto :goto_1

    :cond_7
    :pswitch_1
    :try_start_1
    invoke-virtual {v2}, Lsdk/c/a/e/d;->c()V

    invoke-virtual {v2}, Lsdk/c/a/e/d;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lsdk/c/a/e/i;->c:Lsdk/c/a/e/e;

    invoke-virtual {v0}, Lsdk/c/a/e/e;->i()V

    iget-boolean v0, v2, Lsdk/c/a/e/d;->F:Z

    if-nez v0, :cond_8

    invoke-virtual {v2}, Lsdk/c/a/e/d;->d()V

    :cond_8
    iget-boolean v0, v2, Lsdk/c/a/e/d;->x:Z

    if-nez v0, :cond_9

    iget-boolean v0, v2, Lsdk/c/a/e/d;->B:Z

    if-nez v0, :cond_9

    iput v8, v2, Lsdk/c/a/e/d;->N:I

    invoke-virtual {v4, v2}, Lsdk/c/a/e/c;->a(Lsdk/c/a/e/d;)Z

    :cond_9
    move v0, v1

    move-object v2, v3

    :goto_2
    :pswitch_2
    :try_start_2
    invoke-virtual {v4}, Lsdk/c/a/e/c;->a()Lsdk/c/a/e/d;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_10

    iget-boolean v5, v2, Lsdk/c/a/e/d;->x:Z

    if-nez v5, :cond_a

    iget-boolean v5, v2, Lsdk/c/a/e/d;->y:Z

    if-eqz v5, :cond_f

    :cond_a
    move-object v2, v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v5, 0x1

    :try_start_3
    iput-boolean v5, v2, Lsdk/c/a/e/d;->F:Z

    iput-object v0, v2, Lsdk/c/a/e/d;->O:Ljava/lang/Exception;

    invoke-virtual {v2}, Lsdk/c/a/e/d;->s()V

    invoke-virtual {v2}, Lsdk/c/a/e/d;->l()V

    iget-object v0, p0, Lsdk/c/a/e/i;->c:Lsdk/c/a/e/e;

    iget-object v0, v0, Lsdk/c/a/e/e;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lsdk/c/a/e/i;->c:Lsdk/c/a/e/e;

    invoke-virtual {v0}, Lsdk/c/a/e/e;->i()V

    iget-boolean v0, v2, Lsdk/c/a/e/d;->F:Z

    if-nez v0, :cond_b

    invoke-virtual {v2}, Lsdk/c/a/e/d;->d()V

    :cond_b
    iget-boolean v0, v2, Lsdk/c/a/e/d;->x:Z

    if-nez v0, :cond_c

    iget-boolean v0, v2, Lsdk/c/a/e/d;->B:Z

    if-nez v0, :cond_c

    iput v8, v2, Lsdk/c/a/e/d;->N:I

    invoke-virtual {v4, v2}, Lsdk/c/a/e/c;->a(Lsdk/c/a/e/d;)Z

    :cond_c
    move v0, v1

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lsdk/c/a/e/i;->c:Lsdk/c/a/e/e;

    invoke-virtual {v1}, Lsdk/c/a/e/e;->i()V

    iget-boolean v1, v2, Lsdk/c/a/e/d;->F:Z

    if-nez v1, :cond_d

    invoke-virtual {v2}, Lsdk/c/a/e/d;->d()V

    :cond_d
    iget-boolean v1, v2, Lsdk/c/a/e/d;->x:Z

    if-nez v1, :cond_e

    iget-boolean v1, v2, Lsdk/c/a/e/d;->B:Z

    if-nez v1, :cond_e

    iput v8, v2, Lsdk/c/a/e/d;->N:I

    invoke-virtual {v4, v2}, Lsdk/c/a/e/c;->a(Lsdk/c/a/e/d;)Z

    :cond_e
    throw v0

    :cond_f
    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_10
    :pswitch_3
    move-object v0, v2

    iget-object v2, p0, Lsdk/c/a/e/i;->c:Lsdk/c/a/e/e;

    invoke-virtual {v2}, Lsdk/c/a/e/e;->i()V

    move-object v2, v0

    move v0, v1

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v4}, Lsdk/c/a/e/c;->b()V

    return-void

    :catch_1
    move-exception v5

    goto :goto_3

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
