.class public Lcom/novoda/imageloader/core/cache/NoCache;
.super Ljava/lang/Object;
.source "NoCache.java"

# interfaces
.implements Lcom/novoda/imageloader/core/cache/CacheManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public get(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "url"
    .parameter "bmp"

    .prologue
    .line 33
    return-void
.end method
