.class public Lcom/zhangdan/app/api/BillStateApi;
.super Ljava/lang/Object;
.source "BillStateApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBillStateInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BillStageList;
    .locals 5
    .parameter "token"
    .parameter "userId"
    .parameter "lastModifyTime"

    .prologue
    .line 36
    const-string v2, "http://www.51zhangdan.com/service/stage/get_list.ashx?"

    .line 37
    .local v2, url:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    invoke-direct {v3, v4, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_id"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "last_modify_time"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {v2, v1}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, json:Ljava/lang/String;
    const-string v4, "BillStateApi"

    if-nez v0, :cond_0

    const-string v3, "null"

    :goto_0
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {v0}, Lcom/zhangdan/app/api/BillStateApi;->parseJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BillStageList;

    move-result-object v3

    return-object v3

    :cond_0
    move-object v3, v0

    .line 42
    goto :goto_0
.end method

.method private static parseJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BillStageList;
    .locals 11
    .parameter "json"

    .prologue
    const/4 v8, 0x0

    .line 53
    if-nez p0, :cond_1

    move-object v1, v8

    .line 90
    :cond_0
    :goto_0
    return-object v1

    .line 56
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v4, jsonObj:Lorg/json/JSONObject;
    new-instance v1, Lcom/zhangdan/app/data/model/http/BillStageList;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/BillStageList;-><init>()V

    .line 58
    .local v1, data:Lcom/zhangdan/app/data/model/http/BillStageList;
    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/http/BillStageList;->parseComm(Lorg/json/JSONObject;)V

    .line 60
    const-string v9, "time"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 61
    const-string v9, "time"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/zhangdan/app/data/model/http/BillStageList;->setTime(Ljava/lang/String;)V

    .line 62
    :cond_2
    const-string v9, "Stages"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 63
    const-string v9, "Stages"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 64
    .local v0, arr:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 65
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BillStages;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_9

    .line 67
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 68
    .local v6, obj:Lorg/json/JSONObject;
    new-instance v7, Lcom/zhangdan/app/data/model/http/BillStages;

    invoke-direct {v7}, Lcom/zhangdan/app/data/model/http/BillStages;-><init>()V

    .line 69
    .local v7, stage:Lcom/zhangdan/app/data/model/http/BillStages;
    const-string v9, "user_id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 70
    const-string v9, "user_id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Lcom/zhangdan/app/data/model/http/BillStages;->setUserId(J)V

    .line 71
    :cond_3
    const-string v9, "bill_id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 72
    const-string v9, "bill_id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Lcom/zhangdan/app/data/model/http/BillStages;->setBillId(J)V

    .line 73
    :cond_4
    const-string v9, "bank_id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 74
    const-string v9, "bank_id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/zhangdan/app/data/model/http/BillStages;->setBankId(I)V

    .line 75
    :cond_5
    const-string v9, "ub_id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 76
    const-string v9, "ub_id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Lcom/zhangdan/app/data/model/http/BillStages;->setUbId(J)V

    .line 77
    :cond_6
    const-string v9, "bill_date"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 78
    const-string v9, "bill_date"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/zhangdan/app/data/model/http/BillStages;->setBillDate(Ljava/lang/String;)V

    .line 79
    :cond_7
    const-string v9, "stages"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 80
    const-string v9, "stages"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/zhangdan/app/data/model/http/BillStages;->setStages(Ljava/lang/String;)V

    .line 81
    :cond_8
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 83
    .end local v6           #obj:Lorg/json/JSONObject;
    .end local v7           #stage:Lcom/zhangdan/app/data/model/http/BillStages;
    :cond_9
    invoke-virtual {v1, v5}, Lcom/zhangdan/app/data/model/http/BillStageList;->setStageList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 87
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #data:Lcom/zhangdan/app/data/model/http/BillStageList;
    .end local v3           #i:I
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BillStages;>;"
    :catch_0
    move-exception v2

    .line 88
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v8

    .line 90
    goto/16 :goto_0
.end method
