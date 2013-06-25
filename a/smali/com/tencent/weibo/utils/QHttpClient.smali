.class public Lcom/tencent/weibo/utils/QHttpClient;
.super Ljava/lang/Object;
.source "QHttpClient.java"


# static fields
.field public static final CONNECTION_TIMEOUT:I = 0x1388

.field public static final CON_TIME_OUT_MS:I = 0x1388

.field public static final MAX_CONNECTIONS_PER_HOST:I = 0x2

.field public static final MAX_TOTAL_CONNECTIONS:I = 0x2

.field public static final SO_TIME_OUT_MS:I = 0x1388

.field private static TAG:Ljava/lang/String;


# instance fields
.field private httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "QHttpClient.class"

    sput-object v0, Lcom/tencent/weibo/utils/QHttpClient;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x1388

    const/4 v0, 0x2

    .line 58
    invoke-direct {p0, v0, v0, v1, v1}, Lcom/tencent/weibo/utils/QHttpClient;-><init>(IIII)V

    .line 59
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 10
    .parameter "maxConnectionPerHost"
    .parameter "maxTotalConnections"
    .parameter "conTimeOutMs"
    .parameter "soTimeOutMs"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v5, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 66
    .local v5, supportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 70
    :try_start_0
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    .line 71
    .local v4, sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 72
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    new-instance v8, Lcom/tencent/weibo/utils/QSSLSocketFactory;

    invoke-direct {v8}, Lcom/tencent/weibo/utils/QSSLSocketFactory;-><init>()V

    const/16 v9, 0x1bb

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v4           #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 80
    .local v2, httpParams:Lorg/apache/http/params/HttpParams;
    invoke-static {v2, p2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 81
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v0, p1}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 82
    .local v0, connPerRoute:Lorg/apache/http/conn/params/ConnPerRouteBean;
    invoke-static {v2, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 84
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 85
    const/4 v6, 0x0

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 88
    new-instance v3, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v3, v2, v5}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 89
    .local v3, singleClientConnManager:Lorg/apache/http/impl/conn/SingleClientConnManager;
    invoke-static {v2, p3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 90
    invoke-static {v2, p4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 92
    const-string v6, "compatibility"

    invoke-static {v2, v6}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 94
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v6, p0, Lcom/tencent/weibo/utils/QHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 95
    return-void

    .line 73
    .end local v0           #connPerRoute:Lorg/apache/http/conn/params/ConnPerRouteBean;
    .end local v2           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v3           #singleClientConnManager:Lorg/apache/http/impl/conn/SingleClientConnManager;
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "url"
    .parameter "queryString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, responseData:Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    :cond_0
    sget-object v4, Lcom/tencent/weibo/utils/QHttpClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QHttpClient httpGet [1] url = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.socket.timeout"

    .line 115
    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x1388

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 114
    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 117
    :try_start_0
    iget-object v4, p0, Lcom/tencent/weibo/utils/QHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 118
    .local v2, response:Lorg/apache/http/HttpResponse;
    sget-object v4, Lcom/tencent/weibo/utils/QHttpClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QHttpClient httpGet [2] StatusLine : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 120
    sget-object v4, Lcom/tencent/weibo/utils/QHttpClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QHttpClient httpGet [3] Response = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 127
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v3

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_0

    .line 123
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 124
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 125
    throw v4
.end method

.method public httpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "url"
    .parameter "queryString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v10, 0x0

    .line 140
    .local v10, responseData:Ljava/lang/String;
    new-instance v11, Ljava/net/URI;

    invoke-direct {v11, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 141
    .local v11, tmpUri:Ljava/net/URI;
    invoke-virtual {v11}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-virtual {v11}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 142
    const/4 v5, 0x0

    move-object v4, p2

    .line 141
    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v12

    .line 143
    .local v12, uri:Ljava/net/URI;
    sget-object v0, Lcom/tencent/weibo/utils/QHttpClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QHttpClient httpPost [1] url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 146
    .local v7, httpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    .line 147
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1388

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 146
    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 148
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    new-instance v8, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v8, p2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 151
    .local v8, reqEntity:Lorg/apache/http/entity/StringEntity;
    const-string v0, "application/x-www-form-urlencoded"

    invoke-virtual {v8, v0}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 157
    .end local v8           #reqEntity:Lorg/apache/http/entity/StringEntity;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/weibo/utils/QHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 158
    .local v9, response:Lorg/apache/http/HttpResponse;
    sget-object v0, Lcom/tencent/weibo/utils/QHttpClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QHttpClient httpPost [2] StatusLine = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v10

    .line 160
    sget-object v0, Lcom/tencent/weibo/utils/QHttpClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QHttpClient httpPost [3] responseData = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 167
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v10

    .line 161
    :catch_0
    move-exception v6

    .line 162
    .local v6, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto :goto_0

    .line 163
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 164
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 165
    throw v0
.end method

.method public httpPostWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 23
    .parameter "url"
    .parameter "queryString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    .local p3, files:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/16 v18, 0x0

    .line 183
    .local v18, responseData:Ljava/lang/String;
    new-instance v21, Ljava/net/URI;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 184
    .local v21, tmpUri:Ljava/net/URI;
    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getPort()I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 185
    const/4 v7, 0x0

    move-object/from16 v6, p2

    .line 184
    invoke-static/range {v2 .. v7}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v22

    .line 186
    .local v22, uri:Ljava/net/URI;
    sget-object v2, Lcom/tencent/weibo/utils/QHttpClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QHttpClient httpPostWithFile [1]  uri = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v13, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v13}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 190
    .local v13, mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 197
    .local v12, httpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-static/range {p2 .. p2}, Lcom/tencent/weibo/utils/QStrOperate;->getQueryParamsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 198
    .local v16, queryParamList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 216
    invoke-virtual {v12, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 219
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/weibo/utils/QHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 220
    .local v17, response:Lorg/apache/http/HttpResponse;
    sget-object v2, Lcom/tencent/weibo/utils/QHttpClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QHttpClient httpPostWithFile [2] StatusLine = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 225
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 227
    .end local v17           #response:Lorg/apache/http/HttpResponse;
    :goto_2
    sget-object v2, Lcom/tencent/weibo/utils/QHttpClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QHttpClient httpPostWithFile [3] responseData = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-object v18

    .line 198
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/http/NameValuePair;

    .line 199
    .local v15, queryParam:Lorg/apache/http/NameValuePair;
    new-instance v19, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-interface {v15}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 200
    .local v19, stringBody:Lorg/apache/http/entity/mime/content/StringBody;
    new-instance v9, Lorg/apache/http/entity/mime/FormBodyPart;

    invoke-interface {v15}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v9, v3, v0}, Lorg/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 201
    .local v9, fbp:Lorg/apache/http/entity/mime/FormBodyPart;
    invoke-virtual {v13, v9}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Lorg/apache/http/entity/mime/FormBodyPart;)V

    goto :goto_0

    .line 205
    .end local v9           #fbp:Lorg/apache/http/entity/mime/FormBodyPart;
    .end local v15           #queryParam:Lorg/apache/http/NameValuePair;
    .end local v19           #stringBody:Lorg/apache/http/entity/mime/content/StringBody;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/http/NameValuePair;

    .line 206
    .local v14, param:Lorg/apache/http/NameValuePair;
    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 207
    .local v11, filePath:Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v20, targetFile:Ljava/io/File;
    new-instance v10, Lorg/apache/http/entity/mime/content/FileBody;

    const-string v3, "application/octet-stream"

    move-object/from16 v0, v20

    invoke-direct {v10, v0, v3}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    .local v10, fileBody:Lorg/apache/http/entity/mime/content/FileBody;
    new-instance v9, Lorg/apache/http/entity/mime/FormBodyPart;

    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3, v10}, Lorg/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 210
    .restart local v9       #fbp:Lorg/apache/http/entity/mime/FormBodyPart;
    invoke-virtual {v13, v9}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Lorg/apache/http/entity/mime/FormBodyPart;)V

    goto/16 :goto_1

    .line 222
    .end local v9           #fbp:Lorg/apache/http/entity/mime/FormBodyPart;
    .end local v10           #fileBody:Lorg/apache/http/entity/mime/content/FileBody;
    .end local v11           #filePath:Ljava/lang/String;
    .end local v14           #param:Lorg/apache/http/NameValuePair;
    .end local v20           #targetFile:Ljava/io/File;
    :catch_0
    move-exception v8

    .line 223
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto :goto_2

    .line 224
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 225
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 226
    throw v2
.end method

.method public shutdownConnection()V
    .locals 2

    .prologue
    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/tencent/weibo/utils/QHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
