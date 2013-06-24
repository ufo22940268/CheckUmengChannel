.class public Lcom/zhangdan/app/api/ConsumeCategoryAPI;
.super Ljava/lang/Object;
.source "ConsumeCategoryAPI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComsumeCategoryJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "userId"
    .parameter "token"
    .parameter "lastModifyTime"

    .prologue
    .line 34
    const-string v0, ""

    .line 35
    .local v0, json:Ljava/lang/String;
    const-string v2, "http://www.51zhangdan.com/service/bill/get_shopping_category.ashx?"

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
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "jv"

    const-string v5, "1.22"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "_"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {v2, v1}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 46
    return-object v0
.end method

.method public static parseCategoryInfos(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .parameter "categoryArr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v1, categoryInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Category;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 97
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 98
    .local v4, jsonObj:Lorg/json/JSONObject;
    new-instance v0, Lcom/zhangdan/app/data/model/http/Category;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/http/Category;-><init>()V

    .line 99
    .local v0, categoryInfo:Lcom/zhangdan/app/data/model/http/Category;
    const-string v5, "category_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    const-string v5, "category_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/zhangdan/app/data/model/http/Category;->setCategoryId(I)V

    .line 102
    :cond_0
    const-string v5, "category_name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    const-string v5, "category_name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/zhangdan/app/data/model/http/Category;->setCategotyName(Ljava/lang/String;)V

    .line 106
    :cond_1
    const-string v5, "is_delete"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    const-string v5, "is_delete"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/zhangdan/app/data/model/http/Category;->setIsdelete(I)V

    .line 109
    :cond_2
    const-string v5, "parent_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 110
    const-string v5, "parent_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/zhangdan/app/data/model/http/Category;->setParntId(I)V

    .line 112
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .end local v0           #categoryInfo:Lcom/zhangdan/app/data/model/http/Category;
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 116
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    return-object v1
.end method

.method public static parseCategoryList(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/CategoryList;
    .locals 5
    .parameter "json"

    .prologue
    .line 57
    new-instance v0, Lcom/zhangdan/app/data/model/http/CategoryList;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/http/CategoryList;-><init>()V

    .line 59
    .local v0, categoryListInfo:Lcom/zhangdan/app/data/model/http/CategoryList;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v3, jsonObj:Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/http/CategoryList;->setCode(I)V

    .line 63
    :cond_0
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/http/CategoryList;->setMsg(Ljava/lang/String;)V

    .line 66
    :cond_1
    const-string v4, "time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    const-string v4, "time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/http/CategoryList;->setTime(Ljava/lang/String;)V

    .line 69
    :cond_2
    const-string v4, "total_results"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 70
    const-string v4, "total_results"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/http/CategoryList;->setTotalResult(I)V

    .line 72
    :cond_3
    const-string v4, "ShoppingCategorys"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 73
    const-string v4, "ShoppingCategorys"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 74
    .local v2, jsonArray:Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/zhangdan/app/api/ConsumeCategoryAPI;->parseCategoryInfos(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/http/CategoryList;->setCategoryInfos(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    :cond_4
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
