.class final Lcom/baidu/location/ai;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/16 v11, 0x8

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v9, 0xff

    const/4 v3, 0x3

    :goto_0
    if-lez v3, :cond_0

    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/baidu/location/ak;->g()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/baidu/location/ae;->y()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "qt"

    const-string v8, "grid"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "req"

    invoke-static {}, Lcom/baidu/location/ae;->z()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v7, "utf-8"

    invoke-direct {v6, v5, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.connection.timeout"

    invoke-static {}, Lcom/baidu/location/ae;->g()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.socket.timeout"

    invoke-static {}, Lcom/baidu/location/ae;->g()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-static {}, Lcom/baidu/location/ae;->h()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    invoke-interface {v5, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_7

    invoke-static {}, Lcom/baidu/location/ae;->y()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/baidu/location/ae;->h()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v3

    if-nez v3, :cond_3

    :goto_2
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/ae;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_3
    :try_start_2
    invoke-static {}, Lcom/baidu/location/ak;->b()V

    sget v0, Lcom/baidu/location/ak;->an:I

    if-eq v0, v1, :cond_8

    sget v0, Lcom/baidu/location/ak;->an:I

    sget v2, Lcom/baidu/location/ak;->an:I

    invoke-static {v2}, Lcom/baidu/location/ak;->b(I)V

    :goto_4
    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lcom/baidu/location/ak;->a(I)V

    :cond_1
    invoke-static {}, Lcom/baidu/location/ae;->A()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {}, Lcom/baidu/location/ae;->B()Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    invoke-static {}, Lcom/baidu/location/ae;->C()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ae;->D()Z

    return-void

    :cond_2
    :try_start_3
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "qt"

    const-string v8, "conf"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    invoke-static {}, Lcom/baidu/location/ae;->h()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    :goto_6
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    :cond_3
    :try_start_4
    array-length v4, v3

    const/16 v5, 0x280

    if-ge v4, v5, :cond_4

    invoke-static {}, Lcom/baidu/location/ae;->h()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/ak;->r:Z

    sget-wide v3, Lcom/baidu/location/ak;->m:D

    const-wide v5, 0x3f9999999999999aL

    add-double/2addr v3, v5

    sput-wide v3, Lcom/baidu/location/ak;->o:D

    sget-wide v3, Lcom/baidu/location/ak;->l:D

    const-wide v5, 0x3f9999999999999aL

    sub-double/2addr v3, v5

    sput-wide v3, Lcom/baidu/location/ak;->n:D

    move v0, v2

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    sput-boolean v4, Lcom/baidu/location/ak;->r:Z

    const/4 v4, 0x7

    aget-byte v4, v3, v4

    int-to-long v4, v4

    and-long/2addr v4, v9

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    const/4 v6, 0x6

    aget-byte v6, v3, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const/4 v6, 0x5

    aget-byte v6, v3, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const/4 v6, 0x4

    aget-byte v6, v3, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const/4 v6, 0x3

    aget-byte v6, v3, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const/4 v6, 0x2

    aget-byte v6, v3, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const/4 v6, 0x1

    aget-byte v6, v3, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    shl-long/2addr v6, v11

    or-long/2addr v4, v6

    const/4 v6, 0x0

    aget-byte v6, v3, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {}, Lcom/baidu/location/ae;->h()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    sput-wide v5, Lcom/baidu/location/ak;->n:D

    invoke-static {}, Lcom/baidu/location/ae;->h()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "req config response:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const/16 v4, 0xf

    aget-byte v4, v3, v4

    int-to-long v4, v4

    and-long/2addr v4, v9

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    const/16 v6, 0xe

    aget-byte v6, v3, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const/16 v6, 0xd

    aget-byte v6, v3, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const/16 v6, 0xc

    aget-byte v6, v3, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const/16 v6, 0xb

    aget-byte v6, v3, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const/16 v6, 0xa

    aget-byte v6, v3, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const/16 v6, 0x9

    aget-byte v6, v3, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    shl-long/2addr v6, v11

    or-long/2addr v4, v6

    const/16 v6, 0x8

    aget-byte v6, v3, v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    sput-wide v5, Lcom/baidu/location/ak;->o:D

    const/16 v5, 0x271

    new-array v5, v5, [B

    sput-object v5, Lcom/baidu/location/ak;->q:[B

    invoke-static {}, Lcom/baidu/location/ae;->h()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "req config response:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    :goto_7
    const/16 v4, 0x271

    if-ge v0, v4, :cond_a

    sget-object v4, Lcom/baidu/location/ak;->q:[B

    add-int/lit8 v5, v0, 0x10

    aget-byte v5, v3, v5

    aput-byte v5, v4, v0

    invoke-static {}, Lcom/baidu/location/ae;->h()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "req config value:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/location/ak;->q:[B

    aget-byte v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_5
    :try_start_5
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/baidu/location/ae;->h()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "req config value:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-static {v4}, Lcom/baidu/location/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/baidu/location/ae;->h()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    invoke-static {}, Lcom/baidu/location/ae;->b()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_8
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ctr"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ctr"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/location/ak;->an:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_7
    :try_start_8
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_6

    :cond_8
    :try_start_9
    sget v0, Lcom/baidu/location/ak;->am:I

    if-eq v0, v1, :cond_9

    sget v0, Lcom/baidu/location/ak;->am:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/baidu/location/ae;->B()Landroid/os/Handler;

    goto/16 :goto_5

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :cond_9
    move v0, v1

    goto/16 :goto_4

    :cond_a
    move v0, v2

    goto/16 :goto_2
.end method
