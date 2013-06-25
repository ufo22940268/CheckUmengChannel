.class public Lcom/zhangdan/app/img/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 146
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 147
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 149
    .local v0, h:D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 151
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 154
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 164
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 149
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 151
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 159
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p2, v11, :cond_4

    if-ne p1, v11, :cond_4

    move v2, v6

    .line 160
    goto :goto_2

    .line 161
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 164
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 128
    invoke-static {p0, p1, p2}, Lcom/zhangdan/app/img/ImageUtil;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 132
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 133
    const/4 v1, 0x1

    .line 134
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 135
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 141
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .parameter "is"
    .parameter "os"

    .prologue
    .line 104
    const/16 v0, 0x400

    .line 106
    .local v0, buffer_size:I
    const/16 v4, 0x400

    :try_start_0
    new-array v1, v4, [B

    .line 108
    .local v1, bytes:[B
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 109
    .local v2, count:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 116
    .end local v1           #bytes:[B
    .end local v2           #count:I
    :goto_1
    return-void

    .line 111
    .restart local v1       #bytes:[B
    .restart local v2       #count:I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v1           #bytes:[B
    .end local v2           #count:I
    :catch_0
    move-exception v3

    .line 114
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "f"

    .prologue
    const/4 v2, 0x0

    .line 90
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 91
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 92
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 93
    const/4 v3, -0x1

    const/16 v4, 0x4000

    invoke-static {v1, v3, v4}, Lcom/zhangdan/app/img/ImageUtil;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 95
    .local v0, inSampleSize:I
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 96
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 97
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 100
    .end local v0           #inSampleSize:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 98
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getBitmapByUrl(Lcom/zhangdan/app/img/FileCache;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "fileCache"
    .parameter "url"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/img/FileCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 32
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-static {v1}, Lcom/zhangdan/app/img/ImageUtil;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 34
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 37
    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, v1}, Lcom/zhangdan/app/img/ImageUtil;->loadBitmapFromWeb(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static loadBitmapFromWeb(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "url"
    .parameter "file"

    .prologue
    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, conn:Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 50
    .local v6, is:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 52
    .local v7, os:Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 53
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 54
    .local v5, imageUrl:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 55
    const/16 v9, 0x7530

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 56
    const/16 v9, 0x7530

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 57
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 58
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 59
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    .end local v7           #os:Ljava/io/OutputStream;
    .local v8, os:Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v6, v8}, Lcom/zhangdan/app/img/ImageUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 62
    invoke-static {p1}, Lcom/zhangdan/app/img/ImageUtil;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    .line 69
    if-eqz v8, :cond_0

    .line 70
    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 71
    :cond_0
    if-eqz v6, :cond_1

    .line 72
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 73
    :cond_1
    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v7, v8

    .line 77
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #imageUrl:Ljava/net/URL;
    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    :cond_3
    :goto_1
    return-object v1

    .line 75
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #imageUrl:Ljava/net/URL;
    .restart local v8       #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 76
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #imageUrl:Ljava/net/URL;
    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v4

    .line 65
    .local v4, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    const/4 v1, 0x0

    .line 69
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_4

    .line 70
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 71
    :cond_4
    if-eqz v6, :cond_5

    .line 72
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 73
    :cond_5
    if-eqz v2, :cond_3

    .line 74
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 75
    :catch_2
    move-exception v3

    .line 76
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 68
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v9

    .line 69
    :goto_3
    if-eqz v7, :cond_6

    .line 70
    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 71
    :cond_6
    if-eqz v6, :cond_7

    .line 72
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 73
    :cond_7
    if-eqz v2, :cond_8

    .line 74
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 77
    :cond_8
    :goto_4
    throw v9

    .line 75
    :catch_3
    move-exception v3

    .line 76
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 68
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v5       #imageUrl:Ljava/net/URL;
    .restart local v8       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    goto :goto_3

    .line 64
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    :catch_4
    move-exception v4

    move-object v7, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    goto :goto_2
.end method
