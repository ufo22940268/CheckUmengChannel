.class public Lcom/zhangdan/preferential/utils/BackgroundDownloader;
.super Landroid/os/HandlerThread;
.source "BackgroundDownloader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/zhangdan/preferential/utils/BackgroundDownloader;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainHandler:Landroid/os/Handler;

.field private mThread:Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const-string v0, "BackgroundDownloader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/BackgroundDownloader;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/preferential/utils/BackgroundDownloader;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/BackgroundDownloader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized newRunningInstance(Landroid/content/Context;)Lcom/zhangdan/preferential/utils/BackgroundDownloader;
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    const-class v1, Lcom/zhangdan/preferential/utils/BackgroundDownloader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zhangdan/preferential/utils/BackgroundDownloader;->mInstance:Lcom/zhangdan/preferential/utils/BackgroundDownloader;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/zhangdan/preferential/utils/BackgroundDownloader;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/BackgroundDownloader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zhangdan/preferential/utils/BackgroundDownloader;->mInstance:Lcom/zhangdan/preferential/utils/BackgroundDownloader;

    .line 34
    sget-object v0, Lcom/zhangdan/preferential/utils/BackgroundDownloader;->mInstance:Lcom/zhangdan/preferential/utils/BackgroundDownloader;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/utils/BackgroundDownloader;->start()V

    .line 37
    :cond_0
    sget-object v0, Lcom/zhangdan/preferential/utils/BackgroundDownloader;->mInstance:Lcom/zhangdan/preferential/utils/BackgroundDownloader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addUrls(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/BackgroundDownloader;->mMainHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/utils/BackgroundDownloader;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/zhangdan/preferential/utils/BackgroundDownloader;->mMainHandler:Landroid/os/Handler;

    .line 45
    :cond_0
    if-nez p1, :cond_1

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 50
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/BackgroundDownloader;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 56
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 57
    .local v0, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/BackgroundDownloader;->mThread:Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;

    invoke-direct {v1, p0}, Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;-><init>(Lcom/zhangdan/preferential/utils/BackgroundDownloader;)V

    iput-object v1, p0, Lcom/zhangdan/preferential/utils/BackgroundDownloader;->mThread:Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;

    .line 59
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/BackgroundDownloader;->mThread:Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;->start()V

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/BackgroundDownloader;->mThread:Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;->requestLoading(Ljava/util/List;)V

    .line 62
    const/4 v1, 0x1

    return v1
.end method
