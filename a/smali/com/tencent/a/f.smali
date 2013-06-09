.class public final Lcom/tencent/a/f;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/util/Random;


# instance fields
.field private a:Lcom/tencent/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/a/f;->b:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/a/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/a/f;->a:Lcom/tencent/a/h;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const-string v0, "unknown"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v0, "unknown"

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "wifi"

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    :cond_5
    const-string v0, "unknown"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "unknown"

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;JJJI)V
    .locals 5

    sget-object v0, Lcom/tencent/a/f;->b:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "appid"

    const-string v4, "1000002"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "releaseversion"

    const-string v4, "1.4"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "commandid"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "apn"

    invoke-static {p1}, Lcom/tencent/a/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "resultcode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "device"

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "tmcost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "reqsize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rspsize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "frequency"

    const-string v1, "10"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "qua"

    const-string v1, "V1_AND_OpenSDK_1.4_159_RDM_B"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/a/r;

    invoke-direct {v0, p0, p1, v2}, Lcom/tencent/a/r;-><init>(Lcom/tencent/a/f;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/tencent/a/r;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 18

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct/range {p3 .. p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v3, "format"

    const-string v4, "json"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/a/f;->a:Lcom/tencent/a/h;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/a/f;->a:Lcom/tencent/a/h;

    invoke-virtual {v3}, Lcom/tencent/a/h;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1

    const-string v4, "access_token"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/a/f;->a:Lcom/tencent/a/h;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/a/f;->a:Lcom/tencent/a/h;

    invoke-virtual {v3}, Lcom/tencent/a/h;->b()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "oauth2.0/m_me"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/a/f;->a:Lcom/tencent/a/h;

    if-eqz v3, :cond_2

    const-string v3, "oauth_consumer_key"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/a/f;->a:Lcom/tencent/a/h;

    invoke-virtual {v4}, Lcom/tencent/a/h;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/a/f;->a:Lcom/tencent/a/h;

    invoke-virtual {v3}, Lcom/tencent/a/h;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "openid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/a/f;->a:Lcom/tencent/a/h;

    invoke-virtual {v4}, Lcom/tencent/a/h;->c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://openmobile.qq.com/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://openmobile.qq.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    const/4 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v4, 0x0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v0, v3, v1, v2}, Lcom/tencent/a/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/a/p;

    move-result-object v10

    iget-object v9, v10, Lcom/tencent/a/p;->a:Ljava/lang/String;

    invoke-static {v9}, Lcom/tencent/a/n;->c(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/tencent/a/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/tencent/a/e; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v13

    :try_start_1
    const-string v8, "oauth2.0/m_me"

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v13, :cond_4

    const-string v8, "openid"

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/a/f;->a:Lcom/tencent/a/h;

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/a/f;->a:Lcom/tencent/a/h;

    invoke-virtual {v9, v8}, Lcom/tencent/a/h;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/tencent/a/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/tencent/a/e; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    :cond_4
    :try_start_2
    const-string v8, "ret"

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/tencent/a/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/tencent/a/e; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-result v12

    :goto_3
    :try_start_3
    iget-wide v8, v10, Lcom/tencent/a/p;->b:J

    iget-wide v10, v10, Lcom/tencent/a/p;->c:J
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/tencent/a/c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/tencent/a/e; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_8

    :goto_4
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/tencent/a/f;->a(Landroid/content/Context;Ljava/lang/String;JJJI)V

    return-object v13

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v8

    const/4 v12, -0x4

    goto :goto_3

    :catch_1
    move-exception v8

    move-object/from16 v16, v8

    move-object v8, v13

    move-object/from16 v13, v16

    :goto_5
    invoke-virtual {v13}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    const/4 v9, -0x7

    const-wide/16 v14, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x3

    if-lt v4, v12, :cond_7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, -0x7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/tencent/a/f;->a(Landroid/content/Context;Ljava/lang/String;JJJI)V

    throw v13

    :catch_2
    move-exception v8

    move-object/from16 v16, v8

    move-object v8, v13

    move-object/from16 v13, v16

    :goto_6
    invoke-virtual {v13}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    const/4 v9, -0x8

    const-wide/16 v14, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x3

    if-lt v4, v12, :cond_7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, -0x8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/tencent/a/f;->a(Landroid/content/Context;Ljava/lang/String;JJJI)V

    throw v13

    :catch_3
    move-exception v3

    move-object v13, v3

    invoke-virtual {v13}, Lcom/tencent/a/c;->printStackTrace()V

    invoke-virtual {v13}, Lcom/tencent/a/c;->getMessage()Ljava/lang/String;

    move-result-object v3

    :try_start_4
    const-string v4, "http status code error:"

    const-string v8, ""

    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v12

    :goto_7
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/tencent/a/f;->a(Landroid/content/Context;Ljava/lang/String;JJJI)V

    throw v13

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v12, -0x9

    goto :goto_7

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Lcom/tencent/a/e;->printStackTrace()V

    throw v3

    :catch_6
    move-exception v3

    move-object v13, v3

    invoke-virtual {v13}, Ljava/net/MalformedURLException;->printStackTrace()V

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, -0x3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/tencent/a/f;->a(Landroid/content/Context;Ljava/lang/String;JJJI)V

    throw v13

    :catch_7
    move-exception v3

    move-object v13, v3

    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, -0x2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/tencent/a/f;->a(Landroid/content/Context;Ljava/lang/String;JJJI)V

    throw v13

    :catch_8
    move-exception v3

    move-object v13, v3

    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, -0x4

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/tencent/a/f;->a(Landroid/content/Context;Ljava/lang/String;JJJI)V

    throw v13

    :cond_7
    move-wide v12, v14

    const/4 v14, 0x3

    if-lt v4, v14, :cond_3

    move-wide/from16 v16, v12

    move v12, v9

    move-object v13, v8

    move-wide/from16 v8, v16

    goto/16 :goto_4

    :catch_9
    move-exception v9

    move-object v13, v9

    goto/16 :goto_6

    :catch_a
    move-exception v9

    move-object v13, v9

    goto/16 :goto_5

    :cond_8
    move-object/from16 v5, p2

    move-object/from16 v3, p2

    goto/16 :goto_2
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/a;)V
    .locals 7

    new-instance v0, Lcom/tencent/a/t;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/a/t;-><init>(Lcom/tencent/a/f;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/a;)V

    invoke-virtual {v0}, Lcom/tencent/a/t;->start()V

    return-void
.end method
