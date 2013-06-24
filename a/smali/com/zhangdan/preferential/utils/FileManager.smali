.class public Lcom/zhangdan/preferential/utils/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/FileManager;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 6

    .prologue
    .line 34
    new-instance v1, Ljava/io/File;

    const-string v5, "/sdcard/enniu_51discount"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 36
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    .end local v2           #file:Ljava/io/File;
    :cond_0
    return-void
.end method

.method public exist(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/utils/FileManager;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/utils/FileManager;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 70
    .local v2, file:Ljava/io/File;
    if-nez v2, :cond_0

    .line 79
    .end local v2           #file:Ljava/io/File;
    :goto_0
    return-object v3

    .line 73
    .restart local v2       #file:Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 75
    .end local v2           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 76
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "url"

    .prologue
    .line 41
    invoke-static {p1}, Lcom/zhangdan/preferential/utils/FileUtils;->buildFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 42
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0           #file:Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0       #file:Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubsampleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "url"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/utils/FileManager;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 53
    .local v2, file:Ljava/io/File;
    if-nez v2, :cond_0

    .line 63
    .end local v2           #file:Ljava/io/File;
    :goto_0
    return-object v3

    .line 57
    .restart local v2       #file:Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2, p3}, Lcom/zhangdan/preferential/utils/BitmapUtils;->decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 59
    .end local v2           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 60
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5
    .parameter "bitmap"
    .parameter "url"

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/zhangdan/preferential/utils/FileUtils;->buildFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 24
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 25
    .local v2, out:Ljava/io/OutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 26
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v1           #file:Ljava/io/File;
    .end local v2           #out:Ljava/io/OutputStream;
    :goto_0
    monitor-exit p0

    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 23
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
