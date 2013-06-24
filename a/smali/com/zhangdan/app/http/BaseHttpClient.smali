.class public Lcom/zhangdan/app/http/BaseHttpClient;
.super Ljava/lang/Object;
.source "BaseHttpClient.java"


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x7530


# instance fields
.field private mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field private mIsCancel:Z

.field private mTimeout:I

.field private final mWebAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "webAddress"

    .prologue
    .line 58
    const/16 v0, 0x7530

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/app/http/BaseHttpClient;-><init>(Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "webAddress"
    .parameter "timeout"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mIsCancel:Z

    .line 53
    iput-object p1, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mWebAddress:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mTimeout:I

    .line 55
    return-void
.end method

.method private createHttpClient(I)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 2
    .parameter "timeout"

    .prologue
    .line 226
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0, p1}, Lcom/zhangdan/app/http/BaseHttpClient;->createHttpParams(I)Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method private createHttpParams(I)Lorg/apache/http/params/HttpParams;
    .locals 2
    .parameter "timeout"

    .prologue
    .line 235
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 236
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 237
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 238
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 239
    return-object v0
.end method

.method private executeHttpRequest(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .locals 3
    .parameter "httpClient"
    .parameter "httpRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 212
    :cond_0
    const/4 v2, 0x0

    .line 214
    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :goto_1
    throw v0

    .line 218
    :catch_1
    move-exception v1

    .line 219
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private releaseHttpClient()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 245
    :cond_0
    return-void
.end method


# virtual methods
.method public abortRequest()V
    .locals 2

    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 262
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mIsCancel:Z

    .line 249
    return-void
.end method

.method public doGet()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 68
    iget v5, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mTimeout:I

    if-gtz v5, :cond_0

    .line 69
    const/16 v5, 0x7530

    iput v5, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mTimeout:I

    .line 70
    :cond_0
    iget v5, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mTimeout:I

    invoke-direct {p0, v5}, Lcom/zhangdan/app/http/BaseHttpClient;->createHttpClient(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v5

    iput-object v5, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 71
    iget-boolean v5, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mIsCancel:Z

    if-eqz v5, :cond_1

    move-object v3, v4

    .line 101
    :goto_0
    return-object v3

    .line 73
    :cond_1
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mWebAddress:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 74
    iget-boolean v5, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mIsCancel:Z

    if-eqz v5, :cond_2

    move-object v3, v4

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/4 v3, 0x0

    .line 77
    .local v3, response:Ljava/lang/String;
    const/4 v1, 0x0

    .line 79
    .local v1, httpEntity:Lorg/apache/http/HttpEntity;
    :try_start_0
    iget-object v5, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, v5, v6}, Lcom/zhangdan/app/http/BaseHttpClient;->executeHttpRequest(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 82
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    if-eqz v2, :cond_3

    iget-boolean v5, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mIsCancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_5

    .line 92
    :cond_3
    if-eqz v1, :cond_4

    .line 94
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/zhangdan/app/http/BaseHttpClient;->releaseHttpClient()V

    move-object v3, v4

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 84
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_6

    iget-boolean v5, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mIsCancel:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_8

    .line 92
    :cond_6
    if-eqz v1, :cond_7

    .line 94
    :try_start_3
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 99
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/zhangdan/app/http/BaseHttpClient;->releaseHttpClient()V

    move-object v3, v4

    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    .line 96
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 87
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    const/16 v4, 0xc8

    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    if-ne v4, v5, :cond_9

    .line 89
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 92
    :cond_9
    if-eqz v1, :cond_a

    .line 94
    :try_start_5
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 99
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/zhangdan/app/http/BaseHttpClient;->releaseHttpClient()V

    goto :goto_0

    .line 95
    :catch_2
    move-exception v0

    .line 96
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 92
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_b

    .line 94
    :try_start_6
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 99
    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/zhangdan/app/http/BaseHttpClient;->releaseHttpClient()V

    throw v4

    .line 95
    :catch_3
    move-exception v0

    .line 96
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public doPost(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "postDataStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 164
    iget v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mTimeout:I

    if-gtz v6, :cond_0

    .line 165
    const/16 v6, 0x7530

    iput v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mTimeout:I

    .line 166
    :cond_0
    iget v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mTimeout:I

    invoke-direct {p0, v6}, Lcom/zhangdan/app/http/BaseHttpClient;->createHttpClient(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v6

    iput-object v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 167
    iget-boolean v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mIsCancel:Z

    if-eqz v6, :cond_1

    move-object v4, v5

    .line 206
    :goto_0
    return-object v4

    .line 169
    :cond_1
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mWebAddress:Ljava/lang/String;

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 171
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v6, Lorg/apache/http/entity/StringEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, p1, v7}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    iput-object v2, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 178
    iget-boolean v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mIsCancel:Z

    if-eqz v6, :cond_2

    move-object v4, v5

    .line 179
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v4, v5

    .line 174
    goto :goto_0

    .line 181
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    const/4 v4, 0x0

    .line 182
    .local v4, response:Ljava/lang/String;
    const/4 v1, 0x0

    .line 184
    .local v1, httpEntity:Lorg/apache/http/HttpEntity;
    :try_start_1
    iget-object v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v7, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, v6, v7}, Lcom/zhangdan/app/http/BaseHttpClient;->executeHttpRequest(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 187
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    if-eqz v3, :cond_3

    iget-boolean v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mIsCancel:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_5

    .line 197
    :cond_3
    if-eqz v1, :cond_4

    .line 199
    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 204
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/zhangdan/app/http/BaseHttpClient;->releaseHttpClient()V

    move-object v4, v5

    goto :goto_0

    .line 200
    :catch_1
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 189
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    :try_start_3
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_6

    iget-boolean v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mIsCancel:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_8

    .line 197
    :cond_6
    if-eqz v1, :cond_7

    .line 199
    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 204
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/zhangdan/app/http/BaseHttpClient;->releaseHttpClient()V

    move-object v4, v5

    goto :goto_0

    .line 200
    :catch_2
    move-exception v0

    .line 201
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 192
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    const/16 v5, 0xc8

    :try_start_5
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    if-ne v5, v6, :cond_9

    .line 194
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    .line 197
    :cond_9
    if-eqz v1, :cond_a

    .line 199
    :try_start_6
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 204
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/zhangdan/app/http/BaseHttpClient;->releaseHttpClient()V

    goto :goto_0

    .line 200
    :catch_3
    move-exception v0

    .line 201
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 197
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_b

    .line 199
    :try_start_7
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 204
    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/zhangdan/app/http/BaseHttpClient;->releaseHttpClient()V

    throw v5

    .line 200
    :catch_4
    move-exception v0

    .line 201
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public doPost(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v5, 0x0

    .line 111
    iget v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mTimeout:I

    if-gtz v6, :cond_0

    .line 112
    const/16 v6, 0x7530

    iput v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mTimeout:I

    .line 113
    :cond_0
    iget v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mTimeout:I

    invoke-direct {p0, v6}, Lcom/zhangdan/app/http/BaseHttpClient;->createHttpClient(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v6

    iput-object v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 114
    iget-boolean v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mIsCancel:Z

    if-eqz v6, :cond_1

    move-object v4, v5

    .line 153
    :goto_0
    return-object v4

    .line 116
    :cond_1
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mWebAddress:Ljava/lang/String;

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, p1, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    iput-object v2, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 125
    iget-boolean v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mIsCancel:Z

    if-eqz v6, :cond_2

    move-object v4, v5

    .line 126
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v4, v5

    .line 121
    goto :goto_0

    .line 128
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    const/4 v4, 0x0

    .line 129
    .local v4, response:Ljava/lang/String;
    const/4 v1, 0x0

    .line 131
    .local v1, httpEntity:Lorg/apache/http/HttpEntity;
    :try_start_1
    iget-object v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v7, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, v6, v7}, Lcom/zhangdan/app/http/BaseHttpClient;->executeHttpRequest(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 134
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    if-eqz v3, :cond_3

    iget-boolean v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mIsCancel:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_5

    .line 144
    :cond_3
    if-eqz v1, :cond_4

    .line 146
    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 151
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/zhangdan/app/http/BaseHttpClient;->releaseHttpClient()V

    move-object v4, v5

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 136
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    :try_start_3
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_6

    iget-boolean v6, p0, Lcom/zhangdan/app/http/BaseHttpClient;->mIsCancel:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_8

    .line 144
    :cond_6
    if-eqz v1, :cond_7

    .line 146
    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 151
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/zhangdan/app/http/BaseHttpClient;->releaseHttpClient()V

    move-object v4, v5

    goto :goto_0

    .line 147
    :catch_2
    move-exception v0

    .line 148
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 139
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    const/16 v5, 0xc8

    :try_start_5
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    if-ne v5, v6, :cond_9

    .line 141
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    .line 144
    :cond_9
    if-eqz v1, :cond_a

    .line 146
    :try_start_6
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 151
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/zhangdan/app/http/BaseHttpClient;->releaseHttpClient()V

    goto :goto_0

    .line 147
    :catch_3
    move-exception v0

    .line 148
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 144
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_b

    .line 146
    :try_start_7
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 151
    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/zhangdan/app/http/BaseHttpClient;->releaseHttpClient()V

    throw v5

    .line 147
    :catch_4
    move-exception v0

    .line 148
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method
