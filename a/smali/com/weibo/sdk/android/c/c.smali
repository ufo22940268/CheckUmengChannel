.class public final Lcom/weibo/sdk/android/c/c;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v4, 0x0

    if-nez p1, :cond_1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_0
    const/4 v1, 0x0

    move v5, v1

    move-object v1, v4

    :goto_1
    const/4 v2, 0x5

    if-lt v5, v2, :cond_0

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v2, 0x0

    :try_start_1
    invoke-static {v3, v2, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v6

    :goto_3
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v4, v2

    move-object v1, v3

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v4

    goto :goto_3

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 8

    const/16 v4, 0xc80

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/weibo/sdk/android/e;->e:Z

    if-eqz v2, :cond_a

    invoke-static {p0}, Lcom/weibo/sdk/android/c/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/io/FileNotFoundException;

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/weibo/sdk/android/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    move v2, v1

    :goto_2
    :try_start_3
    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/2addr v3, v2

    if-gt v3, v4, :cond_3

    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/2addr v3, v2

    if-le v3, v4, :cond_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    const-wide/high16 v3, 0x4000

    int-to-double v6, v2

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v5}, Lcom/weibo/sdk/android/c/c;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bitmap decode error!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {p0}, Lcom/weibo/sdk/android/c/b;->c(Ljava/lang/String;)Z

    invoke-static {p0}, Lcom/weibo/sdk/android/c/b;->d(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v3

    :goto_3
    const/high16 v4, 0x44c8

    int-to-float v3, v3

    div-float v3, v4, v3

    const/high16 v4, 0x3f80

    cmpg-float v4, v3, v4

    if-gez v4, :cond_7

    move v4, v3

    :goto_4
    :try_start_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v3

    if-nez v3, :cond_6

    :try_start_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v6, v2, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v3

    :cond_7
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iget-object v4, v5, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, v5, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v5, "png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x4b

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    :try_start_7
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_3

    :catch_2
    move-exception v3

    invoke-static {}, Ljava/lang/System;->gc()V

    float-to-double v3, v4

    const-wide v6, 0x3fe999999999999aL

    mul-double/2addr v3, v6

    double-to-float v3, v3

    move v4, v3

    goto :goto_4

    :cond_9
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x4b

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_5

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_a
    invoke-static {p0}, Lcom/weibo/sdk/android/c/c;->b(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 8

    const/16 v4, 0x400

    const/16 v7, 0x4b

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/weibo/sdk/android/c/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/FileNotFoundException;

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcom/weibo/sdk/android/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v0, v1

    :goto_1
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/2addr v3, v0

    if-gt v3, v4, :cond_3

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/2addr v3, v0

    if-le v3, v4, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    const-wide/high16 v3, 0x4000

    int-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v2}, Lcom/weibo/sdk/android/c/c;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bitmap decode error!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {p0}, Lcom/weibo/sdk/android/c/b;->c(Ljava/lang/String;)Z

    invoke-static {p0}, Lcom/weibo/sdk/android/c/b;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v3, "png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v2, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_6
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v2, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
