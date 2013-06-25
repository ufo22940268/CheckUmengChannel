.class public Lcom/tencent/weibo/oauthv2/OAuthV2Request;
.super Ljava/lang/Object;
.source "OAuthV2Request.java"

# interfaces
.implements Lcom/tencent/weibo/api/RequestAPI;


# instance fields
.field private qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/tencent/weibo/utils/QHttpClient;

    invoke-direct {v0}, Lcom/tencent/weibo/utils/QHttpClient;-><init>()V

    iput-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/tencent/weibo/utils/QHttpClient;)V
    .locals 0
    .parameter "qHttpClient"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    .line 31
    return-void
.end method

.method private removeExtraClientip(Ljava/util/List;Lcom/tencent/weibo/oauthv2/OAuthV2;)V
    .locals 6
    .parameter
    .parameter "oAuthV2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/tencent/weibo/oauthv2/OAuthV2;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, paramsList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v1, 0x0

    .line 51
    .local v1, i:I
    const/4 v0, 0x0

    .line 52
    .local v0, found:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 63
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 64
    :cond_0
    return-void

    .line 52
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 53
    .local v2, nvp:Lorg/apache/http/NameValuePair;
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "clientip"

    if-eq v4, v5, :cond_2

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_2
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "127.0.0.1"

    if-eq v3, v4, :cond_3

    .line 57
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setClientIP(Ljava/lang/String;)V

    .line 59
    :cond_3
    const/4 v0, 0x1

    .line 60
    goto :goto_1
.end method


# virtual methods
.method public getResource(Ljava/lang/String;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter
    .parameter "oAuth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/tencent/weibo/beans/OAuth;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    .local p2, paramsList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v2, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    if-nez v2, :cond_0

    .line 37
    new-instance v2, Lcom/tencent/weibo/exceptions/OAuthClientException;

    const-string v3, "1001"

    invoke-direct {v2, v3}, Lcom/tencent/weibo/exceptions/OAuthClientException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p3

    .line 39
    check-cast v0, Lcom/tencent/weibo/oauthv2/OAuthV2;

    .line 40
    .local v0, oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;
    invoke-direct {p0, p2, v0}, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->removeExtraClientip(Ljava/util/List;Lcom/tencent/weibo/oauthv2/OAuthV2;)V

    .line 42
    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getTokenParamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-static {p2}, Lcom/tencent/weibo/utils/QStrOperate;->getQueryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, queryString:Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    invoke-virtual {v2, p1, v1}, Lcom/tencent/weibo/utils/QHttpClient;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getqHttpClient()Lcom/tencent/weibo/utils/QHttpClient;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    return-object v0
.end method

.method public postContent(Ljava/lang/String;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter
    .parameter "oAuth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/tencent/weibo/beans/OAuth;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    .local p2, paramsList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v2, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    if-nez v2, :cond_0

    .line 70
    new-instance v2, Lcom/tencent/weibo/exceptions/OAuthClientException;

    const-string v3, "1001"

    invoke-direct {v2, v3}, Lcom/tencent/weibo/exceptions/OAuthClientException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p3

    .line 72
    check-cast v0, Lcom/tencent/weibo/oauthv2/OAuthV2;

    .line 73
    .local v0, oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;
    invoke-direct {p0, p2, v0}, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->removeExtraClientip(Ljava/util/List;Lcom/tencent/weibo/oauthv2/OAuthV2;)V

    .line 75
    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getTokenParamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-static {p2}, Lcom/tencent/weibo/utils/QStrOperate;->getQueryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, queryString:Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    invoke-virtual {v2, p1, v1}, Lcom/tencent/weibo/utils/QHttpClient;->httpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public postFile(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter
    .parameter
    .parameter "oAuth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/tencent/weibo/beans/OAuth;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    .local p2, paramsList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, files:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v2, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    if-nez v2, :cond_0

    .line 90
    new-instance v2, Lcom/tencent/weibo/exceptions/OAuthClientException;

    const-string v3, "1001"

    invoke-direct {v2, v3}, Lcom/tencent/weibo/exceptions/OAuthClientException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p4

    .line 92
    check-cast v0, Lcom/tencent/weibo/oauthv2/OAuthV2;

    .line 93
    .local v0, oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;
    invoke-direct {p0, p2, v0}, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->removeExtraClientip(Ljava/util/List;Lcom/tencent/weibo/oauthv2/OAuthV2;)V

    .line 95
    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getTokenParamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    invoke-static {p2}, Lcom/tencent/weibo/utils/QStrOperate;->getQueryString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, queryString:Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    invoke-virtual {v2, p1, v1, p3}, Lcom/tencent/weibo/utils/QHttpClient;->httpPostWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setqHttpClient(Lcom/tencent/weibo/utils/QHttpClient;)V
    .locals 0
    .parameter "qHttpClient"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    .line 117
    return-void
.end method

.method public shutdownConnection()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/weibo/oauthv2/OAuthV2Request;->qHttpClient:Lcom/tencent/weibo/utils/QHttpClient;

    invoke-virtual {v0}, Lcom/tencent/weibo/utils/QHttpClient;->shutdownConnection()V

    .line 109
    return-void
.end method
