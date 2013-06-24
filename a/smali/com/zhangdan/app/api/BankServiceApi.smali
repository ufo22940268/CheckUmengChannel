.class public Lcom/zhangdan/app/api/BankServiceApi;
.super Ljava/lang/Object;
.source "BankServiceApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBankServiceJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "userId"
    .parameter "token"
    .parameter "lastModifyTime"

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 39
    .local v1, json:Ljava/lang/String;
    :try_start_0
    const-string v3, "http://www.51zhangdan.com/service/bank/get_bank_service_ext.ashx?"

    .line 40
    .local v3, url:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "token"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "last_modify_time"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "page_no"

    const-string v6, "1"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "page_size"

    const-string v6, "500"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "jv"

    const-string v6, "1.22"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
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

    .line 48
    invoke-static {v3, v2}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    .end local v2           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseBanckServiceContent(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BankServiceContent;
    .locals 18
    .parameter "content"

    .prologue
    .line 129
    new-instance v1, Lcom/zhangdan/app/data/model/http/BankServiceContent;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/BankServiceContent;-><init>()V

    .line 131
    .local v1, banckServiceContent:Lcom/zhangdan/app/data/model/http/BankServiceContent;
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    .local v9, object:Lorg/json/JSONObject;
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 133
    .local v15, title:Ljava/lang/String;
    invoke-virtual {v1, v15}, Lcom/zhangdan/app/data/model/http/BankServiceContent;->setTitle(Ljava/lang/String;)V

    .line 134
    const-string v17, "sms"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 135
    const-string v17, "sms"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 136
    .local v11, smsJson:Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_0

    .line 138
    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 139
    .local v14, temp:Lorg/json/JSONObject;
    new-instance v10, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v1}, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;-><init>(Lcom/zhangdan/app/data/model/http/BankServiceContent;)V

    .line 140
    .local v10, smsContent:Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;
    const-string v17, "isp"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, isp:Ljava/lang/String;
    const-string v17, "to"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 142
    .local v16, to:Ljava/lang/String;
    const-string v17, "method"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, method:Ljava/lang/String;
    const-string v17, "des"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, des:Ljava/lang/String;
    invoke-virtual {v10, v2}, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;->setDes(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v10, v5}, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;->setIsp(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v10, v8}, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;->setMethod(Ljava/lang/String;)V

    .line 147
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;->setTo(Ljava/lang/String;)V

    .line 148
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    .end local v2           #des:Ljava/lang/String;
    .end local v5           #isp:Ljava/lang/String;
    .end local v8           #method:Ljava/lang/String;
    .end local v10           #smsContent:Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;
    .end local v14           #temp:Lorg/json/JSONObject;
    .end local v16           #to:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/BankServiceContent;->setSmsList(Ljava/util/List;)V

    .line 168
    .end local v4           #i:I
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;>;"
    .end local v9           #object:Lorg/json/JSONObject;
    .end local v11           #smsJson:Lorg/json/JSONArray;
    .end local v15           #title:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v1

    .line 151
    .restart local v9       #object:Lorg/json/JSONObject;
    .restart local v15       #title:Ljava/lang/String;
    :cond_2
    const-string v17, "tel"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 152
    const-string v17, "tel"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 153
    .local v13, telJson:Lorg/json/JSONArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;>;"
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_3

    .line 155
    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 156
    .restart local v14       #temp:Lorg/json/JSONObject;
    const-string v17, "method"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 157
    .restart local v8       #method:Ljava/lang/String;
    const-string v17, "des"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .restart local v2       #des:Ljava/lang/String;
    new-instance v12, Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v12, v1}, Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;-><init>(Lcom/zhangdan/app/data/model/http/BankServiceContent;)V

    .line 159
    .local v12, telContent:Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;
    invoke-virtual {v12, v2}, Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;->setDes(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v12, v8}, Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;->setMethod(Ljava/lang/String;)V

    .line 161
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 163
    .end local v2           #des:Ljava/lang/String;
    .end local v8           #method:Ljava/lang/String;
    .end local v12           #telContent:Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;
    .end local v14           #temp:Lorg/json/JSONObject;
    :cond_3
    invoke-virtual {v1, v7}, Lcom/zhangdan/app/data/model/http/BankServiceContent;->setTelList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 165
    .end local v4           #i:I
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;>;"
    .end local v9           #object:Lorg/json/JSONObject;
    .end local v13           #telJson:Lorg/json/JSONArray;
    .end local v15           #title:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 166
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static parseBankServiceList(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BankServiceList;
    .locals 7
    .parameter "json"

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, bankServiceList:Lcom/zhangdan/app/data/model/http/BankServiceList;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .local v5, jsonObj:Lorg/json/JSONObject;
    new-instance v1, Lcom/zhangdan/app/data/model/http/BankServiceList;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/BankServiceList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0           #bankServiceList:Lcom/zhangdan/app/data/model/http/BankServiceList;
    .local v1, bankServiceList:Lcom/zhangdan/app/data/model/http/BankServiceList;
    :try_start_1
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/BankServiceList;->getCode()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/BankServiceList;->setCode(I)V

    .line 68
    :cond_0
    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 69
    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/BankServiceList;->setMsg(Ljava/lang/String;)V

    .line 71
    :cond_1
    const-string v6, "time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 72
    const-string v6, "time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/BankServiceList;->setTime(Ljava/lang/String;)V

    .line 74
    :cond_2
    const-string v6, "total_results"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 75
    const-string v6, "total_results"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/BankServiceList;->setTotalResults(I)V

    .line 77
    :cond_3
    const-string v6, "BankServiceExts"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 78
    const-string v6, "BankServiceExts"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 79
    .local v4, jsonArray:Lorg/json/JSONArray;
    invoke-static {v4}, Lcom/zhangdan/app/api/BankServiceApi;->parseBankServie(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 80
    .local v2, bankServices:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/http/BankServiceList;->setBankServices(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2           #bankServices:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    :cond_4
    move-object v0, v1

    .line 87
    .end local v1           #bankServiceList:Lcom/zhangdan/app/data/model/http/BankServiceList;
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    .restart local v0       #bankServiceList:Lcom/zhangdan/app/data/model/http/BankServiceList;
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v3

    .line 84
    .local v3, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0           #bankServiceList:Lcom/zhangdan/app/data/model/http/BankServiceList;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #bankServiceList:Lcom/zhangdan/app/data/model/http/BankServiceList;
    .restart local v5       #jsonObj:Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1           #bankServiceList:Lcom/zhangdan/app/data/model/http/BankServiceList;
    .restart local v0       #bankServiceList:Lcom/zhangdan/app/data/model/http/BankServiceList;
    goto :goto_1
.end method

.method private static parseBankServie(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .parameter "bankSerciceArr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 100
    .local v1, bankServices:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1           #bankServices:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    .local v2, bankServices:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 103
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 104
    .local v5, jsonObj:Lorg/json/JSONObject;
    new-instance v0, Lcom/zhangdan/app/data/model/http/BankService;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/http/BankService;-><init>()V

    .line 105
    .local v0, bankService:Lcom/zhangdan/app/data/model/http/BankService;
    const-string v6, "auto_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    const-string v6, "auto_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/zhangdan/app/data/model/http/BankService;->setAuto_id(J)V

    .line 108
    :cond_0
    const-string v6, "bank_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 109
    const-string v6, "bank_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/BankService;->setBank_id(I)V

    .line 111
    :cond_1
    const-string v6, "service_content"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    const-string v6, "service_content"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/BankService;->setServiceContent(Ljava/lang/String;)V

    .line 114
    :cond_2
    const-string v6, "service_type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 115
    const-string v6, "service_type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/BankService;->setServiceType(I)V

    .line 117
    :cond_3
    const-string v6, "ord"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 118
    const-string v6, "ord"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/BankService;->setOrd(I)V

    .line 120
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0           #bankService:Lcom/zhangdan/app/data/model/http/BankService;
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    :cond_5
    move-object v1, v2

    .line 125
    .end local v2           #bankServices:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    .end local v4           #i:I
    .restart local v1       #bankServices:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    :goto_1
    return-object v1

    .line 122
    :catch_0
    move-exception v3

    .line 123
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 122
    .end local v1           #bankServices:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #bankServices:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    .restart local v4       #i:I
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #bankServices:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    .restart local v1       #bankServices:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    goto :goto_2
.end method
