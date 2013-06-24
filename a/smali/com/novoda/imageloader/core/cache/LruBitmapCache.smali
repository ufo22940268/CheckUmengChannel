.class public Lcom/novoda/imageloader/core/cache/LruBitmapCache;
.super Ljava/lang/Object;
.source "LruBitmapCache.java"

# interfaces
.implements Lcom/novoda/imageloader/core/cache/CacheManager;


# static fields
.field public static final DEFAULT_MEMORY_CACHE_PERCENTAGE:I = 0x19

.field private static final DEFAULT_MEMORY_CAPACITY_FOR_DEVICES_OLDER_THAN_API_LEVEL_4:I = 0xc


# instance fields
.field private cache:Lcom/novoda/imageloader/core/cache/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/novoda/imageloader/core/cache/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private capacity:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;-><init>(Landroid/content/Context;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "percentageOfMemoryForCache"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 45
    .local v0, memClass:I
    invoke-virtual {p0, v0, p2}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->calculateCacheSize(II)I

    move-result v1

    iput v1, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->capacity:I

    .line 46
    invoke-direct {p0}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->reset()V

    .line 47
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/cache/util/LruCache;->evictAll()V

    .line 68
    :cond_0
    new-instance v0, Lcom/novoda/imageloader/core/cache/LruBitmapCache$1;

    iget v1, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->capacity:I

    invoke-direct {v0, p0, v1}, Lcom/novoda/imageloader/core/cache/LruBitmapCache$1;-><init>(Lcom/novoda/imageloader/core/cache/LruBitmapCache;I)V

    iput-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    .line 74
    return-void
.end method


# virtual methods
.method public calculateCacheSize(II)I
    .locals 5
    .parameter "memClass"
    .parameter "percentageOfMemoryForCache"

    .prologue
    const-wide/16 v3, 0x400

    .line 92
    if-nez p1, :cond_0

    .line 93
    const/16 p1, 0xc

    .line 95
    :cond_0
    if-gez p2, :cond_1

    .line 96
    const/4 p2, 0x0

    .line 98
    :cond_1
    const/16 v1, 0x51

    if-le p2, v1, :cond_2

    .line 99
    const/16 p2, 0x50

    .line 101
    :cond_2
    mul-int v1, p1, p2

    int-to-long v1, v1

    mul-long/2addr v1, v3

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 102
    .local v0, capacity:I
    if-gtz v0, :cond_3

    .line 103
    const/high16 v0, 0x40

    .line 106
    :cond_3
    return v0
.end method

.method public clean()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->reset()V

    .line 89
    return-void
.end method

.method public get(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    invoke-virtual {v0, p1}, Lcom/novoda/imageloader/core/cache/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "url"
    .parameter "bmp"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cache:Lcom/novoda/imageloader/core/cache/util/LruCache;

    invoke-virtual {v0, p1, p2}, Lcom/novoda/imageloader/core/cache/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method
