.class public abstract Lcom/a/a/a/e/a/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/a/a/a/e/a/m;

.field private b:Ljava/util/Stack;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/a/e/a/m;

    invoke-direct {v0, p0}, Lcom/a/a/a/e/a/m;-><init>(Lcom/a/a/a/e/a/l;)V

    iput-object v0, p0, Lcom/a/a/a/e/a/l;->a:Lcom/a/a/a/e/a/m;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/e/a/l;->b:Ljava/util/Stack;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/e/a/l;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/e/a/l;)Lcom/a/a/a/e/a/m;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/e/a/l;->a:Lcom/a/a/a/e/a/m;

    return-object v0
.end method

.method static synthetic a(Lcom/a/a/a/e/a/l;Lcom/a/a/a/f/c;)V
    .locals 4

    iget-object v2, p0, Lcom/a/a/a/e/a/l;->b:Ljava/util/Stack;

    monitor-enter v2

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/e/a/l;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/e/a/l;->b:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f/c;

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/e/a/l;->b:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f/c;

    invoke-virtual {v0}, Lcom/a/a/a/f/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/f/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/e/a/l;->b:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/a/a/a/e/a/l;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/e/a/l;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v1, p0, Lcom/a/a/a/e/a/l;->b:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/e/a/l;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected abstract a(Lcom/a/a/a/f/c;)Landroid/graphics/Bitmap;
.end method

.method protected abstract a(Lcom/a/a/a/f/c;Landroid/graphics/Bitmap;)V
.end method

.method public final b()Lcom/a/a/a/f/c;
    .locals 2

    iget-object v1, p0, Lcom/a/a/a/e/a/l;->b:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/e/a/l;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/a/a/a/f/c;)V
    .locals 5

    invoke-virtual {p1}, Lcom/a/a/a/f/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/a/a/a/e/a/l;->b:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/e/a/l;->b:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/a/a/a/e/a/l;->a:Lcom/a/a/a/e/a/m;

    invoke-virtual {v0}, Lcom/a/a/a/e/a/m;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/a/a/a/e/a/l;->a:Lcom/a/a/a/e/a/m;

    invoke-virtual {v0}, Lcom/a/a/a/e/a/m;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/a/a/a/e/a/l;->a:Lcom/a/a/a/e/a/m;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/a/a/a/e/a/l;->a:Lcom/a/a/a/e/a/m;

    iget-boolean v0, v0, Lcom/a/a/a/e/a/m;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/a/a/a/e/a/l;->a:Lcom/a/a/a/e/a/m;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/a/a/a/e/a/m;->a:Z

    iget-object v0, p0, Lcom/a/a/a/e/a/l;->a:Lcom/a/a/a/e/a/m;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "ImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Check and resume the thread "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method
