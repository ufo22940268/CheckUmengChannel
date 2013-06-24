.class public final Lsdk/c/a/b/a/a/d;
.super Lsdk/c/a/b/f;


# static fields
.field static volatile l:Lsdk/c/a/b/a/a/d;


# instance fields
.field e:Ljava/nio/channels/Selector;

.field f:Ljava/nio/channels/Selector;

.field g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile i:Z

.field final j:J

.field k:I

.field volatile m:J

.field volatile n:J

.field volatile o:J

.field p:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field q:Ljava/util/List;

.field r:Lsdk/c/a/b/a/a/c;

.field s:Ljava/nio/ByteBuffer;

.field t:Z

.field u:I

.field final v:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lsdk/c/a/b/c;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lsdk/c/a/b/f;-><init>(ILjava/lang/String;Lsdk/c/a/b/c;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lsdk/c/a/b/a/a/d;->j:J

    new-instance v0, Lsdk/c/a/b/a/a/e;

    invoke-direct {v0, p0}, Lsdk/c/a/b/a/a/e;-><init>(Lsdk/c/a/b/a/a/d;)V

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->v:Ljava/util/Comparator;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->q:Ljava/util/List;

    const v0, 0xf000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->s:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static a(Ljava/lang/String;Lsdk/c/a/b/c;)Lsdk/c/a/b/a/a/d;
    .locals 2

    sget-object v0, Lsdk/c/a/b/a/a/d;->l:Lsdk/c/a/b/a/a/d;

    if-eqz v0, :cond_1

    sget-object v0, Lsdk/c/a/b/a/a/d;->l:Lsdk/c/a/b/a/a/d;

    iget-boolean v0, v0, Lsdk/c/a/b/a/a/d;->F:Z

    if-nez v0, :cond_1

    sget-object v0, Lsdk/c/a/b/a/a/d;->l:Lsdk/c/a/b/a/a/d;

    iget-boolean v0, v0, Lsdk/c/a/b/a/a/d;->x:Z

    if-nez v0, :cond_1

    sget-object v0, Lsdk/c/a/b/a/a/d;->l:Lsdk/c/a/b/a/a/d;

    iget-object v0, v0, Lsdk/c/a/b/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lsdk/c/a/b/a/a/d;->l:Lsdk/c/a/b/a/a/d;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lsdk/c/a/b/a/a/d;

    const/16 v1, -0x7ff

    invoke-direct {v0, v1, p0, p1}, Lsdk/c/a/b/a/a/d;-><init>(ILjava/lang/String;Lsdk/c/a/b/c;)V

    sput-object v0, Lsdk/c/a/b/a/a/d;->l:Lsdk/c/a/b/a/a/d;

    goto :goto_0
.end method

.method public static h()Lsdk/c/a/b/a/a/d;
    .locals 1

    sget-object v0, Lsdk/c/a/b/a/a/d;->l:Lsdk/c/a/b/a/a/d;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/nio/channels/SocketChannel;)V
    .locals 7

    :cond_0
    :try_start_0
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_1

    iget v0, p0, Lsdk/c/a/b/a/a/d;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/c/a/b/a/a/d;->u:I

    iget v0, p0, Lsdk/c/a/b/a/a/d;->u:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lsdk/c/a/b/a/a/d;->u:I

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
    iput-boolean v1, p0, Lsdk/c/a/b/a/a/d;->t:Z

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->s:Ljava/nio/ByteBuffer;

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
    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->b:Lsdk/c/a/b/c;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->b:Lsdk/c/a/b/c;

    iget-object v2, p0, Lsdk/c/a/b/a/a/d;->d:Lsdk/c/a/b/e;

    iget-object v3, p0, Lsdk/c/a/b/a/a/d;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p0, v2, v3}, Lsdk/c/a/b/c;->c(Lsdk/c/a/b/f;Lsdk/c/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->s:Ljava/nio/ByteBuffer;

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

.method public final b()I
    .locals 1

    const/16 v0, -0x7ff

    return v0
.end method

.method final b(Ljava/nio/channels/SocketChannel;)J
    .locals 11

    const/4 v3, 0x0

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/c/a/b/a/a/f;

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->d:Lsdk/c/a/b/e;

    iput-object v1, v0, Lsdk/c/a/b/a/a/f;->d:Lsdk/c/a/b/e;

    iget-object v1, v0, Lsdk/c/a/b/a/a/f;->f:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lsdk/c/a/b/a/a/f;->f:Ljava/nio/ByteBuffer;

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
    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->b:Lsdk/c/a/b/c;

    iget-object v6, p0, Lsdk/c/a/b/a/a/d;->d:Lsdk/c/a/b/e;

    iget-object v7, v0, Lsdk/c/a/b/a/a/f;->c:Ljava/lang/Object;

    invoke-virtual {v1, v0, v6, v7}, Lsdk/c/a/b/c;->a(Lsdk/c/a/b/f;Lsdk/c/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lsdk/c/a/b/a/a/f;->f:Ljava/nio/ByteBuffer;

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

    iget-object v2, p0, Lsdk/c/a/b/a/a/d;->r:Lsdk/c/a/b/a/a/c;

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v2, v0}, Lsdk/c/a/b/a/a/c;->b(Z)V

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
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/c/a/b/a/a/f;

    iget v2, v0, Lsdk/c/a/b/a/a/f;->L:I

    if-lez v2, :cond_6

    iget-object v2, v0, Lsdk/c/a/b/a/a/f;->Q:Lsdk/c/a/e/a/g;

    if-eqz v2, :cond_6

    invoke-virtual {v0, v4, v5}, Lsdk/c/a/b/a/a/f;->a(J)V

    iget-object v2, p0, Lsdk/c/a/b/a/a/d;->q:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->q:Ljava/util/List;

    iget-object v2, p0, Lsdk/c/a/b/a/a/d;->v:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_4
    const/4 v3, 0x0

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, -0x1

    :goto_5
    iget-object v3, p0, Lsdk/c/a/b/a/a/d;->r:Lsdk/c/a/b/a/a/c;

    iget-object v2, p0, Lsdk/c/a/b/a/a/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v2}, Lsdk/c/a/b/a/a/c;->b(Z)V

    :goto_7
    return-wide v0

    :cond_6
    :try_start_4
    invoke-virtual {v0}, Lsdk/c/a/b/a/a/f;->n()V

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->q:Ljava/util/List;

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

