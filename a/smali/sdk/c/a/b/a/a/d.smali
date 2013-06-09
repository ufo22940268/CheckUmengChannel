.class public final Lsdk/c/a/b/a/a/d;
.super Lsdk/c/a/b/f;


# static fields
.field static volatile h:Lsdk/c/a/b/a/a/d;


# instance fields
.field a:Ljava/nio/channels/Selector;

.field b:Ljava/nio/channels/Selector;

.field c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile e:Z

.field final f:J

.field g:I

.field volatile i:J

.field volatile j:J

.field volatile k:J

.field l:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field m:Ljava/util/List;

.field n:Lsdk/c/a/b/a/a/c;

.field o:Ljava/nio/ByteBuffer;

.field p:Z

.field q:I

.field final r:Ljava/util/Comparator;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lsdk/c/a/b/c;)V
    .locals 3

    const/16 v0, -0x7ff

    invoke-direct {p0, v0, p1, p2}, Lsdk/c/a/b/f;-><init>(ILjava/lang/String;Lsdk/c/a/b/c;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lsdk/c/a/b/a/a/d;->f:J

    new-instance v0, Lsdk/c/a/b/a/a/e;

    invoke-direct {v0, p0}, Lsdk/c/a/b/a/a/e;-><init>(Lsdk/c/a/b/a/a/d;)V

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->r:Ljava/util/Comparator;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->m:Ljava/util/List;

    const v0, 0xf000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->o:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static a(Ljava/lang/String;Lsdk/c/a/b/c;)Lsdk/c/a/b/a/a/d;
    .locals 1

    sget-object v0, Lsdk/c/a/b/a/a/d;->h:Lsdk/c/a/b/a/a/d;

    if-eqz v0, :cond_1

    sget-object v0, Lsdk/c/a/b/a/a/d;->h:Lsdk/c/a/b/a/a/d;

    iget-boolean v0, v0, Lsdk/c/a/b/a/a/d;->F:Z

    if-nez v0, :cond_1

    sget-object v0, Lsdk/c/a/b/a/a/d;->h:Lsdk/c/a/b/a/a/d;

    iget-boolean v0, v0, Lsdk/c/a/b/a/a/d;->x:Z

    if-nez v0, :cond_1

    sget-object v0, Lsdk/c/a/b/a/a/d;->h:Lsdk/c/a/b/a/a/d;

    iget-object v0, v0, Lsdk/c/a/b/a/a/d;->s:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lsdk/c/a/b/a/a/d;->h:Lsdk/c/a/b/a/a/d;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lsdk/c/a/b/a/a/d;

    invoke-direct {v0, p0, p1}, Lsdk/c/a/b/a/a/d;-><init>(Ljava/lang/String;Lsdk/c/a/b/c;)V

    sput-object v0, Lsdk/c/a/b/a/a/d;->h:Lsdk/c/a/b/a/a/d;

    goto :goto_0
.end method

.method private a(Ljava/nio/channels/SocketChannel;)V
    .locals 7

    :cond_0
    :try_start_0
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_1

    iget v0, p0, Lsdk/c/a/b/a/a/d;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/c/a/b/a/a/d;->q:I

    iget v0, p0, Lsdk/c/a/b/a/a/d;->q:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lsdk/c/a/b/a/a/d;->q:I

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "NioConnection Read EOF!"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lsdk/c/a/b/a/a/d;->p:Z

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sget-boolean v2, Lsdk/c/a/b/d;->f:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v2

    iget-wide v3, v2, Lsdk/c/a/b/d;->d:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lsdk/c/a/b/d;->d:J

    :goto_1
    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->t:Lsdk/c/a/b/c;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->t:Lsdk/c/a/b/c;

    iget-object v2, p0, Lsdk/c/a/b/a/a/d;->v:Lsdk/c/a/b/e;

    iget-object v3, p0, Lsdk/c/a/b/a/a/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p0, v2, v3}, Lsdk/c/a/b/c;->b(Lsdk/c/a/b/f;Lsdk/c/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_5
    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v2

    iget-wide v3, v2, Lsdk/c/a/b/d;->b:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lsdk/c/a/b/d;->b:J
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method private b(Ljava/nio/channels/SocketChannel;)J
    .locals 11

    const/4 v3, 0x0

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/c/a/b/a/a/f;

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->v:Lsdk/c/a/b/e;

    iput-object v1, v0, Lsdk/c/a/b/a/a/f;->v:Lsdk/c/a/b/e;

    iget-object v1, v0, Lsdk/c/a/b/a/a/f;->b:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lsdk/c/a/b/a/a/f;->b:Ljava/nio/ByteBuffer;

    move v1, v2

    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_2
    if-lez v0, :cond_2

    :try_start_2
    sget-boolean v1, Lsdk/c/a/b/d;->f:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v1

    iget-wide v6, v1, Lsdk/c/a/b/d;->e:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v1, Lsdk/c/a/b/d;->e:J

    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->t:Lsdk/c/a/b/c;

    iget-object v6, p0, Lsdk/c/a/b/a/a/d;->v:Lsdk/c/a/b/e;

    iget-object v7, v0, Lsdk/c/a/b/a/a/f;->u:Ljava/lang/Object;

    invoke-virtual {v1, v0, v6, v7}, Lsdk/c/a/b/c;->a(Lsdk/c/a/b/f;Lsdk/c/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lsdk/c/a/b/a/a/f;->b:Ljava/nio/ByteBuffer;

    move v10, v2

    move-object v2, v1

    move v1, v10

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_2

    :cond_1
    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v1

    iget-wide v6, v1, Lsdk/c/a/b/d;->c:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v1, Lsdk/c/a/b/d;->c:J

    move v1, v0

    goto :goto_1

    :cond_2
    if-gez v0, :cond_3

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v2, p0, Lsdk/c/a/b/a/a/d;->n:Lsdk/c/a/b/a/a/c;

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v2, v0}, Lsdk/c/a/b/a/a/c;->a(Z)V

    throw v1

    :cond_3
    if-nez v0, :cond_4

    add-int/lit8 v1, v3, 0x1

    const/16 v6, 0x8c

    if-ge v3, v6, :cond_4

    const-wide/16 v6, 0xc8

    :try_start_3
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "write data error!"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/c/a/b/a/a/f;

    iget v2, v0, Lsdk/c/a/b/a/a/f;->L:I

    if-lez v2, :cond_6

    iget-object v2, v0, Lsdk/c/a/b/a/a/f;->Q:Lsdk/c/a/e/a/g;

    if-eqz v2, :cond_6

    iput-wide v4, v0, Lsdk/c/a/e/d;->J:J

    iget-object v2, p0, Lsdk/c/a/b/a/a/d;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->m:Ljava/util/List;

    iget-object v2, p0, Lsdk/c/a/b/a/a/d;->r:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_4
    const/4 v3, 0x0

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, -0x1

    :goto_5
    iget-object v3, p0, Lsdk/c/a/b/a/a/d;->n:Lsdk/c/a/b/a/a/c;

    iget-object v2, p0, Lsdk/c/a/b/a/a/d;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v2}, Lsdk/c/a/b/a/a/c;->a(Z)V

    :goto_7
    return-wide v0

    :cond_6
    :try_start_4
    invoke-virtual {v0}, Lsdk/c/a/b/a/a/f;->l()V

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->m:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/c/a/b/a/a/f;

    iget v0, v0, Lsdk/c/a/b/a/a/f;->L:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v0

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    const-wide/16 v0, -0x1

    goto :goto_7

    :cond_b
    move v2, v1

    goto/16 :goto_0
