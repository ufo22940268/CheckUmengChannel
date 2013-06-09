.class public final Lcom/zhangdan/app/e/e;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/graphics/BitmapFactory$Options;)I
    .locals 4

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x40d0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    const/16 v0, 0x8

    if-gt v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-lt v0, v1, :cond_0

    :goto_1
    return v0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

.method public static a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/zhangdan/app/e/e;->a(Landroid/graphics/BitmapFactory$Options;)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x7530

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    invoke-static {v4, v3}, Lcom/zhangdan/app/e/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-static {p1}, Lcom/zhangdan/app/e/e;->a(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    :goto_3
    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v4, v1

    move-object v2, v1

    :goto_4
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v2

    move-object v4, v1

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    move-object v4, v3

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v3, v1

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v3, v4

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    goto :goto_2

    :catch_6
    move-exception v2

    move-object v5, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v5

    goto :goto_2
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
