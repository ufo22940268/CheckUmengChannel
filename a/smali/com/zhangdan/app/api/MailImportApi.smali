.class public Lcom/zhangdan/app/api/MailImportApi;
.super Ljava/lang/Object;
.source "MailImportApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doMailLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailLoginResult;
    .locals 6
    .parameter "token"
    .parameter "userId"
    .parameter "mailAccount"
    .parameter "mailPwd"
    .parameter "specialPwd"
    .parameter "verifyCode"
    .parameter "phoneCode"
    .parameter "uuid"

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "mail_account"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "mail_pass"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "special_pass"

    invoke-direct {v3, v4, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "verify_code"

    invoke-direct {v3, v4, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "phone_code"

    invoke-direct {v3, v4, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "uuid"

    invoke-direct {v3, v4, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "platform"

    const-string v5, "android"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_id"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    invoke-direct {v3, v4, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v2, "http://www.51zhangdan.com/service/user/set_mail_account.ashx?"

    .line 53
    .local v2, url:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, resp:Ljava/lang/String;
    const-string v4, "MailImportApi"

    if-nez v1, :cond_0

    const-string v3, "null"

    :goto_0
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {v1}, Lcom/zhangdan/app/api/MailImportApi;->parseMailLoginJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailLoginResult;

    move-result-object v3

    return-object v3

    :cond_0
    move-object v3, v1

    .line 54
    goto :goto_0
.end method

.method public static getBillMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailBillResult;
    .locals 5
    .parameter "token"
    .parameter "userId"
    .parameter "mailAccountId"
    .parameter "startModifyTime"

    .prologue
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    invoke-direct {v3, v4, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_id"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "mail_account_id"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "start_modify_time"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v2, "http://www.51zhangdan.com/service/mail/get_mail_bill.ashx?"

    .line 149
    .local v2, url:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, resp:Ljava/lang/String;
    const-string v4, "MailImportApi"

    if-nez v1, :cond_0

    const-string v3, "null"

    :goto_0
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {v1}, Lcom/zhangdan/app/api/MailImportApi;->parseMailBills(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailBillResult;

    move-result-object v3

    return-object v3

    :cond_0
    move-object v3, v1

    .line 150
    goto :goto_0
.end method

.method public static getMailStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailStatusResult;
    .locals 5
    .parameter "token"
    .parameter "userId"
    .parameter "sid"

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    invoke-direct {v3, v4, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_id"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sid"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "mail_account_id"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v2, "http://www.51zhangdan.com/service/mail/get_mail_status.ashx?"

    .line 103
    .local v2, url:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, resp:Ljava/lang/String;
    const-string v4, "MailImportApi"

    if-nez v1, :cond_0

    const-string v3, "null"

    :goto_0
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {v1}, Lcom/zhangdan/app/api/MailImportApi;->parseMailStatusJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailStatusResult;

    move-result-object v3

    return-object v3

    :cond_0
    move-object v3, v1

    .line 104
    goto :goto_0
.end method

.method private static parseMailBills(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailBillResult;
    .locals 14
    .parameter "json"

    .prologue
    const/4 v11, 0x0

    .line 156
    if-nez p0, :cond_1

    move-object v4, v11

    .line 232
    :cond_0
    :goto_0
    return-object v4

    .line 158
    :cond_1
    const-string v12, "parseMailBills"

    invoke-static {v12, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    .local v10, obj:Lorg/json/JSONObject;
    const-string v12, "code"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 162
    .local v2, code:I
    const-string v12, "msg"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, msg:Ljava/lang/String;
    new-instance v4, Lcom/zhangdan/app/data/model/http/MailBillResult;

    invoke-direct {v4}, Lcom/zhangdan/app/data/model/http/MailBillResult;-><init>()V

    .line 164
    .local v4, data:Lcom/zhangdan/app/data/model/http/MailBillResult;
    invoke-virtual {v4, v2}, Lcom/zhangdan/app/data/model/http/MailBillResult;->setCode(I)V

    .line 165
    invoke-virtual {v4, v9}, Lcom/zhangdan/app/data/model/http/MailBillResult;->setMsg(Ljava/lang/String;)V

    .line 167
    const-string v12, "time"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 168
    const-string v12, "time"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/zhangdan/app/data/model/http/MailBillResult;->setTime(Ljava/lang/String;)V

    .line 174
    :cond_2
    const-string v12, "MailBills"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 175
    const-string v12, "MailBills"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 176
    .local v1, JsonMails:Lorg/json/JSONArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zhangdan/app/data/model/http/MailBillInfo;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_10

    .line 178
    new-instance v8, Lcom/zhangdan/app/data/model/http/MailBillInfo;

    invoke-direct {v8}, Lcom/zhangdan/app/data/model/http/MailBillInfo;-><init>()V

    .line 179
    .local v8, mailBill:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 180
    .local v0, JsonMail:Lorg/json/JSONObject;
    const-string v12, "mail_id"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 181
    const-string v12, "mail_id"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setMailId(J)V

    .line 183
    :cond_3
    const-string v12, "user_id"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 184
    const-string v12, "user_id"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setUserId(J)V

    .line 186
    :cond_4
    const-string v12, "mail_account_id"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 187
    const-string v12, "mail_account_id"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setMailAccountId(J)V

    .line 189
    :cond_5
    const-string v12, "mail_subject"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 190
    const-string v12, "mail_subject"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setMailSubject(Ljava/lang/String;)V

    .line 192
    :cond_6
    const-string v12, "mail_type"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 193
    const-string v12, "mail_type"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setMailType(I)V

    .line 195
    :cond_7
    const-string v12, "from_type"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 196
    const-string v12, "from_type"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setFromType(I)V

    .line 199
    :cond_8
    const-string v12, "analyze_state"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 200
    const-string v12, "analyze_state"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setAnalyseState(I)V

    .line 202
    :cond_9
    const-string v12, "analyze_msg"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 203
    const-string v12, "analyze_msg"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setAnalyseMsg(Ljava/lang/String;)V

    .line 206
    :cond_a
    const-string v12, "status"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 207
    const-string v12, "status"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setStatus(I)V

    .line 209
    :cond_b
    const-string v12, "state_msg"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 210
    const-string v12, "state_msg"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setStateMsg(Ljava/lang/String;)V

    .line 213
    :cond_c
    const-string v12, "create_time"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 214
    const-string v12, "create_time"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, createTime:Ljava/lang/String;
    invoke-virtual {v8, v3}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setCreateTime(Ljava/lang/String;)V

    .line 217
    .end local v3           #createTime:Ljava/lang/String;
    :cond_d
    const-string v12, "analyze_time"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 218
    const-string v12, "analyze_time"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setAnalyseTime(Ljava/lang/String;)V

    .line 220
    :cond_e
    const-string v12, "send_time"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 221
    const-string v12, "send_time"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setSendTime(Ljava/lang/String;)V

    .line 223
    :cond_f
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 225
    .end local v0           #JsonMail:Lorg/json/JSONObject;
    .end local v8           #mailBill:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    :cond_10
    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/http/MailBillResult;->setBillList(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 229
    .end local v1           #JsonMails:Lorg/json/JSONArray;
    .end local v2           #code:I
    .end local v4           #data:Lcom/zhangdan/app/data/model/http/MailBillResult;
    .end local v6           #i:I
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zhangdan/app/data/model/http/MailBillInfo;>;"
    .end local v9           #msg:Ljava/lang/String;
    .end local v10           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 230
    .local v5, e:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v11

    .line 232
    goto/16 :goto_0
.end method

.method private static parseMailLoginJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailLoginResult;
    .locals 8
    .parameter "json"

    .prologue
    const/4 v5, 0x0

    .line 59
    if-nez p0, :cond_1

    move-object v1, v5

    .line 84
    :cond_0
    :goto_0
    return-object v1

    .line 62
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v4, obj:Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, code:I
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, msg:Ljava/lang/String;
    new-instance v1, Lcom/zhangdan/app/data/model/http/MailLoginResult;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/MailLoginResult;-><init>()V

    .line 66
    .local v1, data:Lcom/zhangdan/app/data/model/http/MailLoginResult;
    invoke-virtual {v1, v0}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->setCode(I)V

    .line 67
    invoke-virtual {v1, v3}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->setMsg(Ljava/lang/String;)V

    .line 68
    const-string v6, "auto_id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 69
    const-string v6, "auto_id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->setAutoId(J)V

    .line 70
    :cond_2
    const-string v6, "mail_account"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 71
    const-string v6, "mail_account"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->setMailAccount(Ljava/lang/String;)V

    .line 72
    :cond_3
    const-string v6, "sid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 73
    const-string v6, "sid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->setSid(Ljava/lang/String;)V

    .line 74
    :cond_4
    const-string v6, "bulk"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 75
    const-string v6, "bulk"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->setBulk(Z)V

    .line 76
    :cond_5
    const-string v6, "pop"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 77
    const-string v6, "pop"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->setPop(Z)V

    .line 78
    :cond_6
    const-string v6, "time"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    const-string v6, "time"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->setTime(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 81
    .end local v0           #code:I
    .end local v1           #data:Lcom/zhangdan/app/data/model/http/MailLoginResult;
    .end local v3           #msg:Ljava/lang/String;
    .end local v4           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 82
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v5

    .line 84
    goto/16 :goto_0
.end method

.method private static parseMailStatusJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailStatusResult;
    .locals 7
    .parameter "json"

    .prologue
    const/4 v5, 0x0

    .line 109
    if-nez p0, :cond_1

    move-object v1, v5

    .line 130
    :cond_0
    :goto_0
    return-object v1

    .line 112
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    .local v4, obj:Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 114
    .local v0, code:I
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, msg:Ljava/lang/String;
    new-instance v1, Lcom/zhangdan/app/data/model/http/MailStatusResult;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;-><init>()V

    .line 116
    .local v1, data:Lcom/zhangdan/app/data/model/http/MailStatusResult;
    invoke-virtual {v1, v0}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->setCode(I)V

    .line 117
    invoke-virtual {v1, v3}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->setMsg(Ljava/lang/String;)V

    .line 118
    const-string v6, "status_msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 119
    const-string v6, "status_msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->setStatusMsg(Ljava/lang/String;)V

    .line 120
    :cond_2
    const-string v6, "recently_complete"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 121
    const-string v6, "recently_complete"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->setRecentlyComplete(I)V

    .line 122
    :cond_3
    const-string v6, "data"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 123
    const-string v6, "data"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->setData(Ljava/lang/String;)V

    .line 124
    :cond_4
    const-string v6, "time"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 125
    const-string v6, "time"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->setTime(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v0           #code:I
    .end local v1           #data:Lcom/zhangdan/app/data/model/http/MailStatusResult;
    .end local v3           #msg:Ljava/lang/String;
    .end local v4           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 128
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v5

    .line 130
    goto :goto_0
.end method
