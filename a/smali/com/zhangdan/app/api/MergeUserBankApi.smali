.class public Lcom/zhangdan/app/api/MergeUserBankApi;
.super Ljava/lang/Object;
.source "MergeUserBankApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mergeUserBank(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;
    .locals 6
    .parameter "token"
    .parameter "userId"
    .parameter "ubId"
    .parameter "ubId1"

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action"

    const-string v5, "card_merge"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    invoke-direct {v3, v4, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_id"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "ub_id"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "ub_id1"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "http://www.51zhangdan.com"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "/service/bill/set.ashx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, url:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, resp:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->parseJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;

    move-result-object v3

    return-object v3
.end method