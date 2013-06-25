.class public Lcom/zhangdan/app/api/GetWeatherApi;
.super Ljava/lang/Object;
.source "GetWeatherApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMultiWeather(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/WeatherRequest;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/WeatherInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, weatherRequestList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/WeatherRequest;>;"
    const-string v5, "http://www.51zhangdan.com/weather/gets.ashx?fr=android"

    .line 54
    .local v5, url:Ljava/lang/String;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 55
    .local v0, array:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 56
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zhangdan/app/data/model/WeatherRequest;

    .line 57
    .local v6, weather:Lcom/zhangdan/app/data/model/WeatherRequest;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 59
    .local v3, object:Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "sentence"

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/WeatherRequest;->getSentence()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v7, "city"

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/WeatherRequest;->getCity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v7, "date"

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/WeatherRequest;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v7, "id"

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/WeatherRequest;->getId()J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 63
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 68
    .end local v1           #e:Lorg/json/JSONException;
    .end local v3           #object:Lorg/json/JSONObject;
    .end local v6           #weather:Lcom/zhangdan/app/data/model/WeatherRequest;
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/zhangdan/app/http/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, resp:Ljava/lang/String;
    const-string v8, "GetWeatherApi"

    if-nez v4, :cond_1

    const-string v7, "multi weather null "

    :goto_2
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-nez v4, :cond_2

    .line 71
    const/4 v7, 0x0

    .line 72
    :goto_3
    return-object v7

    :cond_1
    move-object v7, v4

    .line 69
    goto :goto_2

    .line 72
    :cond_2
    invoke-static {v4}, Lcom/zhangdan/app/api/GetWeatherApi;->parseMultiWeather(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    goto :goto_3
.end method

.method public static getWeather(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "sentence"
    .parameter "city"
    .parameter "date"

    .prologue
    .line 36
    const-string v2, "http://www.51zhangdan.com/weather/get.ashx?"

    .line 37
    .local v2, url:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "st"

    invoke-direct {v3, v4, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "ct"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "dt"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {v2, v0}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, resp:Ljava/lang/String;
    const-string v4, "GetWeatherApi"

    if-nez v1, :cond_0

    const-string v3, "weather null "

    :goto_0
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-object v1

    :cond_0
    move-object v3, v1

    .line 42
    goto :goto_0
.end method

.method public static parseMultiWeather(Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/WeatherInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v13, weatherList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/WeatherInfo;>;"
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    .local v9, object:Lorg/json/JSONObject;
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 80
    .local v11, status:I
    if-nez v11, :cond_1

    .line 81
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 82
    .local v12, tempObject:Lorg/json/JSONObject;
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 83
    .local v5, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 84
    new-instance v4, Lcom/zhangdan/app/data/model/WeatherInfo;

    invoke-direct {v4}, Lcom/zhangdan/app/data/model/WeatherInfo;-><init>()V

    .line 85
    .local v4, info:Lcom/zhangdan/app/data/model/WeatherInfo;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 86
    .local v8, ob:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Lcom/zhangdan/app/data/model/WeatherInfo;->setId(J)V

    .line 87
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 90
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 91
    .local v14, weatherObject:Lorg/json/JSONObject;
    const-string v17, "uTemperature"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, maxTemperature:Ljava/lang/String;
    const-string v17, "bTemperature"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, minTemperature:Ljava/lang/String;
    const-string v17, "situation"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 94
    .local v10, situation:Ljava/lang/String;
    const-string v17, "windDirection"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 95
    .local v15, windDirection:Ljava/lang/String;
    const-string v17, "windForce"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 96
    .local v16, windForce:Ljava/lang/String;
    const-string v17, "image"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, image:Ljava/lang/String;
    invoke-virtual {v4, v6}, Lcom/zhangdan/app/data/model/WeatherInfo;->setMaxTemperature(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/WeatherInfo;->setMinTemperature(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v4, v10}, Lcom/zhangdan/app/data/model/WeatherInfo;->setSituation(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v4, v15}, Lcom/zhangdan/app/data/model/WeatherInfo;->setWindDirection(Ljava/lang/String;)V

    .line 101
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/data/model/WeatherInfo;->setWindForce(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4, v3}, Lcom/zhangdan/app/data/model/WeatherInfo;->setImage(Ljava/lang/String;)V

    .line 103
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v3           #image:Ljava/lang/String;
    .end local v4           #info:Lcom/zhangdan/app/data/model/WeatherInfo;
    .end local v5           #iterator:Ljava/util/Iterator;
    .end local v6           #maxTemperature:Ljava/lang/String;
    .end local v7           #minTemperature:Ljava/lang/String;
    .end local v8           #ob:Ljava/lang/String;
    .end local v9           #object:Lorg/json/JSONObject;
    .end local v10           #situation:Ljava/lang/String;
    .end local v11           #status:I
    .end local v12           #tempObject:Lorg/json/JSONObject;
    .end local v14           #weatherObject:Lorg/json/JSONObject;
    .end local v15           #windDirection:Ljava/lang/String;
    .end local v16           #windForce:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 107
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 109
    .end local v2           #e:Lorg/json/JSONException;
    :cond_1
    return-object v13
.end method
