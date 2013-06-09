.class public final Lsdk/download/l;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/Random;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lsdk/download/l;->a:Ljava/util/Random;

    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsdk/download/l;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_0

    if-eq p0, v1, :cond_1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    :goto_1
    const v0, 0x3b9aca00

    if-ge v3, v0, :cond_3

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_2
    const/16 v0, 0x9

    if-ge v1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v0, Lsdk/download/l;->a:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    mul-int/lit8 v0, v3, 0xa

    move v3, v0

    move v1, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const-string v2, "Helpers"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mimeType = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v0, p0

    :goto_0
    invoke-static {v2, v0}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_6

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, ".html"

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "unknown useDefaults = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    const-string v0, ".txt"

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_1

    const-string v0, "Helpers"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "why bin:mimeType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    :goto_3
    invoke-static {v0, p0}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".bin"

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown useDefaults = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lsdk/download/a;
    .locals 12

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p2}, Lsdk/download/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v1, 0x2f

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_12

    if-eqz p3, :cond_12

    invoke-static {p3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const/16 v3, 0x3f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_12

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    const-string v1, "downloadfile"

    :cond_4
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const-string v2, "Helpers"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "filename = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dotIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v3, :cond_9

    const-string v2, "Helpers"

    const-string v3, "dotIndex < 0"

    invoke-static {v2, v3}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lsdk/download/l;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_6

    const-string v2, ".bin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_5
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v2, :cond_6

    if-ltz v4, :cond_6

    if-le v2, v4, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lsdk/download/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v2, Lsdk/download/o;->a:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    :goto_3
    array-length v7, v6

    if-ge v2, v7, :cond_d

    aget-object v7, v6, v2

    if-eqz v7, :cond_7

    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    move-object v2, p1

    goto/16 :goto_0

    :cond_9
    const-string v2, "Helpers"

    const-string v4, "dotIndex >= 0"

    invoke-static {v2, v4}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p4, :cond_b

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lsdk/download/l;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :cond_b
    if-nez v2, :cond_c

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_c
    const-string v4, "Helpers"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "chooseExtensionFromFilename extension = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v1, Lsdk/download/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1ec

    invoke-direct {v1, v2, v3, v4}, Lsdk/download/a;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    :goto_4
    return-object v1

    :cond_e
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v8, v2

    const-wide/16 v10, 0x4

    sub-long/2addr v8, v10

    mul-long/2addr v6, v8

    move/from16 v0, p6

    int-to-long v8, v0

    cmp-long v2, v6, v8

    if-gez v2, :cond_10

    new-instance v1, Lsdk/download/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1ec

    invoke-direct {v1, v2, v3, v4}, Lsdk/download/a;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto :goto_4

    :cond_f
    new-instance v1, Lsdk/download/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1ec

    invoke-direct {v1, v2, v3, v4}, Lsdk/download/a;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto :goto_4

    :cond_10
    const-string v2, "recovery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p5

    invoke-static {v0, v3, v1, v2}, Lsdk/download/l;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    new-instance v1, Lsdk/download/a;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lsdk/download/a;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto :goto_4

    :cond_11
    new-instance v1, Lsdk/download/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1ec

    invoke-direct {v1, v2, v3, v4}, Lsdk/download/a;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto/16 :goto_4

    :cond_12
    move-object v1, v2

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lsdk/download/m;

    invoke-direct {v0, p0, p1}, Lsdk/download/m;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    invoke-static {v0}, Lsdk/download/l;->a(Lsdk/download/m;)V

    invoke-virtual {v0}, Lsdk/download/m;->a()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    throw v0
.end method

.method private static a(Lsdk/download/m;)V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lsdk/download/m;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lsdk/download/m;->b()V

    invoke-static {p0}, Lsdk/download/l;->a(Lsdk/download/m;)V

    invoke-virtual {p0}, Lsdk/download/m;->a()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, unmatched parenthese"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lsdk/download/m;->b()V

    :goto_1
    invoke-virtual {p0}, Lsdk/download/m;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lsdk/download/m;->b()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lsdk/download/m;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected column name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lsdk/download/m;->b()V

    invoke-virtual {p0}, Lsdk/download/m;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lsdk/download/m;->b()V

    invoke-virtual {p0}, Lsdk/download/m;->a()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected quoted string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lsdk/download/m;->b()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lsdk/download/m;->a()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lsdk/download/m;->b()V

    invoke-virtual {p0}, Lsdk/download/m;->a()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lsdk/download/m;->b()V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error after column name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-void
.end method

.method public static final a(Landroid/content/Context;)Z
    .locals 10

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lsdk/download/k;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "( status = \'200\' AND destination = \'2\' )"

    const/4 v4, 0x0

    const-string v5, "lastmod"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v0, v6

    :goto_0
    return v0

    :cond_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-wide v1, v7

    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v4, 0x1000

    cmp-long v0, v1, v4

    if-gez v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v1, v4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v0, "_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v9, Lsdk/download/k;->a:Landroid/net/Uri;

    invoke-static {v9, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v4, v5, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_3
    cmp-long v0, v1, v7

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v9

    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v6

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-wide v1, v7

    move-object v3, v9

    goto :goto_2

    :catch_2
    move-exception v0

    move-wide v1, v7

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sdk/Downloads"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lsdk/download/l;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const-string v0, "GexinSdkDownloadService"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v0, v2}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const-string v0, "GexinSdkDownloadService"

    const-string v1, "couldn\'t get connectivity manager"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
