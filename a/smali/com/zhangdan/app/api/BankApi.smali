.class public Lcom/zhangdan/app/api/BankApi;
.super Ljava/lang/Object;
.source "BankApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBankListJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "userId"
    .parameter "token"
    .parameter "lastModifyTime"

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, json:Ljava/lang/String;
    const-string v2, "http://www.51zhangdan.com/service/bank/get_list.ashx?"

    .line 35
    .local v2, url:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_id"

    invoke-direct {v3, v4, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "last_modify_time"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "page_no"

    const-string v5, "1"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "page_size"

    const-string v5, "500"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "jv"

    const-string v5, "1.22"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
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

    .line 44
    invoke-static {v2, v1}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 45
    return-object v0
.end method

.method public static parseBankListInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BankList;
    .locals 8
    .parameter "json"

    .prologue
    .line 52
    const/4 v4, 0x0

    .line 53
    .local v4, jsonObj:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 55
    .local v0, bankListInfo:Lcom/zhangdan/app/data/model/http/BankList;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    .local v5, jsonObj:Lorg/json/JSONObject;
    :try_start_1
    new-instance v1, Lcom/zhangdan/app/data/model/http/BankList;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/BankList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    .end local v0           #bankListInfo:Lcom/zhangdan/app/data/model/http/BankList;
    .local v1, bankListInfo:Lcom/zhangdan/app/data/model/http/BankList;
    :try_start_2
    const-string v7, "code"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 58
    const-string v7, "code"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/zhangdan/app/data/model/http/BankList;->setCode(I)V

    .line 60
    :cond_0
    const-string v7, "msg"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 61
    const-string v7, "msg"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/zhangdan/app/data/model/http/BankList;->setMsg(Ljava/lang/String;)V

    .line 63
    :cond_1
    const-string v7, "time"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 64
    const-string v7, "time"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/zhangdan/app/data/model/http/BankList;->setTime(Ljava/lang/String;)V

    .line 66
    :cond_2
    const-string v7, "total_results"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 67
    const-string v7, "total_results"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/zhangdan/app/data/model/http/BankList;->setTotal_results(I)V

    .line 69
    :cond_3
    const-string v7, "Banks"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 70
    const-string v7, "Banks"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 71
    .local v2, banksJson:Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/zhangdan/app/api/BankApi;->parseBanks(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    .line 72
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bank;>;"
    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/BankList;->setBankInfos(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v2           #banksJson:Lorg/json/JSONArray;
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bank;>;"
    :cond_4
    move-object v0, v1

    .end local v1           #bankListInfo:Lcom/zhangdan/app/data/model/http/BankList;
    .restart local v0       #bankListInfo:Lcom/zhangdan/app/data/model/http/BankList;
    move-object v4, v5

    .line 78
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    .restart local v4       #jsonObj:Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v3

    .line 75
    .local v3, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    .restart local v5       #jsonObj:Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5           #jsonObj:Lorg/json/JSONObject;
    .restart local v4       #jsonObj:Lorg/json/JSONObject;
    goto :goto_1

    .end local v0           #bankListInfo:Lcom/zhangdan/app/data/model/http/BankList;
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    .restart local v1       #bankListInfo:Lcom/zhangdan/app/data/model/http/BankList;
    .restart local v5       #jsonObj:Lorg/json/JSONObject;
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1           #bankListInfo:Lcom/zhangdan/app/data/model/http/BankList;
    .restart local v0       #bankListInfo:Lcom/zhangdan/app/data/model/http/BankList;
    move-object v4, v5

    .end local v5           #jsonObj:Lorg/json/JSONObject;
    .restart local v4       #jsonObj:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private static parseBanks(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 18
    .parameter "arr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Bank;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 91
    .local v7, j:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bank;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 93
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 94
    .local v12, obj:Lorg/json/JSONObject;
    const-string v17, "bank_id"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 95
    .local v2, bankId:I
    const-string v17, "bank_name"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, bankName:Ljava/lang/String;
    const-string v17, "full_name"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, fullName:Ljava/lang/String;
    const-string v17, "simple_name"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 98
    .local v16, simpleName:Ljava/lang/String;
    const-string v17, "is_deleted"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 99
    .local v6, isDeleted:I
    const-string v17, "logo"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 100
    .local v9, logo:Ljava/lang/String;
    const-string v17, "long_tel"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, longTel:Ljava/lang/String;
    const-string v17, "short_tel"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 102
    .local v15, shortTel:Ljava/lang/String;
    const-string v17, "max_free_peirod"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 103
    .local v11, maxFreePeriod:I
    const-string v17, "order_index"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 104
    .local v13, orderIndex:I
    const-string v17, "point_mall"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 105
    .local v14, pointMall:Ljava/lang/String;
    new-instance v1, Lcom/zhangdan/app/data/model/http/Bank;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/Bank;-><init>()V

    .line 106
    .local v1, bank:Lcom/zhangdan/app/data/model/http/Bank;
    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/http/Bank;->setBankId(I)V

    .line 107
    invoke-virtual {v1, v3}, Lcom/zhangdan/app/data/model/http/Bank;->setBankName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/http/Bank;->setFullName(Ljava/lang/String;)V

    .line 109
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/data/model/http/Bank;->setSimpleName(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/Bank;->setIsDeleted(I)V

    .line 111
    invoke-virtual {v1, v9}, Lcom/zhangdan/app/data/model/http/Bank;->setLogo(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, v10}, Lcom/zhangdan/app/data/model/http/Bank;->setLongTel(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1, v15}, Lcom/zhangdan/app/data/model/http/Bank;->setShortTel(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, v11}, Lcom/zhangdan/app/data/model/http/Bank;->setMaxFreePeriod(I)V

    .line 115
    invoke-virtual {v1, v14}, Lcom/zhangdan/app/data/model/http/Bank;->setPointMall(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, v13}, Lcom/zhangdan/app/data/model/http/Bank;->setOrderIndex(I)V

    .line 117
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 119
    .end local v1           #bank:Lcom/zhangdan/app/data/model/http/Bank;
    .end local v2           #bankId:I
    .end local v3           #bankName:Ljava/lang/String;
    .end local v4           #fullName:Ljava/lang/String;
    .end local v6           #isDeleted:I
    .end local v9           #logo:Ljava/lang/String;
    .end local v10           #longTel:Ljava/lang/String;
    .end local v11           #maxFreePeriod:I
    .end local v12           #obj:Lorg/json/JSONObject;
    .end local v13           #orderIndex:I
    .end local v14           #pointMall:Ljava/lang/String;
    .end local v15           #shortTel:Ljava/lang/String;
    .end local v16           #simpleName:Ljava/lang/String;
    :cond_0
    return-object v8
.end method
