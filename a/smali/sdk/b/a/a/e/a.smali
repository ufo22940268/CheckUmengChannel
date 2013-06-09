.class public final Lsdk/b/a/a/e/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lsdk/b/a/a/e/a;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsdk/b/a/a/e/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lsdk/b/a/a/e/a;
    .locals 1

    sget-object v0, Lsdk/b/a/a/e/a;->a:Lsdk/b/a/a/e/a;

    if-nez v0, :cond_0

    new-instance v0, Lsdk/b/a/a/e/a;

    invoke-direct {v0, p0}, Lsdk/b/a/a/e/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lsdk/b/a/a/e/a;->a:Lsdk/b/a/a/e/a;

    :cond_0
    sget-object v0, Lsdk/b/a/a/e/a;->a:Lsdk/b/a/a/e/a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;[BII)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lsdk/b/a/a/e/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "create file Exception, destFile : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3
.end method
