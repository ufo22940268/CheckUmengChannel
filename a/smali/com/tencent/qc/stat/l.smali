.class Lcom/tencent/qc/stat/l;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final c:[B

.field private static d:Lcom/tencent/qc/stat/common/StatLogger;

.field private static e:J

.field private static f:Lcom/tencent/qc/stat/l;

.field private static g:Landroid/content/Context;


# instance fields
.field a:Lorg/apache/http/impl/client/DefaultHttpClient;

.field b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/tencent/qc/stat/common/StatCommonHelper;->b()Lcom/tencent/qc/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/qc/stat/l;->d:Lcom/tencent/qc/stat/common/StatLogger;

    .line 50
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tencent/qc/stat/l;->e:J

    .line 57
    const-string v0, "03a976511e2cbe3a7f26808fb7af3c05"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/tencent/qc/stat/l;->c:[B

    .line 164
    new-instance v0, Lcom/tencent/qc/stat/l;

    invoke-direct {v0}, Lcom/tencent/qc/stat/l;-><init>()V

    sput-object v0, Lcom/tencent/qc/stat/l;->f:Lcom/tencent/qc/stat/l;

    .line 166
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qc/stat/l;->g:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x2710

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/tencent/qc/stat/l;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 53
    iput-object v0, p0, Lcom/tencent/qc/stat/l;->b:Landroid/os/Handler;

    .line 129
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StatDispatcher"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 131
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v1

    sput-wide v1, Lcom/tencent/qc/stat/l;->e:J

    .line 132
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/qc/stat/l;->b:Landroid/os/Handler;

    .line 133
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 135
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 137
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 138
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/tencent/qc/stat/l;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 140
    iget-object v0, p0, Lcom/tencent/qc/stat/l;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/tencent/qc/stat/n;

    invoke-direct {v1, p0}, Lcom/tencent/qc/stat/n;-><init>(Lcom/tencent/qc/stat/l;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V

    .line 153
    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->i()Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/tencent/qc/stat/l;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.route.default-proxy"

    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->i()Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 158
    :cond_0
    return-void
.end method

.method static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/tencent/qc/stat/l;->g:Landroid/content/Context;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/qc/stat/l;->g:Landroid/content/Context;

    .line 170
    return-void
.end method

.method static b()Lcom/tencent/qc/stat/l;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/tencent/qc/stat/l;->f:Lcom/tencent/qc/stat/l;

    return-object v0
.end method


# virtual methods
.method a(Lcom/tencent/qc/stat/event/Event;Lcom/tencent/qc/stat/q;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 356
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/tencent/qc/stat/event/Event;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/qc/stat/l;->b(Ljava/util/List;Lcom/tencent/qc/stat/q;)V

    .line 357
    return-void
.end method

.method a(Ljava/util/List;Lcom/tencent/qc/stat/q;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 192
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 193
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_0

    .line 195
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 198
    :cond_1
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    sget-object v0, Lcom/tencent/qc/stat/l;->d:Lcom/tencent/qc/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]Send request("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "bytes):"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Object;)V

    .line 201
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/qqconnectutil/sdk"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 206
    :try_start_0
    const-string v0, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v1, v0, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v1, v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "Cache-Control"

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/tencent/qc/stat/l;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v4

    .line 212
    if-eqz v4, :cond_2

    .line 213
    iget-object v0, p0, Lcom/tencent/qc/stat/l;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v2, "http.route.default-proxy"

    sget-object v5, Lcom/tencent/qc/stat/l;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 215
    const-string v0, "X-Online-Host"

    const-string v2, "cgi.connect.qq.com"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "Accept"

    const-string v2, "*/*"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v0, "Content-Type"

    const-string v2, "json"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v2, 0x1

    .line 221
    :cond_2
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 222
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "UTF-8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 223
    array-length v6, v0

    .line 225
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v7, 0x100

    if-ge v3, v7, :cond_9

    .line 227
    if-nez v4, :cond_8

    .line 228
    const-string v3, "Content-Encoding"

    const-string v4, "rc4"

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_1
    sget-object v3, Lcom/tencent/qc/stat/l;->c:[B

    invoke-static {v0, v3}, Lcom/tencent/qc/stat/j;->a([B[B)[B

    move-result-object v0

    .line 253
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v3, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 255
    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 257
    iget-object v0, p0, Lcom/tencent/qc/stat/l;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 259
    if-eqz v2, :cond_3

    .line 260
    iget-object v0, p0, Lcom/tencent/qc/stat/l;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    .line 264
    :cond_3
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 266
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_6

    .line 268
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    .line 269
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 270
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 271
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v0, v4

    new-array v0, v0, [B

    .line 272
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 273
    const-string v3, "Content-Encoding"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 275
    if-eqz v3, :cond_5

    .line 277
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip,rc4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 279
    invoke-static {v0}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a([B)[B

    move-result-object v0

    .line 280
    sget-object v3, Lcom/tencent/qc/stat/l;->c:[B

    invoke-static {v0, v3}, Lcom/tencent/qc/stat/j;->b([B[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    :cond_4
    :goto_2
    :try_start_1
    sget-object v3, Lcom/tencent/qc/stat/l;->d:Lcom/tencent/qc/stat/common/StatLogger;

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/tencent/qc/stat/common/StatLogger;->h(Ljava/lang/Object;)V

    .line 296
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 298
    const-string v0, "cfg"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_5

    .line 300
    invoke-static {v0}, Lcom/tencent/qc/stat/StatConfig;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    :cond_5
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 311
    :cond_6
    :goto_4
    sget-object v0, Lcom/tencent/qc/stat/l;->d:Lcom/tencent/qc/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recv response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Object;)V

    .line 313
    if-eqz p2, :cond_7

    .line 314
    invoke-interface {p2}, Lcom/tencent/qc/stat/q;->a()V

    .line 325
    :cond_7
    :goto_5
    return-void

    .line 230
    :cond_8
    const-string v3, "X-Content-Encoding"

    const-string v4, "rc4"

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    :try_start_3
    sget-object v1, Lcom/tencent/qc/stat/l;->d:Lcom/tencent/qc/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Exception;)V

    .line 319
    if-eqz p2, :cond_7

    .line 320
    invoke-interface {p2}, Lcom/tencent/qc/stat/q;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 322
    :catchall_0
    move-exception v0

    throw v0

    .line 236
    :cond_9
    if-nez v4, :cond_a

    .line 237
    :try_start_4
    const-string v3, "Content-Encoding"

    const-string v4, "rc4,gzip"

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_6
    const/4 v3, 0x4

    new-array v3, v3, [B

    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 242
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 243
    invoke-virtual {v3, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 244
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 245
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 246
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 247
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 248
    sget-object v3, Lcom/tencent/qc/stat/l;->d:Lcom/tencent/qc/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before Gzip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes, after Gzip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/qc/stat/common/StatLogger;->h(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 239
    :cond_a
    const-string v3, "X-Content-Encoding"

    const-string v4, "rc4,gzip"

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 281
    :cond_b
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "rc4,gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 283
    sget-object v3, Lcom/tencent/qc/stat/l;->c:[B

    invoke-static {v0, v3}, Lcom/tencent/qc/stat/j;->b([B[B)[B

    move-result-object v0

    .line 284
    invoke-static {v0}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a([B)[B

    move-result-object v0

    goto/16 :goto_2

    .line 285
    :cond_c
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 287
    invoke-static {v0}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a([B)[B

    move-result-object v0

    goto/16 :goto_2

    .line 288
    :cond_d
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rc4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 290
    sget-object v3, Lcom/tencent/qc/stat/l;->c:[B

    invoke-static {v0, v3}, Lcom/tencent/qc/stat/j;->b([B[B)[B

    move-result-object v0

    goto/16 :goto_2

    .line 302
    :catch_1
    move-exception v0

    .line 303
    sget-object v3, Lcom/tencent/qc/stat/l;->d:Lcom/tencent/qc/stat/common/StatLogger;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 308
    :cond_e
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4
.end method

.method b(Ljava/util/List;Lcom/tencent/qc/stat/q;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 336
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/tencent/qc/stat/l;->b:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/qc/stat/o;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/qc/stat/o;-><init>(Lcom/tencent/qc/stat/l;Ljava/util/List;Lcom/tencent/qc/stat/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
