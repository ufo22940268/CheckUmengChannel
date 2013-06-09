.class public final Lcom/zhangdan/app/d/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private b:Lorg/apache/http/client/methods/HttpRequestBase;

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/d/a;->e:Z

    iput-object p1, p0, Lcom/zhangdan/app/d/a;->c:Ljava/lang/String;

    const/16 v0, 0x7530

    iput v0, p0, Lcom/zhangdan/app/d/a;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/app/d/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    throw v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(I)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 3

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v1, p0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, p0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/d/a;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/d/a;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/zhangdan/app/d/a;->d:I

    if-gtz v1, :cond_0

    const/16 v1, 0x7530

    iput v1, p0, Lcom/zhangdan/app/d/a;->d:I

    :cond_0
    iget v1, p0, Lcom/zhangdan/app/d/a;->d:I

    invoke-static {v1}, Lcom/zhangdan/app/d/a;->a(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/d/a;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-boolean v1, p0, Lcom/zhangdan/app/d/a;->e:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/zhangdan/app/d/a;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zhangdan/app/d/a;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-boolean v1, p0, Lcom/zhangdan/app/d/a;->e:Z

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/app/d/a;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/zhangdan/app/d/a;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-static {v1, v2}, Lcom/zhangdan/app/d/a;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-boolean v1, p0, Lcom/zhangdan/app/d/a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    :cond_3
    move-object v1, v0

    :cond_4
    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/zhangdan/app/d/a;->b()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_6
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_3
    iget-boolean v3, p0, Lcom/zhangdan/app/d/a;->e:Z

    if-nez v3, :cond_4

    const/16 v3, 0xc8

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    if-ne v3, v2, :cond_7

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    :cond_7
    if-eqz v1, :cond_8

    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/zhangdan/app/d/a;->b()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    if-eqz v1, :cond_9

    :try_start_5
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_9
    :goto_4
    invoke-direct {p0}, Lcom/zhangdan/app/d/a;->b()V

    throw v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/zhangdan/app/d/a;->d:I

    if-gtz v1, :cond_0

    const/16 v1, 0x7530

    iput v1, p0, Lcom/zhangdan/app/d/a;->d:I

    :cond_0
    iget v1, p0, Lcom/zhangdan/app/d/a;->d:I

    invoke-static {v1}, Lcom/zhangdan/app/d/a;->a(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/d/a;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-boolean v1, p0, Lcom/zhangdan/app/d/a;->e:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/zhangdan/app/d/a;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v1, p0, Lcom/zhangdan/app/d/a;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-boolean v1, p0, Lcom/zhangdan/app/d/a;->e:Z

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/zhangdan/app/d/a;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/zhangdan/app/d/a;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-static {v1, v2}, Lcom/zhangdan/app/d/a;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-boolean v1, p0, Lcom/zhangdan/app/d/a;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_6

    :cond_3
    move-object v1, v0

    :cond_4
    if-eqz v1, :cond_5

    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/zhangdan/app/d/a;->b()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_6
    :try_start_3
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_4
    iget-boolean v3, p0, Lcom/zhangdan/app/d/a;->e:Z

    if-nez v3, :cond_4

    const/16 v3, 0xc8

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    if-ne v3, v2, :cond_7

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    :cond_7
    if-eqz v1, :cond_8

    :try_start_5
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/zhangdan/app/d/a;->b()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    if-eqz v1, :cond_9

    :try_start_6
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_9
    :goto_4
    invoke-direct {p0}, Lcom/zhangdan/app/d/a;->b()V

    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3
.end method
