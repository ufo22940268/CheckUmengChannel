.class final Lsdk/b/a/a/e/e/c;
.super Lsdk/c/a/e/d;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/io/File;

.field c:Ljava/lang/String;

.field d:Ljava/util/Queue;

.field e:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)V
    .locals 1

    invoke-direct {p0, p3}, Lsdk/c/a/e/d;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, Lsdk/b/a/a/e/e/c;->e:I

    iput-object p1, p0, Lsdk/b/a/a/e/e/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lsdk/b/a/a/e/e/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lsdk/b/a/a/e/e/c;->b:Ljava/io/File;

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/igexin/a/a/b/e;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/igexin/a/a/a/d;->b(Ljava/net/URL;)Lcom/igexin/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/igexin/a/a/a;->a()Lcom/igexin/a/a/a;

    invoke-interface {v0}, Lcom/igexin/a/a/a;->b()Lcom/igexin/a/a/b/e;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(Lcom/igexin/a/a/b/e;)V
    .locals 6

    const-string v0, "meta"

    invoke-virtual {p0, v0}, Lcom/igexin/a/a/b/e;->b(Ljava/lang/String;)Lcom/igexin/a/a/d/u;

    move-result-object v1

    const-string v0, "GexinSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "meta size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/igexin/a/a/d/u;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/igexin/a/a/d/u;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/igexin/a/a/d/u;->a(I)Lcom/igexin/a/a/b/i;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Lcom/igexin/a/a/b/i;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "content"

    const-string v5, "text/html;charset=utf-8"

    invoke-virtual {v3, v4, v5}, Lcom/igexin/a/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/a/a/b/i;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/igexin/a/a/b/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1, p2}, Lcom/igexin/a/a/b/e;->b(Ljava/lang/String;)Lcom/igexin/a/a/d/u;

    move-result-object v2

    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "size:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/igexin/a/a/d/u;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/igexin/a/a/d/u;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    invoke-virtual {v2, v1}, Lcom/igexin/a/a/d/u;->a(I)Lcom/igexin/a/a/b/i;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/igexin/a/a/b/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v4, p3}, Lcom/igexin/a/a/b/i;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x2f

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_3

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, ""

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ltz v7, :cond_0

    const/16 v0, 0x3f

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lsdk/b/a/a/e/e/c;->e:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lsdk/b/a/a/e/e/c;->e:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "res/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v4, p3, v0}, Lcom/igexin/a/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/a/a/b/i;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lsdk/b/a/a/e/e/c;->b:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lsdk/b/a/a/e/e/c;->d:Ljava/util/Queue;

    new-instance v6, Lsdk/b/a/a/e/e/a;

    invoke-direct {v6, v0, v5}, Lsdk/b/a/a/e/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static b(Lcom/igexin/a/a/b/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/igexin/a/a/b/e;->b(Ljava/lang/String;)Lcom/igexin/a/a/d/u;

    move-result-object v1

    const-string v0, "GexinSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/igexin/a/a/d/u;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/igexin/a/a/d/u;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/igexin/a/a/d/u;->a(I)Lcom/igexin/a/a/b/i;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/igexin/a/a/b/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "javascript:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, p2}, Lcom/igexin/a/a/b/i;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eq v5, v4, :cond_0

    invoke-virtual {v3, p2, v5}, Lcom/igexin/a/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/a/a/b/i;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    const v0, 0x88801

    return v0
.end method

.method public final c()V
    .locals 5

    invoke-super {p0}, Lsdk/c/a/e/d;->c()V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lsdk/b/a/a/e/e/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lsdk/b/a/a/e/e/c;->a(Ljava/lang/String;)Lcom/igexin/a/a/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lsdk/b/a/a/e/e/c;->d:Ljava/util/Queue;

    const-string v1, "link"

    const-string v2, "href"

    invoke-direct {p0, v0, v1, v2}, Lsdk/b/a/a/e/e/c;->a(Lcom/igexin/a/a/b/e;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "img"

    const-string v2, "src"

    invoke-direct {p0, v0, v1, v2}, Lsdk/b/a/a/e/e/c;->a(Lcom/igexin/a/a/b/e;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "script"

    const-string v2, "src"

    invoke-direct {p0, v0, v1, v2}, Lsdk/b/a/a/e/e/c;->a(Lcom/igexin/a/a/b/e;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "a"

    const-string v2, "href"

    invoke-static {v0, v1, v2}, Lsdk/b/a/a/e/e/c;->b(Lcom/igexin/a/a/b/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lsdk/b/a/a/e/e/c;->a(Lcom/igexin/a/a/b/e;)V

    invoke-virtual {v0}, Lcom/igexin/a/a/b/e;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lsdk/b/a/a/e/e/c;->b:Ljava/io/File;

    sget-object v4, Lsdk/b/a/a/e/e/f;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lsdk/c/a/b/d;->d()V

    return-void

    :cond_0
    const-string v0, "GexinSdk"

    const-string v1, "\u8fde\u4e0d\u4e0a"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8fde\u4e0d\u4e0a : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsdk/b/a/a/e/e/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final f()V
    .locals 0

    return-void
.end method
