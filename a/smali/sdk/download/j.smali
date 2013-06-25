.class public Lsdk/download/j;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lsdk/download/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsdk/download/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lsdk/download/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lsdk/download/j;->b:Lsdk/download/d;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v0, v0, Lsdk/download/d;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "AndroidDownloadManager"

    :cond_1
    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lsdk/download/j;->b(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "_data"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    const-string v1, "uri"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lastmod"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "method"

    shl-int/lit8 v2, p4, 0x1c

    add-int/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p2, :cond_1

    const-string v1, "numfailed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    iget-object v1, p0, Lsdk/download/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lsdk/download/k;->a:Landroid/net/Uri;

    iget-object v3, p0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v3, v3, Lsdk/download/d;->a:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p5, :cond_2

    const-string v1, "numfailed"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const-string v1, "numfailed"

    iget-object v2, p0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v2, v2, Lsdk/download/d;->k:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 32

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    const/16 v19, 0x1eb

    const/16 v18, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v0, v2, Lsdk/download/d;->m:I

    move/from16 v16, v0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v2, v2, Lsdk/download/d;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lsdk/download/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lsdk/download/k;->a:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v4, v4, Lsdk/download/d;->a:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v2, 0x1000

    :try_start_0
    new-array v0, v2, [B

    move-object/from16 v27, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->a:Landroid/content/Context;

    const-string v20, "power"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const/16 v20, 0x1

    const-string v21, "GexinSdkDownloadService"

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_32
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_53

    move-result-object v20

    :try_start_1
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v8, v2, Lsdk/download/d;->e:Ljava/lang/String;

    if-eqz v8, :cond_84

    invoke-static {v8}, Lsdk/download/l;->a(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_a5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_83
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_72

    move-result v2

    if-nez v2, :cond_8

    const/16 v3, 0x1ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v10, v2, Lsdk/download/d;->f:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_a5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_95
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_84
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_73

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lsdk/download/d;->O:Z

    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_3
    const-string v4, "close"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v11, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    :goto_0
    if-eqz v13, :cond_2

    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_68

    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    invoke-static {v3}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_3
    :goto_2
    move-object/from16 v2, p0

    move/from16 v4, v18

    move/from16 v5, v17

    move/from16 v6, v16

    move v7, v14

    move-object v9, v15

    move-object v10, v12

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "android.os.FileUtils"

    :try_start_5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_4
    array-length v6, v5

    if-ge v4, v6, :cond_5

    aget-object v6, v5, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "setPermissions"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    aget-object v2, v5, v4

    :cond_5
    if-eqz v2, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x1a4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :cond_6
    :goto_5
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v2, v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/SyncFailedException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_2

    :catch_5
    move-exception v2

    const-string v4, "GexinSdkDownloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catch_6
    move-exception v2

    const-string v4, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_7
    move-exception v2

    const-string v4, "GexinSdkDownloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sync failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_8
    move-exception v2

    const-string v4, "GexinSdkDownloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException trying to sync "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_9
    move-exception v2

    const-string v4, "GexinSdkDownloadService"

    const-string v5, "exception while syncing file: "

    invoke-static {v4, v5, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_8
    :try_start_7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v21

    const-wide/16 v28, 0x0

    cmp-long v3, v21, v28

    if-nez v3, :cond_12

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_a5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_83
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_72

    const/4 v8, 0x0

    move/from16 v25, v10

    move-object v2, v13

    move-object v13, v8

    move-object v8, v7

    :goto_6
    const-wide/16 v22, 0x0

    :try_start_8
    const-string v3, "android.net.http.AndroidHttpClient"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_7
    array-length v0, v10

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_9

    aget-object v21, v10, v7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v28, "newInstance"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1c

    aget-object v3, v10, v7

    :cond_9
    if-eqz v3, :cond_82

    const/4 v7, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Lsdk/download/j;->a()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v10, v21

    invoke-virtual {v3, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_b5
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_a7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_97
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_86
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_75

    move-result-object v21

    :goto_8
    if-eqz v2, :cond_81

    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v3, v3, Lsdk/download/d;->g:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_b6
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_a8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_98
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_87
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_76

    if-nez v3, :cond_81

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_b6
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_a8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_98
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_87
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_76

    const/4 v2, 0x0

    move-object v11, v2

    :goto_9
    :try_start_b
    new-instance v28, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v2, v2, Lsdk/download/d;->b:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v2, v2, Lsdk/download/d;->q:Ljava/lang/String;

    if-eqz v2, :cond_a

    const-string v2, "Cookie"

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v3, v3, Lsdk/download/d;->q:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v2, v2, Lsdk/download/d;->s:Ljava/lang/String;

    if-eqz v2, :cond_b

    const-string v2, "Referer"

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v3, v3, Lsdk/download/d;->s:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v25, :cond_d

    if-eqz v4, :cond_c

    const-string v2, "If-Match"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_b7
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_b} :catch_77

    :cond_d
    const/4 v3, 0x0

    :try_start_c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_b7
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_c} :catch_77

    move-result-object v2

    :try_start_d
    const-string v7, "execute"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/16 v29, 0x0

    const-class v30, Lorg/apache/http/client/methods/HttpUriRequest;

    aput-object v30, v10, v29

    invoke-virtual {v2, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v28, v7, v10

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpResponse;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_d} :catch_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_b7
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_d} :catch_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_d} :catch_77

    move-object v10, v2

    :goto_a
    :try_start_e
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v2, 0x1f7

    if-ne v3, v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v2, v2, Lsdk/download/d;->k:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_b7
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_e} :catch_77

    const/4 v7, 0x5

    if-ge v2, v7, :cond_23

    const/16 v3, 0xc1

    const/4 v4, 0x1

    :try_start_f
    const-string v2, "Retry-After"

    invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_b8
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_aa
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_f} :catch_9a
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_f} :catch_89
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_f} :catch_78

    move-result-object v2

    if-eqz v2, :cond_22

    :try_start_10
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_18
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_b8
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_aa
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_10} :catch_9a
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_10} :catch_89
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_10} :catch_78

    move-result v17

    if-gez v17, :cond_1f

    const/4 v2, 0x0

    :goto_b
    move v5, v2

    :goto_c
    :try_start_11
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_b9
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_ab
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_11} :catch_9b
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_11} :catch_8a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_11} :catch_79

    move-object v2, v11

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    :goto_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lsdk/download/d;->O:Z

    if-eqz v20, :cond_e

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_e
    if-eqz v21, :cond_f

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    :try_start_12
    const-string v12, "close"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_12} :catch_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_12} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_12} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_12} :catch_22

    :cond_f
    :goto_e
    if-eqz v2, :cond_10

    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6b

    :cond_10
    :goto_f
    if-eqz v8, :cond_11

    invoke-static {v3}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4b

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_11
    :goto_10
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_12
    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v3, v3, Lsdk/download/d;->y:Ljava/lang/String;

    if-nez v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-boolean v3, v3, Lsdk/download/d;->c:Z

    if-nez v3, :cond_1b

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_a5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_14} :catch_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_14} :catch_83
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_14} :catch_72

    const/16 v3, 0x19c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v10, v2, Lsdk/download/d;->f:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_a5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_15} :catch_95
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_15} :catch_84
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15 .. :try_end_15} :catch_73

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lsdk/download/d;->O:Z

    if-eqz v20, :cond_13

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_13
    if-eqz v11, :cond_14

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_16
    const-string v4, "close"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v11, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_16} :catch_e

    :cond_14
    :goto_11
    if-eqz v13, :cond_15

    :try_start_17
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_69

    :cond_15
    :goto_12
    if-eqz v8, :cond_16

    invoke-static {v3}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_16
    :goto_13
    move-object/from16 v2, p0

    move/from16 v4, v18

    move/from16 v5, v17

    move/from16 v6, v16

    move v7, v14

    move-object v9, v15

    move-object v10, v12

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_11

    :catch_b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_11

    :catch_c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_11

    :catch_d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_11

    :catch_e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_11

    :cond_17
    invoke-static {v3}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "android.os.FileUtils"

    :try_start_18
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_14
    array-length v6, v5

    if-ge v4, v6, :cond_18

    aget-object v6, v5, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "setPermissions"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    aget-object v2, v5, v4

    :cond_18
    if-eqz v2, :cond_19

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x1a4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_10

    :cond_19
    :goto_15
    :try_start_19
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v2, v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_f
    .catch Ljava/io/SyncFailedException; {:try_start_19 .. :try_end_19} :catch_11
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_13

    goto :goto_13

    :catch_f
    move-exception v2

    const-string v4, "GexinSdkDownloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :catch_10
    move-exception v2

    const-string v4, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :catch_11
    move-exception v2

    const-string v4, "GexinSdkDownloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sync failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :catch_12
    move-exception v2

    const-string v4, "GexinSdkDownloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException trying to sync "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :catch_13
    move-exception v2

    const-string v4, "GexinSdkDownloadService"

    const-string v5, "exception while syncing file: "

    invoke-static {v4, v5, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_1b
    :try_start_1a
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_a5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_1a} :catch_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_1a} :catch_83
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1a .. :try_end_1a} :catch_72

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v24, v0

    :try_start_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v3, v3, Lsdk/download/d;->v:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_83

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v3, v3, Lsdk/download/d;->v:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v4, v4, Lsdk/download/d;->y:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_b4
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_a6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_1b} :catch_96
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_1b} :catch_85
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1b .. :try_end_1b} :catch_74

    const/4 v7, 0x1

    move/from16 v25, v7

    move-object v13, v8

    move-object v8, v3

    goto/16 :goto_6

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :catch_14
    move-exception v3

    move-object v11, v2

    goto/16 :goto_9

    :catch_15
    move-exception v2

    :try_start_1c
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_16
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_b7
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_1c} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_1c} :catch_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_1c} :catch_77

    move-object v10, v3

    goto/16 :goto_a

    :catch_16
    move-exception v2

    const/4 v4, 0x1

    const/16 v3, 0x190

    :try_start_1d
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_b8
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_aa
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d .. :try_end_1d} :catch_9a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_1d} :catch_89
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_1d} :catch_78

    move-object v2, v11

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_d

    :catch_17
    move-exception v2

    :try_start_1e
    const-string v2, "DownloadThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInfo.mNumFailed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v4, v4, Lsdk/download/d;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lsdk/download/l;->a(Landroid/content/Context;)Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_b7
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_1e} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_1e} :catch_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1e .. :try_end_1e} :catch_77

    move-result v2

    if-nez v2, :cond_1d

    const/16 v3, 0xc1

    move/from16 v4, v18

    :goto_17
    :try_start_1f
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_b8
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_aa
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_1f} :catch_9a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_1f} :catch_89
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1f .. :try_end_1f} :catch_78

    move-object v2, v11

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_d

    :cond_1d
    :try_start_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v2, v2, Lsdk/download/d;->k:I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_b7
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_20} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_20} :catch_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_20} :catch_77

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1e

    const/16 v3, 0xc1

    const/16 v18, 0x1

    move/from16 v4, v18

    goto :goto_17

    :cond_1e
    const/16 v3, 0x1ef

    move/from16 v4, v18

    goto :goto_17

    :cond_1f
    const/16 v2, 0x1e

    move/from16 v0, v17

    if-ge v0, v2, :cond_21

    const/16 v17, 0x1e

    :cond_20
    :goto_18
    :try_start_21
    sget-object v2, Lsdk/download/l;->a:Ljava/util/Random;

    const/16 v5, 0x1f

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_18
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_21} :catch_b8
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_aa
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_21} :catch_9a
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_21} :catch_89
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_21} :catch_78

    move-result v2

    add-int v2, v2, v17

    mul-int/lit16 v2, v2, 0x3e8

    goto/16 :goto_b

    :cond_21
    const v2, 0x15180

    move/from16 v0, v17

    if-le v0, v2, :cond_20

    const v17, 0x15180

    goto :goto_18

    :catch_18
    move-exception v2

    :try_start_22
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_22} :catch_b8
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_aa
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_22} :catch_9a
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_22} :catch_89
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_22 .. :try_end_22} :catch_78

    :cond_22
    move/from16 v5, v17

    goto/16 :goto_c

    :cond_23
    const/16 v2, 0x12d

    if-eq v3, v2, :cond_24

    const/16 v2, 0x12e

    if-eq v3, v2, :cond_24

    const/16 v2, 0x12f

    if-eq v3, v2, :cond_24

    const/16 v2, 0x133

    if-ne v3, v2, :cond_26

    :cond_24
    const/4 v2, 0x5

    move/from16 v0, v16

    if-lt v0, v2, :cond_25

    const/16 v3, 0x1f1

    :try_start_23
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_23} :catch_b7
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_23} :catch_9c
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_23} :catch_8b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_23} :catch_7a

    move-object v2, v11

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    goto/16 :goto_d

    :cond_25
    :try_start_24
    const-string v2, "Location"

    invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_24} :catch_b7
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_24} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_24} :catch_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_24} :catch_77

    move-result-object v2

    if-eqz v2, :cond_26

    :try_start_25
    new-instance v3, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v4, v4, Lsdk/download/d;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/net/URI;

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7
    .catch Ljava/net/URISyntaxException; {:try_start_25 .. :try_end_25} :catch_19
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_b7
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_25} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_25} :catch_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_25} :catch_77

    move-result-object v9

    add-int/lit8 v6, v16, 0x1

    const/16 v3, 0xc1

    :try_start_26
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_26} :catch_ba
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_ac
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_26} :catch_9d
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_26} :catch_8c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_26 .. :try_end_26} :catch_7b

    move-object v2, v11

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move/from16 v5, v17

    move/from16 v4, v18

    goto/16 :goto_d

    :catch_19
    move-exception v2

    const/16 v3, 0x190

    :try_start_27
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_27} :catch_b7
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_27 .. :try_end_27} :catch_9c
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_27} :catch_8b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_27} :catch_7a

    move-object v2, v11

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    goto/16 :goto_d

    :cond_26
    if-nez v25, :cond_27

    const/16 v2, 0xc8

    if-ne v3, v2, :cond_28

    :cond_27
    if-eqz v25, :cond_2c

    const/16 v2, 0xce

    if-eq v3, v2, :cond_2c

    :cond_28
    :try_start_28
    invoke-static {v3}, Lsdk/download/k;->b(I)Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_7
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_b7
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_28} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_28} :catch_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_28} :catch_77

    move-result v2

    if-eqz v2, :cond_29

    :goto_19
    :try_start_29
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_a
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_29} :catch_b7
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_29} :catch_9c
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_29} :catch_8b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_29} :catch_7a

    const/4 v4, 0x1

    move-object v2, v11

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_d

    :cond_29
    const/16 v2, 0x12c

    if-lt v3, v2, :cond_2a

    const/16 v2, 0x190

    if-ge v3, v2, :cond_2a

    const/16 v3, 0x1ed

    goto :goto_19

    :cond_2a
    if-eqz v25, :cond_2b

    const/16 v2, 0xc8

    if-ne v3, v2, :cond_2b

    const/16 v3, 0x19c

    goto :goto_19

    :cond_2b
    const/16 v3, 0x1ee

    goto :goto_19

    :cond_2c
    if-nez v25, :cond_80

    :try_start_2a
    const-string v2, "Accept-Ranges"

    invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    :cond_2d
    const-string v2, "Content-Disposition"

    invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    :cond_2e
    const-string v2, "Content-Location"

    invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    :cond_2f
    if-nez v12, :cond_7f

    const-string v2, "Content-Type"

    invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_7f

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lsdk/download/j;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2a} :catch_b7
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2a .. :try_end_2a} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_2a} :catch_88
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2a .. :try_end_2a} :catch_77

    move-result-object v12

    move-object v7, v12

    :goto_1a
    :try_start_2b
    const-string v2, "ETag"

    invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_7e

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    :goto_1b
    const-string v2, "Transfer-Encoding"

    invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_7d

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    :goto_1c
    if-nez v2, :cond_7c

    const-string v3, "Content-Length"

    invoke-interface {v10, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_7c

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v25, v8

    :goto_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-boolean v3, v3, Lsdk/download/d;->c:Z

    if-nez v3, :cond_31

    if-nez v25, :cond_31

    if-eqz v2, :cond_30

    const-string v3, "chunked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_2b} :catch_bb
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_ad
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2b .. :try_end_2b} :catch_9e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_2b} :catch_8d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_2b} :catch_7c

    move-result v2

    if-nez v2, :cond_31

    :cond_30
    const/16 v3, 0x19b

    :try_start_2c
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_d
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_2c} :catch_bb
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_ad
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2c .. :try_end_2c} :catch_9f
    .catch Ljava/lang/IllegalAccessException; {:try_start_2c .. :try_end_2c} :catch_8e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2c .. :try_end_2c} :catch_7d

    move-object v2, v11

    move-object v10, v7

    move-object v8, v13

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move v7, v14

    goto/16 :goto_d

    :cond_31
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v3, v3, Lsdk/download/d;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v4, v4, Lsdk/download/d;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v8, v8, Lsdk/download/d;->g:I

    if-eqz v25, :cond_32

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :goto_1e
    invoke-static/range {v2 .. v9}, Lsdk/download/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lsdk/download/a;

    move-result-object v2

    iget-object v3, v2, Lsdk/download/a;->a:Ljava/lang/String;

    if-nez v3, :cond_33

    iget v3, v2, Lsdk/download/a;->c:I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_2d} :catch_bb
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_ad
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_2d} :catch_9e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_2d} :catch_8d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_2d} :catch_7c

    :try_start_2e
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_d
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_2e} :catch_bb
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_ad
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2e .. :try_end_2e} :catch_9f
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_2e} :catch_8e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e .. :try_end_2e} :catch_7d

    move-object v2, v11

    move-object v10, v7

    move-object v8, v13

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move v7, v14

    goto/16 :goto_d

    :cond_32
    const/4 v9, 0x0

    goto :goto_1e

    :cond_33
    :try_start_2f
    iget-object v13, v2, Lsdk/download/a;->a:Ljava/lang/String;

    iget-object v11, v2, Lsdk/download/a;->b:Ljava/io/FileOutputStream;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_2f} :catch_bb
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_ad
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_2f} :catch_9e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_2f} :catch_8d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_2f} :catch_7c

    :try_start_30
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_data"

    invoke-virtual {v3, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_34

    const-string v2, "etag"

    invoke-virtual {v3, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    if-eqz v7, :cond_35

    const-string v2, "mimetype"

    invoke-virtual {v3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    const/4 v2, -0x1

    if-eqz v25, :cond_36

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_36
    const-string v4, "total_bytes"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_e
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_30} :catch_bc
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_ad
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_30} :catch_9e
    .catch Ljava/lang/IllegalAccessException; {:try_start_30 .. :try_end_30} :catch_8d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_30 .. :try_end_30} :catch_7c

    move-object v2, v11

    move-object v3, v13

    move-object/from16 v13, v25

    :goto_1f
    :try_start_31
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_f
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_31} :catch_bd
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_ae
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_31} :catch_a0
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_31} :catch_8f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_31 .. :try_end_31} :catch_7e

    move-result-object v25

    move-wide/from16 v8, v22

    move/from16 v11, v24

    move v4, v14

    :goto_20
    :try_start_32
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_11
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_32} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_32} :catch_a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_32} :catch_91
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_32} :catch_80

    move-result v6

    const/4 v5, -0x1

    if-ne v6, v5, :cond_40

    :try_start_33
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "current_bytes"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v13, :cond_37

    const-string v6, "total_bytes"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_37
    move-object/from16 v0, p0

    iget-object v6, v0, Lsdk/download/j;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v13, :cond_4a

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v0, v24

    if-eq v0, v5, :cond_4a

    move-object/from16 v0, p0

    iget-object v5, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-boolean v5, v5, Lsdk/download/d;->c:Z
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_11
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_33} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33 .. :try_end_33} :catch_a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_33} :catch_91
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_33 .. :try_end_33} :catch_80

    if-nez v5, :cond_3d

    if-nez v12, :cond_3d

    const/16 v5, 0x19b

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move v7, v4

    move v3, v5

    move/from16 v4, v18

    move/from16 v5, v17

    goto/16 :goto_d

    :catch_1a
    move-exception v4

    :try_start_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->a:Landroid/content/Context;

    invoke-static {v4}, Lsdk/download/l;->a(Landroid/content/Context;)Z
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_f
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_34} :catch_bd
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_34} :catch_ae
    .catch Ljava/lang/ClassNotFoundException; {:try_start_34 .. :try_end_34} :catch_a0
    .catch Ljava/lang/IllegalAccessException; {:try_start_34 .. :try_end_34} :catch_8f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_34 .. :try_end_34} :catch_7e

    move-result v4

    if-nez v4, :cond_38

    const/16 v5, 0xc1

    move/from16 v4, v18

    :goto_21
    :try_start_35
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_10
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_35} :catch_be
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_af
    .catch Ljava/lang/ClassNotFoundException; {:try_start_35 .. :try_end_35} :catch_a1
    .catch Ljava/lang/IllegalAccessException; {:try_start_35 .. :try_end_35} :catch_90
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_35 .. :try_end_35} :catch_7f

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move v7, v14

    move v3, v5

    move/from16 v5, v17

    goto/16 :goto_d

    :cond_38
    :try_start_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v4, v4, Lsdk/download/d;->k:I
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_f
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_36} :catch_bd
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_ae
    .catch Ljava/lang/ClassNotFoundException; {:try_start_36 .. :try_end_36} :catch_a0
    .catch Ljava/lang/IllegalAccessException; {:try_start_36 .. :try_end_36} :catch_8f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_36 .. :try_end_36} :catch_7e

    const/4 v5, 0x5

    if-ge v4, v5, :cond_39

    const/16 v5, 0xc1

    const/16 v18, 0x1

    move/from16 v4, v18

    goto :goto_21

    :cond_39
    const/16 v5, 0x1ef

    move/from16 v4, v18

    goto :goto_21

    :catch_1b
    move-exception v5

    :try_start_37
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "current_bytes"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lsdk/download/j;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-boolean v5, v5, Lsdk/download/d;->c:Z
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_11
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_37} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_37} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_37 .. :try_end_37} :catch_a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_37} :catch_91
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_37 .. :try_end_37} :catch_80

    if-nez v5, :cond_3a

    if-nez v12, :cond_3a

    const/16 v6, 0x19c

    move/from16 v5, v18

    :goto_22
    :try_start_38
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_12
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_38} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_38} :catch_b1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_38 .. :try_end_38} :catch_a3
    .catch Ljava/lang/IllegalAccessException; {:try_start_38 .. :try_end_38} :catch_92
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_38 .. :try_end_38} :catch_81

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move v7, v4

    move v3, v6

    move v4, v5

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_d

    :cond_3a
    :try_start_39
    move-object/from16 v0, p0

    iget-object v5, v0, Lsdk/download/j;->a:Landroid/content/Context;

    invoke-static {v5}, Lsdk/download/l;->a(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3b

    const/16 v6, 0xc1

    move/from16 v5, v18

    goto :goto_22

    :cond_3b
    move-object/from16 v0, p0

    iget-object v5, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v5, v5, Lsdk/download/d;->k:I

    const/4 v6, 0x5

    if-ge v5, v6, :cond_3c

    const/16 v6, 0xc1

    const/16 v18, 0x1

    move/from16 v5, v18

    goto :goto_22

    :cond_3c
    const/16 v6, 0x1ef

    move/from16 v5, v18

    goto :goto_22

    :cond_3d
    move-object/from16 v0, p0

    iget-object v5, v0, Lsdk/download/j;->a:Landroid/content/Context;

    invoke-static {v5}, Lsdk/download/l;->a(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3e

    const/16 v5, 0xc1

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move v7, v4

    move v3, v5

    move/from16 v4, v18

    move/from16 v5, v17

    goto/16 :goto_d

    :cond_3e
    move-object/from16 v0, p0

    iget-object v5, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v5, v5, Lsdk/download/d;->k:I
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_11
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_39} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_39} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_39 .. :try_end_39} :catch_a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_39} :catch_91
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_39 .. :try_end_39} :catch_80

    const/4 v6, 0x5

    if-ge v5, v6, :cond_3f

    const/16 v6, 0xc1

    const/4 v5, 0x1

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move v7, v4

    move v3, v6

    move v4, v5

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_d

    :cond_3f
    const/16 v5, 0x1ef

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move v7, v4

    move v3, v5

    move/from16 v4, v18

    move/from16 v5, v17

    goto/16 :goto_d

    :cond_40
    const/4 v4, 0x1

    :cond_41
    if-nez v2, :cond_42

    :try_start_3a
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v5, v3, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v2, v5

    :cond_42
    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v5, v5, Lsdk/download/d;->g:I
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_11
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_3a} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3a} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3a .. :try_end_3a} :catch_a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_3a} :catch_91
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3a .. :try_end_3a} :catch_80

    if-nez v5, :cond_43

    :try_start_3b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_11
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_3b} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3b} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_3b} :catch_a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_3b} :catch_91
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3b .. :try_end_3b} :catch_80

    const/4 v2, 0x0

    :cond_43
    :goto_23
    add-int v10, v24, v6

    :try_start_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-int v14, v10, v11

    const/16 v22, 0x1000

    move/from16 v0, v22

    if-le v14, v0, :cond_7b

    sub-long v22, v5, v8

    const-wide/16 v29, 0x5dc

    cmp-long v14, v22, v29

    if-lez v14, :cond_7b

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "current_bytes"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lsdk/download/j;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v9, v0, v8, v11, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v8, v10

    :goto_24
    move-object/from16 v0, p0

    iget-object v9, v0, Lsdk/download/j;->b:Lsdk/download/d;

    monitor-enter v9
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_11
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_3c} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3c} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_3c} :catch_a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_3c} :catch_91
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3c .. :try_end_3c} :catch_80

    :try_start_3d
    move-object/from16 v0, p0

    iget-object v11, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v11, v11, Lsdk/download/d;->i:I
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0

    const/4 v14, 0x1

    if-ne v11, v14, :cond_44

    const/16 v5, 0xc1

    :try_start_3e
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    monitor-exit v9
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_15

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move v7, v4

    move v3, v5

    move/from16 v4, v18

    move/from16 v5, v17

    goto/16 :goto_d

    :catch_1c
    move-exception v5

    :try_start_3f
    move-object/from16 v0, p0

    iget-object v5, v0, Lsdk/download/j;->a:Landroid/content/Context;

    const-wide/16 v22, 0x1000

    move-wide/from16 v0, v22

    invoke-static {v5, v0, v1}, Lsdk/download/l;->a(Landroid/content/Context;J)Z
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_11
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_3f} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_3f} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3f .. :try_end_3f} :catch_a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3f .. :try_end_3f} :catch_91
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3f .. :try_end_3f} :catch_80

    move-result v5

    if-nez v5, :cond_41

    const/16 v5, 0x1ec

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move v7, v4

    move v3, v5

    move/from16 v4, v18

    move/from16 v5, v17

    goto/16 :goto_d

    :cond_44
    :try_start_40
    monitor-exit v9
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_0

    :try_start_41
    move-object/from16 v0, p0

    iget-object v9, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v9, v9, Lsdk/download/d;->j:I
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_11
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_41} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_41} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_41 .. :try_end_41} :catch_a2
    .catch Ljava/lang/IllegalAccessException; {:try_start_41 .. :try_end_41} :catch_91
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_41 .. :try_end_41} :catch_80

    const/16 v11, 0x1ea

    if-ne v9, v11, :cond_49

    const/16 v5, 0x1ea

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move v7, v4

    move v3, v5

    move/from16 v4, v18

    move/from16 v5, v17

    goto/16 :goto_d

    :catchall_0
    move-exception v5

    move/from16 v6, v19

    :goto_25
    :try_start_42
    monitor-exit v9
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_16

    :try_start_43
    throw v5
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_13
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_43} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_43} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_43 .. :try_end_43} :catch_a4
    .catch Ljava/lang/IllegalAccessException; {:try_start_43 .. :try_end_43} :catch_93
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_43 .. :try_end_43} :catch_82

    :catch_1d
    move-exception v5

    move-object/from16 v11, v21

    move-object v12, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move v7, v4

    move-object/from16 v2, v20

    move/from16 v4, v18

    :goto_26
    const/16 v3, 0x1ec

    move-object/from16 v0, p0

    iget-object v13, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lsdk/download/d;->O:Z

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_45
    if-eqz v11, :cond_46

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_44
    const-string v13, "close"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v2, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/SecurityException; {:try_start_44 .. :try_end_44} :catch_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_44 .. :try_end_44} :catch_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_44} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_44 .. :try_end_44} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_44 .. :try_end_44} :catch_2c

    :cond_46
    :goto_27
    if-eqz v12, :cond_47

    :try_start_45
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_6c

    :cond_47
    :goto_28
    if-eqz v8, :cond_48

    invoke-static {v3}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_48
    :goto_29
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_49
    move v11, v8

    move/from16 v24, v10

    move-wide v8, v5

    goto/16 :goto_20

    :cond_4a
    const/16 v5, 0xc8

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move v7, v4

    move v3, v5

    move/from16 v4, v18

    move/from16 v5, v17

    goto/16 :goto_d

    :catch_1e
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_e

    :catch_1f
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_e

    :catch_20
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_e

    :catch_21
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_e

    :catch_22
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_e

    :cond_4b
    invoke-static {v3}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "android.os.FileUtils"

    :try_start_46
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_2a
    array-length v13, v12

    if-ge v11, v13, :cond_4c

    aget-object v13, v12, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "setPermissions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4e

    aget-object v2, v12, v11

    :cond_4c
    if-eqz v2, :cond_4d

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0x1a4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_24

    :cond_4d
    :goto_2b
    :try_start_47
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_47} :catch_23
    .catch Ljava/io/SyncFailedException; {:try_start_47 .. :try_end_47} :catch_25
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_47} :catch_27

    goto/16 :goto_10

    :catch_23
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_4e
    add-int/lit8 v11, v11, 0x1

    goto :goto_2a

    :catch_24
    move-exception v2

    const-string v11, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :catch_25
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " sync failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :catch_26
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException trying to sync "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :catch_27
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    const-string v12, "exception while syncing file: "

    invoke-static {v11, v12, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    :catch_28
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_27

    :catch_29
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_27

    :catch_2a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_27

    :catch_2b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_27

    :catch_2c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_27

    :cond_4f
    invoke-static {v3}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v2, "android.os.FileUtils"

    :try_start_48
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_2c
    array-length v13, v12

    if-ge v11, v13, :cond_50

    aget-object v13, v12, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "setPermissions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_52

    aget-object v2, v12, v11

    :cond_50
    if-eqz v2, :cond_51

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0x1a4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_2e

    :cond_51
    :goto_2d
    :try_start_49
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_49} :catch_2d
    .catch Ljava/io/SyncFailedException; {:try_start_49 .. :try_end_49} :catch_2f
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_31

    goto/16 :goto_29

    :catch_2d
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_52
    add-int/lit8 v11, v11, 0x1

    goto :goto_2c

    :catch_2e
    move-exception v2

    const-string v11, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :catch_2f
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " sync failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    :catch_30
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException trying to sync "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    :catch_31
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    const-string v12, "exception while syncing file: "

    invoke-static {v11, v12, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    :catch_32
    move-exception v2

    move-object/from16 v20, v3

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v13

    :goto_2e
    const/16 v3, 0x1eb

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v12, 0x0

    iput-boolean v12, v2, Lsdk/download/d;->O:Z

    if-eqz v20, :cond_53

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_53
    if-eqz v21, :cond_54

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_4a
    const-string v12, "close"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/SecurityException; {:try_start_4a .. :try_end_4a} :catch_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4a .. :try_end_4a} :catch_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_4a} :catch_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_4a .. :try_end_4a} :catch_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4a .. :try_end_4a} :catch_37

    :cond_54
    :goto_2f
    if-eqz v11, :cond_55

    :try_start_4b
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4b} :catch_6d

    :cond_55
    :goto_30
    if-eqz v8, :cond_56

    invoke-static {v3}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_57

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_56
    :goto_31
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_33
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2f

    :catch_34
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2f

    :catch_35
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2f

    :catch_36
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2f

    :catch_37
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2f

    :cond_57
    invoke-static {v3}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string v2, "android.os.FileUtils"

    :try_start_4c
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_32
    array-length v13, v12

    if-ge v11, v13, :cond_58

    aget-object v13, v12, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "setPermissions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5a

    aget-object v2, v12, v11

    :cond_58
    if-eqz v2, :cond_59

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0x1a4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_39

    :cond_59
    :goto_33
    :try_start_4d
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_4d} :catch_38
    .catch Ljava/io/SyncFailedException; {:try_start_4d .. :try_end_4d} :catch_3a
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4d} :catch_3b
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_4d} :catch_3c

    goto :goto_31

    :catch_38
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :cond_5a
    add-int/lit8 v11, v11, 0x1

    goto :goto_32

    :catch_39
    move-exception v2

    const-string v11, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :catch_3a
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " sync failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :catch_3b
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException trying to sync "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :catch_3c
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    const-string v12, "exception while syncing file: "

    invoke-static {v11, v12, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    :catch_3d
    move-exception v2

    move-object/from16 v20, v3

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v13

    move/from16 v3, v19

    :goto_34
    :try_start_4e
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v12, 0x0

    iput-boolean v12, v2, Lsdk/download/d;->O:Z

    if-eqz v20, :cond_5b

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5b
    if-eqz v21, :cond_5c

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_4f
    const-string v12, "close"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_4f} :catch_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4f .. :try_end_4f} :catch_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_4f} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_4f .. :try_end_4f} :catch_41
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4f .. :try_end_4f} :catch_42

    :cond_5c
    :goto_35
    if-eqz v11, :cond_5d

    :try_start_50
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_50} :catch_6e

    :cond_5d
    :goto_36
    if-eqz v8, :cond_5e

    invoke-static {v3}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_5f

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_5e
    :goto_37
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_3e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_35

    :catch_3f
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_35

    :catch_40
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_35

    :catch_41
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_35

    :catch_42
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_35

    :cond_5f
    invoke-static {v3}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    const-string v2, "android.os.FileUtils"

    :try_start_51
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_38
    array-length v13, v12

    if-ge v11, v13, :cond_60

    aget-object v13, v12, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "setPermissions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_62

    aget-object v2, v12, v11

    :cond_60
    if-eqz v2, :cond_61

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0x1a4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_44

    :cond_61
    :goto_39
    :try_start_52
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_52} :catch_43
    .catch Ljava/io/SyncFailedException; {:try_start_52 .. :try_end_52} :catch_45
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_52} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_52} :catch_47

    goto :goto_37

    :catch_43
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37

    :cond_62
    add-int/lit8 v11, v11, 0x1

    goto :goto_38

    :catch_44
    move-exception v2

    const-string v11, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :catch_45
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " sync failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37

    :catch_46
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException trying to sync "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37

    :catch_47
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    const-string v12, "exception while syncing file: "

    invoke-static {v11, v12, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    :catch_48
    move-exception v2

    move-object/from16 v20, v3

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v13

    move/from16 v3, v19

    :goto_3a
    :try_start_53
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v12, 0x0

    iput-boolean v12, v2, Lsdk/download/d;->O:Z

    if-eqz v20, :cond_63

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_63
    if-eqz v21, :cond_64

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_54
    const-string v12, "close"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/SecurityException; {:try_start_54 .. :try_end_54} :catch_49
    .catch Ljava/lang/NoSuchMethodException; {:try_start_54 .. :try_end_54} :catch_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_54} :catch_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_54} :catch_4c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_54 .. :try_end_54} :catch_4d

    :cond_64
    :goto_3b
    if-eqz v11, :cond_65

    :try_start_55
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_55} :catch_6f

    :cond_65
    :goto_3c
    if-eqz v8, :cond_66

    invoke-static {v3}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_67

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_66
    :goto_3d
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_49
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_3b

    :catch_4a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_3b

    :catch_4b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3b

    :catch_4c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3b

    :catch_4d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3b

    :cond_67
    invoke-static {v3}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_66

    const-string v2, "android.os.FileUtils"

    :try_start_56
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_3e
    array-length v13, v12

    if-ge v11, v13, :cond_68

    aget-object v13, v12, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "setPermissions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6a

    aget-object v2, v12, v11

    :cond_68
    if-eqz v2, :cond_69

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0x1a4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_4f

    :cond_69
    :goto_3f
    :try_start_57
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_57} :catch_4e
    .catch Ljava/io/SyncFailedException; {:try_start_57 .. :try_end_57} :catch_50
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_57} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_57} :catch_52

    goto :goto_3d

    :catch_4e
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    :cond_6a
    add-int/lit8 v11, v11, 0x1

    goto :goto_3e

    :catch_4f
    move-exception v2

    const-string v11, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :catch_50
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " sync failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    :catch_51
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException trying to sync "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    :catch_52
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    const-string v12, "exception while syncing file: "

    invoke-static {v11, v12, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    :catch_53
    move-exception v2

    move-object/from16 v20, v3

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v13

    move/from16 v3, v19

    :goto_40
    :try_start_58
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v12, 0x0

    iput-boolean v12, v2, Lsdk/download/d;->O:Z

    if-eqz v20, :cond_6b

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6b
    if-eqz v21, :cond_6c

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_59
    const-string v12, "close"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/SecurityException; {:try_start_59 .. :try_end_59} :catch_54
    .catch Ljava/lang/NoSuchMethodException; {:try_start_59 .. :try_end_59} :catch_55
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_59} :catch_56
    .catch Ljava/lang/IllegalAccessException; {:try_start_59 .. :try_end_59} :catch_57
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_59 .. :try_end_59} :catch_58

    :cond_6c
    :goto_41
    if-eqz v11, :cond_6d

    :try_start_5a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5a} :catch_70

    :cond_6d
    :goto_42
    if-eqz v8, :cond_6e

    invoke-static {v3}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_6f

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_6e
    :goto_43
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_54
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_41

    :catch_55
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_41

    :catch_56
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_41

    :catch_57
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_41

    :catch_58
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_41

    :cond_6f
    invoke-static {v3}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string v2, "android.os.FileUtils"

    :try_start_5b
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_44
    array-length v13, v12

    if-ge v11, v13, :cond_70

    aget-object v13, v12, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "setPermissions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_72

    aget-object v2, v12, v11

    :cond_70
    if-eqz v2, :cond_71

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0x1a4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_5a

    :cond_71
    :goto_45
    :try_start_5c
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_5c} :catch_59
    .catch Ljava/io/SyncFailedException; {:try_start_5c .. :try_end_5c} :catch_5b
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5c} :catch_5c
    .catch Ljava/lang/RuntimeException; {:try_start_5c .. :try_end_5c} :catch_5d

    goto :goto_43

    :catch_59
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_43

    :cond_72
    add-int/lit8 v11, v11, 0x1

    goto :goto_44

    :catch_5a
    move-exception v2

    const-string v11, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    :catch_5b
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " sync failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_43

    :catch_5c
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException trying to sync "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_43

    :catch_5d
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    const-string v12, "exception while syncing file: "

    invoke-static {v11, v12, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    :catchall_1
    move-exception v2

    move-object/from16 v20, v3

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v2

    move/from16 v3, v19

    move-object v2, v13

    :goto_46
    move-object/from16 v0, p0

    iget-object v12, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lsdk/download/d;->O:Z

    if-eqz v20, :cond_73

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_73
    if-eqz v21, :cond_74

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    :try_start_5d
    const-string v13, "close"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-virtual {v12, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/SecurityException; {:try_start_5d .. :try_end_5d} :catch_5e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5d .. :try_end_5d} :catch_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d .. :try_end_5d} :catch_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_5d .. :try_end_5d} :catch_61
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5d .. :try_end_5d} :catch_62

    :cond_74
    :goto_47
    if-eqz v2, :cond_75

    :try_start_5e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_5e} :catch_71

    :cond_75
    :goto_48
    if-eqz v8, :cond_76

    invoke-static {v3}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_77

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_76
    :goto_49
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v11

    :catch_5e
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_47

    :catch_5f
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_47

    :catch_60
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_47

    :catch_61
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_47

    :catch_62
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_47

    :cond_77
    invoke-static {v3}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_76

    const-string v2, "android.os.FileUtils"

    :try_start_5f
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v13

    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_4a
    array-length v14, v13

    if-ge v12, v14, :cond_78

    aget-object v14, v13, v12

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "setPermissions"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7a

    aget-object v2, v13, v12

    :cond_78
    if-eqz v2, :cond_79

    const/4 v12, 0x0

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    const/16 v15, 0x1a4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v2, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_64

    :cond_79
    :goto_4b
    :try_start_60
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v12, 0x1

    invoke-direct {v2, v8, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_60} :catch_63
    .catch Ljava/io/SyncFailedException; {:try_start_60 .. :try_end_60} :catch_65
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_60} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_60} :catch_67

    goto :goto_49

    :catch_63
    move-exception v2

    const-string v12, "GexinSdkDownloadService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " not found: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_49

    :cond_7a
    add-int/lit8 v12, v12, 0x1

    goto :goto_4a

    :catch_64
    move-exception v2

    const-string v12, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lsdk/c/a/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    :catch_65
    move-exception v2

    const-string v12, "GexinSdkDownloadService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " sync failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_49

    :catch_66
    move-exception v2

    const-string v12, "GexinSdkDownloadService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException trying to sync "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lsdk/c/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_49

    :catch_67
    move-exception v2

    const-string v12, "GexinSdkDownloadService"

    const-string v13, "exception while syncing file: "

    invoke-static {v12, v13, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    :catch_68
    move-exception v2

    goto/16 :goto_1

    :catch_69
    move-exception v2

    goto/16 :goto_12

    :catch_6a
    move-exception v5

    goto/16 :goto_23

    :catch_6b
    move-exception v2

    goto/16 :goto_f

    :catch_6c
    move-exception v2

    goto/16 :goto_28

    :catch_6d
    move-exception v2

    goto/16 :goto_30

    :catch_6e
    move-exception v2

    goto/16 :goto_36

    :catch_6f
    move-exception v2

    goto/16 :goto_3c

    :catch_70
    move-exception v2

    goto/16 :goto_42

    :catch_71
    move-exception v2

    goto/16 :goto_48

    :catchall_2
    move-exception v2

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    move-object v11, v2

    move-object v2, v13

    goto/16 :goto_46

    :catchall_3
    move-exception v2

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v2

    move-object v2, v13

    goto/16 :goto_46

    :catchall_4
    move-exception v3

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v3

    move/from16 v3, v19

    goto/16 :goto_46

    :catchall_5
    move-exception v3

    move-object/from16 v21, v11

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v3

    move/from16 v3, v19

    goto/16 :goto_46

    :catchall_6
    move-exception v3

    move-object v11, v3

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    goto/16 :goto_46

    :catchall_7
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    move-object/from16 v31, v2

    move-object v2, v11

    move-object/from16 v11, v31

    goto/16 :goto_46

    :catchall_8
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move-object/from16 v31, v2

    move-object v2, v11

    move-object/from16 v11, v31

    goto/16 :goto_46

    :catchall_9
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move-object/from16 v31, v11

    move-object v11, v2

    move-object/from16 v2, v31

    goto/16 :goto_46

    :catchall_a
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object/from16 v31, v11

    move-object v11, v2

    move-object/from16 v2, v31

    goto/16 :goto_46

    :catchall_b
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move/from16 v5, v17

    move/from16 v4, v18

    move-object/from16 v31, v11

    move-object v11, v2

    move-object/from16 v2, v31

    goto/16 :goto_46

    :catchall_c
    move-exception v2

    move-object v10, v7

    move-object v8, v13

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    move v7, v14

    move-object/from16 v31, v2

    move-object v2, v11

    move-object/from16 v11, v31

    goto/16 :goto_46

    :catchall_d
    move-exception v2

    move-object v10, v7

    move-object v8, v13

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move v7, v14

    move-object/from16 v31, v11

    move-object v11, v2

    move-object/from16 v2, v31

    goto/16 :goto_46

    :catchall_e
    move-exception v2

    move-object v10, v7

    move-object v8, v13

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    move v7, v14

    move-object/from16 v31, v2

    move-object v2, v11

    move-object/from16 v11, v31

    goto/16 :goto_46

    :catchall_f
    move-exception v4

    move-object v11, v4

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move v7, v14

    move/from16 v4, v18

    move/from16 v3, v19

    goto/16 :goto_46

    :catchall_10
    move-exception v6

    move-object v11, v6

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move v7, v14

    move/from16 v6, v16

    move v3, v5

    move/from16 v5, v17

    goto/16 :goto_46

    :catchall_11
    move-exception v5

    move-object v11, v5

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move v7, v4

    move/from16 v5, v17

    move/from16 v3, v19

    move/from16 v4, v18

    goto/16 :goto_46

    :catchall_12
    move-exception v8

    move-object v11, v8

    move-object v10, v7

    move-object v9, v15

    move v7, v4

    move-object v8, v3

    move v4, v5

    move v3, v6

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_46

    :catchall_13
    move-exception v5

    move-object v11, v5

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move v7, v4

    move/from16 v5, v17

    move v3, v6

    move/from16 v4, v18

    move/from16 v6, v16

    goto/16 :goto_46

    :catchall_14
    move-exception v2

    move-object/from16 v31, v2

    move-object v2, v11

    move-object/from16 v11, v31

    goto/16 :goto_46

    :catch_72
    move-exception v2

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    move-object v11, v13

    goto/16 :goto_40

    :catch_73
    move-exception v2

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v13

    goto/16 :goto_40

    :catch_74
    move-exception v3

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v2

    move-object v2, v3

    move/from16 v3, v19

    goto/16 :goto_40

    :catch_75
    move-exception v3

    move-object/from16 v21, v11

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v2

    move-object v2, v3

    move/from16 v3, v19

    goto/16 :goto_40

    :catch_76
    move-exception v3

    move-object v11, v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v2, v3

    move/from16 v3, v19

    goto/16 :goto_40

    :catch_77
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    goto/16 :goto_40

    :catch_78
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_40

    :catch_79
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    goto/16 :goto_40

    :catch_7a
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    goto/16 :goto_40

    :catch_7b
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move/from16 v5, v17

    move/from16 v4, v18

    goto/16 :goto_40

    :catch_7c
    move-exception v2

    move-object v10, v7

    move-object v8, v13

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    move v7, v14

    goto/16 :goto_40

    :catch_7d
    move-exception v2

    move-object v10, v7

    move-object v8, v13

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move v7, v14

    goto/16 :goto_40

    :catch_7e
    move-exception v4

    move-object v11, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move v7, v14

    move-object v2, v4

    move/from16 v3, v19

    move/from16 v4, v18

    goto/16 :goto_40

    :catch_7f
    move-exception v6

    move-object v11, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move v7, v14

    move-object v2, v6

    move v3, v5

    move/from16 v5, v17

    move/from16 v6, v16

    goto/16 :goto_40

    :catch_80
    move-exception v5

    move-object v11, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move-object v2, v5

    move v7, v4

    move/from16 v3, v19

    move/from16 v4, v18

    move/from16 v5, v17

    goto/16 :goto_40

    :catch_81
    move-exception v8

    move-object v11, v2

    move-object v10, v7

    move-object v9, v15

    move v7, v4

    move-object v2, v8

    move-object v8, v3

    move v4, v5

    move/from16 v5, v17

    move v3, v6

    move/from16 v6, v16

    goto/16 :goto_40

    :catch_82
    move-exception v5

    move-object v11, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move v7, v4

    move-object v2, v5

    move v3, v6

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v6, v16

    goto/16 :goto_40

    :catch_83
    move-exception v2

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    move-object v11, v13

    goto/16 :goto_3a

    :catch_84
    move-exception v2

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v13

    goto/16 :goto_3a

    :catch_85
    move-exception v3

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v2

    move-object v2, v3

    move/from16 v3, v19

    goto/16 :goto_3a

    :catch_86
    move-exception v3

    move-object/from16 v21, v11

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v2

    move-object v2, v3

    move/from16 v3, v19

    goto/16 :goto_3a

    :catch_87
    move-exception v3

    move-object v11, v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v2, v3

    move/from16 v3, v19

    goto/16 :goto_3a

    :catch_88
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    goto/16 :goto_3a

    :catch_89
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_3a

    :catch_8a
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    goto/16 :goto_3a

    :catch_8b
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    goto/16 :goto_3a

    :catch_8c
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move/from16 v5, v17

    move/from16 v4, v18

    goto/16 :goto_3a

    :catch_8d
    move-exception v2

    move-object v10, v7

    move-object v8, v13

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    move v7, v14

    goto/16 :goto_3a

    :catch_8e
    move-exception v2

    move-object v10, v7

    move-object v8, v13

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move v7, v14

    goto/16 :goto_3a

    :catch_8f
    move-exception v4

    move-object v11, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move v7, v14

    move-object v2, v4

    move/from16 v3, v19

    move/from16 v4, v18

    goto/16 :goto_3a

    :catch_90
    move-exception v6

    move-object v11, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move v7, v14

    move-object v2, v6

    move v3, v5

    move/from16 v5, v17

    move/from16 v6, v16

    goto/16 :goto_3a

    :catch_91
    move-exception v5

    move-object v11, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move-object v2, v5

    move v7, v4

    move/from16 v3, v19

    move/from16 v4, v18

    move/from16 v5, v17

    goto/16 :goto_3a

    :catch_92
    move-exception v8

    move-object v11, v2

    move-object v10, v7

    move-object v9, v15

    move v7, v4

    move-object v2, v8

    move-object v8, v3

    move v4, v5

    move/from16 v5, v17

    move v3, v6

    move/from16 v6, v16

    goto/16 :goto_3a

    :catch_93
    move-exception v5

    move-object v11, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move v7, v4

    move-object v2, v5

    move v3, v6

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v6, v16

    goto/16 :goto_3a

    :catch_94
    move-exception v2

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    move-object v11, v13

    goto/16 :goto_34

    :catch_95
    move-exception v2

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v13

    goto/16 :goto_34

    :catch_96
    move-exception v3

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v2

    move-object v2, v3

    move/from16 v3, v19

    goto/16 :goto_34

    :catch_97
    move-exception v3

    move-object/from16 v21, v11

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v2

    move-object v2, v3

    move/from16 v3, v19

    goto/16 :goto_34

    :catch_98
    move-exception v3

    move-object v11, v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v2, v3

    move/from16 v3, v19

    goto/16 :goto_34

    :catch_99
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    goto/16 :goto_34

    :catch_9a
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_34

    :catch_9b
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    goto/16 :goto_34

    :catch_9c
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    goto/16 :goto_34

    :catch_9d
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move/from16 v5, v17

    move/from16 v4, v18

    goto/16 :goto_34

    :catch_9e
    move-exception v2

    move-object v10, v7

    move-object v8, v13

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v3, v19

    move v7, v14

    goto/16 :goto_34

    :catch_9f
    move-exception v2

    move-object v10, v7

    move-object v8, v13

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move v7, v14

    goto/16 :goto_34

    :catch_a0
    move-exception v4

    move-object v11, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move v7, v14

    move-object v2, v4

    move/from16 v3, v19

    move/from16 v4, v18

    goto/16 :goto_34

    :catch_a1
    move-exception v6

    move-object v11, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move v7, v14

    move-object v2, v6

    move v3, v5

    move/from16 v5, v17

    move/from16 v6, v16

    goto/16 :goto_34

    :catch_a2
    move-exception v5

    move-object v11, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move-object v2, v5

    move v7, v4

    move/from16 v3, v19

    move/from16 v4, v18

    move/from16 v5, v17

    goto/16 :goto_34

    :catch_a3
    move-exception v8

    move-object v11, v2

    move-object v10, v7

    move-object v9, v15

    move v7, v4

    move-object v2, v8

    move-object v8, v3

    move v4, v5

    move/from16 v5, v17

    move v3, v6

    move/from16 v6, v16

    goto/16 :goto_34

    :catch_a4
    move-exception v5

    move-object v11, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move v7, v4

    move-object v2, v5

    move v3, v6

    move/from16 v5, v17

    move/from16 v4, v18

    move/from16 v6, v16

    goto/16 :goto_34

    :catch_a5
    move-exception v2

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v13

    goto/16 :goto_2e

    :catch_a6
    move-exception v3

    move-object/from16 v21, v11

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v2

    goto/16 :goto_2e

    :catch_a7
    move-exception v3

    move-object/from16 v21, v11

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v11, v2

    goto/16 :goto_2e

    :catch_a8
    move-exception v3

    move-object v11, v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    goto/16 :goto_2e

    :catch_a9
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    goto/16 :goto_2e

    :catch_aa
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    goto/16 :goto_2e

    :catch_ab
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    goto/16 :goto_2e

    :catch_ac
    move-exception v2

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move/from16 v5, v17

    move/from16 v4, v18

    goto/16 :goto_2e

    :catch_ad
    move-exception v2

    move-object v10, v7

    move-object v8, v13

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move v7, v14

    goto/16 :goto_2e

    :catch_ae
    move-exception v4

    move-object v11, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move v7, v14

    goto/16 :goto_2e

    :catch_af
    move-exception v5

    move-object v11, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move v7, v14

    goto/16 :goto_2e

    :catch_b0
    move-exception v5

    move-object v11, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move v7, v4

    move/from16 v4, v18

    goto/16 :goto_2e

    :catch_b1
    move-exception v6

    move-object v11, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move v7, v4

    move v4, v5

    move/from16 v5, v17

    goto/16 :goto_2e

    :catch_b2
    move-exception v2

    move-object v2, v3

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v12, v13

    goto/16 :goto_26

    :catch_b3
    move-exception v2

    move-object/from16 v2, v20

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v12, v13

    goto/16 :goto_26

    :catch_b4
    move-exception v3

    move-object v10, v12

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v12, v2

    move-object/from16 v2, v20

    goto/16 :goto_26

    :catch_b5
    move-exception v3

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v12, v2

    move-object/from16 v2, v20

    goto/16 :goto_26

    :catch_b6
    move-exception v3

    move-object/from16 v11, v21

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v12, v2

    move-object/from16 v2, v20

    goto/16 :goto_26

    :catch_b7
    move-exception v2

    move-object/from16 v2, v20

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v12, v11

    move-object/from16 v11, v21

    goto/16 :goto_26

    :catch_b8
    move-exception v2

    move-object/from16 v2, v20

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move-object v12, v11

    move-object/from16 v11, v21

    goto/16 :goto_26

    :catch_b9
    move-exception v2

    move-object/from16 v2, v20

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move-object v9, v15

    move/from16 v6, v16

    move-object v12, v11

    move-object/from16 v11, v21

    goto/16 :goto_26

    :catch_ba
    move-exception v2

    move-object/from16 v2, v20

    move-object v10, v12

    move-object v8, v13

    move v7, v14

    move/from16 v5, v17

    move/from16 v4, v18

    move-object v12, v11

    move-object/from16 v11, v21

    goto/16 :goto_26

    :catch_bb
    move-exception v2

    move-object/from16 v2, v20

    move-object v12, v11

    move-object v10, v7

    move-object v8, v13

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object/from16 v11, v21

    move v7, v14

    goto/16 :goto_26

    :catch_bc
    move-exception v2

    move-object/from16 v2, v20

    move-object v12, v11

    move-object v10, v7

    move-object v8, v13

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object/from16 v11, v21

    move v7, v14

    goto/16 :goto_26

    :catch_bd
    move-exception v4

    move-object/from16 v11, v21

    move-object v12, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v4, v18

    move-object/from16 v2, v20

    move v7, v14

    goto/16 :goto_26

    :catch_be
    move-exception v5

    move-object/from16 v11, v21

    move-object v12, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move v7, v14

    move-object/from16 v2, v20

    goto/16 :goto_26

    :catch_bf
    move-exception v6

    move-object/from16 v11, v21

    move-object v12, v2

    move-object v10, v7

    move-object v8, v3

    move-object v9, v15

    move/from16 v6, v16

    move-object/from16 v2, v20

    move v7, v4

    move v4, v5

    move/from16 v5, v17

    goto/16 :goto_26

    :catchall_15
    move-exception v6

    move-object/from16 v31, v6

    move v6, v5

    move-object/from16 v5, v31

    goto/16 :goto_25

    :catchall_16
    move-exception v5

    goto/16 :goto_25

    :cond_7b
    move-wide v5, v8

    move v8, v11

    goto/16 :goto_24

    :cond_7c
    move-object/from16 v25, v8

    goto/16 :goto_1d

    :cond_7d
    move-object v2, v9

    goto/16 :goto_1c

    :cond_7e
    move-object v12, v4

    goto/16 :goto_1b

    :cond_7f
    move-object v7, v12

    goto/16 :goto_1a

    :cond_80
    move-object v2, v11

    move-object v7, v12

    move-object v3, v13

    move-object v13, v8

    move-object v12, v4

    goto/16 :goto_1f

    :cond_81
    move-object v11, v2

    goto/16 :goto_9

    :cond_82
    move-object/from16 v21, v11

    goto/16 :goto_8

    :cond_83
    move-object v3, v7

    goto/16 :goto_16

    :cond_84
    move/from16 v25, v10

    move-object v2, v13

    move-object v13, v8

    move-object v8, v7

    goto/16 :goto_6
.end method
