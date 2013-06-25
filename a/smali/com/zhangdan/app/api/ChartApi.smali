.class public Lcom/zhangdan/app/api/ChartApi;
.super Ljava/lang/Object;
.source "ChartApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserStatisticData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ChartList;
    .locals 6
    .parameter "userId"
    .parameter "token"
    .parameter "lastModifyTime"

    .prologue
    .line 35
    const-string v2, "http://www.51zhangdan.com/service/chart/get_user_statis_data.ashx?"

    .line 36
    .local v2, url:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_id"

    invoke-direct {v3, v4, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "last_modify_time"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "page_no"

    const-string v5, "1"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "page_size"

    const-string v5, "500"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {v2, v1}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, json:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 44
    const/4 v3, 0x0

    .line 46
    :goto_0
    return-object v3

    .line 45
    :cond_0
    const-string v3, "ChartApi"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {v0}, Lcom/zhangdan/app/api/ChartApi;->parseJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ChartList;

    move-result-object v3

    goto :goto_0
.end method

.method private static parseJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ChartList;
    .locals 14
    .parameter "json"

    .prologue
    .line 53
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v6, jsonObj:Lorg/json/JSONObject;
    new-instance v3, Lcom/zhangdan/app/data/model/http/ChartList;

    invoke-direct {v3}, Lcom/zhangdan/app/data/model/http/ChartList;-><init>()V

    .line 55
    .local v3, data:Lcom/zhangdan/app/data/model/http/ChartList;
    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/ChartList;->parseComm(Lorg/json/JSONObject;)V

    .line 56
    const-string v13, "time"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 57
    const-string v13, "time"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/zhangdan/app/data/model/http/ChartList;->setTime(Ljava/lang/String;)V

    .line 59
    :cond_0
    const-string v13, "StatisDatas"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 60
    const-string v13, "StatisDatas"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 61
    .local v0, arr:Lorg/json/JSONArray;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 62
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ChartInfo;>;"
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 64
    .local v7, len:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_1

    .line 65
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 66
    .local v2, chartObj:Lorg/json/JSONObject;
    new-instance v1, Lcom/zhangdan/app/data/model/http/ChartInfo;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/ChartInfo;-><init>()V

    .line 67
    .local v1, chartInfo:Lcom/zhangdan/app/data/model/http/ChartInfo;
    const-string v13, "user_id"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 68
    .local v9, userId:J
    const-string v13, "year"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 69
    .local v12, year:I
    const-string v13, "val"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 70
    .local v11, value:Ljava/lang/String;
    invoke-virtual {v1, v9, v10}, Lcom/zhangdan/app/data/model/http/ChartInfo;->setUserId(J)V

    .line 71
    invoke-virtual {v1, v12}, Lcom/zhangdan/app/data/model/http/ChartInfo;->setYear(I)V

    .line 72
    invoke-virtual {v1, v11}, Lcom/zhangdan/app/data/model/http/ChartInfo;->setValue(Ljava/lang/String;)V

    .line 73
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 75
    .end local v1           #chartInfo:Lcom/zhangdan/app/data/model/http/ChartInfo;
    .end local v2           #chartObj:Lorg/json/JSONObject;
    .end local v9           #userId:J
    .end local v11           #value:Ljava/lang/String;
    .end local v12           #year:I
    :cond_1
    invoke-virtual {v3, v8}, Lcom/zhangdan/app/data/model/http/ChartList;->setChartList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v3           #data:Lcom/zhangdan/app/data/model/http/ChartList;
    .end local v5           #i:I
    .end local v6           #jsonObj:Lorg/json/JSONObject;
    .end local v7           #len:I
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ChartInfo;>;"
    :cond_2
    :goto_1
    return-object v3

    .line 79
    :catch_0
    move-exception v4

    .line 80
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 82
    const/4 v3, 0x0

    goto :goto_1
.end method