.end method

.method public static g()Lsdk/c/a/b/a/a/d;
    .locals 1

    sget-object v0, Lsdk/c/a/b/a/a/d;->h:Lsdk/c/a/b/a/a/d;

    return-object v0
.end method


# virtual methods
.method public final a_()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->n:Lsdk/c/a/b/a/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, v1, Lsdk/c/a/b/a/a/c;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lsdk/c/a/b/a/a/c;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    iget-object v0, v1, Lsdk/c/a/b/a/a/c;->d:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lsdk/c/a/b/a/a/c;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    iget-object v0, v1, Lsdk/c/a/b/a/a/c;->d:Ljava/nio/channels/SelectionKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, v1, Lsdk/c/a/b/a/a/c;->d:Ljava/nio/channels/SelectionKey;

    iget-object v0, v1, Lsdk/c/a/b/a/a/c;->e:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lsdk/c/a/b/a/a/c;->e:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    iget-object v0, v1, Lsdk/c/a/b/a/a/c;->e:Ljava/nio/channels/SelectionKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, v1, Lsdk/c/a/b/a/a/c;->e:Ljava/nio/channels/SelectionKey;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, v1, Lsdk/c/a/b/a/a/c;->a:Ljava/nio/channels/SocketChannel;

    const/4 v0, 0x0

    iput-object v0, v1, Lsdk/c/a/b/a/a/c;->f:Ljava/nio/channels/Selector;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_3

    :try_start_4
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    iput-object v4, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    iput-object v4, p0, Lsdk/c/a/b/a/a/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/c/a/b/a/a/f;

    invoke-virtual {v0}, Lsdk/c/a/b/a/a/f;->l()V

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v2, v1, Lsdk/c/a/b/a/a/c;->d:Ljava/nio/channels/SelectionKey;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lsdk/c/a/b/a/a/c;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    iget-object v2, v1, Lsdk/c/a/b/a/a/c;->d:Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v2, 0x0

    iput-object v2, v1, Lsdk/c/a/b/a/a/c;->d:Ljava/nio/channels/SelectionKey;

    iget-object v2, v1, Lsdk/c/a/b/a/a/c;->e:Ljava/nio/channels/SelectionKey;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lsdk/c/a/b/a/a/c;->e:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    iget-object v2, v1, Lsdk/c/a/b/a/a/c;->e:Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v2, 0x0

    iput-object v2, v1, Lsdk/c/a/b/a/a/c;->e:Ljava/nio/channels/SelectionKey;

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_7
    iput-object v4, p0, Lsdk/c/a/b/a/a/d;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/c/a/b/a/a/f;

    invoke-virtual {v0}, Lsdk/c/a/b/a/a/f;->l()V

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_9
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iput-object v4, p0, Lsdk/c/a/b/a/a/d;->o:Ljava/nio/ByteBuffer;

    iput-object v4, p0, Lsdk/c/a/b/a/a/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v4, p0, Lsdk/c/a/b/a/a/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lsdk/c/a/b/a/a/d;->h:Lsdk/c/a/b/a/a/d;

    if-ne v0, p0, :cond_a

    sput-object v4, Lsdk/c/a/b/a/a/d;->h:Lsdk/c/a/b/a/a/d;

    :cond_a
    invoke-super {p0}, Lsdk/c/a/b/f;->a_()V

    return-void

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method public final b()I
    .locals 1

    const/16 v0, -0x7ff

    return v0