.method public b_()V
    .locals 12

    const/4 v2, 0x1

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lsdk/c/a/b/f;->b_()V

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->d:Lsdk/c/a/b/e;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lsdk/c/a/b/a/a/d;->g()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->r:Lsdk/c/a/b/a/a/c;

    iget-boolean v0, v0, Lsdk/c/a/b/a/a/c;->b:Z

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lsdk/c/a/b/a/a/a;

    invoke-direct {v0}, Lsdk/c/a/b/a/a/a;-><init>()V

    iput v2, v0, Lsdk/c/a/b/a/a/a;->a:I

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_4
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->r:Lsdk/c/a/b/a/a/c;

    invoke-virtual {v0, v2}, Lsdk/c/a/b/a/a/c;->b(Z)V

    :cond_5
    iget-wide v3, p0, Lsdk/c/a/b/a/a/d;->m:J

    cmp-long v0, v3, v10

    if-gez v0, :cond_6

    iput-wide v10, p0, Lsdk/c/a/b/a/a/d;->m:J

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lsdk/c/a/b/a/a/d;->n:J

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-wide v3, p0, Lsdk/c/a/b/a/a/d;->m:J

    cmp-long v0, v3, v10

    if-lez v0, :cond_7

    sget-object v0, Lsdk/c/a/b/a/a/d;->R:Lsdk/c/a/e/e;

    iget-wide v3, p0, Lsdk/c/a/b/a/a/d;->n:J

    iget-wide v5, p0, Lsdk/c/a/b/a/a/d;->m:J

    add-long/2addr v3, v5

    sget-wide v5, Lsdk/c/a/e/e;->A:J

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lsdk/c/a/e/e;->b(J)V

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    iget-wide v3, p0, Lsdk/c/a/b/a/a/d;->m:J

    invoke-virtual {v0, v3, v4}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    sget-object v3, Lsdk/c/a/b/a/a/d;->R:Lsdk/c/a/e/e;

    invoke-virtual {v3}, Lsdk/c/a/e/e;->g()V

    :goto_1
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lsdk/c/a/b/a/a/d;->m:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lsdk/c/a/b/a/a/d;->n:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lsdk/c/a/b/a/a/d;->o:J

    iget-wide v3, p0, Lsdk/c/a/b/a/a/d;->o:J

    const-wide/16 v5, 0x1e

    cmp-long v3, v3, v5

    if-gez v3, :cond_a

    if-nez v0, :cond_a

    iget v3, p0, Lsdk/c/a/b/a/a/d;->k:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lsdk/c/a/b/a/a/d;->k:I

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget v3, p0, Lsdk/c/a/b/a/a/d;->k:I

    const/16 v4, 0x3b

    if-le v3, v4, :cond_b

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->f:Ljava/nio/channels/Selector;

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lsdk/c/a/b/a/a/d;->r:Lsdk/c/a/b/a/a/c;

    iget-object v4, p0, Lsdk/c/a/b/a/a/d;->r:Lsdk/c/a/b/a/a/c;

    iget-object v4, v4, Lsdk/c/a/b/a/a/c;->a:Ljava/nio/channels/SocketChannel;

    iget-object v5, p0, Lsdk/c/a/b/a/a/d;->f:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v6

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v6, v0}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, v3, Lsdk/c/a/b/a/a/c;->e:Ljava/nio/channels/SelectionKey;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_2

    :cond_9
    iput v1, p0, Lsdk/c/a/b/a/a/d;->k:I

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->f:Ljava/nio/channels/Selector;

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    goto/16 :goto_0

    :cond_a
    iput v1, p0, Lsdk/c/a/b/a/a/d;->k:I

    :cond_b
    if-lez v0, :cond_e

    iput-boolean v1, p0, Lsdk/c/a/b/a/a/d;->t:Z

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, v1}, Lsdk/c/a/b/a/a/d;->b(Ljava/nio/channels/SocketChannel;)J

    move-result-wide v4

    iput-wide v4, p0, Lsdk/c/a/b/a/a/d;->m:J

    :cond_d
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, v0}, Lsdk/c/a/b/a/a/d;->a(Ljava/nio/channels/SocketChannel;)V

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/c/a/b/a/a/f;

    iget-object v6, v0, Lsdk/c/a/b/a/a/f;->Q:Lsdk/c/a/e/a/g;

    if-eqz v6, :cond_15

    iget-object v6, v0, Lsdk/c/a/b/a/a/f;->Q:Lsdk/c/a/e/a/g;

    invoke-interface {v6}, Lsdk/c/a/e/a/g;->b()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-boolean v6, p0, Lsdk/c/a/b/a/a/d;->t:Z

    if-nez v6, :cond_10

    if-eqz v1, :cond_11

    :cond_10
    invoke-virtual {v0}, Lsdk/c/a/b/a/a/f;->n()V

    iget-object v6, v0, Lsdk/c/a/b/a/a/f;->Q:Lsdk/c/a/e/a/g;

    invoke-interface {v6, v0}, Lsdk/c/a/e/a/g;->b(Lsdk/c/a/e/d;)V

    move v0, v1

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    move v1, v0

    goto :goto_4

    :cond_11
    iget-object v6, v0, Lsdk/c/a/b/a/a/f;->Q:Lsdk/c/a/e/a/g;

    invoke-interface {v6, v3, v4, v0}, Lsdk/c/a/e/a/g;->a(JLsdk/c/a/e/d;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v0}, Lsdk/c/a/b/a/a/f;->n()V

    iget-object v1, v0, Lsdk/c/a/b/a/a/f;->Q:Lsdk/c/a/e/a/g;

    invoke-interface {v1, v0}, Lsdk/c/a/e/a/g;->a(Lsdk/c/a/e/d;)V

    move v0, v2

    goto :goto_5

    :cond_12
    iget-object v6, v0, Lsdk/c/a/b/a/a/f;->Q:Lsdk/c/a/e/a/g;

    invoke-interface {v6, v3, v4, v0}, Lsdk/c/a/e/a/g;->b(JLsdk/c/a/e/d;)J

    move-result-wide v6

    iget-wide v8, p0, Lsdk/c/a/b/a/a/d;->m:J

    cmp-long v0, v8, v10

    if-ltz v0, :cond_13

    iget-wide v8, p0, Lsdk/c/a/b/a/a/d;->m:J

    cmp-long v0, v8, v6

    if-gez v0, :cond_f

    :cond_13
    iput-wide v6, p0, Lsdk/c/a/b/a/a/d;->m:J

    goto :goto_4

    :cond_14
    invoke-virtual {v0}, Lsdk/c/a/b/a/a/f;->n()V

    move v0, v1

    goto :goto_5

    :cond_15
    invoke-virtual {v0}, Lsdk/c/a/b/a/a/f;->n()V

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_16
    if-eqz v1, :cond_0

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "SocketTask do timeOut!"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0}, Lsdk/c/a/b/f;->d()V

    iput-boolean v0, p0, Lsdk/c/a/b/a/a/d;->z:Z

    iput-boolean v0, p0, Lsdk/c/a/b/a/a/d;->A:Z

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->r:Lsdk/c/a/b/a/a/c;

    invoke-virtual {v0}, Lsdk/c/a/b/a/a/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    iput-object v3, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    iput-object v3, p0, Lsdk/c/a/b/a/a/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/c/a/b/a/a/f;

    invoke-virtual {v0}, Lsdk/c/a/b/a/a/f;->n()V

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_2
    iput-object v3, p0, Lsdk/c/a/b/a/a/d;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/c/a/b/a/a/f;

    invoke-virtual {v0}, Lsdk/c/a/b/a/a/f;->n()V

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iput-object v3, p0, Lsdk/c/a/b/a/a/d;->s:Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lsdk/c/a/b/a/a/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v3, p0, Lsdk/c/a/b/a/a/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lsdk/c/a/b/a/a/d;->l:Lsdk/c/a/b/a/a/d;

    if-ne v0, p0, :cond_5

    sput-object v3, Lsdk/c/a/b/a/a/d;->l:Lsdk/c/a/b/a/a/d;

    :cond_5
    invoke-super {p0}, Lsdk/c/a/b/f;->f()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method final g()V
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    :cond_0
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->r:Lsdk/c/a/b/a/a/c;

    if-nez v0, :cond_1

    new-instance v0, Lsdk/c/a/b/a/a/c;

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    invoke-direct {v0, v1}, Lsdk/c/a/b/a/a/c;-><init>(Ljava/nio/channels/Selector;)V

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->r:Lsdk/c/a/b/a/a/c;

    :cond_1
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->r:Lsdk/c/a/b/a/a/c;

    invoke-virtual {v0}, Lsdk/c/a/b/a/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->r:Lsdk/c/a/b/a/a/c;

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsdk/c/a/b/a/a/c;->a(Ljava/lang/String;)Z

    :cond_2
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lsdk/c/a/b/a/a/a;

    invoke-direct {v0}, Lsdk/c/a/b/a/a/a;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lsdk/c/a/b/a/a/a;->a:I

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_3
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    iget-wide v1, p0, Lsdk/c/a/b/a/a/d;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v7, p0, Lsdk/c/a/b/a/a/d;->i:Z

    new-instance v1, Lsdk/c/a/b/e;

    invoke-direct {v1}, Lsdk/c/a/b/e;-><init>()V

    iput-object v1, p0, Lsdk/c/a/b/a/a/d;->d:Lsdk/c/a/b/e;

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->d:Lsdk/c/a/b/e;

    iget-object v4, p0, Lsdk/c/a/b/a/a/d;->r:Lsdk/c/a/b/a/a/c;

    invoke-virtual {v1, v4}, Lsdk/c/a/b/e;->a(Lsdk/c/a/b/b;)V

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connected|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getPort()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    goto/16 :goto_0

    :cond_5
    const-string v1, "0.0.0.0"

    goto :goto_1

    :cond_6
    const-string v1, "0.0.0.0"

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->d:Lsdk/c/a/b/e;

    if-nez v0, :cond_8

    :goto_3
    return-void

    :cond_8
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->r:Lsdk/c/a/b/a/a/c;

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v1}, Lsdk/c/a/b/a/a/c;->a(Ljava/nio/channels/Selector;)V

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->r:Lsdk/c/a/b/a/a/c;

    iget-object v1, p0, Lsdk/c/a/b/a/a/d;->r:Lsdk/c/a/b/a/a/c;

    invoke-virtual {v1}, Lsdk/c/a/b/a/a/c;->c()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    iget-object v2, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v1, v2, v7}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    iput-object v1, v0, Lsdk/c/a/b/a/a/c;->e:Ljava/nio/channels/SelectionKey;

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsdk/c/a/b/a/a/d;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_2
    return-void
.end method
