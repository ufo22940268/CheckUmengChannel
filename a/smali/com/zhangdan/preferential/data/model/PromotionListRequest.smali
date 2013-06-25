.class public Lcom/zhangdan/preferential/data/model/PromotionListRequest;
.super Ljava/lang/Object;
.source "PromotionListRequest.java"

# interfaces
.implements Lcom/zhangdan/preferential/data/model/Request;


# instance fields
.field private mCity:Ljava/lang/String;

.field private mIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "city"
    .parameter "page"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/zhangdan/preferential/data/model/PromotionListRequest;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "city"
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/zhangdan/preferential/data/model/PromotionListRequest;->mIdList:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lcom/zhangdan/preferential/data/model/PromotionListRequest;->mCity:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/zhangdan/preferential/data/model/PromotionListRequest;->mPage:I

    .line 37
    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 9

    .prologue
    .line 41
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v6, root:Lorg/json/JSONObject;
    const-string v7, "sn"

    invoke-static {}, Lcom/zhangdan/preferential/utils/CommonMethod;->getSn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v7, "cmd"

    const/16 v8, 0xc81

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .local v5, request:Lorg/json/JSONObject;
    const-string v7, "pageNo"

    iget v8, p0, Lcom/zhangdan/preferential/data/model/PromotionListRequest;->mPage:I

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 49
    .local v4, ids:Lorg/json/JSONArray;
    iget-object v7, p0, Lcom/zhangdan/preferential/data/model/PromotionListRequest;->mIdList:Ljava/util/List;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/zhangdan/preferential/data/model/PromotionListRequest;->mIdList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_1

    .line 50
    iget-object v7, p0, Lcom/zhangdan/preferential/data/model/PromotionListRequest;->mIdList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 51
    .local v2, id:J
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #id:J
    .end local v4           #ids:Lorg/json/JSONArray;
    .end local v5           #request:Lorg/json/JSONObject;
    .end local v6           #root:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    const/4 v6, 0x0

    .end local v0           #e:Lorg/json/JSONException;
    :goto_1
    return-object v6

    .line 53
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #ids:Lorg/json/JSONArray;
    .restart local v5       #request:Lorg/json/JSONObject;
    .restart local v6       #root:Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v7, "bankIds"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v7, "city"

    iget-object v8, p0, Lcom/zhangdan/preferential/data/model/PromotionListRequest;->mCity:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v7, "request"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