.end method

.method public final c()V
    .locals 12

    const/4 v8, 0x2

    const-wide/16 v10, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lsdk/c/a/b/f;->c()V

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->v:Lsdk/c/a/b/e;

    if-nez v0, :cond_f

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    :cond_0
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->n:Lsdk/c/a/b/a/a/c;

    if-nez v0, :cond_1

    new-instance v0, Lsdk/c/a/b/a/a/c;

    iget-object v3, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    invoke-direct {v0, v3}, Lsdk/c/a/b/a/a/c;-><init>(Ljava/nio/channels/Selector;)V

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->n:Lsdk/c/a/b/a/a/c;

    :cond_1
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->n:Lsdk/c/a/b/a/a/c;

    iget-object v3, v0, Lsdk/c/a/b/a/a/c;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lsdk/c/a/b/a/a/c;->b:Z

    if-eqz v3, :cond_3

    :cond_2
    :goto_0
    if-nez v1, :cond_6

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->n:Lsdk/c/a/b/a/a/c;

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->s:Ljava/lang/String;

    iget-boolean v3, v1, Lsdk/c/a/b/a/a/c;->b:Z

    if-eqz v3, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    iget-object v3, v0, Lsdk/c/a/b/a/a/c;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lsdk/c/a/b/a/a/c;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, v0, Lsdk/c/a/b/a/a/c;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lsdk/c/a/b/a/a/c;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    invoke-static {v0}, Lsdk/c/a/b/g;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/net/InetSocketAddress;

    aget-object v5, v0, v2

    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v4, v5, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v0, v1, Lsdk/c/a/b/a/a/c;->f:Ljava/nio/channels/Selector;

    const/16 v5, 0x8

    invoke-virtual {v3, v0, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, v1, Lsdk/c/a/b/a/a/c;->d:Ljava/nio/channels/SelectionKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lsdk/c/a/b/a/a/c;->c:J

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    const-string v0, "connected"

    invoke-static {v0}, Lsdk/c/a/c/a;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "connecting|"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/c/a/c/a;->a(Ljava/lang/String;)V

    iput-object v3, v1, Lsdk/c/a/b/a/a/c;->a:Ljava/nio/channels/SocketChannel;

    :cond_6
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lsdk/c/a/b/a/a/a;

    invoke-direct {v0}, Lsdk/c/a/b/a/a/a;-><init>()V

    iput v8, v0, Lsdk/c/a/b/a/a/a;->a:I

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_7
    const-string v0, "0.0.0.0"

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    iget-wide v3, p0, Lsdk/c/a/b/a/a/d;->f:J

    invoke-virtual {v0, v3, v4}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v1

    if-eqz v1, :cond_9

    iput-boolean v2, p0, Lsdk/c/a/b/a/a/d;->e:Z

    new-instance v1, Lsdk/c/a/b/e;

    invoke-direct {v1}, Lsdk/c/a/b/e;-><init>()V

    iput-object v1, p0, Lsdk/c/a/b/a/a/d;->v:Lsdk/c/a/b/e;

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->v:Lsdk/c/a/b/e;

    iget-object v5, p0, Lsdk/c/a/b/a/a/d;->n:Lsdk/c/a/b/a/a/c;

    invoke-virtual {v1, v5}, Lsdk/c/a/b/e;->a(Lsdk/c/a/b/b;)V

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v1, "connected|"

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->getPort()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v6, :cond_b

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/c/a/c/a;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const-string v1, "0.0.0.0"

    goto :goto_3

    :cond_b
    const-string v1, "0.0.0.0"

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->v:Lsdk/c/a/b/e;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->n:Lsdk/c/a/b/a/a/c;

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    iput-object v1, v0, Lsdk/c/a/b/a/a/c;->f:Ljava/nio/channels/Selector;

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->n:Lsdk/c/a/b/a/a/c;

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->n:Lsdk/c/a/b/a/a/c;

    invoke-virtual {v1}, Lsdk/c/a/b/a/a/c;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    iget-object v3, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v1, v3, v2}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    iput-object v1, v0, Lsdk/c/a/b/a/a/c;->e:Ljava/nio/channels/SelectionKey;

    :cond_d
    :goto_5
    return-void

    :cond_e
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0

    :cond_f
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->n:Lsdk/c/a/b/a/a/c;

    iget-boolean v0, v0, Lsdk/c/a/b/a/a/c;->b:Z

    if-eqz v0, :cond_12

    :cond_10
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lsdk/c/a/b/a/a/a;

    invoke-direct {v0}, Lsdk/c/a/b/a/a/a;-><init>()V

    iput v2, v0, Lsdk/c/a/b/a/a/a;->a:I

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    :cond_11
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_12
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->n:Lsdk/c/a/b/a/a/c;

    invoke-virtual {v0, v2}, Lsdk/c/a/b/a/a/c;->a(Z)V

    :cond_13
    iget-wide v3, p0, Lsdk/c/a/b/a/a/d;->i:J

    cmp-long v0, v3, v10

    if-gez v0, :cond_14

    iput-wide v10, p0, Lsdk/c/a/b/a/a/d;->i:J

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lsdk/c/a/b/a/a/d;->j:J

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-wide v3, p0, Lsdk/c/a/b/a/a/d;->i:J

    cmp-long v0, v3, v10

    if-lez v0, :cond_15

    sget-object v0, Lsdk/c/a/b/a/a/d;->R:Lsdk/c/a/e/e;

    iget-wide v3, p0, Lsdk/c/a/b/a/a/d;->j:J

    iget-wide v5, p0, Lsdk/c/a/b/a/a/d;->i:J

    add-long/2addr v3, v5

    sget-wide v5, Lsdk/c/a/e/e;->A:J

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lsdk/c/a/e/e;->b(J)V

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    iget-wide v3, p0, Lsdk/c/a/b/a/a/d;->i:J

    invoke-virtual {v0, v3, v4}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    sget-object v3, Lsdk/c/a/b/a/a/d;->R:Lsdk/c/a/e/e;

    invoke-virtual {v3}, Lsdk/c/a/e/e;->g()V

    :goto_6
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lsdk/c/a/b/a/a/d;->i:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lsdk/c/a/b/a/a/d;->j:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lsdk/c/a/b/a/a/d;->k:J

    iget-wide v3, p0, Lsdk/c/a/b/a/a/d;->k:J

    const-wide/16 v5, 0x1e

    cmp-long v3, v3, v5

    if-gez v3, :cond_18

    if-nez v0, :cond_18

    iget v3, p0, Lsdk/c/a/b/a/a/d;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lsdk/c/a/b/a/a/d;->g:I

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget v3, p0, Lsdk/c/a/b/a/a/d;->g:I

    const/16 v4, 0x3b

    if-le v3, v4, :cond_19

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->b:Ljava/nio/channels/Selector;

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lsdk/c/a/b/a/a/d;->n:Lsdk/c/a/b/a/a/c;

    iget-object v4, p0, Lsdk/c/a/b/a/a/d;->n:Lsdk/c/a/b/a/a/c;

    iget-object v4, v4, Lsdk/c/a/b/a/a/c;->a:Ljava/nio/channels/SocketChannel;

    iget-object v5, p0, Lsdk/c/a/b/a/a/d;->b:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v6

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v6, v0}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, v3, Lsdk/c/a/b/a/a/c;->e:Ljava/nio/channels/SelectionKey;

    goto :goto_7

    :cond_15
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    goto :goto_6

    :cond_16
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_7

    :cond_17
    iput v1, p0, Lsdk/c/a/b/a/a/d;->g:I

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->b:Ljava/nio/channels/Selector;

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    goto/16 :goto_5

    :cond_18
    iput v1, p0, Lsdk/c/a/b/a/a/d;->g:I

    :cond_19
    if-lez v0, :cond_1c

    iput-boolean v1, p0, Lsdk/c/a/b/a/a/d;->p:Z

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/nio/channels/SelectionKey;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-direct {p0, v0}, Lsdk/c/a/b/a/a/d;->b(Ljava/nio/channels/SocketChannel;)J

    move-result-wide v4

    iput-wide v4, p0, Lsdk/c/a/b/a/a/d;->i:J

    :cond_1b
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-direct {p0, v0}, Lsdk/c/a/b/a/a/d;->a(Ljava/nio/channels/SocketChannel;)V

    goto :goto_8

    :cond_1c
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1d
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/c/a/b/a/a/f;

    iget-object v6, v0, Lsdk/c/a/b/a/a/f;->Q:Lsdk/c/a/e/a/g;

    if-eqz v6, :cond_23

    iget-object v6, v0, Lsdk/c/a/b/a/a/f;->Q:Lsdk/c/a/e/a/g;

    invoke-interface {v6}, Lsdk/c/a/e/a/g;->c()Z

    move-result v6

    if-eqz v6, :cond_22

    iget-boolean v6, p0, Lsdk/c/a/b/a/a/d;->p:Z

    if-nez v6, :cond_1e

    if-eqz v1, :cond_1f

    :cond_1e
    invoke-virtual {v0}, Lsdk/c/a/b/a/a/f;->l()V

    iget-object v0, v0, Lsdk/c/a/b/a/a/f;->Q:Lsdk/c/a/e/a/g;

    move v0, v1

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    move v1, v0

    goto :goto_9

    :cond_1f
    iget-object v6, v0, Lsdk/c/a/b/a/a/f;->Q:Lsdk/c/a/e/a/g;

    invoke-interface {v6, v3, v4, v0}, Lsdk/c/a/e/a/g;->a(JLsdk/c/a/e/d;)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual {v0}, Lsdk/c/a/b/a/a/f;->l()V

    iget-object v0, v0, Lsdk/c/a/b/a/a/f;->Q:Lsdk/c/a/e/a/g;

    invoke-interface {v0}, Lsdk/c/a/e/a/g;->b()V

    move v0, v2

    goto :goto_a

    :cond_20
    iget-object v6, v0, Lsdk/c/a/b/a/a/f;->Q:Lsdk/c/a/e/a/g;

    invoke-interface {v6, v3, v4, v0}, Lsdk/c/a/e/a/g;->b(JLsdk/c/a/e/d;)J

    move-result-wide v6

    iget-wide v8, p0, Lsdk/c/a/b/a/a/d;->i:J

    cmp-long v0, v8, v10

    if-ltz v0, :cond_21

    iget-wide v8, p0, Lsdk/c/a/b/a/a/d;->i:J

    cmp-long v0, v8, v6

    if-gez v0, :cond_1d

    :cond_21
    iput-wide v6, p0, Lsdk/c/a/b/a/a/d;->i:J

    goto :goto_9

    :cond_22
    invoke-virtual {v0}, Lsdk/c/a/b/a/a/f;->l()V

    move v0, v1

    goto :goto_a

    :cond_23
    invoke-virtual {v0}, Lsdk/c/a/b/a/a/f;->l()V

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_24
    if-eqz v1, :cond_d

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "SocketTask do timeOut!"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0}, Lsdk/c/a/b/f;->e()V

    iput-boolean v0, p0, Lsdk/c/a/b/a/a/d;->z:Z

    iput-boolean v0, p0, Lsdk/c/a/b/a/a/d;->A:Z

    return-void
.end method

.method protected final f()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_2
    return-void
.end method
