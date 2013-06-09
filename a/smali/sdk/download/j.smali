.class public final Lsdk/download/j;
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

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

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
.method public final run()V
    .locals 32

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    const/16 v17, 0x1eb

    const/16 v16, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v14, v2, Lsdk/download/d;->m:I

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v2, v2, Lsdk/download/d;->f:Ljava/lang/String;

    invoke-static {v2}, Lsdk/download/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v20, 0x0

    const/16 v19, 0x0

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

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v23, 0x0

    const/16 v2, 0x1000

    :try_start_0
    new-array v0, v2, [B

    move-object/from16 v27, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->a:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const/4 v8, 0x1

    const-string v18, "GexinSdkDownloadService"

    move-object/from16 v0, v18

    invoke-virtual {v2, v8, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_48

    move-result-object v18

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v8, v2, Lsdk/download/d;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_96
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_86
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_76
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_66

    if-eqz v8, :cond_81

    :try_start_2
    invoke-static {v8}, Lsdk/download/l;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v17, 0x1ec

    const/16 v3, 0x1ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v10, v2, Lsdk/download/d;->f:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_87
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_77
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_67

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lsdk/download/d;->O:Z

    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    if-eqz v8, :cond_1

    const/16 v2, 0x1ec

    invoke-static {v2}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_1
    :goto_0
    const/16 v3, 0x1ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move v6, v14

    move-object v10, v11

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    const/16 v2, 0x1ec

    invoke-static {v2}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.os.FileUtils"

    :try_start_3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_3

    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "setPermissions"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    aget-object v2, v4, v3

    :cond_3
    if-eqz v2, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1a4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_3
    :try_start_4
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/SyncFailedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "GexinSdkDownloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v2

    const-string v3, "GexinSdkDownloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sync failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v2

    const-string v3, "GexinSdkDownloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException trying to sync "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_4
    move-exception v2

    const-string v3, "GexinSdkDownloadService"

    const-string v4, "exception while syncing file: "

    invoke-static {v3, v4, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    :try_start_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v24

    const-wide/16 v28, 0x0

    cmp-long v3, v24, v28

    if-nez v3, :cond_12

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_a5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_87
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_77
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_67

    const/4 v8, 0x0

    move-object v3, v6

    move-object v10, v8

    move v8, v9

    move-object/from16 v9, v20

    :goto_4
    const-wide/16 v20, 0x0

    :try_start_6
    const-string v2, "android.net.http.AndroidHttpClient"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v24

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_5
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v6, v0, :cond_80

    aget-object v25, v24, v6

    invoke-virtual/range {v25 .. v25}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v25

    const-string v28, "newInstance"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1b

    aget-object v2, v24, v6

    move-object v6, v2

    :goto_6
    if-eqz v6, :cond_8

    const/16 v24, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v2, v2, Lsdk/download/d;->r:Ljava/lang/String;

    if-nez v2, :cond_7

    const-string v2, "AndroidDownloadManager"

    :cond_7
    aput-object v2, v25, v28

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_a7
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_69

    move-result-object v19

    :cond_8
    if-eqz v9, :cond_9

    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v2, v2, Lsdk/download/d;->g:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_69

    if-nez v2, :cond_9

    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_69

    const/4 v9, 0x0

    :cond_9
    :goto_7
    :try_start_9
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

    iget-object v6, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v6, v6, Lsdk/download/d;->q:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v2, v2, Lsdk/download/d;->s:Ljava/lang/String;

    if-eqz v2, :cond_b

    const-string v2, "Referer"

    move-object/from16 v0, p0

    iget-object v6, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v6, v6, Lsdk/download/d;->s:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v8, :cond_d

    if-eqz v3, :cond_c

    const-string v2, "If-Match"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v2, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v24, "bytes="

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v24, "-"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_69

    :cond_d
    const/4 v6, 0x0

    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_69

    move-result-object v2

    :try_start_b
    const-string v24, "execute"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v29, 0x0

    const-class v30, Lorg/apache/http/client/methods/HttpUriRequest;

    aput-object v30, v25, v29

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v28, v24, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpResponse;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_b} :catch_69

    move-object/from16 v25, v2

    :goto_8
    :try_start_c
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v6, 0x1f7

    if-ne v2, v6, :cond_22

    move-object/from16 v0, p0

    iget-object v6, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v6, v6, Lsdk/download/d;->k:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_c} :catch_69

    const/16 v24, 0x5

    move/from16 v0, v24

    if-ge v6, v0, :cond_22

    const/16 v3, 0xc1

    const/4 v4, 0x1

    :try_start_d
    const-string v2, "Retry-After"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_a9
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_9a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_d} :catch_7a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_d} :catch_6a

    move-result-object v2

    if-eqz v2, :cond_21

    :try_start_e
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_a9
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_9a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_7a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_e} :catch_6a

    move-result v15

    if-gez v15, :cond_1e

    const/4 v15, 0x0

    move v5, v15

    :goto_9
    :try_start_f
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_aa
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_9b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_f} :catch_8b
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_f} :catch_7b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_f} :catch_6b

    move-object v2, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move-object v9, v13

    move-object v10, v11

    :goto_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lsdk/download/d;->O:Z

    if-eqz v18, :cond_e

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_e
    if-eqz v19, :cond_f

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    :try_start_10
    const-string v12, "close"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_10} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_10} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_10} :catch_17

    :cond_f
    :goto_b
    if-eqz v2, :cond_10

    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5f

    :cond_10
    :goto_c
    if-eqz v8, :cond_11

    invoke-static {v3}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_11
    :goto_d
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v3, v3, Lsdk/download/d;->y:Ljava/lang/String;

    if-nez v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-boolean v3, v3, Lsdk/download/d;->c:Z

    if-nez v3, :cond_19

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/16 v17, 0x19c

    const/16 v3, 0x19c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v10, v2, Lsdk/download/d;->f:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_a5
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_12} :catch_87
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_12} :catch_77
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_12} :catch_67

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lsdk/download/d;->O:Z

    if-eqz v18, :cond_13

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_13
    if-eqz v8, :cond_14

    const/16 v2, 0x19c

    invoke-static {v2}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_14
    :goto_e
    const/16 v3, 0x19c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move v6, v14

    move-object v10, v11

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_15
    const/16 v2, 0x19c

    invoke-static {v2}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "android.os.FileUtils"

    :try_start_13
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    array-length v5, v4

    if-ge v3, v5, :cond_16

    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "setPermissions"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    aget-object v2, v4, v3

    :cond_16
    if-eqz v2, :cond_17

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1a4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    :cond_17
    :goto_10
    :try_start_14
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/io/SyncFailedException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_e

    :catch_5
    move-exception v2

    const-string v3, "GexinSdkDownloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :catch_6
    move-exception v2

    const-string v3, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catch_7
    move-exception v2

    const-string v3, "GexinSdkDownloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sync failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :catch_8
    move-exception v2

    const-string v3, "GexinSdkDownloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException trying to sync "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :catch_9
    move-exception v2

    const-string v3, "GexinSdkDownloadService"

    const-string v4, "exception while syncing file: "

    invoke-static {v3, v4, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :cond_19
    :try_start_15
    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v9, v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_a5
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_15} :catch_87
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_15} :catch_77
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15 .. :try_end_15} :catch_67

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v22, v0

    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v2, v2, Lsdk/download/d;->v:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v2, v2, Lsdk/download/d;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v3, v2, Lsdk/download/d;->y:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_a6
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_98
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_16} :catch_88
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_16} :catch_78
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_16} :catch_68

    const/4 v2, 0x1

    move-object v10, v8

    move v8, v2

    goto/16 :goto_4

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    :catch_a
    move-exception v2

    :try_start_17
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_17} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_17} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_17} :catch_69

    move-object/from16 v25, v6

    goto/16 :goto_8

    :catch_b
    move-exception v2

    const/4 v4, 0x1

    const/16 v3, 0x190

    :try_start_18
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_a9
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_9a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_18} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_18} :catch_7a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18 .. :try_end_18} :catch_6a

    move-object v2, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move-object v10, v11

    move-object v9, v13

    goto/16 :goto_a

    :catch_c
    move-exception v2

    :try_start_19
    const-string v2, "DownloadThread"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mInfo.mNumFailed = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v4, v4, Lsdk/download/d;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lsdk/download/l;->b(Landroid/content/Context;)Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_19} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_19} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_19 .. :try_end_19} :catch_69

    move-result v2

    if-nez v2, :cond_1c

    const/16 v3, 0xc1

    move/from16 v4, v16

    :goto_11
    :try_start_1a
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_a9
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_9a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_1a} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_1a} :catch_7a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1a .. :try_end_1a} :catch_6a

    move-object v2, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move-object v10, v11

    move-object v9, v13

    goto/16 :goto_a

    :cond_1c
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v2, v2, Lsdk/download/d;->k:I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_1b} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_1b} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1b .. :try_end_1b} :catch_69

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1d

    const/16 v3, 0xc1

    const/16 v16, 0x1

    move/from16 v4, v16

    goto :goto_11

    :cond_1d
    const/16 v3, 0x1ef

    move/from16 v4, v16

    goto :goto_11

    :cond_1e
    const/16 v2, 0x1e

    if-ge v15, v2, :cond_20

    const/16 v15, 0x1e

    :cond_1f
    :goto_12
    :try_start_1c
    sget-object v2, Lsdk/download/l;->a:Ljava/util/Random;

    const/16 v5, 0x1f

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_a9
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_9a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_1c} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_1c} :catch_7a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_1c} :catch_6a

    move-result v2

    add-int/2addr v2, v15

    mul-int/lit16 v15, v2, 0x3e8

    move v5, v15

    goto/16 :goto_9

    :cond_20
    const v2, 0x15180

    if-le v15, v2, :cond_1f

    const v15, 0x15180

    goto :goto_12

    :catch_d
    move-exception v2

    :try_start_1d
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_a9
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_9a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d .. :try_end_1d} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_1d} :catch_7a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_1d} :catch_6a

    :cond_21
    move v5, v15

    goto/16 :goto_9

    :cond_22
    const/16 v6, 0x12d

    if-eq v2, v6, :cond_23

    const/16 v6, 0x12e

    if-eq v2, v6, :cond_23

    const/16 v6, 0x12f

    if-eq v2, v6, :cond_23

    const/16 v6, 0x133

    if-ne v2, v6, :cond_25

    :cond_23
    const/4 v6, 0x5

    if-lt v14, v6, :cond_24

    const/16 v3, 0x1f1

    :try_start_1e
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_1e} :catch_8c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_1e} :catch_7c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1e .. :try_end_1e} :catch_6c

    move-object v2, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v9, v13

    move-object v10, v11

    goto/16 :goto_a

    :cond_24
    :try_start_1f
    const-string v6, "Location"

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_1f} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_1f} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1f .. :try_end_1f} :catch_69

    move-result-object v6

    if-eqz v6, :cond_25

    :try_start_20
    new-instance v2, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v3, v3, Lsdk/download/d;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/net/URI;

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5
    .catch Ljava/net/URISyntaxException; {:try_start_20 .. :try_end_20} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_20} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_20} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_20} :catch_69

    move-result-object v2

    add-int/lit8 v6, v14, 0x1

    const/16 v3, 0xc1

    :try_start_21
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_21} :catch_ab
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_9c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_21} :catch_8d
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_21} :catch_7d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_21} :catch_6d

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move-object v10, v11

    move-object/from16 v31, v9

    move-object v9, v2

    move-object/from16 v2, v31

    goto/16 :goto_a

    :catch_e
    move-exception v2

    const/16 v3, 0x190

    :try_start_22
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_22} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_22} :catch_8c
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_22} :catch_7c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_22 .. :try_end_22} :catch_6c

    move-object v2, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v9, v13

    move-object v10, v11

    goto/16 :goto_a

    :cond_25
    if-nez v8, :cond_26

    const/16 v6, 0xc8

    if-ne v2, v6, :cond_27

    :cond_26
    if-eqz v8, :cond_2b

    const/16 v6, 0xce

    if-eq v2, v6, :cond_2b

    :cond_27
    :try_start_23
    invoke-static {v2}, Lsdk/download/k;->b(I)Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_23} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_23} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_23} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_23} :catch_69

    move-result v3

    if-eqz v3, :cond_28

    move v3, v2

    :goto_13
    :try_start_24
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_24} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_24} :catch_8c
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_24} :catch_7c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_24} :catch_6c

    const/4 v4, 0x1

    move-object v2, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move-object v10, v11

    move-object v9, v13

    goto/16 :goto_a

    :cond_28
    const/16 v3, 0x12c

    if-lt v2, v3, :cond_29

    const/16 v3, 0x190

    if-ge v2, v3, :cond_29

    const/16 v3, 0x1ed

    goto :goto_13

    :cond_29
    if-eqz v8, :cond_2a

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2a

    const/16 v3, 0x19c

    goto :goto_13

    :cond_2a
    const/16 v3, 0x1ee

    goto :goto_13

    :cond_2b
    if-nez v8, :cond_7f

    :try_start_25
    const-string v2, "Accept-Ranges"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    :cond_2c
    const-string v2, "Content-Disposition"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    :cond_2d
    const-string v2, "Content-Location"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    :cond_2e
    if-nez v11, :cond_7e

    const-string v2, "Content-Type"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_7e

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsdk/download/j;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_25} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_25} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_25} :catch_69

    move-result-object v11

    move-object v6, v11

    :goto_14
    :try_start_26
    const-string v2, "ETag"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_7d

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    :goto_15
    const-string v2, "Transfer-Encoding"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_7c

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    :goto_16
    if-nez v2, :cond_7b

    const-string v3, "Content-Length"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_7b

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v23, v7

    :goto_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-boolean v3, v3, Lsdk/download/d;->c:Z

    if-nez v3, :cond_30

    if-nez v23, :cond_30

    if-eqz v2, :cond_2f

    const-string v3, "chunked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_26} :catch_ac
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_9d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_26} :catch_8e
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_26} :catch_7e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_26 .. :try_end_26} :catch_6e

    move-result v2

    if-nez v2, :cond_30

    :cond_2f
    const/16 v3, 0x19b

    :try_start_27
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_27} :catch_ac
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_9d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_27 .. :try_end_27} :catch_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_27} :catch_7f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_27} :catch_6f

    move-object v2, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move-object v10, v6

    move-object v9, v13

    move v6, v14

    goto/16 :goto_a

    :cond_30
    :try_start_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v2, v2, Lsdk/download/d;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-object v3, v3, Lsdk/download/d;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v7, v7, Lsdk/download/d;->g:I

    if-eqz v23, :cond_31

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :goto_18
    invoke-static/range {v2 .. v8}, Lsdk/download/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lsdk/download/a;

    move-result-object v2

    iget-object v3, v2, Lsdk/download/a;->a:Ljava/lang/String;

    if-nez v3, :cond_32

    iget v3, v2, Lsdk/download/a;->c:I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_ac
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_9d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_28} :catch_8e
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_28} :catch_7e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_28} :catch_6e

    :try_start_29
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_29} :catch_ac
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_9d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_29} :catch_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_29} :catch_7f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_29} :catch_6f

    move-object v2, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move-object v10, v6

    move-object v9, v13

    move v6, v14

    goto/16 :goto_a

    :cond_31
    const/4 v8, 0x0

    goto :goto_18

    :cond_32
    :try_start_2a
    iget-object v10, v2, Lsdk/download/a;->a:Ljava/lang/String;

    iget-object v9, v2, Lsdk/download/a;->b:Ljava/io/FileOutputStream;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2a} :catch_ac
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_9d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2a .. :try_end_2a} :catch_8e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_2a} :catch_7e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2a .. :try_end_2a} :catch_6e

    :try_start_2b
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_data"

    invoke-virtual {v3, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_33

    const-string v2, "etag"

    invoke-virtual {v3, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    if-eqz v6, :cond_34

    const-string v2, "mimetype"

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    const/4 v2, -0x1

    if-eqz v23, :cond_35

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_35
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
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_2b} :catch_ad
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_9e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2b .. :try_end_2b} :catch_90
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_2b} :catch_80
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_2b} :catch_70

    move-object/from16 v24, v23

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v23, v11

    :goto_19
    :try_start_2c
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_2c} :catch_ae
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2c .. :try_end_2c} :catch_91
    .catch Ljava/lang/IllegalAccessException; {:try_start_2c .. :try_end_2c} :catch_81
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2c .. :try_end_2c} :catch_71

    move-result-object v25

    move-wide/from16 v8, v20

    move/from16 v11, v22

    move v7, v12

    :goto_1a
    :try_start_2d
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_f
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_10
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_2d} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_2d} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_2d} :catch_83
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_2d} :catch_73

    move-result v5

    const/4 v4, -0x1

    if-ne v5, v4, :cond_3f

    :try_start_2e
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "current_bytes"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v24, :cond_36

    const-string v5, "total_bytes"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_36
    move-object/from16 v0, p0

    iget-object v5, v0, Lsdk/download/j;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v5, v0, v4, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v24, :cond_49

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v0, v22

    if-eq v0, v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-boolean v4, v4, Lsdk/download/d;->c:Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_f
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_2e} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2e .. :try_end_2e} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_2e} :catch_83
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e .. :try_end_2e} :catch_73

    if-nez v4, :cond_3c

    if-nez v23, :cond_3c

    const/16 v4, 0x19b

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v5, v15

    move v6, v14

    move v3, v4

    move/from16 v4, v16

    goto/16 :goto_a

    :catch_f
    move-exception v4

    :try_start_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->a:Landroid/content/Context;

    invoke-static {v4}, Lsdk/download/l;->b(Landroid/content/Context;)Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_d
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_2f} :catch_ae
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_2f} :catch_91
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_2f} :catch_81
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_2f} :catch_71

    move-result v4

    if-nez v4, :cond_37

    const/16 v5, 0xc1

    move/from16 v4, v16

    :goto_1b
    :try_start_30
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_e
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_30} :catch_af
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_a0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_30} :catch_92
    .catch Ljava/lang/IllegalAccessException; {:try_start_30 .. :try_end_30} :catch_82
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_30 .. :try_end_30} :catch_72

    move-object v10, v6

    move-object v8, v3

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v3, v5

    move v5, v15

    goto/16 :goto_a

    :cond_37
    :try_start_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v4, v4, Lsdk/download/d;->k:I
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_d
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_31} :catch_ae
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_31} :catch_91
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_31} :catch_81
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_31 .. :try_end_31} :catch_71

    const/4 v5, 0x5

    if-ge v4, v5, :cond_38

    const/16 v5, 0xc1

    const/16 v16, 0x1

    move/from16 v4, v16

    goto :goto_1b

    :cond_38
    const/16 v5, 0x1ef

    move/from16 v4, v16

    goto :goto_1b

    :catch_10
    move-exception v4

    :try_start_32
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "current_bytes"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lsdk/download/j;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v5, v0, v4, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget-boolean v4, v4, Lsdk/download/d;->c:Z
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_f
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_32} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_32} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_32} :catch_83
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_32} :catch_73

    if-nez v4, :cond_39

    if-nez v23, :cond_39

    const/16 v5, 0x19c

    move/from16 v4, v16

    :goto_1c
    :try_start_33
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_10
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_33} :catch_b0
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_a2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33 .. :try_end_33} :catch_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_33} :catch_84
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_33 .. :try_end_33} :catch_74

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v6, v14

    move v3, v5

    move v5, v15

    goto/16 :goto_a

    :cond_39
    :try_start_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->a:Landroid/content/Context;

    invoke-static {v4}, Lsdk/download/l;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3a

    const/16 v5, 0xc1

    move/from16 v4, v16

    goto :goto_1c

    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v4, v4, Lsdk/download/d;->k:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_3b

    const/16 v5, 0xc1

    const/16 v16, 0x1

    move/from16 v4, v16

    goto :goto_1c

    :cond_3b
    const/16 v5, 0x1ef

    move/from16 v4, v16

    goto :goto_1c

    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->a:Landroid/content/Context;

    invoke-static {v4}, Lsdk/download/l;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3d

    const/16 v4, 0xc1

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v5, v15

    move v6, v14

    move v3, v4

    move/from16 v4, v16

    goto/16 :goto_a

    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v4, v4, Lsdk/download/d;->k:I
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_f
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_34} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_34} :catch_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_34 .. :try_end_34} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_34 .. :try_end_34} :catch_83
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_34 .. :try_end_34} :catch_73

    const/4 v5, 0x5

    if-ge v4, v5, :cond_3e

    const/16 v5, 0xc1

    const/4 v4, 0x1

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v6, v14

    move v3, v5

    move v5, v15

    goto/16 :goto_a

    :cond_3e
    const/16 v4, 0x1ef

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v5, v15

    move v6, v14

    move v3, v4

    move/from16 v4, v16

    goto/16 :goto_a

    :cond_3f
    const/4 v7, 0x1

    :cond_40
    if-nez v2, :cond_41

    :try_start_35
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v4, v3, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v2, v4

    :cond_41
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v4, v4, Lsdk/download/d;->g:I
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_f
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_35} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_35 .. :try_end_35} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_35 .. :try_end_35} :catch_83
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_35 .. :try_end_35} :catch_73

    if-nez v4, :cond_42

    :try_start_36
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_f
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_36} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_36 .. :try_end_36} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_36 .. :try_end_36} :catch_83
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_36 .. :try_end_36} :catch_73

    const/4 v2, 0x0

    :cond_42
    :goto_1d
    add-int v10, v22, v5

    :try_start_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-int v12, v10, v11

    const/16 v20, 0x1000

    move/from16 v0, v20

    if-le v12, v0, :cond_7a

    sub-long v20, v4, v8

    const-wide/16 v29, 0x5dc

    cmp-long v12, v20, v29

    if-lez v12, :cond_7a

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

    const/4 v12, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v9, v0, v8, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v8, v10

    :goto_1e
    move-object/from16 v0, p0

    iget-object v9, v0, Lsdk/download/j;->b:Lsdk/download/d;

    monitor-enter v9
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_f
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_37} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_37} :catch_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_37 .. :try_end_37} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_37} :catch_83
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_37 .. :try_end_37} :catch_73

    :try_start_38
    move-object/from16 v0, p0

    iget-object v11, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v11, v11, Lsdk/download/d;->i:I
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    const/4 v12, 0x1

    if-ne v11, v12, :cond_43

    const/16 v4, 0xc1

    :try_start_39
    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    monitor-exit v9
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_13

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v5, v15

    move v6, v14

    move v3, v4

    move/from16 v4, v16

    goto/16 :goto_a

    :catch_11
    move-exception v4

    :try_start_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lsdk/download/j;->a:Landroid/content/Context;

    invoke-static {v4}, Lsdk/download/l;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_40

    const/16 v4, 0x1ec

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v5, v15

    move v6, v14

    move v3, v4

    move/from16 v4, v16

    goto/16 :goto_a

    :cond_43
    monitor-exit v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lsdk/download/j;->b:Lsdk/download/d;

    iget v9, v9, Lsdk/download/d;->j:I
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_f
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_3a} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3a} :catch_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3a .. :try_end_3a} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_3a} :catch_83
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3a .. :try_end_3a} :catch_73

    const/16 v11, 0x1ea

    if-ne v9, v11, :cond_48

    const/16 v4, 0x1ea

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v5, v15

    move v6, v14

    move v3, v4

    move/from16 v4, v16

    goto/16 :goto_a

    :catchall_0
    move-exception v4

    move/from16 v5, v17

    :goto_1f
    :try_start_3b
    monitor-exit v9

    throw v4
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_11
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_3b} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3b} :catch_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_3b} :catch_95
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_3b} :catch_85
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3b .. :try_end_3b} :catch_75

    :catch_12
    move-exception v4

    move-object v11, v2

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v5, v15

    move/from16 v4, v16

    move v6, v14

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    :goto_20
    move-object/from16 v0, p0

    iget-object v12, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lsdk/download/d;->O:Z

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_44
    if-eqz v3, :cond_45

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_3c
    const-string v12, "close"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_3c .. :try_end_3c} :catch_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3c .. :try_end_3c} :catch_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_3c} :catch_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_3c} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3c .. :try_end_3c} :catch_21

    :cond_45
    :goto_21
    if-eqz v11, :cond_46

    :try_start_3d
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_60

    :cond_46
    :goto_22
    if-eqz v8, :cond_47

    const/16 v2, 0x1ec

    invoke-static {v2}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_47
    :goto_23
    const/16 v3, 0x1ec

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_48
    move v11, v8

    move/from16 v22, v10

    move-wide v8, v4

    goto/16 :goto_1a

    :cond_49
    const/16 v4, 0xc8

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v5, v15

    move v6, v14

    move v3, v4

    move/from16 v4, v16

    goto/16 :goto_a

    :catch_13
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_b

    :catch_14
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_b

    :catch_15
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_b

    :catch_16
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_b

    :catch_17
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_b

    :cond_4a
    invoke-static {v3}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "android.os.FileUtils"

    :try_start_3e
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_24
    array-length v13, v12

    if-ge v11, v13, :cond_4b

    aget-object v13, v12, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "setPermissions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4d

    aget-object v2, v12, v11

    :cond_4b
    if-eqz v2, :cond_4c

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
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_19

    :cond_4c
    :goto_25
    :try_start_3f
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_3f} :catch_18
    .catch Ljava/io/SyncFailedException; {:try_start_3f .. :try_end_3f} :catch_1a
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_3f} :catch_1c

    goto/16 :goto_d

    :catch_18
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "file "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_4d
    add-int/lit8 v11, v11, 0x1

    goto :goto_24

    :catch_19
    move-exception v2

    const-string v11, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :catch_1a
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "file "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " sync failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :catch_1b
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "IOException trying to sync "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :catch_1c
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    const-string v12, "exception while syncing file: "

    invoke-static {v11, v12, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :catch_1d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_21

    :catch_1e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_21

    :catch_1f
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_21

    :catch_20
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_21

    :catch_21
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_21

    :cond_4e
    const/16 v2, 0x1ec

    invoke-static {v2}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v2, "android.os.FileUtils"

    :try_start_40
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_26
    array-length v12, v11

    if-ge v3, v12, :cond_4f

    aget-object v12, v11, v3

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "setPermissions"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_51

    aget-object v2, v11, v3

    :cond_4f
    if-eqz v2, :cond_50

    const/4 v3, 0x0

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0x1a4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v2, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_23

    :cond_50
    :goto_27
    :try_start_41
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_41} :catch_22
    .catch Ljava/io/SyncFailedException; {:try_start_41 .. :try_end_41} :catch_24
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_41} :catch_26

    goto/16 :goto_23

    :catch_22
    move-exception v2

    const-string v3, "GexinSdkDownloadService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "file "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :catch_23
    move-exception v2

    const-string v3, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :catch_24
    move-exception v2

    const-string v3, "GexinSdkDownloadService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "file "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " sync failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    :catch_25
    move-exception v2

    const-string v3, "GexinSdkDownloadService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "IOException trying to sync "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    :catch_26
    move-exception v2

    const-string v3, "GexinSdkDownloadService"

    const-string v11, "exception while syncing file: "

    invoke-static {v3, v11, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    :catch_27
    move-exception v2

    move-object/from16 v18, v3

    move-object/from16 v2, v20

    move-object v8, v10

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v10, v11

    :goto_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v11, 0x0

    iput-boolean v11, v3, Lsdk/download/d;->O:Z

    if-eqz v18, :cond_52

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_52
    if-eqz v19, :cond_53

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :try_start_42
    const-string v11, "close"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_42} :catch_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_42 .. :try_end_42} :catch_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_42} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_42 .. :try_end_42} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_42 .. :try_end_42} :catch_2c

    :cond_53
    :goto_29
    if-eqz v2, :cond_54

    :try_start_43
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_61

    :cond_54
    :goto_2a
    if-eqz v8, :cond_55

    const/16 v2, 0x1eb

    invoke-static {v2}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_56

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_55
    :goto_2b
    const/16 v3, 0x1eb

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_28
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_29

    :catch_29
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_29

    :catch_2a
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_29

    :catch_2b
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_29

    :catch_2c
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_29

    :cond_56
    const/16 v2, 0x1eb

    invoke-static {v2}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v2, "android.os.FileUtils"

    :try_start_44
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2c
    array-length v12, v11

    if-ge v3, v12, :cond_57

    aget-object v12, v11, v3

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "setPermissions"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_59

    aget-object v2, v11, v3

    :cond_57
    if-eqz v2, :cond_58

    const/4 v3, 0x0

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0x1a4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v2, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_2e

    :cond_58
    :goto_2d
    :try_start_45
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_45} :catch_2d
    .catch Ljava/io/SyncFailedException; {:try_start_45 .. :try_end_45} :catch_2f
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_45} :catch_31

    goto :goto_2b

    :catch_2d
    move-exception v2

    const-string v3, "GexinSdkDownloadService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "file "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b

    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :catch_2e
    move-exception v2

    const-string v3, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :catch_2f
    move-exception v2

    const-string v3, "GexinSdkDownloadService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "file "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " sync failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b

    :catch_30
    move-exception v2

    const-string v3, "GexinSdkDownloadService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "IOException trying to sync "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b

    :catch_31
    move-exception v2

    const-string v3, "GexinSdkDownloadService"

    const-string v11, "exception while syncing file: "

    invoke-static {v3, v11, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    :catch_32
    move-exception v2

    move-object/from16 v18, v3

    move-object v8, v10

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v10, v11

    move/from16 v3, v17

    :goto_2e
    :try_start_46
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v11, 0x0

    iput-boolean v11, v2, Lsdk/download/d;->O:Z

    if-eqz v18, :cond_5a

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5a
    if-eqz v19, :cond_5b

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_47
    const-string v11, "close"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/SecurityException; {:try_start_47 .. :try_end_47} :catch_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_47 .. :try_end_47} :catch_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_47} :catch_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_47 .. :try_end_47} :catch_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_47 .. :try_end_47} :catch_37

    :cond_5b
    :goto_2f
    if-eqz v20, :cond_5c

    :try_start_48
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_48} :catch_62

    :cond_5c
    :goto_30
    if-eqz v8, :cond_5d

    invoke-static {v3}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_5d
    :goto_31
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

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

    :cond_5e
    invoke-static {v3}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string v2, "android.os.FileUtils"

    :try_start_49
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_32
    array-length v13, v12

    if-ge v11, v13, :cond_5f

    aget-object v13, v12, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "setPermissions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_61

    aget-object v2, v12, v11

    :cond_5f
    if-eqz v2, :cond_60

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
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_39

    :cond_60
    :goto_33
    :try_start_4a
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_4a} :catch_38
    .catch Ljava/io/SyncFailedException; {:try_start_4a .. :try_end_4a} :catch_3a
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4a} :catch_3b
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_3c

    goto :goto_31

    :catch_38
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "file "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :cond_61
    add-int/lit8 v11, v11, 0x1

    goto :goto_32

    :catch_39
    move-exception v2

    const-string v11, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :catch_3a
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "file "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " sync failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :catch_3b
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "IOException trying to sync "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    :catch_3c
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    const-string v12, "exception while syncing file: "

    invoke-static {v11, v12, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    :catch_3d
    move-exception v2

    move-object/from16 v18, v3

    move-object v8, v10

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v10, v11

    move/from16 v3, v17

    :goto_34
    :try_start_4b
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v11, 0x0

    iput-boolean v11, v2, Lsdk/download/d;->O:Z

    if-eqz v18, :cond_62

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_62
    if-eqz v19, :cond_63

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_4c
    const-string v11, "close"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_4c .. :try_end_4c} :catch_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4c .. :try_end_4c} :catch_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4c .. :try_end_4c} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_4c .. :try_end_4c} :catch_41
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4c .. :try_end_4c} :catch_42

    :cond_63
    :goto_35
    if-eqz v20, :cond_64

    :try_start_4d
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4d} :catch_63

    :cond_64
    :goto_36
    if-eqz v8, :cond_65

    invoke-static {v3}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_66

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_65
    :goto_37
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

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

    :cond_66
    invoke-static {v3}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_65

    const-string v2, "android.os.FileUtils"

    :try_start_4e
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_38
    array-length v13, v12

    if-ge v11, v13, :cond_67

    aget-object v13, v12, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "setPermissions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_69

    aget-object v2, v12, v11

    :cond_67
    if-eqz v2, :cond_68

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
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_44

    :cond_68
    :goto_39
    :try_start_4f
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_4f .. :try_end_4f} :catch_43
    .catch Ljava/io/SyncFailedException; {:try_start_4f .. :try_end_4f} :catch_45
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_4f} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_4f} :catch_47

    goto :goto_37

    :catch_43
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "file "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37

    :cond_69
    add-int/lit8 v11, v11, 0x1

    goto :goto_38

    :catch_44
    move-exception v2

    const-string v11, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :catch_45
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "file "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " sync failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37

    :catch_46
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "IOException trying to sync "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37

    :catch_47
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    const-string v12, "exception while syncing file: "

    invoke-static {v11, v12, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    :catch_48
    move-exception v2

    move-object/from16 v18, v3

    move-object v8, v10

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v10, v11

    move/from16 v3, v17

    :goto_3a
    :try_start_50
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v11, 0x0

    iput-boolean v11, v2, Lsdk/download/d;->O:Z

    if-eqz v18, :cond_6a

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6a
    if-eqz v19, :cond_6b

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_51
    const-string v11, "close"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/SecurityException; {:try_start_51 .. :try_end_51} :catch_49
    .catch Ljava/lang/NoSuchMethodException; {:try_start_51 .. :try_end_51} :catch_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_51} :catch_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_51 .. :try_end_51} :catch_4c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_51 .. :try_end_51} :catch_4d

    :cond_6b
    :goto_3b
    if-eqz v20, :cond_6c

    :try_start_52
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_52} :catch_64

    :cond_6c
    :goto_3c
    if-eqz v8, :cond_6d

    invoke-static {v3}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_6e

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_6d
    :goto_3d
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

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

    :cond_6e
    invoke-static {v3}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string v2, "android.os.FileUtils"

    :try_start_53
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_3e
    array-length v13, v12

    if-ge v11, v13, :cond_6f

    aget-object v13, v12, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "setPermissions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_71

    aget-object v2, v12, v11

    :cond_6f
    if-eqz v2, :cond_70

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
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_4f

    :cond_70
    :goto_3f
    :try_start_54
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_54} :catch_4e
    .catch Ljava/io/SyncFailedException; {:try_start_54 .. :try_end_54} :catch_50
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_54} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_54} :catch_52

    goto :goto_3d

    :catch_4e
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "file "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    :cond_71
    add-int/lit8 v11, v11, 0x1

    goto :goto_3e

    :catch_4f
    move-exception v2

    const-string v11, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :catch_50
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "file "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " sync failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    :catch_51
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "IOException trying to sync "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    :catch_52
    move-exception v2

    const-string v11, "GexinSdkDownloadService"

    const-string v12, "exception while syncing file: "

    invoke-static {v11, v12, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    :catchall_1
    move-exception v2

    move-object/from16 v18, v3

    move-object v8, v10

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v10, v11

    move/from16 v3, v17

    move-object v11, v2

    move-object/from16 v2, v20

    :goto_40
    move-object/from16 v0, p0

    iget-object v12, v0, Lsdk/download/j;->b:Lsdk/download/d;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lsdk/download/d;->O:Z

    if-eqz v18, :cond_72

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_72
    if-eqz v19, :cond_73

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    :try_start_55
    const-string v13, "close"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catch Ljava/lang/SecurityException; {:try_start_55 .. :try_end_55} :catch_53
    .catch Ljava/lang/NoSuchMethodException; {:try_start_55 .. :try_end_55} :catch_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_55 .. :try_end_55} :catch_55
    .catch Ljava/lang/IllegalAccessException; {:try_start_55 .. :try_end_55} :catch_56
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_55 .. :try_end_55} :catch_57

    :cond_73
    :goto_41
    if-eqz v2, :cond_74

    :try_start_56
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_56} :catch_65

    :cond_74
    :goto_42
    if-eqz v8, :cond_75

    invoke-static {v3}, Lsdk/download/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_76

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_75
    :goto_43
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lsdk/download/j;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v11

    :catch_53
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_41

    :catch_54
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_41

    :catch_55
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_41

    :catch_56
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_41

    :catch_57
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_41

    :cond_76
    invoke-static {v3}, Lsdk/download/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string v2, "android.os.FileUtils"

    :try_start_57
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v13

    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_44
    array-length v14, v13

    if-ge v12, v14, :cond_77

    aget-object v14, v13, v12

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "setPermissions"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_79

    aget-object v2, v13, v12

    :cond_77
    if-eqz v2, :cond_78

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
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_59

    :cond_78
    :goto_45
    :try_start_58
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v12, 0x1

    invoke-direct {v2, v8, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_58} :catch_58
    .catch Ljava/io/SyncFailedException; {:try_start_58 .. :try_end_58} :catch_5a
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_58} :catch_5b
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_58} :catch_5c

    goto :goto_43

    :catch_58
    move-exception v2

    const-string v12, "GexinSdkDownloadService"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "file "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " not found: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_43

    :cond_79
    add-int/lit8 v12, v12, 0x1

    goto :goto_44

    :catch_59
    move-exception v2

    const-string v12, "DownloadThread"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    :catch_5a
    move-exception v2

    const-string v12, "GexinSdkDownloadService"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "file "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " sync failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_43

    :catch_5b
    move-exception v2

    const-string v12, "GexinSdkDownloadService"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "IOException trying to sync "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_43

    :catch_5c
    move-exception v2

    const-string v12, "GexinSdkDownloadService"

    const-string v13, "exception while syncing file: "

    invoke-static {v12, v13, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    :catch_5d
    move-exception v2

    goto/16 :goto_7

    :catch_5e
    move-exception v4

    goto/16 :goto_1d

    :catch_5f
    move-exception v2

    goto/16 :goto_c

    :catch_60
    move-exception v2

    goto/16 :goto_22

    :catch_61
    move-exception v2

    goto/16 :goto_2a

    :catch_62
    move-exception v2

    goto/16 :goto_30

    :catch_63
    move-exception v2

    goto/16 :goto_36

    :catch_64
    move-exception v2

    goto/16 :goto_3c

    :catch_65
    move-exception v2

    goto/16 :goto_42

    :catchall_2
    move-exception v2

    move-object v8, v10

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v10, v11

    move-object v11, v2

    move-object/from16 v2, v20

    goto/16 :goto_40

    :catchall_3
    move-exception v2

    move-object v10, v11

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v11, v2

    move-object/from16 v2, v20

    goto/16 :goto_40

    :catchall_4
    move-exception v2

    move-object v10, v11

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v11, v2

    move-object v2, v9

    move-object v9, v13

    goto/16 :goto_40

    :catchall_5
    move-exception v2

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v10, v11

    move-object v11, v2

    move-object v2, v9

    move-object v9, v13

    goto/16 :goto_40

    :catchall_6
    move-exception v2

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move-object v10, v11

    move-object v11, v2

    move-object v2, v9

    move-object v9, v13

    goto/16 :goto_40

    :catchall_7
    move-exception v2

    move-object v8, v10

    move v7, v12

    move v6, v14

    move-object v10, v11

    move-object v11, v2

    move-object v2, v9

    move-object v9, v13

    goto/16 :goto_40

    :catchall_8
    move-exception v2

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v10, v11

    move-object v11, v2

    move-object v2, v9

    move-object v9, v13

    goto/16 :goto_40

    :catchall_9
    move-exception v4

    move-object v8, v10

    move v7, v12

    move v5, v15

    move-object v10, v11

    move-object v11, v4

    move/from16 v4, v16

    move-object/from16 v31, v9

    move-object v9, v2

    move-object/from16 v2, v31

    goto/16 :goto_40

    :catchall_a
    move-exception v2

    move-object v11, v2

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v2, v9

    move-object v10, v6

    move v6, v14

    move-object v9, v13

    goto/16 :goto_40

    :catchall_b
    move-exception v2

    move-object v11, v2

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move-object v2, v9

    move-object v10, v6

    move-object v9, v13

    move v6, v14

    goto/16 :goto_40

    :catchall_c
    move-exception v2

    move-object v11, v2

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v2, v9

    move-object v10, v6

    move v6, v14

    move-object v9, v13

    goto/16 :goto_40

    :catchall_d
    move-exception v4

    move-object v11, v4

    move-object v10, v6

    move-object v8, v3

    move v7, v12

    move-object v9, v13

    move v5, v15

    move v6, v14

    move/from16 v4, v16

    move/from16 v3, v17

    goto/16 :goto_40

    :catchall_e
    move-exception v7

    move-object v11, v7

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v7, v12

    move v6, v14

    move v3, v5

    move v5, v15

    goto/16 :goto_40

    :catchall_f
    move-exception v4

    move-object v11, v4

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v5, v15

    move v6, v14

    move/from16 v4, v16

    move/from16 v3, v17

    goto/16 :goto_40

    :catchall_10
    move-exception v8

    move-object v11, v8

    move-object v10, v6

    move-object v9, v13

    move-object v8, v3

    move v6, v14

    move v3, v5

    move v5, v15

    goto/16 :goto_40

    :catchall_11
    move-exception v4

    move-object v11, v4

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v6, v14

    move/from16 v4, v16

    move v3, v5

    move v5, v15

    goto/16 :goto_40

    :catchall_12
    move-exception v2

    move-object v11, v2

    move-object/from16 v2, v20

    goto/16 :goto_40

    :catch_66
    move-exception v2

    move-object v8, v10

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v10, v11

    goto/16 :goto_3a

    :catch_67
    move-exception v2

    move-object v10, v11

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    goto/16 :goto_3a

    :catch_68
    move-exception v2

    move-object/from16 v20, v9

    move-object v10, v11

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v9, v13

    goto/16 :goto_3a

    :catch_69
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v10, v11

    move-object v9, v13

    goto/16 :goto_3a

    :catch_6a
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move-object v10, v11

    move-object v9, v13

    goto/16 :goto_3a

    :catch_6b
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move-object v9, v13

    move-object v10, v11

    goto/16 :goto_3a

    :catch_6c
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v9, v13

    move-object v10, v11

    goto/16 :goto_3a

    :catch_6d
    move-exception v4

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move-object v10, v11

    move-object v9, v2

    move-object v2, v4

    move/from16 v4, v16

    goto/16 :goto_3a

    :catch_6e
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v10, v6

    move-object v9, v13

    move v6, v14

    goto/16 :goto_3a

    :catch_6f
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move-object v10, v6

    move-object v9, v13

    move v6, v14

    goto/16 :goto_3a

    :catch_70
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v10, v6

    move-object v9, v13

    move v6, v14

    goto/16 :goto_3a

    :catch_71
    move-exception v4

    move-object/from16 v20, v2

    move-object v10, v6

    move-object v8, v3

    move v7, v12

    move-object v9, v13

    move v5, v15

    move v6, v14

    move-object v2, v4

    move/from16 v3, v17

    move/from16 v4, v16

    goto/16 :goto_3a

    :catch_72
    move-exception v7

    move-object/from16 v20, v2

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move-object v2, v7

    move v6, v14

    move v3, v5

    move v5, v15

    move v7, v12

    goto/16 :goto_3a

    :catch_73
    move-exception v4

    move-object/from16 v20, v2

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v5, v15

    move v6, v14

    move-object v2, v4

    move/from16 v3, v17

    move/from16 v4, v16

    goto/16 :goto_3a

    :catch_74
    move-exception v8

    move-object/from16 v20, v2

    move-object v10, v6

    move-object v9, v13

    move-object v2, v8

    move v6, v14

    move-object v8, v3

    move v3, v5

    move v5, v15

    goto/16 :goto_3a

    :catch_75
    move-exception v4

    move-object/from16 v20, v2

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move-object v2, v4

    move v6, v14

    move v3, v5

    move/from16 v4, v16

    move v5, v15

    goto/16 :goto_3a

    :catch_76
    move-exception v2

    move-object v8, v10

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v10, v11

    goto/16 :goto_34

    :catch_77
    move-exception v2

    move-object v10, v11

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    goto/16 :goto_34

    :catch_78
    move-exception v2

    move-object/from16 v20, v9

    move-object v10, v11

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v9, v13

    goto/16 :goto_34

    :catch_79
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v10, v11

    move-object v9, v13

    goto/16 :goto_34

    :catch_7a
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move-object v10, v11

    move-object v9, v13

    goto/16 :goto_34

    :catch_7b
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move-object v9, v13

    move-object v10, v11

    goto/16 :goto_34

    :catch_7c
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v9, v13

    move-object v10, v11

    goto/16 :goto_34

    :catch_7d
    move-exception v4

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move-object v10, v11

    move-object v9, v2

    move-object v2, v4

    move/from16 v4, v16

    goto/16 :goto_34

    :catch_7e
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v10, v6

    move-object v9, v13

    move v6, v14

    goto/16 :goto_34

    :catch_7f
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move-object v10, v6

    move-object v9, v13

    move v6, v14

    goto/16 :goto_34

    :catch_80
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v10, v6

    move-object v9, v13

    move v6, v14

    goto/16 :goto_34

    :catch_81
    move-exception v4

    move-object/from16 v20, v2

    move-object v10, v6

    move-object v8, v3

    move v7, v12

    move-object v9, v13

    move v5, v15

    move v6, v14

    move-object v2, v4

    move/from16 v3, v17

    move/from16 v4, v16

    goto/16 :goto_34

    :catch_82
    move-exception v7

    move-object/from16 v20, v2

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move-object v2, v7

    move v6, v14

    move v3, v5

    move v5, v15

    move v7, v12

    goto/16 :goto_34

    :catch_83
    move-exception v4

    move-object/from16 v20, v2

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v5, v15

    move v6, v14

    move-object v2, v4

    move/from16 v3, v17

    move/from16 v4, v16

    goto/16 :goto_34

    :catch_84
    move-exception v8

    move-object/from16 v20, v2

    move-object v10, v6

    move-object v9, v13

    move-object v2, v8

    move v6, v14

    move-object v8, v3

    move v3, v5

    move v5, v15

    goto/16 :goto_34

    :catch_85
    move-exception v4

    move-object/from16 v20, v2

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move-object v2, v4

    move v6, v14

    move v3, v5

    move/from16 v4, v16

    move v5, v15

    goto/16 :goto_34

    :catch_86
    move-exception v2

    move-object v8, v10

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v10, v11

    goto/16 :goto_2e

    :catch_87
    move-exception v2

    move-object v10, v11

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    goto/16 :goto_2e

    :catch_88
    move-exception v2

    move-object/from16 v20, v9

    move-object v10, v11

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v9, v13

    goto/16 :goto_2e

    :catch_89
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v10, v11

    move-object v9, v13

    goto/16 :goto_2e

    :catch_8a
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move-object v10, v11

    move-object v9, v13

    goto/16 :goto_2e

    :catch_8b
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move-object v9, v13

    move-object v10, v11

    goto/16 :goto_2e

    :catch_8c
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v9, v13

    move-object v10, v11

    goto/16 :goto_2e

    :catch_8d
    move-exception v4

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move-object v10, v11

    move-object v9, v2

    move-object v2, v4

    move/from16 v4, v16

    goto/16 :goto_2e

    :catch_8e
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v10, v6

    move-object v9, v13

    move v6, v14

    goto/16 :goto_2e

    :catch_8f
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move-object v10, v6

    move-object v9, v13

    move v6, v14

    goto/16 :goto_2e

    :catch_90
    move-exception v2

    move-object/from16 v20, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move/from16 v3, v17

    move-object v10, v6

    move-object v9, v13

    move v6, v14

    goto/16 :goto_2e

    :catch_91
    move-exception v4

    move-object/from16 v20, v2

    move-object v10, v6

    move-object v8, v3

    move v7, v12

    move-object v9, v13

    move v5, v15

    move v6, v14

    move-object v2, v4

    move/from16 v3, v17

    move/from16 v4, v16

    goto/16 :goto_2e

    :catch_92
    move-exception v7

    move-object/from16 v20, v2

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move-object v2, v7

    move v6, v14

    move v3, v5

    move v5, v15

    move v7, v12

    goto/16 :goto_2e

    :catch_93
    move-exception v4

    move-object/from16 v20, v2

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v5, v15

    move v6, v14

    move-object v2, v4

    move/from16 v3, v17

    move/from16 v4, v16

    goto/16 :goto_2e

    :catch_94
    move-exception v8

    move-object/from16 v20, v2

    move-object v10, v6

    move-object v9, v13

    move-object v2, v8

    move v6, v14

    move-object v8, v3

    move v3, v5

    move v5, v15

    goto/16 :goto_2e

    :catch_95
    move-exception v4

    move-object/from16 v20, v2

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move-object v2, v4

    move v6, v14

    move v3, v5

    move/from16 v4, v16

    move v5, v15

    goto/16 :goto_2e

    :catch_96
    move-exception v2

    move-object/from16 v2, v20

    move-object v8, v10

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v10, v11

    goto/16 :goto_28

    :catch_97
    move-exception v2

    move-object/from16 v2, v20

    move-object v10, v11

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    goto/16 :goto_28

    :catch_98
    move-exception v2

    move-object v2, v9

    move-object v10, v11

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v9, v13

    goto/16 :goto_28

    :catch_99
    move-exception v2

    move-object v2, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v9, v13

    move-object v10, v11

    goto/16 :goto_28

    :catch_9a
    move-exception v2

    move-object v2, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move-object v10, v11

    move-object v9, v13

    goto/16 :goto_28

    :catch_9b
    move-exception v2

    move-object v2, v9

    move-object v8, v10

    move v7, v12

    move v6, v14

    move-object v9, v13

    move-object v10, v11

    goto/16 :goto_28

    :catch_9c
    move-exception v3

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move-object v10, v11

    move-object/from16 v31, v9

    move-object v9, v2

    move-object/from16 v2, v31

    goto/16 :goto_28

    :catch_9d
    move-exception v2

    move-object v2, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move-object v10, v6

    move-object v9, v13

    move v6, v14

    goto/16 :goto_28

    :catch_9e
    move-exception v2

    move-object v2, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move-object v10, v6

    move-object v9, v13

    move v6, v14

    goto/16 :goto_28

    :catch_9f
    move-exception v4

    move-object v10, v6

    move-object v8, v3

    move v7, v12

    move-object v9, v13

    move v5, v15

    move/from16 v4, v16

    move v6, v14

    goto/16 :goto_28

    :catch_a0
    move-exception v5

    move-object v10, v6

    move-object v8, v3

    move v7, v12

    move-object v9, v13

    move v5, v15

    move v6, v14

    goto/16 :goto_28

    :catch_a1
    move-exception v4

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v5, v15

    move/from16 v4, v16

    move v6, v14

    goto/16 :goto_28

    :catch_a2
    move-exception v5

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v5, v15

    move v6, v14

    goto/16 :goto_28

    :catch_a3
    move-exception v2

    move-object v2, v3

    move-object v8, v10

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object/from16 v3, v19

    move-object v10, v11

    move-object/from16 v11, v20

    goto/16 :goto_20

    :catch_a4
    move-exception v2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object v8, v10

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v10, v11

    move-object/from16 v11, v20

    goto/16 :goto_20

    :catch_a5
    move-exception v2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object v10, v11

    move v7, v12

    move-object v9, v13

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object/from16 v11, v20

    goto/16 :goto_20

    :catch_a6
    move-exception v2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object v10, v11

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v11, v9

    move-object v9, v13

    goto/16 :goto_20

    :catch_a7
    move-exception v2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v10, v11

    move-object v11, v9

    move-object v9, v13

    goto/16 :goto_20

    :catch_a8
    move-exception v2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    move-object v10, v11

    move-object v11, v9

    move-object v9, v13

    goto/16 :goto_20

    :catch_a9
    move-exception v2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object v8, v10

    move v7, v12

    move v6, v14

    move v5, v15

    move-object v10, v11

    move-object v11, v9

    move-object v9, v13

    goto/16 :goto_20

    :catch_aa
    move-exception v2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object v8, v10

    move v7, v12

    move v6, v14

    move-object v10, v11

    move-object v11, v9

    move-object v9, v13

    goto/16 :goto_20

    :catch_ab
    move-exception v3

    move-object/from16 v3, v19

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move-object v10, v11

    move-object v11, v9

    move-object v9, v2

    move-object/from16 v2, v18

    goto/16 :goto_20

    :catch_ac
    move-exception v2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object v11, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move-object v10, v6

    move-object v9, v13

    move v6, v14

    goto/16 :goto_20

    :catch_ad
    move-exception v2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object v11, v9

    move-object v8, v10

    move v7, v12

    move v5, v15

    move/from16 v4, v16

    move-object v10, v6

    move-object v9, v13

    move v6, v14

    goto/16 :goto_20

    :catch_ae
    move-exception v4

    move-object v11, v2

    move-object v10, v6

    move-object v8, v3

    move v7, v12

    move-object v9, v13

    move v5, v15

    move/from16 v4, v16

    move v6, v14

    move-object/from16 v3, v19

    move-object/from16 v2, v18

    goto/16 :goto_20

    :catch_af
    move-exception v5

    move-object v11, v2

    move-object v10, v6

    move-object v8, v3

    move v7, v12

    move-object v9, v13

    move v5, v15

    move-object/from16 v2, v18

    move v6, v14

    move-object/from16 v3, v19

    goto/16 :goto_20

    :catch_b0
    move-exception v5

    move-object v11, v2

    move-object v10, v6

    move-object v8, v3

    move-object v9, v13

    move v5, v15

    move-object/from16 v3, v19

    move v6, v14

    move-object/from16 v2, v18

    goto/16 :goto_20

    :catchall_13
    move-exception v5

    move-object/from16 v31, v5

    move v5, v4

    move-object/from16 v4, v31

    goto/16 :goto_1f

    :cond_7a
    move-wide v4, v8

    move v8, v11

    goto/16 :goto_1e

    :cond_7b
    move-object/from16 v23, v7

    goto/16 :goto_17

    :cond_7c
    move-object/from16 v2, v23

    goto/16 :goto_16

    :cond_7d
    move-object v11, v3

    goto/16 :goto_15

    :cond_7e
    move-object v6, v11

    goto/16 :goto_14

    :cond_7f
    move-object/from16 v23, v3

    move-object/from16 v24, v7

    move-object v2, v9

    move-object v6, v11

    move-object v3, v10

    goto/16 :goto_19

    :cond_80
    move-object v6, v2

    goto/16 :goto_6

    :cond_81
    move-object v3, v6

    move-object v10, v8

    move v8, v9

    move-object/from16 v9, v20

    goto/16 :goto_4
.end method
