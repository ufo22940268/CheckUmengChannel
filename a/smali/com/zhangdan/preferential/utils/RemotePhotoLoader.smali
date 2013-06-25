.class public Lcom/zhangdan/preferential/utils/RemotePhotoLoader;
.super Ljava/lang/Object;
.source "RemotePhotoLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/utils/RemotePhotoLoader$Options;,
        Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;,
        Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;
    }
.end annotation


# static fields
.field public static final MESSAGE_HANDLE_LOADED_IMAGES:I = 0x1

.field public static final MESSAGE_REQUEST_LOADING:I = 0x0

.field public static final SAMPLE_URLS:[Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "RemotePhotoLoader"

.field private static mInstance:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;


# instance fields
.field private mCachedHolders:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFileManager:Lcom/zhangdan/preferential/utils/FileManager;

.field private mLoadingRequested:Z

.field private mMainHandler:Landroid/os/Handler;

.field public mOptions:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$Options;

.field private mPaused:Z

.field private mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThread:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://i1.dpfile.com/pc/2bf298c27f4d6a763793d4c1e45d2476/13362468_b.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://i2.dpfile.com/pc/4c7acfcf7372a2e76ec94a5a0e56111b/14597578_b.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://i3.dpfile.com/2009-12-12/3327002_b.jpg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->SAMPLE_URLS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v3, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mLoadingRequested:Z

    .line 40
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mMainHandler:Landroid/os/Handler;

    .line 48
    iput-boolean v3, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPaused:Z

    .line 55
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mContext:Landroid/content/Context;

    .line 56
    new-instance v2, Lcom/zhangdan/preferential/utils/FileManager;

    invoke-direct {v2, p1}, Lcom/zhangdan/preferential/utils/FileManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mFileManager:Lcom/zhangdan/preferential/utils/FileManager;

    .line 60
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 63
    .local v1, maxMemory:I
    div-int/lit8 v0, v1, 0x8

    .line 65
    .local v0, cacheSize:I
    new-instance v2, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$1;

    invoke-direct {v2, p0, v0}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$1;-><init>(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;I)V

    iput-object v2, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mCachedHolders:Landroid/support/v4/util/LruCache;

    .line 72
    return-void
.end method

.method static synthetic access$200(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)Landroid/support/v4/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mCachedHolders:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)Lcom/zhangdan/preferential/utils/FileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mFileManager:Lcom/zhangdan/preferential/utils/FileManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private addToRequest(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 108
    new-instance v0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;-><init>(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;Lcom/zhangdan/preferential/utils/RemotePhotoLoader$1;)V

    .line 109
    .local v0, holder:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;
    const/4 v1, 0x0

    #setter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->state:I
    invoke-static {v0, v1}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->access$102(Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;I)I

    .line 110
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mCachedHolders:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method private handleLoadedImages()V
    .locals 4

    .prologue
    .line 226
    iget-object v3, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 227
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 229
    .local v2, view:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 230
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p0, v2, v1}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->loadFromCache(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 235
    .end local v1           #url:Ljava/lang/String;
    .end local v2           #view:Landroid/widget/ImageView;
    :cond_1
    iget-object v3, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 236
    invoke-direct {p0}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->requestLoading()V

    .line 238
    :cond_2
    return-void
.end method

.method private loadDefaultImage(Landroid/widget/ImageView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mOptions:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$Options;

    iget v1, v1, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$Options;->defaultDrawable:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "RemotePhotoLoader"

    const-string v2, "out of memory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadFromFile(Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 152
    :try_start_0
    iget-object v2, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mFileManager:Lcom/zhangdan/preferential/utils/FileManager;

    invoke-virtual {v2, p2}, Lcom/zhangdan/preferential/utils/FileManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    const/4 v2, 0x1

    .line 161
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return v2

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 161
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized newInstance(Landroid/content/Context;)Lcom/zhangdan/preferential/utils/RemotePhotoLoader;
    .locals 3
    .parameter "context"

    .prologue
    .line 77
    const-class v1, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mInstance:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mInstance:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    .line 80
    :cond_0
    sget-object v0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mInstance:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;

    new-instance v2, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$Options;

    invoke-direct {v2}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$Options;-><init>()V

    iput-object v2, v0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mOptions:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$Options;

    .line 81
    sget-object v0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mInstance:Lcom/zhangdan/preferential/utils/RemotePhotoLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mLoadingRequested:Z

    .line 117
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPaused:Z

    .line 198
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 199
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mCachedHolders:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPaused:Z

    .line 201
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 206
    :pswitch_0
    iput-boolean v1, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mLoadingRequested:Z

    .line 207
    iget-boolean v1, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mWorkerThread:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;

    if-nez v1, :cond_1

    .line 209
    new-instance v1, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;

    invoke-direct {v1, p0}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;-><init>(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;)V

    iput-object v1, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mWorkerThread:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;

    .line 210
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mWorkerThread:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->start()V

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mWorkerThread:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->requestLoading()V

    goto :goto_0

    .line 217
    :pswitch_1
    iget-boolean v1, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->handleLoadedImages()V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadFromCache(Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 7
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 126
    iget-object v5, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mCachedHolders:Landroid/support/v4/util/LruCache;

    invoke-virtual {v5, p2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;

    .line 128
    .local v1, holder:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;
    if-eqz v1, :cond_1

    .line 129
    #getter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->state:I
    invoke-static {v1}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->access$100(Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->loadDefaultImage(Landroid/widget/ImageView;)V

    .line 147
    :goto_0
    return v3

    .line 134
    :cond_0
    #getter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->state:I
    invoke-static {v1}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->access$100(Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 135
    iget-object v0, v1, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 136
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 143
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    new-instance v2, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;-><init>(Lcom/zhangdan/preferential/utils/RemotePhotoLoader;Lcom/zhangdan/preferential/utils/RemotePhotoLoader$1;)V

    .line 144
    .local v2, newHolder:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;
    #setter for: Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->state:I
    invoke-static {v2, v4}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;->access$102(Lcom/zhangdan/preferential/utils/RemotePhotoLoader$BitmapHolder;I)I

    .line 145
    iget-object v3, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mCachedHolders:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, p2, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->loadDefaultImage(Landroid/widget/ImageView;)V

    move v3, v4

    .line 147
    goto :goto_0
.end method

.method public loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->loadDefaultImage(Landroid/widget/ImageView;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->loadFromCache(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->loadFromFile(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-boolean v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPaused:Z

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->requestLoading()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPaused:Z

    .line 175
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPaused:Z

    .line 179
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->requestLoading()V

    .line 182
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->pause()V

    .line 187
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mWorkerThread:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mWorkerThread:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;->quit()Z

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mWorkerThread:Lcom/zhangdan/preferential/utils/RemotePhotoLoader$WorkerThread;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 193
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/RemotePhotoLoader;->mCachedHolders:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 194
    return-void
.end method
