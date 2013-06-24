.class public Lcom/zhangdan/preferential/utils/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# static fields
.field public static final BANK_PRE:Ljava/lang/String; = "http://lbs.51zhangdan.net:88/images/bank/%d.png"

.field public static final DEBUG_VERBOSE:Z = false

.field public static final TAG:Ljava/lang/String; = "NetUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeBankIconUrl(J)Ljava/lang/String;
    .locals 4
    .parameter "bankId"

    .prologue
    .line 77
    const-string v0, "http://lbs.51zhangdan.net:88/images/bank/%d.png"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "url"

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 95
    .local v2, conn:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 97
    .local v4, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 98
    .local v5, urll:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 99
    const/16 v6, 0x3e8

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 100
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 101
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 102
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 108
    .end local v5           #urll:Ljava/net/URL;
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v3

    .line 104
    .local v3, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v6
.end method

.method public static getResponseReader(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 6
    .parameter "reqUrl"

    .prologue
    .line 63
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 64
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 65
    .local v0, conn:Ljava/net/URLConnection;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 67
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0           #conn:Ljava/net/URLConnection;
    .end local v2           #url:Ljava/net/URL;
    :goto_0
    return-object v3

    .line 68
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getResponseReader(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/io/BufferedReader;
    .locals 6
    .parameter "reqUrl"
    .parameter "request"

    .prologue
    .line 40
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 41
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 42
    .local v0, conn:Ljava/net/URLConnection;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 43
    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v0, v3, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 46
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0           #conn:Ljava/net/URLConnection;
    .end local v2           #url:Ljava/net/URL;
    :goto_0
    return-object v3

    .line 47
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isConnectionFast(II)Z
    .locals 2
    .parameter "type"
    .parameter "subType"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 112
    if-ne p0, v0, :cond_0

    .line 156
    :goto_0
    :pswitch_0
    return v0

    .line 114
    :cond_0
    if-nez p0, :cond_1

    .line 115
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 153
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 117
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 119
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 121
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 127
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 147
    goto :goto_0

    :cond_1
    move v0, v1

    .line 156
    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 81
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 83
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 84
    const/4 v1, 0x0

    .line 86
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    goto :goto_0
.end method
