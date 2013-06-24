.class public Lcom/zhangdan/app/api/BillApi;
.super Ljava/lang/Object;
.source "BillApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBillJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "userId"
    .parameter "token"
    .parameter "lastModifyTime"

    .prologue
    .line 35
    const-string v0, ""

    .line 36
    .local v0, json:Ljava/lang/String;
    const-string v2, "http://www.51zhangdan.com/service/bill/get_list.ashx?"

    .line 37
    .local v2, url:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_id"

    invoke-direct {v3, v4, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "last_modify_time"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "page_no"

    const-string v5, "1"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "page_size"

    const-string v5, "500"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "jv"

    const-string v5, "1.22"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
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
    const-string v4, "BillApi"

    if-nez v0, :cond_0

    const-string v3, "null"

    :goto_0
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-object v0

    :cond_0
    move-object v3, v0

    .line 46
    goto :goto_0
.end method

.method private static parseBillInfos(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .parameter "billJsonArr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Bill;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 92
    .local v1, billInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bill;>;"
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1           #billInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bill;>;"
    .local v2, billInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bill;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_20

    .line 95
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 96
    .local v5, jsonObj:Lorg/json/JSONObject;
    new-instance v0, Lcom/zhangdan/app/data/model/http/Bill;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/http/Bill;-><init>()V

    .line 97
    .local v0, billInfo:Lcom/zhangdan/app/data/model/http/Bill;
    const-string v6, "bank_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 98
    const-string v6, "bank_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setBanklId(I)V

    .line 100
    :cond_0
    const-string v6, "bank_simple_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    const-string v6, "bank_simple_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setBankSimpleName(Ljava/lang/String;)V

    .line 104
    :cond_1
    const-string v6, "bank_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 105
    const-string v6, "bank_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setBankName(Ljava/lang/String;)V

    .line 107
    :cond_2
    const-string v6, "bill_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 108
    const-string v6, "bill_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/zhangdan/app/data/model/http/Bill;->setBillId(J)V

    .line 110
    :cond_3
    const-string v6, "user_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 111
    const-string v6, "user_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setUserId(I)V

    .line 113
    :cond_4
    const-string v6, "mail_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 114
    const-string v6, "mail_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/zhangdan/app/data/model/http/Bill;->setMailId(J)V

    .line 116
    :cond_5
    const-string v6, "bill_start_date"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 117
    const-string v6, "bill_start_date"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setBillStartDate(Ljava/lang/String;)V

    .line 120
    :cond_6
    const-string v6, "bill_date"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 121
    const-string v6, "bill_date"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setBillDate(Ljava/lang/String;)V

    .line 123
    :cond_7
    const-string v6, "name_on_card"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 124
    const-string v6, "name_on_card"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setNameOnCard(Ljava/lang/String;)V

    .line 126
    :cond_8
    const-string v6, "payment_due_date"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 127
    const-string v6, "payment_due_date"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setPaymentDueDate(Ljava/lang/String;)V

    .line 130
    :cond_9
    const-string v6, "credit_limit"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 131
    const-string v6, "credit_limit"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setCreditLimit(Ljava/lang/String;)V

    .line 133
    :cond_a
    const-string v6, "cash_limit"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 134
    const-string v6, "cash_limit"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setCashLimit(Ljava/lang/String;)V

    .line 136
    :cond_b
    const-string v6, "new_charges"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 137
    const-string v6, "new_charges"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setNewCharges(Ljava/lang/String;)V

    .line 139
    :cond_c
    const-string v6, "usd_new_charges"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 140
    const-string v6, "usd_new_charges"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setUsdNewCharhes(Ljava/lang/String;)V

    .line 143
    :cond_d
    const-string v6, "min_payment"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 144
    const-string v6, "min_payment"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setMinPayment(Ljava/lang/String;)V

    .line 146
    :cond_e
    const-string v6, "usd_min_payment"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 147
    const-string v6, "usd_min_payment"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setUsdMinPaymnet(Ljava/lang/String;)V

    .line 150
    :cond_f
    const-string v6, "new_balance"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 151
    const-string v6, "new_balance"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setNewBalance(Ljava/lang/String;)V

    .line 153
    :cond_10
    const-string v6, "usd_new_balance"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 154
    const-string v6, "usd_new_balance"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setUsdNewBalance(Ljava/lang/String;)V

    .line 157
    :cond_11
    const-string v6, "adjustment"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 158
    const-string v6, "adjustment"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setAdjustment(Ljava/lang/String;)V

    .line 160
    :cond_12
    const-string v6, "integral"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 161
    const-string v6, "integral"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setIntergral(Ljava/lang/String;)V

    .line 163
    :cond_13
    const-string v6, "integral_valid_unit"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 164
    const-string v6, "integral_valid_unit"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setIntergralValidUntil(Ljava/lang/String;)V

    .line 167
    :cond_14
    const-string v6, "integral_valid_date"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 168
    const-string v6, "integral_valid_date"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setIntegralValidDate(Ljava/lang/String;)V

    .line 171
    :cond_15
    const-string v6, "interest"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 172
    const-string v6, "interest"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setInterest(I)V

    .line 174
    :cond_16
    const-string v6, "last_balance"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 175
    const-string v6, "last_balance"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setLastBalance(Ljava/lang/String;)V

    .line 177
    :cond_17
    const-string v6, "last_payment"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 178
    const-string v6, "last_payment"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setLastPaymnet(Ljava/lang/String;)V

    .line 180
    :cond_18
    const-string v6, "is_return"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 181
    const-string v6, "is_return"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setIsReturn(Ljava/lang/String;)V

    .line 183
    :cond_19
    const-string v6, "card_nums"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 184
    const-string v6, "card_nums"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setCarNums(Ljava/lang/String;)V

    .line 186
    :cond_1a
    const-string v6, "ub_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 187
    const-string v6, "ub_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/zhangdan/app/data/model/http/Bill;->setUbId(J)V

    .line 189
    :cond_1b
    const-string v6, "mail_sender"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 190
    const-string v6, "mail_sender"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setMailSender(Ljava/lang/String;)V

    .line 192
    :cond_1c
    const-string v6, "last_modify_time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 193
    const-string v6, "last_modify_time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setLastModfyTime(Ljava/lang/String;)V

    .line 196
    :cond_1d
    const-string v6, "return_amount"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 197
    const-string v6, "return_amount"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setReturnAmount(Ljava/lang/String;)V

    .line 199
    :cond_1e
    const-string v6, "create_time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 200
    const-string v6, "create_time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/Bill;->setCreateTime(Ljava/lang/String;)V

    .line 202
    :cond_1f
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .end local v0           #billInfo:Lcom/zhangdan/app/data/model/http/Bill;
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    :cond_20
    move-object v1, v2

    .line 209
    .end local v2           #billInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bill;>;"
    .end local v4           #i:I
    .restart local v1       #billInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bill;>;"
    :goto_1
    return-object v1

    .line 205
    :catch_0
    move-exception v3

    .line 206
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 205
    .end local v1           #billInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bill;>;"
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #billInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bill;>;"
    .restart local v4       #i:I
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #billInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bill;>;"
    .restart local v1       #billInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bill;>;"
    goto :goto_2
.end method

.method public static parseBillListInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BillListInfo;
    .locals 7
    .parameter "Json"

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, billListInfo:Lcom/zhangdan/app/data/model/http/BillListInfo;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .local v5, jsonObj:Lorg/json/JSONObject;
    new-instance v2, Lcom/zhangdan/app/data/model/http/BillListInfo;

    invoke-direct {v2}, Lcom/zhangdan/app/data/model/http/BillListInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1           #billListInfo:Lcom/zhangdan/app/data/model/http/BillListInfo;
    .local v2, billListInfo:Lcom/zhangdan/app/data/model/http/BillListInfo;
    :try_start_1
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/zhangdan/app/data/model/http/BillListInfo;->setCode(I)V

    .line 62
    :cond_0
    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    const-string v6, "msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/zhangdan/app/data/model/http/BillListInfo;->setMsg(Ljava/lang/String;)V

    .line 65
    :cond_1
    const-string v6, "time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 66
    const-string v6, "time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/zhangdan/app/data/model/http/BillListInfo;->setTime(Ljava/lang/String;)V

    .line 68
    :cond_2
    const-string v6, "total_results"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 69
    const-string v6, "total_results"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/zhangdan/app/data/model/http/BillListInfo;->setTotalResults(I)V

    .line 71
    :cond_3
    const-string v6, "Bills"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 72
    const-string v6, "Bills"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 73
    .local v4, jsonArray:Lorg/json/JSONArray;
    invoke-static {v4}, Lcom/zhangdan/app/api/BillApi;->parseBillInfos(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, billInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bill;>;"
    invoke-virtual {v2, v0}, Lcom/zhangdan/app/data/model/http/BillListInfo;->setBillInfos(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #billInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bill;>;"
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    :cond_4
    move-object v1, v2

    .line 80
    .end local v2           #billListInfo:Lcom/zhangdan/app/data/model/http/BillListInfo;
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    .restart local v1       #billListInfo:Lcom/zhangdan/app/data/model/http/BillListInfo;
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v3

    .line 78
    .local v3, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v1           #billListInfo:Lcom/zhangdan/app/data/model/http/BillListInfo;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #billListInfo:Lcom/zhangdan/app/data/model/http/BillListInfo;
    .restart local v5       #jsonObj:Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #billListInfo:Lcom/zhangdan/app/data/model/http/BillListInfo;
    .restart local v1       #billListInfo:Lcom/zhangdan/app/data/model/http/BillListInfo;
    goto :goto_1
.end method
