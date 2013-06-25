.class public Lcom/zhangdan/app/http/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v0, 0x0

    .line 24
    .local v0, body:Ljava/lang/String;
    :try_start_0
    const-string v3, ""

    .line 25
    .local v3, paramsStr:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 26
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v6, "UTF-8"

    invoke-direct {v5, p1, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 27
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    .local v4, webAddr:Ljava/lang/String;
    const-string v5, "HTTP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v2, Lcom/zhangdan/app/http/BaseHttpClient;

    invoke-direct {v2, v4}, Lcom/zhangdan/app/http/BaseHttpClient;-><init>(Ljava/lang/String;)V

    .line 30
    .local v2, httpClient:Lcom/zhangdan/app/http/BaseHttpClient;
    invoke-virtual {v2}, Lcom/zhangdan/app/http/BaseHttpClient;->doGet()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 34
    .end local v2           #httpClient:Lcom/zhangdan/app/http/BaseHttpClient;
    .end local v3           #paramsStr:Ljava/lang/String;
    .end local v4           #webAddr:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, body:Ljava/lang/String;
    :try_start_0
    const-string v3, "HTTP"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v2, Lcom/zhangdan/app/http/BaseHttpClient;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/http/BaseHttpClient;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, httpClient:Lcom/zhangdan/app/http/BaseHttpClient;
    invoke-virtual {v2, p1}, Lcom/zhangdan/app/http/BaseHttpClient;->doPost(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    .end local v2           #httpClient:Lcom/zhangdan/app/http/BaseHttpClient;
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static post(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v0, 0x0

    .line 40
    .local v0, body:Ljava/lang/String;
    :try_start_0
    const-string v3, "HTTP"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v2, Lcom/zhangdan/app/http/BaseHttpClient;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/http/BaseHttpClient;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, httpClient:Lcom/zhangdan/app/http/BaseHttpClient;
    invoke-virtual {v2, p1}, Lcom/zhangdan/app/http/BaseHttpClient;->doPost(Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    .end local v2           #httpClient:Lcom/zhangdan/app/http/BaseHttpClient;
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
