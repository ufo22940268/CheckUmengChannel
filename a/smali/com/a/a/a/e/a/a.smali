.class public abstract Lcom/a/a/a/e/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/BlockingQueue;

.field private static final b:Ljava/util/concurrent/ThreadFactory;

.field private static final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final d:Lcom/a/a/a/e/a/g;


# instance fields
.field private final e:Lcom/a/a/a/e/a/i;

.field private final f:Ljava/util/concurrent/FutureTask;

.field private volatile g:Lcom/a/a/a/e/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v1, 0x4

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/a/a/a/e/a/a;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/a/a/a/e/a/b;

    invoke-direct {v0}, Lcom/a/a/a/e/a/b;-><init>()V

    sput-object v0, Lcom/a/a/a/e/a/a;->b:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/a/a/a/e/a/a;->a:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/a/a/a/e/a/a;->b:Ljava/util/concurrent/ThreadFactory;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/a/a/a/e/a/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/a/a/a/e/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/a/e/a/g;-><init>(B)V

    sput-object v0, Lcom/a/a/a/e/a/a;->d:Lcom/a/a/a/e/a/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/a/a/a/e/a/h;->a:Lcom/a/a/a/e/a/h;

    iput-object v0, p0, Lcom/a/a/a/e/a/a;->g:Lcom/a/a/a/e/a/h;

    new-instance v0, Lcom/a/a/a/e/a/c;

    invoke-direct {v0, p0}, Lcom/a/a/a/e/a/c;-><init>(Lcom/a/a/a/e/a/a;)V

    iput-object v0, p0, Lcom/a/a/a/e/a/a;->e:Lcom/a/a/a/e/a/i;

    new-instance v0, Lcom/a/a/a/e/a/d;

    iget-object v1, p0, Lcom/a/a/a/e/a/a;->e:Lcom/a/a/a/e/a/i;

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/e/a/d;-><init>(Lcom/a/a/a/e/a/a;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/a/a/a/e/a/a;->f:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/e/a/a;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/e/a/a;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/a/a/a/e/a/h;->c:Lcom/a/a/a/e/a/h;

    iput-object v0, p0, Lcom/a/a/a/e/a/a;->g:Lcom/a/a/a/e/a/h;

    return-void
.end method

.method protected static varargs b()V
    .locals 0

    return-void
.end method

.method protected static c()V
    .locals 0

    return-void
.end method

.method static synthetic f()Lcom/a/a/a/e/a/g;
    .locals 1

    sget-object v0, Lcom/a/a/a/e/a/a;->d:Lcom/a/a/a/e/a/g;

    return-object v0
.end method


# virtual methods
.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final varargs b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/e/a/a;->g:Lcom/a/a/a/e/a/h;

    sget-object v1, Lcom/a/a/a/e/a/h;->a:Lcom/a/a/a/e/a/h;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/a/a/a/e/a/e;->a:[I

    iget-object v1, p0, Lcom/a/a/a/e/a/a;->g:Lcom/a/a/a/e/a/h;

    invoke-virtual {v1}, Lcom/a/a/a/e/a/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    sget-object v0, Lcom/a/a/a/e/a/h;->b:Lcom/a/a/a/e/a/h;

    iput-object v0, p0, Lcom/a/a/a/e/a/a;->g:Lcom/a/a/a/e/a/h;

    invoke-virtual {p0}, Lcom/a/a/a/e/a/a;->a()V

    iget-object v0, p0, Lcom/a/a/a/e/a/a;->e:Lcom/a/a/a/e/a/i;

    iput-object p1, v0, Lcom/a/a/a/e/a/i;->b:[Ljava/lang/Object;

    sget-object v0, Lcom/a/a/a/e/a/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/a/a/a/e/a/a;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/e/a/a;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/e/a/a;->f:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method
