.class public Lcom/zhangdan/preferential/data/model/KeywordRequest;
.super Ljava/lang/Object;
.source "KeywordRequest.java"

# interfaces
.implements Lcom/zhangdan/preferential/data/model/Request;


# instance fields
.field private mKeyword:Ljava/lang/String;

.field private mPos:Lcom/zhangdan/preferential/data/model/Position;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/zhangdan/preferential/data/model/Position;)V
    .locals 0
    .parameter "keyword"
    .parameter "pos"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/zhangdan/preferential/data/model/KeywordRequest;->mKeyword:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/zhangdan/preferential/data/model/KeywordRequest;->mPos:Lcom/zhangdan/preferential/data/model/Position;

    .line 31
    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 35
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .local v2, root:Lorg/json/JSONObject;
    const-string v3, "cmd"

    const/16 v4, 0x835

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/KeywordRequest;->mPos:Lcom/zhangdan/preferential/data/model/Position;

    invoke-virtual {v3}, Lcom/zhangdan/preferential/data/model/Position;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 39
    .local v1, request:Lorg/json/JSONObject;
    const-string v3, "keyword"

    iget-object v4, p0, Lcom/zhangdan/preferential/data/model/KeywordRequest;->mKeyword:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v3, "sn"

    invoke-static {}, Lcom/zhangdan/preferential/utils/CommonMethod;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v3, "request"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1           #request:Lorg/json/JSONObject;
    .end local v2           #root:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 46
    const/4 v2, 0x0

    goto :goto_0
.end method
