.class public abstract Lsdk/c/a/e/d;
.super Lsdk/c/a/e/a;

# interfaces
.implements Lsdk/c/a/e/a/a;


# static fields
.field protected static R:Lsdk/c/a/e/e;


# instance fields
.field protected volatile A:Z

.field protected volatile B:Z

.field protected volatile C:Z

.field protected volatile D:Z

.field protected volatile E:Z

.field protected volatile F:Z

.field protected volatile G:Z

.field protected volatile H:J

.field volatile I:I

.field public J:J

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:Ljava/lang/Exception;

.field public P:Ljava/lang/Object;

.field public Q:Lsdk/c/a/e/a/g;

.field protected final S:Ljava/util/concurrent/locks/ReentrantLock;

.field protected final T:Ljava/util/concurrent/locks/Condition;

.field U:Ljava/lang/Thread;

.field V:I

.field protected W:Lsdk/c/a/e/a/d;

.field private a:B

.field protected volatile x:Z

.field protected volatile y:Z

.field protected volatile z:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsdk/c/a/e/d;-><init>(ILsdk/c/a/e/a/d;)V

    return-void
.end method

.method public constructor <init>(ILsdk/c/a/e/a/d;)V
    .locals 1

    invoke-direct {p0}, Lsdk/c/a/e/a;-><init>()V

    iput p1, p0, Lsdk/c/a/e/d;->M:I

    iput-object p2, p0, Lsdk/c/a/e/d;->W:Lsdk/c/a/e/a/d;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lsdk/c/a/e/d;->S:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lsdk/c/a/e/d;->S:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lsdk/c/a/e/d;->T:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;)I
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    sget-object v1, Lsdk/c/a/e/d;->R:Lsdk/c/a/e/e;

    iget-object v1, v1, Lsdk/c/a/e/e;->m:Lsdk/c/a/e/c;

    invoke-virtual {v1, p0, p1, p2, p3}, Lsdk/c/a/e/c;->a(Lsdk/c/a/e/d;JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, -0x2

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsdk/c/a/e/d;->H:J

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    invoke-virtual {p0}, Lsdk/c/a/e/d;->m()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(I)V
    .locals 2

    iget-byte v0, p0, Lsdk/c/a/e/d;->a:B

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lsdk/c/a/e/d;->a:B

    iget-byte v0, p0, Lsdk/c/a/e/d;->a:B

    and-int/lit8 v1, p1, 0xf

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lsdk/c/a/e/d;->a:B

    return-void
.end method

.method public final a(ILsdk/c/a/e/a/g;)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "second must > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lsdk/c/a/e/d;->L:I

    iput-object p2, p0, Lsdk/c/a/e/d;->Q:Lsdk/c/a/e/a/g;

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lsdk/c/a/e/d;->J:J

    return-void
.end method

.method public final a(Lsdk/c/a/e/a/d;)V
    .locals 0

    iput-object p1, p0, Lsdk/c/a/e/d;->W:Lsdk/c/a/e/a/d;

    return-void
.end method

.method public b_()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lsdk/c/a/e/d;->U:Ljava/lang/Thread;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/c/a/e/d;->B:Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lsdk/c/a/e/d;->x:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lsdk/c/a/e/d;->y:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lsdk/c/a/e/d;->f()V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/c/a/e/d;->E:Z

    return-void
.end method

.method protected abstract e()V
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lsdk/c/a/e/d;->P:Ljava/lang/Object;

    iput-object v0, p0, Lsdk/c/a/e/d;->O:Ljava/lang/Exception;

    iput-object v0, p0, Lsdk/c/a/e/d;->U:Ljava/lang/Thread;

    return-void
.end method

.method final l()V
    .locals 2

    iget v0, p0, Lsdk/c/a/e/d;->V:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/c/a/e/d;->V:I

    iget v0, p0, Lsdk/c/a/e/d;->V:I

    const v1, 0x40fffffe

    and-int/2addr v0, v1

    iput v0, p0, Lsdk/c/a/e/d;->V:I

    return-void
.end method

.method m()J
    .locals 4

    iget-wide v0, p0, Lsdk/c/a/e/d;->H:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/c/a/e/d;->x:Z

    return-void
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lsdk/c/a/e/d;->z:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lsdk/c/a/e/d;->y:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Lsdk/c/a/e/d;->E:Z

    return v0
.end method

.method protected r()V
    .locals 0

    return-void
.end method

.method public final s()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/c/a/e/d;->y:Z

    return-void
.end method

.method protected t()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lsdk/c/a/e/d;->A:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lsdk/c/a/e/d;->C:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lsdk/c/a/e/d;->D:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/c/a/e/d;->x:Z

    iput-boolean v1, p0, Lsdk/c/a/e/d;->B:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lsdk/c/a/e/d;->C:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lsdk/c/a/e/d;->x:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lsdk/c/a/e/d;->B:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lsdk/c/a/e/d;->A:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsdk/c/a/e/d;->z:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lsdk/c/a/e/d;->x:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lsdk/c/a/e/d;->B:Z

    goto :goto_0
.end method

.method protected u()V
    .locals 2

    iget-object v0, p0, Lsdk/c/a/e/d;->W:Lsdk/c/a/e/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsdk/c/a/e/d;->W:Lsdk/c/a/e/a/d;

    sget-object v1, Lsdk/c/a/e/a/e;->a:Lsdk/c/a/e/a/e;

    invoke-interface {v0, v1}, Lsdk/c/a/e/a/d;->a(Lsdk/c/a/e/a/e;)V

    :cond_0
    return-void
.end method
