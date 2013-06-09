.class public final Lcom/a/a/a/g/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/a/g/a;


# instance fields
.field private a:Lcom/a/a/a/d/a/b;

.field private b:Lcom/a/a/a/b;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/a/a/a/b;)V
    .locals 1

    new-instance v0, Lcom/a/a/a/d/a/b;

    invoke-direct {v0}, Lcom/a/a/a/d/a/b;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/a/a/a/g/b;-><init>(Lcom/a/a/a/b;Lcom/a/a/a/d/a/b;)V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/a/b;Lcom/a/a/a/d/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/g/b;->b:Lcom/a/a/a/b;

    iput-object p2, p0, Lcom/a/a/a/g/b;->a:Lcom/a/a/a/d/a/b;

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/a/a/a/g/b;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/g/b;->b:Lcom/a/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/a/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v1, p0, Lcom/a/a/a/g/b;->b:Lcom/a/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/a/b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/a/a/a/c/a;

    invoke-direct {v0}, Lcom/a/a/a/c/a;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/File;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/a/a/g/b;->b:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/a/a/a/g/b;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    iget-object v0, p0, Lcom/a/a/a/g/b;->b:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->e()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/a/a/a/g/b;->b:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->f()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/a/a/a/g/b;->b:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->g()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v1, v3

    :goto_1
    :try_start_2
    new-instance v2, Lcom/a/a/a/c/a;

    invoke-direct {v2}, Lcom/a/a/a/c/a;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_2
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/a/a/a/g/b;->b:Lcom/a/a/a/b;

    invoke-virtual {v4}, Lcom/a/a/a/b;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    iget-object v2, p0, Lcom/a/a/a/g/b;->a:Lcom/a/a/a/d/a/b;

    invoke-static {v1}, Lcom/a/a/a/d/a/b;->a(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/a/a/a/g/b;->a:Lcom/a/a/a/d/a/b;

    invoke-static {v3}, Lcom/a/a/a/d/a/b;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x133

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/a/a/a/g/b;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/a/a/a/g/b;->c:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    const-string v0, "Location"

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/a/a/a/g/b;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v3

    :goto_3
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/a/a/a/g/b;->b:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    iget-object v0, p0, Lcom/a/a/a/g/b;->a:Lcom/a/a/a/d/a/b;

    invoke-static {v1}, Lcom/a/a/a/d/a/b;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/a/a/a/g/b;->a:Lcom/a/a/a/d/a/b;

    invoke-static {v3}, Lcom/a/a/a/d/a/b;->a(Ljava/io/Closeable;)V

    :goto_4
    return-void

    :cond_4
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Lcom/a/a/a/g/b;->c:I

    move-object v1, v3

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    iget-object v3, p0, Lcom/a/a/a/g/b;->a:Lcom/a/a/a/d/a/b;

    invoke-static {v1, v0}, Lcom/a/a/a/d/a/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    move-object v3, v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v3

    move-object v1, v3

    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/a/a/a/g/b;->b:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    iget-object v0, p0, Lcom/a/a/a/g/b;->a:Lcom/a/a/a/d/a/b;

    invoke-static {v1}, Lcom/a/a/a/d/a/b;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/a/a/a/g/b;->a:Lcom/a/a/a/d/a/b;

    invoke-static {v3}, Lcom/a/a/a/d/a/b;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object v1, v3

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    goto/16 :goto_2

    :catchall_4
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v0, v3

    move-object v1, v3

    goto/16 :goto_1

    :catch_6
    move-exception v0

    move-object v0, v2

    goto/16 :goto_1

    :catch_7
    move-exception v3

    move-object v3, v0

    move-object v0, v2

    goto/16 :goto_1
.end method
