.class Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;
.super Landroid/os/HandlerThread;
.source "BackgroundDownloader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/utils/BackgroundDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerThread"
.end annotation


# static fields
.field public static final THREAD_NAME:Ljava/lang/String; = "WorkerThread"


# instance fields
.field private mFileManager:Lcom/zhangdan/preferential/utils/FileManager;

.field private mWorkerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/zhangdan/preferential/utils/BackgroundDownloader;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/utils/BackgroundDownloader;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;->this$0:Lcom/zhangdan/preferential/utils/BackgroundDownloader;

    .line 73
    const-string v0, "WorkerThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/zhangdan/preferential/utils/FileManager;

    #getter for: Lcom/zhangdan/preferential/utils/BackgroundDownloader;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/zhangdan/preferential/utils/BackgroundDownloader;->access$000(Lcom/zhangdan/preferential/utils/BackgroundDownloader;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/utils/FileManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;->mFileManager:Lcom/zhangdan/preferential/utils/FileManager;

    .line 75
    return-void
.end method

.method private downloadUrls(Ljava/util/List;)V
    .locals 6
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
    .line 95
    .local p1, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 96
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;->mFileManager:Lcom/zhangdan/preferential/utils/FileManager;

    invoke-virtual {v4, v3}, Lcom/zhangdan/preferential/utils/FileManager;->exist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 97
    invoke-static {v3}, Lcom/zhangdan/preferential/utils/NetUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;->mFileManager:Lcom/zhangdan/preferential/utils/FileManager;

    invoke-virtual {v4, v0, v3}, Lcom/zhangdan/preferential/utils/FileManager;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 99
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "++++++++++++++++++++download in background++++++++++++++++++++"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 107
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    return-void

    .line 101
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #url:Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "++++++++++++++++++++exists in background++++++++++++++++++++"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 79
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;->downloadUrls(Ljava/util/List;)V

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public requestLoading(Ljava/util/List;)V
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
    .line 84
    .local p1, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;->mWorkerHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;->mWorkerHandler:Landroid/os/Handler;

    .line 88
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 89
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/BackgroundDownloader$WorkerThread;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    return-void
.end method
