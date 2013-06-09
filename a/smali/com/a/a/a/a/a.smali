.class public final Lcom/a/a/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    div-int/lit8 v1, p1, 0x2

    if-lt v1, p0, :cond_0

    div-int/lit8 v1, p2, 0x2

    if-lt v1, p0, :cond_0

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1, p2, p4}, Lcom/a/a/a/a/a;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-nez p3, :cond_0

    if-gt v0, p2, :cond_0

    if-gt v1, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-le v0, v1, :cond_2

    int-to-float v2, p2

    int-to-float v3, v0

    div-float/2addr v2, v3

    new-instance v3, Ljava/lang/Float;

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v0

    new-instance v3, Ljava/lang/Float;

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v1

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {p0, v1, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    if-eq v0, p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_3
    move-object p0, v0

    goto :goto_0

    :cond_2
    int-to-float v2, p1

    int-to-float v3, v1

    div-float/2addr v2, v3

    new-instance v3, Ljava/lang/Float;

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v0

    new-instance v3, Ljava/lang/Float;

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public static a(Lcom/a/a/a/f/c;IZ)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/a/a/a/f/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/a/f/c;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/a/a/a/f/c;->d()I

    move-result v2

    invoke-static {v0, v1, v2, p1, p2}, Lcom/a/a/a/a/a;->a(Landroid/content/Context;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x0

    :try_start_2
    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/a/a/a/a/a;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-static {v1}, Lcom/a/a/a/a/a;->a(Ljava/io/Closeable;)V

    :goto_0
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p1, v1, v2}, Lcom/a/a/a/a/a;->a(III)I

    move-result v1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/high16 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v3, 0x0

    :try_start_4
    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    invoke-static {v1}, Lcom/a/a/a/a/a;->a(Ljava/io/Closeable;)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_2
    :try_start_5
    invoke-static {v1}, Lcom/a/a/a/a/a;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_3
    invoke-static {v1}, Lcom/a/a/a/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_4
    :try_start_6
    invoke-static {v2}, Lcom/a/a/a/a/a;->a(Ljava/io/Closeable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_5
    invoke-static {v1}, Lcom/a/a/a/a/a;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v2

    goto :goto_3

    :catchall_3
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_4

    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public static a(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    if-le p1, p2, :cond_1

    :goto_0
    invoke-static {p0, p1}, Lcom/a/a/a/a/a;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    move p1, p2

    goto :goto_0
.end method

.method public static a(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/a/a/a/a/a;->a(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p1, p2, p3}, Lcom/a/a/a/a/a;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {p0}, Lcom/a/a/a/a/a;->a(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {p0}, Lcom/a/a/a/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/a/a/a/a/a;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
