.class final Lcom/a/a/a/e/a/m;
.super Ljava/lang/Thread;


# instance fields
.field a:Z

.field final synthetic b:Lcom/a/a/a/e/a/l;


# direct methods
.method public constructor <init>(Lcom/a/a/a/e/a/l;)V
    .locals 1

    iput-object p1, p0, Lcom/a/a/a/e/a/m;->b:Lcom/a/a/a/e/a/l;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/e/a/m;->a:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/a/a/a/e/a/m;->setPriority(I)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/a/a/a/e/a/m;->b:Lcom/a/a/a/e/a/l;

    invoke-virtual {v0}, Lcom/a/a/a/e/a/l;->a()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/e/a/m;->b:Lcom/a/a/a/e/a/l;

    invoke-static {v0}, Lcom/a/a/a/e/a/l;->a(Lcom/a/a/a/e/a/l;)Lcom/a/a/a/e/a/m;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/a/a/a/e/a/m;->a:Z

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/e/a/m;->b:Lcom/a/a/a/e/a/l;

    invoke-virtual {v0}, Lcom/a/a/a/e/a/l;->b()Lcom/a/a/a/f/c;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lcom/a/a/a/f/c;->i()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/a/a/a/e/a/m;->b:Lcom/a/a/a/e/a/l;

    invoke-virtual {v1, v0}, Lcom/a/a/a/e/a/l;->a(Lcom/a/a/a/f/c;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/a/a/a/e/a/m;->b:Lcom/a/a/a/e/a/l;

    invoke-static {v2, v0}, Lcom/a/a/a/e/a/l;->a(Lcom/a/a/a/e/a/l;Lcom/a/a/a/f/c;)V

    iget-object v2, p0, Lcom/a/a/a/e/a/m;->b:Lcom/a/a/a/e/a/l;

    invoke-virtual {v2, v0, v1}, Lcom/a/a/a/e/a/l;->a(Lcom/a/a/a/f/c;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Lcom/a/a/a/c/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/a/a/a/e/a/m;->b:Lcom/a/a/a/e/a/l;

    invoke-static {v1}, Lcom/a/a/a/e/a/l;->b(Lcom/a/a/a/e/a/l;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pausing the thread error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/a/a/a/e/a/m;->b:Lcom/a/a/a/e/a/l;

    invoke-virtual {v2, v0, v1}, Lcom/a/a/a/e/a/l;->a(Lcom/a/a/a/f/c;Landroid/graphics/Bitmap;)V
    :try_end_4
    .catch Lcom/a/a/a/c/a; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "ImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Throwable : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
