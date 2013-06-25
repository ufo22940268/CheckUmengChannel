.class public Lcom/zhangdan/preferential/data/model/RequestJson;
.super Ljava/lang/Object;
.source "RequestJson.java"

# interfaces
.implements Lcom/zhangdan/preferential/data/model/Request;


# static fields
.field public static final CMD_BANK:I = 0xc81

.field public static final CMD_BANK_LIST:I = 0x44f

.field public static final CMD_MENU_TAGS:I = 0x44d

.field public static final CMD_QUERY:I = 0x835

.field public static final CMD_TAGS:I = 0x44e


# instance fields
.field public cmd:I

.field public pageNo:I

.field public pos:Lcom/zhangdan/preferential/data/model/Position;

.field public typeId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/data/model/RequestJson;->pageNo:I

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/zhangdan/preferential/data/model/RequestJson;->typeId:I

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 23
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .local v1, obj:Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .local v2, objInner:Lorg/json/JSONObject;
    const-string v4, "cmd"

    const/16 v5, 0x835

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    const-string v4, "sn"

    invoke-static {}, Lcom/zhangdan/preferential/utils/CommonMethod;->getSn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    iget-object v4, p0, Lcom/zhangdan/preferential/data/model/RequestJson;->pos:Lcom/zhangdan/preferential/data/model/Position;

    invoke-virtual {v4}, Lcom/zhangdan/preferential/data/model/Position;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    .line 29
    .local v3, request:Lorg/json/JSONObject;
    const-string v4, "pageNo"

    iget v5, p0, Lcom/zhangdan/preferential/data/model/RequestJson;->pageNo:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    iget v4, p0, Lcom/zhangdan/preferential/data/model/RequestJson;->typeId:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 31
    const-string v4, "typeId"

    iget v5, p0, Lcom/zhangdan/preferential/data/model/RequestJson;->typeId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    :cond_0
    const-string v4, "request"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1           #obj:Lorg/json/JSONObject;
    .end local v2           #objInner:Lorg/json/JSONObject;
    .end local v3           #request:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 40
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/zhangdan/preferential/data/model/RequestJson;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
