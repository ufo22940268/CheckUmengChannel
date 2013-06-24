.class public Lcom/zhangdan/app/api/ShoppingSheetRemarkApi;
.super Ljava/lang/Object;
.source "ShoppingSheetRemarkApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSlotCardRecordRemarkJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "userId"
    .parameter "token"
    .parameter "lastModifyTime"

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 35
    .local v1, json:Ljava/lang/String;
    :try_start_0
    const-string v3, "http://www.51zhangdan.com/service/bill/get_shoppingsheet_remark_list.ashx?"

    .line 36
    .local v3, url:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "token"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "last_modify_time"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "page_no"

    const-string v6, "1"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "page_size"

    const-string v6, "500"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "jv"

    const-string v6, "1.22"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
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

    .line 44
    invoke-static {v3, v2}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    .end local v2           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    const-string v4, "ShoppingSheet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseSlotCardRecordRemark(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .parameter "cardArr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v4, 0x0

    .line 82
    .local v4, remarks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;>;"
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v4           #remarks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;>;"
    .local v5, remarks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;>;"
    const/4 v3, 0x0

    .line 85
    .local v3, remark:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_f

    .line 86
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 87
    .local v2, jsonObj:Lorg/json/JSONObject;
    new-instance v3, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;

    .end local v3           #remark:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    invoke-direct {v3}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;-><init>()V

    .line 88
    .restart local v3       #remark:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    const-string v6, "auto_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 89
    const-string v6, "auto_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setAutoId(J)V

    .line 91
    :cond_0
    const-string v6, "user_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    const-string v6, "user_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setUserId(J)V

    .line 94
    :cond_1
    const-string v6, "shoppingsheet_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    const-string v6, "shoppingsheet_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setShoppingSheetId(J)V

    .line 97
    :cond_2
    const-string v6, "category_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 98
    const-string v6, "category_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setCategoryId(I)V

    .line 100
    :cond_3
    const-string v6, "remark"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 101
    const-string v6, "remark"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setRemark(Ljava/lang/String;)V

    .line 103
    :cond_4
    const-string v6, "store_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 104
    const-string v6, "store_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setStoreName(Ljava/lang/String;)V

    .line 106
    :cond_5
    const-string v6, "mood_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 107
    const-string v6, "mood_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setMoodId(I)V

    .line 109
    :cond_6
    const-string v6, "bank_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 110
    const-string v6, "bank_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setBankId(I)V

    .line 112
    :cond_7
    const-string v6, "ub_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 113
    const-string v6, "ub_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setUbId(J)V

    .line 115
    :cond_8
    const-string v6, "card_no"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 116
    const-string v6, "card_no"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setCardNo(Ljava/lang/String;)V

    .line 118
    :cond_9
    const-string v6, "trans_type"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 119
    const-string v6, "trans_type"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setTransType(Ljava/lang/String;)V

    .line 121
    :cond_a
    const-string v6, "trans_time"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 122
    const-string v6, "trans_time"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setTransTime(Ljava/lang/String;)V

    .line 124
    :cond_b
    const-string v6, "currency_type"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 125
    const-string v6, "currency_type"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setCurrencyType(I)V

    .line 127
    :cond_c
    const-string v6, "amount_money"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 128
    const-string v6, "amount_money"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setAmountMoney(Ljava/lang/String;)V

    .line 130
    :cond_d
    const-string v6, "discription"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 131
    const-string v6, "discription"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setDiscription(Ljava/lang/String;)V

    .line 134
    :cond_e
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2           #jsonObj:Lorg/json/JSONObject;
    :cond_f
    move-object v4, v5

    .line 140
    .end local v1           #i:I
    .end local v3           #remark:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    .end local v5           #remarks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;>;"
    .restart local v4       #remarks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;>;"
    :goto_1
    return-object v4

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 137
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #remarks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;>;"
    .restart local v1       #i:I
    .restart local v5       #remarks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;>;"
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5           #remarks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;>;"
    .restart local v4       #remarks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;>;"
    goto :goto_2
.end method

.method public static parseSlotCardRecordRemarkList(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;
    .locals 6
    .parameter "json"

    .prologue
    .line 53
    const/4 v2, 0x0

    .line 55
    .local v2, remarkList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, jsonObj:Lorg/json/JSONObject;
    new-instance v3, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;

    invoke-direct {v3}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v2           #remarkList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;
    .local v3, remarkList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;
    :try_start_1
    const-string v5, "code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    const-string v5, "code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;->setCode(I)V

    .line 60
    :cond_0
    const-string v5, "msg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 61
    const-string v5, "msg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;->setMsg(Ljava/lang/String;)V

    .line 63
    :cond_1
    const-string v5, "time"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 64
    const-string v5, "time"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;->setTime(Ljava/lang/String;)V

    .line 66
    :cond_2
    const-string v5, "total_results"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 67
    const-string v5, "total_results"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;->setTotalResults(I)V

    .line 69
    :cond_3
    const-string v5, "ShoppingSheetRemarks"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 70
    const-string v5, "ShoppingSheetRemarks"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 71
    .local v0, jsonArray:Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/zhangdan/app/api/ShoppingSheetRemarkApi;->parseSlotCardRecordRemark(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 72
    .local v4, remarks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;>;"
    invoke-virtual {v3, v4}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;->setRemarks(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #jsonArray:Lorg/json/JSONArray;
    .end local v4           #remarks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;>;"
    :cond_4
    move-object v2, v3

    .line 76
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    .end local v3           #remarkList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;
    .restart local v2       #remarkList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;
    :goto_0
    return-object v2

    .line 75
    :catch_0
    move-exception v5

    goto :goto_0

    .end local v2           #remarkList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;
    .restart local v1       #jsonObj:Lorg/json/JSONObject;
    .restart local v3       #remarkList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3           #remarkList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;
    .restart local v2       #remarkList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemarkList;
    goto :goto_0
.end method
