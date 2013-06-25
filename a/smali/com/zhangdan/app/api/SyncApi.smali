.class public Lcom/zhangdan/app/api/SyncApi;
.super Ljava/lang/Object;
.source "SyncApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delReturnPartRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;
    .locals 11
    .parameter "billId"
    .parameter "autoId"
    .parameter "token"
    .parameter "userId"

    .prologue
    const/4 v7, 0x0

    .line 217
    const-string v6, "http://www.51zhangdan.com/service/bill/set.ashx?"

    .line 218
    .local v6, url:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v5, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "action"

    const-string v10, "bill_return_delete"

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "bill_id"

    invoke-direct {v8, v9, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "auto_id"

    invoke-direct {v8, v9, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "token"

    invoke-direct {v8, v9, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "user_id"

    invoke-direct {v8, v9, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static {v6, v5}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, json:Ljava/lang/String;
    if-nez v3, :cond_1

    move-object v1, v7

    .line 245
    :cond_0
    :goto_0
    return-object v1

    .line 227
    :cond_1
    const-string v8, "SyncApi"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 230
    .local v4, obj:Lorg/json/JSONObject;
    const-string v8, "code"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 231
    const-string v8, "code"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 232
    .local v0, code:I
    new-instance v1, Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;-><init>()V

    .line 233
    .local v1, data:Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;
    invoke-virtual {v1, v0}, Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;->setCode(I)V

    .line 234
    const-string v8, "msg"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 235
    const-string v8, "msg"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;->setMsg(Ljava/lang/String;)V

    .line 236
    :cond_2
    const-string v8, "auto_id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 237
    const-string v8, "auto_id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;->setAutoId(J)V

    .line 238
    :cond_3
    const-string v8, "return_amount"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 239
    const-string v8, "return_amount"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;->setReturnAmount(D)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    .end local v0           #code:I
    .end local v1           #data:Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;
    .end local v4           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 243
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .end local v2           #e:Lorg/json/JSONException;
    :cond_4
    move-object v1, v7

    .line 245
    goto :goto_0
.end method

.method private static parseResult(Ljava/lang/String;)Z
    .locals 5
    .parameter "json"

    .prologue
    const/4 v3, 0x0

    .line 53
    if-nez p0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v3

    .line 56
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v2, obj:Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 59
    .local v0, code:I
    if-nez v0, :cond_0

    .line 60
    const/4 v3, 0x1

    goto :goto_0

    .line 62
    .end local v0           #code:I
    .end local v2           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 63
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveUbEdit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;
    .locals 6
    .parameter "token"
    .parameter "userId"
    .parameter "ubId"
    .parameter "creditLimit"

    .prologue
    .line 258
    const-string v2, "http://www.51zhangdan.com/service/bill/set.ashx?"

    .line 259
    .local v2, url:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action"

    const-string v5, "save_ub_edit"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "ub_id"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "credit_limit"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    invoke-direct {v3, v4, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_id"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-static {v2, v1}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->parseJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;

    move-result-object v3

    return-object v3
.end method

.method public static setHasPaidOrNot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .parameter "userId"
    .parameter "token"
    .parameter "billId"
    .parameter "isReturn"

    .prologue
    .line 41
    const-string v2, "http://www.51zhangdan.com/service/bill/set.ashx?"

    .line 42
    .local v2, url:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action"

    const-string v5, "set_return"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "bill_id"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "is_return"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_id"

    invoke-direct {v3, v4, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {v2, v1}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Lcom/zhangdan/app/api/SyncApi;->parseResult(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public static setPartPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ReturnPart;
    .locals 14
    .parameter "userId"
    .parameter "token"
    .parameter "billId"
    .parameter "returnAmount"

    .prologue
    .line 78
    const-string v10, "http://www.51zhangdan.com/service/bill/set.ashx?"

    .line 79
    .local v10, url:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v7, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "action"

    const-string v13, "bill_return"

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "bill_id"

    move-object/from16 v0, p2

    invoke-direct {v11, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "return_amount"

    move-object/from16 v0, p3

    invoke-direct {v11, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v9, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 84
    .local v9, sdf:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 85
    .local v1, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 86
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, returnDate:Ljava/lang/String;
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "return_date"

    invoke-direct {v11, v12, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "token"

    invoke-direct {v11, v12, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "user_id"

    invoke-direct {v11, v12, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-static {v10, v7}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, json:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 92
    const/4 v3, 0x0

    .line 112
    :cond_0
    :goto_0
    return-object v3

    .line 94
    :cond_1
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .local v6, obj:Lorg/json/JSONObject;
    const-string v11, "code"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 96
    const-string v11, "code"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 97
    .local v2, code:I
    new-instance v3, Lcom/zhangdan/app/data/model/http/ReturnPart;

    invoke-direct {v3}, Lcom/zhangdan/app/data/model/http/ReturnPart;-><init>()V

    .line 98
    .local v3, data:Lcom/zhangdan/app/data/model/http/ReturnPart;
    invoke-virtual {v3, v2}, Lcom/zhangdan/app/data/model/http/ReturnPart;->setCode(I)V

    .line 99
    const-string v11, "msg"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 100
    const-string v11, "msg"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/zhangdan/app/data/model/http/ReturnPart;->setMsg(Ljava/lang/String;)V

    .line 101
    :cond_2
    const-string v11, "time"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 102
    const-string v11, "time"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/zhangdan/app/data/model/http/ReturnPart;->setTime(Ljava/lang/String;)V

    .line 103
    :cond_3
    const-string v11, "auto_id"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 104
    const-string v11, "auto_id"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lcom/zhangdan/app/data/model/http/ReturnPart;->setAutoId(J)V

    .line 105
    :cond_4
    const-string v11, "return_amount"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 106
    const-string v11, "return_amount"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lcom/zhangdan/app/data/model/http/ReturnPart;->setReturnAmount(D)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v2           #code:I
    .end local v3           #data:Lcom/zhangdan/app/data/model/http/ReturnPart;
    .end local v6           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 110
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 112
    .end local v4           #e:Lorg/json/JSONException;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setShoppingSheetRemark(Ljava/lang/String;Ljava/lang/String;Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;)Lcom/zhangdan/app/data/model/http/SyncShoppingRemarkResult;
    .locals 14
    .parameter "userId"
    .parameter "token"
    .parameter "data"

    .prologue
    .line 126
    const-string v8, "http://www.51zhangdan.com/service/bill/set.ashx?"

    .line 127
    .local v8, url:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v5, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "action"

    const-string v11, "save_shoppingsheet_remark"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "auto_id"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getAutoId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "local_id"

    const-string v11, "0"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "shoppingsheet_id"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getShoppingSheetId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "bank_id"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getBankId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "card_no"

    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getCardNo()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "trans_type"

    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getTransType()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "trans_time"

    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getTransTime()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "currency_type"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getCurrencyType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "amount_money"

    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getAmountMoney()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "mood_id"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getMoodId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "category_id"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getCategoryId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "store_name"

    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getStoreName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "remark"

    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getRemark()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "token"

    invoke-direct {v9, v10, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "user_id"

    invoke-direct {v9, v10, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-static {v8, v5}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, json:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 146
    const/4 v7, 0x0

    .line 213
    :cond_0
    :goto_0
    return-object v7

    .line 148
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    .local v4, obj:Lorg/json/JSONObject;
    const-string v9, "code"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 150
    const-string v9, "code"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, code:I
    new-instance v7, Lcom/zhangdan/app/data/model/http/SyncShoppingRemarkResult;

    invoke-direct {v7}, Lcom/zhangdan/app/data/model/http/SyncShoppingRemarkResult;-><init>()V

    .line 152
    .local v7, result:Lcom/zhangdan/app/data/model/http/SyncShoppingRemarkResult;
    invoke-virtual {v7, v0}, Lcom/zhangdan/app/data/model/http/SyncShoppingRemarkResult;->setCode(I)V

    .line 153
    const-string v9, "msg"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 154
    const-string v9, "msg"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/zhangdan/app/data/model/http/SyncShoppingRemarkResult;->setMsg(Ljava/lang/String;)V

    .line 156
    :cond_2
    if-nez v0, :cond_0

    .line 157
    const-string v9, "ShoppingSheetRemark"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 158
    new-instance v6, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;

    invoke-direct {v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;-><init>()V

    .line 159
    .local v6, remark:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    const-string v9, "ShoppingSheetRemark"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 160
    .local v3, jsonObj:Lorg/json/JSONObject;
    const-string v9, "auto_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 161
    const-string v9, "auto_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setAutoId(J)V

    .line 163
    :cond_3
    const-string v9, "user_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 164
    const-string v9, "user_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setUserId(J)V

    .line 166
    :cond_4
    const-string v9, "shoppingsheet_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 167
    const-string v9, "shoppingsheet_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setShoppingSheetId(J)V

    .line 169
    :cond_5
    const-string v9, "category_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 170
    const-string v9, "category_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setCategoryId(I)V

    .line 172
    :cond_6
    const-string v9, "remark"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 173
    const-string v9, "remark"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setRemark(Ljava/lang/String;)V

    .line 175
    :cond_7
    const-string v9, "store_name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 176
    const-string v9, "store_name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setStoreName(Ljava/lang/String;)V

    .line 178
    :cond_8
    const-string v9, "mood_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 179
    const-string v9, "mood_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setMoodId(I)V

    .line 181
    :cond_9
    const-string v9, "bank_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 182
    const-string v9, "bank_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setBankId(I)V

    .line 184
    :cond_a
    const-string v9, "ub_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 185
    const-string v9, "ub_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setUbId(J)V

    .line 187
    :cond_b
    const-string v9, "card_no"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 188
    const-string v9, "card_no"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setCardNo(Ljava/lang/String;)V

    .line 190
    :cond_c
    const-string v9, "trans_type"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 191
    const-string v9, "trans_type"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setTransType(Ljava/lang/String;)V

    .line 193
    :cond_d
    const-string v9, "trans_time"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 194
    const-string v9, "trans_time"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setTransTime(Ljava/lang/String;)V

    .line 196
    :cond_e
    const-string v9, "currency_type"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 197
    const-string v9, "currency_type"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setCurrencyType(I)V

    .line 199
    :cond_f
    const-string v9, "amount_money"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 200
    const-string v9, "amount_money"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setAmountMoney(Ljava/lang/String;)V

    .line 202
    :cond_10
    const-string v9, "discription"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 203
    const-string v9, "discription"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setDiscription(Ljava/lang/String;)V

    .line 205
    :cond_11
    invoke-virtual {v7, v6}, Lcom/zhangdan/app/data/model/http/SyncShoppingRemarkResult;->setShoppingSheetRemark(Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 210
    .end local v0           #code:I
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v4           #obj:Lorg/json/JSONObject;
    .end local v6           #remark:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    .end local v7           #result:Lcom/zhangdan/app/data/model/http/SyncShoppingRemarkResult;
    :catch_0
    move-exception v1

    .line 211
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 213
    .end local v1           #e:Lorg/json/JSONException;
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_0
.end method
