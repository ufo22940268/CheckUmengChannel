.class public Lcom/zhangdan/app/api/UserBankApi;
.super Ljava/lang/Object;
.source "UserBankApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserBankJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "userId"
    .parameter "token"
    .parameter "lastModifyTime"

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, json:Ljava/lang/String;
    :try_start_0
    const-string v3, "http://www.51zhangdan.com/service/bank/get_user_bank.ashx?"

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

    const-string v6, "1"

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

    .line 44
    invoke-static {v3, v2}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    .end local v2           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseBank(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserBankList;
    .locals 7
    .parameter "json"

    .prologue
    .line 59
    const/4 v3, 0x0

    .line 61
    .local v3, userBankList:Lcom/zhangdan/app/data/model/http/UserBankList;
    :try_start_0
    new-instance v4, Lcom/zhangdan/app/data/model/http/UserBankList;

    invoke-direct {v4}, Lcom/zhangdan/app/data/model/http/UserBankList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v3           #userBankList:Lcom/zhangdan/app/data/model/http/UserBankList;
    .local v4, userBankList:Lcom/zhangdan/app/data/model/http/UserBankList;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, jsonObj:Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    const-string v6, "code"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/zhangdan/app/data/model/http/UserBankList;->setCode(I)V

    .line 66
    :cond_0
    const-string v6, "msg"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    const-string v6, "msg"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/zhangdan/app/data/model/http/UserBankList;->setMsg(Ljava/lang/String;)V

    .line 69
    :cond_1
    const-string v6, "time"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 70
    const-string v6, "time"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/zhangdan/app/data/model/http/UserBankList;->setTime(Ljava/lang/String;)V

    .line 72
    :cond_2
    const-string v6, "total_results"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 73
    const-string v6, "total_results"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/zhangdan/app/data/model/http/UserBankList;->setTotalResults(I)V

    .line 75
    :cond_3
    const-string v6, "UserBanks"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 77
    const-string v6, "UserBanks"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 78
    .local v1, jsonArray:Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/zhangdan/app/api/UserBankApi;->parseUserBanks(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 79
    .local v5, userBanks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/UserBank;>;"
    invoke-virtual {v4, v5}, Lcom/zhangdan/app/data/model/http/UserBankList;->setUserBanks(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1           #jsonArray:Lorg/json/JSONArray;
    .end local v5           #userBanks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/UserBank;>;"
    :cond_4
    move-object v3, v4

    .line 86
    .end local v2           #jsonObj:Lorg/json/JSONObject;
    .end local v4           #userBankList:Lcom/zhangdan/app/data/model/http/UserBankList;
    .restart local v3       #userBankList:Lcom/zhangdan/app/data/model/http/UserBankList;
    :goto_0
    return-object v3

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #userBankList:Lcom/zhangdan/app/data/model/http/UserBankList;
    .restart local v4       #userBankList:Lcom/zhangdan/app/data/model/http/UserBankList;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #userBankList:Lcom/zhangdan/app/data/model/http/UserBankList;
    .restart local v3       #userBankList:Lcom/zhangdan/app/data/model/http/UserBankList;
    goto :goto_1
.end method

.method private static parseUserBanks(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .parameter "userBanksArr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/UserBank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v4, 0x0

    .line 99
    .local v4, userBanks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/UserBank;>;"
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v4           #userBanks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/UserBank;>;"
    .local v5, userBanks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/UserBank;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_e

    .line 102
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 103
    .local v2, jsonObj:Lorg/json/JSONObject;
    new-instance v3, Lcom/zhangdan/app/data/model/http/UserBank;

    invoke-direct {v3}, Lcom/zhangdan/app/data/model/http/UserBank;-><init>()V

    .line 104
    .local v3, userBank:Lcom/zhangdan/app/data/model/http/UserBank;
    const-string v6, "user_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    const-string v6, "user_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/UserBank;->setUser_id(Ljava/lang/String;)V

    .line 107
    :cond_0
    const-string v6, "bank_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    const-string v6, "bank_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/UserBank;->setBank_id(Ljava/lang/String;)V

    .line 110
    :cond_1
    const-string v6, "bank_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    const-string v6, "bank_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/UserBank;->setBank_name(Ljava/lang/String;)V

    .line 113
    :cond_2
    const-string v6, "name_on_bill"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 114
    const-string v6, "name_on_bill"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/UserBank;->setName_on_bill(Ljava/lang/String;)V

    .line 116
    :cond_3
    const-string v6, "credit_limit"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 117
    const-string v6, "credit_limit"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/UserBank;->setCredit_limit(Ljava/lang/String;)V

    .line 119
    :cond_4
    const-string v6, "cash_limit"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 120
    const-string v6, "cash_limit"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/UserBank;->setCash_limit(Ljava/lang/String;)V

    .line 122
    :cond_5
    const-string v6, "bill_data"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 123
    const-string v6, "bill_data"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/UserBank;->setBill_data(Ljava/lang/String;)V

    .line 125
    :cond_6
    const-string v6, "bind_mail"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 126
    const-string v6, "bind_mail"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/UserBank;->setBind_email(Ljava/lang/String;)V

    .line 128
    :cond_7
    const-string v6, "auto_return_card"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 129
    const-string v6, "auto_return_card"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/UserBank;->setAuto_return_card(Ljava/lang/String;)V

    .line 132
    :cond_8
    const-string v6, "last_bill_date"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 133
    const-string v6, "last_bill_date"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/UserBank;->setLast_bill_date(Ljava/lang/String;)V

    .line 136
    :cond_9
    const-string v6, "status"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 137
    const-string v6, "status"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/UserBank;->setStatus(Ljava/lang/String;)V

    .line 139
    :cond_a
    const-string v6, "ub_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 140
    const-string v6, "ub_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/zhangdan/app/data/model/http/UserBank;->setUb_id(J)V

    .line 142
    :cond_b
    const-string v6, "last_bill_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 143
    const-string v6, "last_bill_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/UserBank;->setLast_bill_id(Ljava/lang/String;)V

    .line 145
    :cond_c
    const-string v6, "last_bill_due_date"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 146
    const-string v6, "last_bill_due_date"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/zhangdan/app/data/model/http/UserBank;->setLast_bill_due_date(Ljava/lang/String;)V

    .line 149
    :cond_d
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2           #jsonObj:Lorg/json/JSONObject;
    .end local v3           #userBank:Lcom/zhangdan/app/data/model/http/UserBank;
    :cond_e
    move-object v4, v5

    .line 155
    .end local v1           #i:I
    .end local v5           #userBanks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/UserBank;>;"
    .restart local v4       #userBanks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/UserBank;>;"
    :goto_1
    return-object v4

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 151
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #userBanks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/UserBank;>;"
    .restart local v1       #i:I
    .restart local v5       #userBanks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/UserBank;>;"
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5           #userBanks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/UserBank;>;"
    .restart local v4       #userBanks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/UserBank;>;"
    goto :goto_2
.end method
