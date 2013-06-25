.class Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;
.super Landroid/os/HandlerThread;
.source "RemotePhotoLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/utils/RemotePhotoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerThread"
.end annotation


# static fields
.field public static final WORKER_MESSAGE_LOAD:I = 0x0

.field public static final WORKER_THREAD_NAME:Ljava/lang/String; = "photo_loader_worker_thread"


# instance fields
.field private mWorkerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;


# direct methods
.method public constructor <init>(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->this$0:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    .line 248
    const-string v0, "photo_loader_worker_thread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->loadBitmapFromNetwork(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private loadBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->this$0:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    #getter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mFileManager:Lcom/zhangdan/preferential/utils/FileManager;
    invoke-static {v0}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->access$300(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)Lcom/zhangdan/preferential/utils/FileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/utils/FileManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private loadBitmapFromNetwork(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "url"

    .prologue
    .line 337
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "++++++++++++++++++++download in remote photoloader++++++++++++++++++++"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    const/4 v1, 0x0

    .line 340
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 341
    .local v2, conn:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 343
    .local v4, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 344
    .local v5, urll:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 345
    const/16 v6, 0x3e8

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 346
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 347
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 348
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 354
    .end local v5           #urll:Ljava/net/URL;
    :goto_0
    return-object v1

    .line 349
    :catch_0
    move-exception v3

    .line 350
    .local v3, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v6
.end method

.method private obtainUrlsToLoad()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v3, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->this$0:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    #getter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->access$500(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 361
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 362
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 363
    .local v2, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->this$0:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    #getter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mCachedHolders:Landroid/support/v4/util/LruCache;
    invoke-static {v4}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->access$200(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)Landroid/support/v4/util/LruCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;

    .line 364
    .local v0, holder:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;
    if-eqz v0, :cond_0

    .line 365
    #getter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->state:I
    invoke-static {v0}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->access$100(Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;)I

    move-result v4

    if-nez v4, :cond_0

    .line 366
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    .end local v0           #holder:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;
    .end local v2           #url:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private startLoadingImages()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 269
    invoke-direct {p0}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->obtainUrlsToLoad()Ljava/util/List;

    move-result-object v5

    .line 270
    .local v5, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 271
    .local v4, url:Ljava/lang/String;
    iget-object v6, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->this$0:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    #getter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mCachedHolders:Landroid/support/v4/util/LruCache;
    invoke-static {v6}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->access$200(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)Landroid/support/v4/util/LruCache;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;

    .line 274
    .local v2, holder:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;
    if-eqz v2, :cond_0

    .line 278
    #setter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->state:I
    invoke-static {v2, v8}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->access$102(Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;I)I

    .line 285
    :try_start_0
    invoke-direct {p0, v4}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 286
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x2

    #setter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->state:I
    invoke-static {v2, v6}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->access$102(Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;I)I

    .line 287
    if-eqz v0, :cond_2

    .line 288
    iput-object v0, v2, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 289
    iget-object v6, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->this$0:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    #getter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mFileManager:Lcom/zhangdan/preferential/utils/FileManager;
    invoke-static {v6}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->access$300(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)Lcom/zhangdan/preferential/utils/FileManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/zhangdan/preferential/utils/FileManager;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_1

    .line 290
    iget-object v6, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->this$0:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    #getter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mFileManager:Lcom/zhangdan/preferential/utils/FileManager;
    invoke-static {v6}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->access$300(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)Lcom/zhangdan/preferential/utils/FileManager;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Lcom/zhangdan/preferential/utils/FileManager;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->this$0:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    #getter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mCachedHolders:Landroid/support/v4/util/LruCache;
    invoke-static {v6}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->access$200(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)Landroid/support/v4/util/LruCache;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 293
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    const-string v6, "RemotePhotoLoader"

    const-string v7, "bitmap is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v6, 0x0

    iput-object v6, v2, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 300
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 301
    .local v1, e:Ljava/lang/OutOfMemoryError;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "++++++++++++++++++++Out of memry. Don\'t panic, the missed image should be reloaded.++++++++++++++++++++"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    const/4 v6, 0x0

    #setter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->state:I
    invoke-static {v2, v6}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->access$102(Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;I)I

    .line 307
    iget-object v6, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->this$0:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    #getter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mCachedHolders:Landroid/support/v4/util/LruCache;
    invoke-static {v6}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->access$200(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)Landroid/support/v4/util/LruCache;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/util/LruCache;->evictAll()V

    goto :goto_1

    .line 311
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #holder:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;
    .end local v4           #url:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->this$0:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    #getter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->access$400(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 312
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 259
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 265
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 261
    :pswitch_0
    invoke-direct {p0}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->startLoadingImages()V

    .line 262
    const/4 v0, 0x1

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->mWorkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->mWorkerHandler:Landroid/os/Handler;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 256
    return-void
.end method
