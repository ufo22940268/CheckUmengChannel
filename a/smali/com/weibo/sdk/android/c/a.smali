.class public final Lcom/weibo/sdk/android/c/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/io/InputStream;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_1

    :goto_1
    const/4 v0, 0x0

    invoke-static {p0, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v0, :cond_2

    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/weibo/sdk/android/c/a;->a(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
