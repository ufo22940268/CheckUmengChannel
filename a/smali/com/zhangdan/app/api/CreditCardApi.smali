.class public Lcom/zhangdan/app/api/CreditCardApi;
.super Ljava/lang/Object;
.source "CreditCardApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCreditCardJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "userId"
    .parameter "token"
    .parameter "lastModifyTime"

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, json:Ljava/lang/String;
    :try_start_0
    const-string v3, "http://www.51zhangdan.com/service/bank/get_user_card.ashx?"

    .line 38
    .local v3, url:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "token"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "last_modify_time"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "page_no"

    const-string v6, "1"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "page_size"

    const-string v6, "500"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "jv"

    const-string v6, "1.22"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "_"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {v3, v2}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 51
    .end local v2           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseCreditCard(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/CreditCardList;
    .locals 7
    .parameter "json"

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, creditCardList:Lcom/zhangdan/app/data/model/http/CreditCardList;
    :try_start_0
    new-instance v1, Lcom/zhangdan/app/data/model/http/CreditCardList;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/CreditCardList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0           #creditCardList:Lcom/zhangdan/app/data/model/http/CreditCardList;
    .local v1, creditCardList:Lcom/zhangdan/app/data/model/http/CreditCardList;
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .local v5, jsonObj:Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/CreditCardList;->setCode(I)V

    .line 67
    :cond_0
    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/CreditCardList;->setMsg(Ljava/lang/String;)V

    .line 70
    :cond_1
    const-string v6, "time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 71
    const-string v6, "time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/CreditCardList;->setTime(Ljava/lang/String;)V

    .line 73
    :cond_2
    const-string v6, "total_results"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 74
    const-string v6, "total_results"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/CreditCardList;->setTotalResults(I)V

    .line 76
    :cond_3
    const-string v6, "UserCards"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 77
    const-string v6, "UserCards"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 78
    .local v4, jsonArray:Lorg/json/JSONArray;
    invoke-static {v4}, Lcom/zhangdan/app/api/CreditCardApi;->parseCreditCard(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 79
    .local v2, creditCards:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/CreditCard;>;"
    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/http/CreditCardList;->setCreditCards(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2           #creditCards:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/CreditCard;>;"
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    :cond_4
    move-object v0, v1

    .line 84
    .end local v1           #creditCardList:Lcom/zhangdan/app/data/model/http/CreditCardList;
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    .restart local v0       #creditCardList:Lcom/zhangdan/app/data/model/http/CreditCardList;
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v3

    .line 82
    .local v3, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v0           #creditCardList:Lcom/zhangdan/app/data/model/http/CreditCardList;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #creditCardList:Lcom/zhangdan/app/data/model/http/CreditCardList;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1           #creditCardList:Lcom/zhangdan/app/data/model/http/CreditCardList;
    .restart local v0       #creditCardList:Lcom/zhangdan/app/data/model/http/CreditCardList;
    goto :goto_1
.end method

.method private static parseCreditCard(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .parameter "creditArr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/CreditCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 97
    .local v1, creditCards:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/CreditCard;>;"
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1           #creditCards:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/CreditCard;>;"
    .local v2, creditCards:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/CreditCard;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_c

    .line 99
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 100
    .local v5, jsonObj:Lorg/json/JSONObject;
    new-instance v0, Lcom/zhangdan/app/data/model/http/CreditCard;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/http/CreditCard;-><init>()V

    .line 101
    .local v0, creditCard:Lcom/zhangdan/app/data/model/http/CreditCard;
    const-string v6, "auto_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 102
    const-string v6, "auto_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/zhangdan/app/data/model/http/CreditCard;->setAutoId(J)V

    .line 104
    :cond_0
    const-string v6, "user_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 105
    const-string v6, "user_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/CreditCard;->setUserId(I)V

    .line 107
    :cond_1
    const-string v6, "ub_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 108
    const-string v6, "ub_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/CreditCard;->setUbId(Ljava/lang/String;)V

    .line 110
    :cond_2
    const-string v6, "bank_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 111
    const-string v6, "bank_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/CreditCard;->setBankId(I)V

    .line 113
    :cond_3
    const-string v6, "card_num"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 114
    const-string v6, "card_num"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/CreditCard;->setCardNum(I)V

    .line 116
    :cond_4
    const-string v6, "status"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 117
    const-string v6, "status"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/CreditCard;->setStatus(Ljava/lang/String;)V

    .line 119
    :cond_5
    const-string v6, "card_fee"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 120
    const-string v6, "card_fee"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/CreditCard;->setCarFee(Ljava/lang/String;)V

    .line 122
    :cond_6
    const-string v6, "fee_month"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 123
    const-string v6, "fee_month"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/CreditCard;->setFeeMonth(Ljava/lang/String;)V

    .line 125
    :cond_7
    const-string v6, "name_on_card"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 126
    const-string v6, "name_on_card"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/CreditCard;->setNameOnCard(Ljava/lang/String;)V

    .line 128
    :cond_8
    const-string v6, "full_card_num"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 129
    const-string v6, "full_card_num"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/CreditCard;->setFullCardNum(Ljava/lang/String;)V

    .line 132
    :cond_9
    const-string v6, "id_no"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 133
    const-string v6, "id_no"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/CreditCard;->setIdNo(Ljava/lang/String;)V

    .line 135
    :cond_a
    const-string v6, "truename"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 136
    const-string v6, "truename"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/CreditCard;->setTrueName(Ljava/lang/String;)V

    .line 138
    :cond_b
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .end local v0           #creditCard:Lcom/zhangdan/app/data/model/http/CreditCard;
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    :cond_c
    move-object v1, v2

    .line 145
    .end local v2           #creditCards:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/CreditCard;>;"
    .end local v4           #i:I
    .restart local v1       #creditCards:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/CreditCard;>;"
    :goto_1
    return-object v1

    .line 141
    :catch_0
    move-exception v3

    .line 142
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 141
    .end local v1           #creditCards:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/CreditCard;>;"
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #creditCards:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/CreditCard;>;"
    .restart local v4       #i:I
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #creditCards:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/CreditCard;>;"
    .restart local v1       #creditCards:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/CreditCard;>;"
    goto :goto_2
.end method
