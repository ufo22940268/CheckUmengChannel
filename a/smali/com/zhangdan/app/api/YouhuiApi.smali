.class public Lcom/zhangdan/app/api/YouhuiApi;
.super Ljava/lang/Object;
.source "YouhuiApi.java"


# static fields
.field private static final URL_DISCOUNT:Ljava/lang/String; = "http://yhd.51zhangdan.com/search/discount.do"

.field private static final URL_SEARCH:Ljava/lang/String; = "http://yhd.51zhangdan.com/search/search.htm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseDiscountJson(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/DiscountResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 102
    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v6, v9

    .line 131
    :cond_0
    :goto_0
    return-object v6

    .line 105
    :cond_1
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    .local v7, obj:Lorg/json/JSONObject;
    const-string v10, "code"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 107
    .local v1, code:I
    if-nez v1, :cond_6

    .line 108
    const-string v10, "result"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 109
    const-string v10, "result"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 110
    .local v8, resultObj:Lorg/json/JSONObject;
    const-string v10, "items"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 111
    .local v0, arr:Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/DiscountResult;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 113
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 114
    .local v3, discountObj:Lorg/json/JSONObject;
    new-instance v2, Lcom/zhangdan/app/data/model/http/DiscountResult;

    invoke-direct {v2}, Lcom/zhangdan/app/data/model/http/DiscountResult;-><init>()V

    .line 115
    .local v2, data:Lcom/zhangdan/app/data/model/http/DiscountResult;
    const-string v10, "id"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 116
    const-string v10, "id"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/zhangdan/app/data/model/http/DiscountResult;->setId(J)V

    .line 117
    :cond_2
    const-string v10, "input"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 118
    const-string v10, "input"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/zhangdan/app/data/model/http/DiscountResult;->setInput(Ljava/lang/String;)V

    .line 119
    :cond_3
    const-string v10, "discount"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 120
    const-string v10, "discount"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/zhangdan/app/data/model/http/DiscountResult;->setDiscount(I)V

    .line 121
    :cond_4
    const-string v10, "words"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 122
    const-string v10, "words"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/zhangdan/app/data/model/http/DiscountResult;->setWords(Ljava/lang/String;)V

    .line 123
    :cond_5
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 128
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #code:I
    .end local v2           #data:Lcom/zhangdan/app/data/model/http/DiscountResult;
    .end local v3           #discountObj:Lorg/json/JSONObject;
    .end local v5           #i:I
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/DiscountResult;>;"
    .end local v7           #obj:Lorg/json/JSONObject;
    .end local v8           #resultObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 129
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .end local v4           #e:Lorg/json/JSONException;
    :cond_6
    move-object v6, v9

    .line 131
    goto/16 :goto_0
.end method

.method private static parseStoreInfoJson(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/StoreInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 52
    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v5, v8

    .line 84
    :cond_0
    :goto_0
    return-object v5

    .line 55
    :cond_1
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v6, obj:Lorg/json/JSONObject;
    const-string v9, "code"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 57
    .local v1, code:I
    if-nez v1, :cond_8

    .line 58
    const-string v9, "result"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 59
    const-string v9, "result"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 60
    .local v0, arr:Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/StoreInfo;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 62
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 63
    .local v7, storeObj:Lorg/json/JSONObject;
    new-instance v2, Lcom/zhangdan/app/data/model/http/StoreInfo;

    invoke-direct {v2}, Lcom/zhangdan/app/data/model/http/StoreInfo;-><init>()V

    .line 64
    .local v2, data:Lcom/zhangdan/app/data/model/http/StoreInfo;
    const-string v9, "shopId"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 65
    const-string v9, "shopId"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/zhangdan/app/data/model/http/StoreInfo;->setShopId(Ljava/lang/String;)V

    .line 66
    :cond_2
    const-string v9, "brandId"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 67
    const-string v9, "brandId"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/zhangdan/app/data/model/http/StoreInfo;->setBrandId(Ljava/lang/String;)V

    .line 68
    :cond_3
    const-string v9, "shopName"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 69
    const-string v9, "shopName"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/zhangdan/app/data/model/http/StoreInfo;->setShopName(Ljava/lang/String;)V

    .line 70
    :cond_4
    const-string v9, "address"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 71
    const-string v9, "address"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/zhangdan/app/data/model/http/StoreInfo;->setAddress(Ljava/lang/String;)V

    .line 72
    :cond_5
    const-string v9, "hasDiscount"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 73
    const-string v9, "hasDiscount"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/zhangdan/app/data/model/http/StoreInfo;->setHasDiscount(I)V

    .line 74
    :cond_6
    const-string v9, "brandName"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 75
    const-string v9, "brandName"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/zhangdan/app/data/model/http/StoreInfo;->setBrandName(Ljava/lang/String;)V

    .line 76
    :cond_7
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 81
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #code:I
    .end local v2           #data:Lcom/zhangdan/app/data/model/http/StoreInfo;
    .end local v4           #i:I
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/StoreInfo;>;"
    .end local v6           #obj:Lorg/json/JSONObject;
    .end local v7           #storeObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 82
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .end local v3           #e:Lorg/json/JSONException;
    :cond_8
    move-object v5, v8

    .line 84
    goto/16 :goto_0
.end method

.method public static searchDiscount(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "jsonInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/DiscountResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const-string v2, "YouhuiApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "data"

    invoke-direct {v2, v3, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v2, "http://yhd.51zhangdan.com/search/discount.do?"

    invoke-static {v2, v0}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, resp:Ljava/lang/String;
    const-string v3, "YouhuiApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discount:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_0

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {v1}, Lcom/zhangdan/app/api/YouhuiApi;->parseDiscountJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    move-object v2, v1

    .line 97
    goto :goto_0
.end method

.method public static searchStore(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "city"
    .parameter "keyword"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/StoreInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 41
    :cond_0
    const/4 v3, 0x0

    .line 48
    :goto_0
    return-object v3

    .line 42
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "city"

    invoke-direct {v3, v4, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "input"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "http://yhd.51zhangdan.com/search/search.htm"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, url:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, resp:Ljava/lang/String;
    const-string v4, "YouhuiApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchStore"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "null"

    :goto_1
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {v1}, Lcom/zhangdan/app/api/YouhuiApi;->parseStoreInfoJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 47
    goto :goto_1
.end method
