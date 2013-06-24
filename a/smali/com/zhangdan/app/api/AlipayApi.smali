.class public Lcom/zhangdan/app/api/AlipayApi;
.super Ljava/lang/Object;
.source "AlipayApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlipayOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;
    .locals 6
    .parameter "billId"
    .parameter "bankId"
    .parameter "userName"
    .parameter "cardNo"
    .parameter "amount"
    .parameter "token"
    .parameter "userId"

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    invoke-direct {v3, v4, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_id"

    invoke-direct {v3, v4, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action"

    const-string v5, "alipay_return"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "bill_id"

    invoke-direct {v3, v4, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "bank_id"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_name"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "card_no"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "amount"

    invoke-direct {v3, v4, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "http://www.51zhangdan.com"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "/service/bill/set.ashx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, url:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, resp:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/api/AlipayApi;->parseCreateOrderJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;

    move-result-object v3

    return-object v3
.end method

.method public static getAlipayList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/AlipayOrderList;
    .locals 6
    .parameter "token"
    .parameter "userId"
    .parameter "billId"

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    invoke-direct {v3, v4, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_id"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "bill_id"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "http://www.51zhangdan.com"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "/service/alipay/get_list.ashx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, url:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, resp:Ljava/lang/String;
    const-string v3, "Alipay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",billId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v4, "Alipay"

    if-nez v1, :cond_0

    const-string v3, "null"

    :goto_0
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {v1}, Lcom/zhangdan/app/api/AlipayApi;->parseListJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/AlipayOrderList;

    move-result-object v3

    return-object v3

    :cond_0
    move-object v3, v1

    .line 50
    goto :goto_0
.end method

.method private static parseCreateOrderJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;
    .locals 9
    .parameter "json"

    .prologue
    const/4 v7, 0x0

    .line 55
    if-nez p0, :cond_1

    move-object v1, v7

    .line 77
    :cond_0
    :goto_0
    return-object v1

    .line 58
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v4, obj:Lorg/json/JSONObject;
    const-string v8, "code"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, code:I
    const-string v8, "msg"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, msg:Ljava/lang/String;
    new-instance v1, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;-><init>()V

    .line 63
    .local v1, data:Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;
    invoke-virtual {v1, v0}, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->setCode(I)V

    .line 64
    invoke-virtual {v1, v3}, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->setMsg(Ljava/lang/String;)V

    .line 66
    const-string v8, "time"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 67
    const-string v8, "time"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->setTime(Ljava/lang/String;)V

    .line 68
    :cond_2
    const-string v8, "Trade"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 69
    const-string v8, "Trade"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 70
    .local v6, tradeObj:Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/zhangdan/app/api/AlipayApi;->parseTrade(Lorg/json/JSONObject;)Lcom/zhangdan/app/data/model/http/AlipayOrder;

    move-result-object v5

    .line 71
    .local v5, order:Lcom/zhangdan/app/data/model/http/AlipayOrder;
    invoke-virtual {v1, v5}, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->setOrder(Lcom/zhangdan/app/data/model/http/AlipayOrder;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v0           #code:I
    .end local v1           #data:Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;
    .end local v3           #msg:Ljava/lang/String;
    .end local v4           #obj:Lorg/json/JSONObject;
    .end local v5           #order:Lcom/zhangdan/app/data/model/http/AlipayOrder;
    .end local v6           #tradeObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 75
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v7

    .line 77
    goto :goto_0
.end method

.method private static parseListJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/AlipayOrderList;
    .locals 12
    .parameter "json"

    .prologue
    const/4 v10, 0x0

    .line 81
    if-nez p0, :cond_1

    move-object v8, v10

    .line 118
    :cond_0
    :goto_0
    return-object v8

    .line 91
    :cond_1
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .local v7, obj:Lorg/json/JSONObject;
    const-string v11, "code"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 93
    .local v1, code:I
    const-string v11, "msg"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, msg:Ljava/lang/String;
    new-instance v8, Lcom/zhangdan/app/data/model/http/AlipayOrderList;

    invoke-direct {v8}, Lcom/zhangdan/app/data/model/http/AlipayOrderList;-><init>()V

    .line 96
    .local v8, orderList:Lcom/zhangdan/app/data/model/http/AlipayOrderList;
    invoke-virtual {v8, v1}, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->setCode(I)V

    .line 97
    invoke-virtual {v8, v6}, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->setMsg(Ljava/lang/String;)V

    .line 99
    const-string v11, "time"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 100
    const-string v11, "time"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->setTime(Ljava/lang/String;)V

    .line 101
    :cond_2
    const-string v11, "total_results"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 102
    const-string v11, "total_results"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->setTotalResults(I)V

    .line 103
    :cond_3
    const-string v11, "Trades"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 104
    const-string v11, "Trades"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 105
    .local v0, arr:Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/AlipayOrder;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_5

    .line 107
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 108
    .local v9, orderObj:Lorg/json/JSONObject;
    invoke-static {v9}, Lcom/zhangdan/app/api/AlipayApi;->parseTrade(Lorg/json/JSONObject;)Lcom/zhangdan/app/data/model/http/AlipayOrder;

    move-result-object v2

    .line 109
    .local v2, data:Lcom/zhangdan/app/data/model/http/AlipayOrder;
    if-eqz v2, :cond_4

    .line 110
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 112
    .end local v2           #data:Lcom/zhangdan/app/data/model/http/AlipayOrder;
    .end local v9           #orderObj:Lorg/json/JSONObject;
    :cond_5
    invoke-virtual {v8, v5}, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->setOrderList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #code:I
    .end local v4           #i:I
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/AlipayOrder;>;"
    .end local v6           #msg:Ljava/lang/String;
    .end local v7           #obj:Lorg/json/JSONObject;
    .end local v8           #orderList:Lcom/zhangdan/app/data/model/http/AlipayOrderList;
    :catch_0
    move-exception v3

    .line 116
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    move-object v8, v10

    .line 118
    goto :goto_0
.end method

.method private static parseTrade(Lorg/json/JSONObject;)Lcom/zhangdan/app/data/model/http/AlipayOrder;
    .locals 19
    .parameter "obj"

    .prologue
    .line 122
    new-instance v11, Lcom/zhangdan/app/data/model/http/AlipayOrder;

    invoke-direct {v11}, Lcom/zhangdan/app/data/model/http/AlipayOrder;-><init>()V

    .line 124
    .local v11, data:Lcom/zhangdan/app/data/model/http/AlipayOrder;
    :try_start_0
    const-string v18, "bank_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 125
    .local v5, bankId:I
    const-string v18, "amount"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, amount:Ljava/lang/String;
    const-string v18, "create_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 127
    .local v10, createTime:Ljava/lang/String;
    const-string v18, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 128
    .local v17, userName:Ljava/lang/String;
    const-string v18, "user_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 129
    .local v16, userId:Ljava/lang/String;
    const-string v18, "trade_no"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 130
    .local v15, tradeNo:Ljava/lang/String;
    const-string v18, "card_no"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, cardNo:Ljava/lang/String;
    const-string v18, "bill_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 132
    .local v7, billId:J
    const-string v18, "bank_mark"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, bankMark:Ljava/lang/String;
    const-string v18, "ali_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 134
    .local v2, aliStatus:I
    const-string v18, "ali_trade_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, aliTradeId:Ljava/lang/String;
    const-string v18, "last_modify_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 136
    .local v13, lastModifyTime:Ljava/lang/String;
    const-string v18, "status"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 137
    .local v14, status:I
    invoke-virtual {v11, v5}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->setBankId(I)V

    .line 138
    invoke-virtual {v11, v4}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->setAmount(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v11, v10}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->setCreateTime(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->setUserId(Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->setUserName(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v11, v15}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->setTradeNo(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v11, v9}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->setCardNo(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v11, v7, v8}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->setBillId(J)V

    .line 145
    invoke-virtual {v11, v6}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->setBankMark(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v11, v2}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->setAliStatus(I)V

    .line 147
    invoke-virtual {v11, v3}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->setAliTradeId(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v11, v13}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->setLastModifyTime(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v11, v14}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->setStatus(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v2           #aliStatus:I
    .end local v3           #aliTradeId:Ljava/lang/String;
    .end local v4           #amount:Ljava/lang/String;
    .end local v5           #bankId:I
    .end local v6           #bankMark:Ljava/lang/String;
    .end local v7           #billId:J
    .end local v9           #cardNo:Ljava/lang/String;
    .end local v10           #createTime:Ljava/lang/String;
    .end local v11           #data:Lcom/zhangdan/app/data/model/http/AlipayOrder;
    .end local v13           #lastModifyTime:Ljava/lang/String;
    .end local v14           #status:I
    .end local v15           #tradeNo:Ljava/lang/String;
    .end local v16           #userId:Ljava/lang/String;
    .end local v17           #userName:Ljava/lang/String;
    :goto_0
    return-object v11

    .line 151
    .restart local v11       #data:Lcom/zhangdan/app/data/model/http/AlipayOrder;
    :catch_0
    move-exception v12

    .line 152
    .local v12, e:Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    .line 154
    const/4 v11, 0x0

    goto :goto_0
.end method
