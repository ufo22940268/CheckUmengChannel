.class public Lcom/zhangdan/preferential/data/model/BankListRequest;
.super Ljava/lang/Object;
.source "BankListRequest.java"

# interfaces
.implements Lcom/zhangdan/preferential/data/model/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 27
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .local v2, root:Lorg/json/JSONObject;
    const-string v3, "cmd"

    const/16 v4, 0x44f

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .local v1, request:Lorg/json/JSONObject;
    const-string v3, "name"

    const-string v4, "bank"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v3, "request"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v3, "sn"

    invoke-static {}, Lcom/zhangdan/preferential/utils/CommonMethod;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v1           #request:Lorg/json/JSONObject;
    .end local v2           #root:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 38
    const/4 v2, 0x0

    goto :goto_0
.end method
