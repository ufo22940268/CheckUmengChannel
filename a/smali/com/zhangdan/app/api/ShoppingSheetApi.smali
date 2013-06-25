.class public Lcom/zhangdan/app/api/ShoppingSheetApi;
.super Ljava/lang/Object;
.source "ShoppingSheetApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSlotCardRecordJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "userId"
    .parameter "token"
    .parameter "lastModifyTime"
    .parameter "pageNo"

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, json:Ljava/lang/String;
    :try_start_0
    const-string v3, "http://www.51zhangdan.com/service/bill/get_shoppingsheet_list.ashx?"

    .line 35
    .local v3, url:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "token"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "last_modify_time"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "page_no"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "page_size"

    const-string v6, "500"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "jv"

    const-string v6, "1.22"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
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

    .line 43
    invoke-static {v3, v2}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 47
    .end local v2           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseSlotCardRecord(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 9
    .parameter "cardArr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v5, 0x0

    .line 82
    .local v5, slotCardRecords:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;"
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v5           #slotCardRecords:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;"
    .local v6, slotCardRecords:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;"
    const/4 v4, 0x0

    .line 85
    .local v4, slotCardRecord:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_16

    .line 86
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 87
    .local v3, jsonObj:Lorg/json/JSONObject;
    new-instance v4, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;

    .end local v4           #slotCardRecord:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    invoke-direct {v4}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;-><init>()V

    .line 88
    .restart local v4       #slotCardRecord:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    const-string v7, "auto_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 89
    const-string v7, "auto_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setAutoId(J)V

    .line 91
    :cond_0
    const-string v7, "bank_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 92
    const-string v7, "bank_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setBankId(I)V

    .line 94
    :cond_1
    const-string v7, "bill_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 95
    const-string v7, "bill_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setBillId(J)V

    .line 97
    :cond_2
    const-string v7, "user_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 98
    const-string v7, "user_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setUserId(I)V

    .line 100
    :cond_3
    const-string v7, "trans_date"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 101
    const-string v7, "trans_date"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setTransDate(Ljava/lang/String;)V

    .line 103
    :cond_4
    const-string v7, "post_date"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 104
    const-string v7, "post_date"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setPostDate(Ljava/lang/String;)V

    .line 106
    :cond_5
    const-string v7, "discription"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 107
    const-string v7, "discription"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setDiscription(Ljava/lang/String;)V

    .line 109
    :cond_6
    const-string v7, "trans_type"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 110
    const-string v7, "trans_type"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setTransType(Ljava/lang/String;)V

    .line 112
    :cond_7
    const-string v7, "currency_type"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 113
    const-string v7, "currency_type"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setCurrencyType(I)V

    .line 115
    :cond_8
    const-string v7, "category_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 116
    const-string v7, "category_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setCategoryId(I)V

    .line 118
    :cond_9
    const-string v7, "amount_money"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 119
    const-string v7, "amount_money"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setAmountMoney(Ljava/lang/String;)V

    .line 121
    :cond_a
    const-string v7, "trans_org_amount"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 122
    const-string v7, "trans_org_amount"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setTransOrgamount(Ljava/lang/String;)V

    .line 124
    :cond_b
    const-string v7, "trans_addr"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 125
    const-string v7, "trans_addr"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setTransAddr(Ljava/lang/String;)V

    .line 127
    :cond_c
    const-string v7, "card_no"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 128
    const-string v7, "card_no"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setCardNo(Ljava/lang/String;)V

    .line 130
    :cond_d
    const-string v7, "create_time"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 131
    const-string v7, "create_time"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setCreateTime(Ljava/lang/String;)V

    .line 133
    :cond_e
    const-string v7, "last_modify_time"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 134
    const-string v7, "last_modify_time"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setLastModifyTime(Ljava/lang/String;)V

    .line 136
    :cond_f
    const-string v7, "has_remark"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 137
    const-string v7, "has_remark"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 138
    .local v1, hasRemark:Z
    if-eqz v1, :cond_15

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setHasRemark(I)V

    .line 140
    .end local v1           #hasRemark:Z
    :cond_10
    const-string v7, "custome_category_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 141
    const-string v7, "custome_category_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setCustomeCategoryId(I)V

    .line 143
    :cond_11
    const-string v7, "remark"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 144
    const-string v7, "remark"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setRemark(Ljava/lang/String;)V

    .line 146
    :cond_12
    const-string v7, "store_name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 147
    const-string v7, "store_name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setStoreName(Ljava/lang/String;)V

    .line 149
    :cond_13
    const-string v7, "mood_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 150
    const-string v7, "mood_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setMoodId(I)V

    .line 152
    :cond_14
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 138
    .restart local v1       #hasRemark:Z
    :cond_15
    const/4 v7, 0x0

    goto :goto_1

    .end local v1           #hasRemark:Z
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    :cond_16
    move-object v5, v6

    .line 160
    .end local v2           #i:I
    .end local v4           #slotCardRecord:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    .end local v6           #slotCardRecords:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;"
    .restart local v5       #slotCardRecords:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;"
    :goto_2
    return-object v5

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 156
    .end local v0           #e:Ljava/lang/Exception;
    .end local v5           #slotCardRecords:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;"
    .restart local v2       #i:I
    .restart local v6       #slotCardRecords:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;"
    :catch_1
    move-exception v0

    move-object v5, v6

    .end local v6           #slotCardRecords:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;"
    .restart local v5       #slotCardRecords:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;"
    goto :goto_3
.end method

.method public static parseSlotCardRecordList(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;
    .locals 7
    .parameter "json"

    .prologue
    .line 51
    const/4 v3, 0x0

    .line 53
    .local v3, slotCardList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, jsonObj:Lorg/json/JSONObject;
    new-instance v4, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;

    invoke-direct {v4}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v3           #slotCardList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;
    .local v4, slotCardList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;
    :try_start_1
    const-string v6, "code"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 56
    const-string v6, "code"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;->setCode(I)V

    .line 58
    :cond_0
    const-string v6, "msg"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 59
    const-string v6, "msg"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;->setMsg(Ljava/lang/String;)V

    .line 61
    :cond_1
    const-string v6, "time"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 62
    const-string v6, "time"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;->setTime(Ljava/lang/String;)V

    .line 64
    :cond_2
    const-string v6, "total_results"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 65
    const-string v6, "total_results"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;->setTotalResults(I)V

    .line 67
    :cond_3
    const-string v6, "ShoppingSheets"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 68
    const-string v6, "ShoppingSheets"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 69
    .local v1, jsonArray:Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/zhangdan/app/api/ShoppingSheetApi;->parseSlotCardRecord(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 70
    .local v5, slotCardRecords:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;"
    invoke-virtual {v4, v5}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;->setSlotCardRecords(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1           #jsonArray:Lorg/json/JSONArray;
    .end local v5           #slotCardRecords:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;"
    :cond_4
    move-object v3, v4

    .line 76
    .end local v2           #jsonObj:Lorg/json/JSONObject;
    .end local v4           #slotCardList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;
    .restart local v3       #slotCardList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;
    :goto_0
    return-object v3

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #slotCardList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;
    .restart local v2       #jsonObj:Lorg/json/JSONObject;
    .restart local v4       #slotCardList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #slotCardList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;
    .restart local v3       #slotCardList:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecodList;
    goto :goto_1
.end method
