.class public final Lcom/igexin/a/a/a/g;
.super Lcom/igexin/a/a/a/e;

# interfaces
.implements Lcom/igexin/a/a/f;


# instance fields
.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/nio/ByteBuffer;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:I

.field private l:Lcom/igexin/a/a/e;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igexin/a/a/a/e;-><init>(B)V

    iput-boolean v0, p0, Lcom/igexin/a/a/a/g;->j:Z

    iput v0, p0, Lcom/igexin/a/a/a/g;->k:I

    return-void
.end method

.method private constructor <init>(Lcom/igexin/a/a/a/g;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/igexin/a/a/a/e;-><init>(B)V

    iput-boolean v4, p0, Lcom/igexin/a/a/a/g;->j:Z

    iput v4, p0, Lcom/igexin/a/a/a/g;->k:I

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/igexin/a/a/a/g;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/a/a/a/g;->k:I

    iget v0, p0, Lcom/igexin/a/a/a/g;->k:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too many redirects occurred trying to load URL %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-super {p1}, Lcom/igexin/a/a/a/e;->a()Ljava/net/URL;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static a(Lcom/igexin/a/a/e;Lcom/igexin/a/a/a/g;)Lcom/igexin/a/a/a/g;
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    :goto_0
    const-string v0, "Request must not be null"

    invoke-static {p0, v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/igexin/a/a/e;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v4

    :goto_1
    const-string v1, "Only http & https protocols supported"

    invoke-static {v0, v1}, Lcom/igexin/a/a/a/i;->a(ZLjava/lang/String;)V

    invoke-interface {p0}, Lcom/igexin/a/a/e;->b()Lcom/igexin/a/a/d;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/a/d;->a:Lcom/igexin/a/a/d;

    if-ne v0, v1, :cond_4

    invoke-interface {p0}, Lcom/igexin/a/a/e;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {p0}, Lcom/igexin/a/a/e;->a()Ljava/net/URL;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "://"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "?"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    :goto_2
    invoke-interface {p0}, Lcom/igexin/a/a/e;->i()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/c;

    if-nez v1, :cond_2

    const/16 v7, 0x26

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    invoke-interface {v0}, Lcom/igexin/a/a/c;->a()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/igexin/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    move v0, v3

    goto/16 :goto_1

    :cond_2
    move v1, v3

    goto :goto_4

    :cond_3
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/igexin/a/a/e;->a(Ljava/net/URL;)Lcom/igexin/a/a/b;

    invoke-interface {p0}, Lcom/igexin/a/a/e;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    :cond_4
    invoke-static {p0}, Lcom/igexin/a/a/a/g;->a(Lcom/igexin/a/a/e;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-interface {p0}, Lcom/igexin/a/a/e;->b()Lcom/igexin/a/a/d;

    move-result-object v0

    sget-object v2, Lcom/igexin/a/a/d;->b:Lcom/igexin/a/a/d;

    if-ne v0, v2, :cond_5

    invoke-interface {p0}, Lcom/igexin/a/a/e;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/igexin/a/a/a/g;->a(Ljava/util/Collection;Ljava/io/OutputStream;)V

    :cond_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_f

    const/16 v2, 0x12e

    if-eq v0, v2, :cond_6

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_6

    const/16 v2, 0x12f

    if-ne v0, v2, :cond_7

    :cond_6
    move v0, v4

    :goto_5
    new-instance v2, Lcom/igexin/a/a/a/g;

    invoke-direct {v2, p1}, Lcom/igexin/a/a/a/g;-><init>(Lcom/igexin/a/a/a/g;)V

    invoke-direct {v2, v1, p1}, Lcom/igexin/a/a/a/g;->a(Ljava/net/HttpURLConnection;Lcom/igexin/a/a/f;)V

    if-eqz v0, :cond_9

    invoke-interface {p0}, Lcom/igexin/a/a/e;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/igexin/a/a/d;->a:Lcom/igexin/a/a/d;

    invoke-interface {p0, v0}, Lcom/igexin/a/a/e;->a(Lcom/igexin/a/a/d;)Lcom/igexin/a/a/b;

    invoke-interface {p0}, Lcom/igexin/a/a/e;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    new-instance v0, Ljava/net/URL;

    invoke-interface {p0}, Lcom/igexin/a/a/e;->a()Ljava/net/URL;

    move-result-object v1

    const-string v6, "Location"

    invoke-virtual {v2, v6}, Lcom/igexin/a/a/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/igexin/a/a/e;->a(Ljava/net/URL;)Lcom/igexin/a/a/b;

    iget-object v0, v2, Lcom/igexin/a/a/a/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lcom/igexin/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/a/a/b;

    goto :goto_6

    :cond_7
    invoke-interface {p0}, Lcom/igexin/a/a/e;->g()Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " error loading URL "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/igexin/a/a/e;->a()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move-object p1, v2

    goto/16 :goto_0

    :cond_9
    iput-object p0, v2, Lcom/igexin/a/a/a/g;->l:Lcom/igexin/a/a/e;

    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_7
    :try_start_1
    const-string v0, "Content-Encoding"

    invoke-virtual {v2, v0}, Lcom/igexin/a/a/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Content-Encoding"

    invoke-virtual {v2, v0}, Lcom/igexin/a/a/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "gzip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v0

    :goto_8
    invoke-static {v5}, Lcom/igexin/a/a/a/a;->a(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lcom/igexin/a/a/a/g;->g:Ljava/nio/ByteBuffer;

    iget-object v0, v2, Lcom/igexin/a/a/a/g;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/igexin/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/igexin/a/a/a/g;->h:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_a
    iput-boolean v4, v2, Lcom/igexin/a/a/a/g;->j:Z

    return-object v2

    :cond_b
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_7

    :cond_c
    :try_start_3
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v5, v0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v1, v5

    :goto_9
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_e
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_f
    move v0, v3

    goto/16 :goto_5

    :cond_10
    move v0, v4

    goto/16 :goto_2
.end method

.method private static a(Lcom/igexin/a/a/e;)Ljava/net/HttpURLConnection;
    .locals 9

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {p0}, Lcom/igexin/a/a/e;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-interface {p0}, Lcom/igexin/a/a/e;->b()Lcom/igexin/a/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/a/a/d;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-interface {p0}, Lcom/igexin/a/a/e;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-interface {p0}, Lcom/igexin/a/a/e;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-interface {p0}, Lcom/igexin/a/a/e;->b()Lcom/igexin/a/a/d;

    move-result-object v2

    sget-object v3, Lcom/igexin/a/a/d;->b:Lcom/igexin/a/a/d;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_0
    invoke-interface {p0}, Lcom/igexin/a/a/e;->d()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    const-string v5, "Cookie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/igexin/a/a/e;->d()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    const-string v3, "; "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v8, 0x3d

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {p0}, Lcom/igexin/a/a/e;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private a(Ljava/net/HttpURLConnection;Lcom/igexin/a/a/f;)V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/a/a/a/g;->b:Lcom/igexin/a/a/d;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/igexin/a/a/d;->a:Lcom/igexin/a/a/d;

    iput-object v0, p0, Lcom/igexin/a/a/a/g;->b:Lcom/igexin/a/a/d;

    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/a/g;->a:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/igexin/a/a/a/g;->e:I

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/a/g;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/a/g;->i:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v3, "Set-Cookie"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v3, Lcom/igexin/a/a/c/p;

    invoke-direct {v3, v0}, Lcom/igexin/a/a/c/p;-><init>(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {v3, v0}, Lcom/igexin/a/a/c/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v0, ";"

    invoke-virtual {v3, v0}, Lcom/igexin/a/a/c/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0, v4, v0}, Lcom/igexin/a/a/a/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/a/a/b;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/igexin/a/a/d;->b:Lcom/igexin/a/a/d;

    iput-object v0, p0, Lcom/igexin/a/a/a/g;->b:Lcom/igexin/a/a/d;

    goto/16 :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/igexin/a/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/a/a/b;

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_7

    invoke-interface {p2}, Lcom/igexin/a/a/f;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/igexin/a/a/a/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/igexin/a/a/a/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/a/a/b;

    goto :goto_3

    :cond_7
    return-void
.end method

.method private static a(Ljava/util/Collection;Ljava/io/OutputStream;)V
    .locals 6

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v0, "UTF-8"

    invoke-direct {v2, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/c;

    if-nez v1, :cond_0

    const/16 v4, 0x26

    invoke-virtual {v2, v4}, Ljava/io/OutputStreamWriter;->append(C)Ljava/io/Writer;

    :goto_1
    invoke-interface {v0}, Lcom/igexin/a/a/c;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-interface {v0}, Lcom/igexin/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/igexin/a/a/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Ljava/net/URL;
    .locals 1

    invoke-super {p0}, Lcom/igexin/a/a/a/e;->a()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Lcom/igexin/a/a/d;
    .locals 1

    invoke-super {p0}, Lcom/igexin/a/a/a/e;->b()Lcom/igexin/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b(Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/igexin/a/a/a/e;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic c()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/igexin/a/a/a/e;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/igexin/a/a/a/e;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic d()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/igexin/a/a/a/e;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/igexin/a/a/b/e;
    .locals 5

    iget-boolean v0, p0, Lcom/igexin/a/a/a/g;->j:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before parsing response"

    invoke-static {v0, v1}, Lcom/igexin/a/a/a/i;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/a/g;->l:Lcom/igexin/a/a/e;

    invoke-interface {v0}, Lcom/igexin/a/a/e;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/a/g;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/a/g;->i:Ljava/lang/String;

    const-string v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/a/g;->i:Ljava/lang/String;

    const-string v1, "application/xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/a/g;->i:Ljava/lang/String;

    const-string v1, "application/xhtml+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unhandled content type \"%s\" on URL %s. Must be text/*, application/xml, or application/xhtml+xml"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/igexin/a/a/a/g;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/igexin/a/a/a/g;->a:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/a/a/g;->g:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/igexin/a/a/a/g;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/a/a/a/g;->a:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/igexin/a/a/a/g;->l:Lcom/igexin/a/a/e;

    invoke-interface {v3}, Lcom/igexin/a/a/e;->j()Lcom/igexin/a/a/c/e;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/igexin/a/a/a/a;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/a/c/e;)Lcom/igexin/a/a/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/a/a/g;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Lcom/igexin/a/a/b/e;->c()Lcom/igexin/a/a/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/a/a/b/f;->b()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/a/a/a/g;->h:Ljava/lang/String;

    return-object v0
.end method
