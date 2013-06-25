.class public Lcom/zhangdan/app/api/UserMailAccountApi;
.super Ljava/lang/Object;
.source "UserMailAccountApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserMailAccountJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "userId"
    .parameter "token"
    .parameter "lastModifyTime"

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, json:Ljava/lang/String;
    const-string v2, "http://www.51zhangdan.com/service/mail/get_user_mail_account.ashx?"

    .line 33
    .local v2, url:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "user_Id"

    invoke-direct {v3, v4, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "last_modify_time"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "page_no"

    const-string v5, "1"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "page_size"

    const-string v5, "500"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "jv"

    const-string v5, "1.22"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
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

    .line 42
    invoke-static {v2, v1}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 43
    return-object v0
.end method

.method private static parseMailAccount(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .parameter "arr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/MailAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/MailAccount;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 80
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_b

    .line 81
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 82
    .local v5, obj:Lorg/json/JSONObject;
    new-instance v0, Lcom/zhangdan/app/data/model/http/MailAccount;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/http/MailAccount;-><init>()V

    .line 83
    .local v0, data:Lcom/zhangdan/app/data/model/http/MailAccount;
    const-string v6, "auto_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 84
    const-string v6, "auto_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/zhangdan/app/data/model/http/MailAccount;->setAutoId(J)V

    .line 85
    :cond_0
    const-string v6, "user_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 86
    const-string v6, "user_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/MailAccount;->setUserId(I)V

    .line 87
    :cond_1
    const-string v6, "mail_account"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 88
    const-string v6, "mail_account"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/MailAccount;->setMailAccount(Ljava/lang/String;)V

    .line 89
    :cond_2
    const-string v6, "pop_state"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 90
    const-string v6, "pop_state"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/MailAccount;->setPopState(I)V

    .line 91
    :cond_3
    const-string v6, "last_pop_msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 92
    const-string v6, "last_pop_msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/MailAccount;->setLastPopMsg(Ljava/lang/String;)V

    .line 93
    :cond_4
    const-string v6, "last_pop_time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 94
    const-string v6, "last_pop_time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/MailAccount;->setLastPopTime(Ljava/lang/String;)V

    .line 95
    :cond_5
    const-string v6, "web_login_state"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 96
    const-string v6, "web_login_state"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/MailAccount;->setWebLoginState(I)V

    .line 97
    :cond_6
    const-string v6, "last_web_access_msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 98
    const-string v6, "last_web_access_msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/MailAccount;->setLastWebAccessMsg(Ljava/lang/String;)V

    .line 99
    :cond_7
    const-string v6, "last_web_access_time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 100
    const-string v6, "last_web_access_time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/MailAccount;->setLastWebAccessTime(Ljava/lang/String;)V

    .line 101
    :cond_8
    const-string v6, "trans_setting_state"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 102
    const-string v6, "trans_setting_state"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/MailAccount;->setTransSettingState(I)V

    .line 103
    :cond_9
    const-string v6, "is_deleted"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 104
    const-string v6, "is_deleted"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/MailAccount;->setIsDeleted(I)V

    .line 105
    :cond_a
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 107
    .end local v0           #data:Lcom/zhangdan/app/data/model/http/MailAccount;
    .end local v5           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 108
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 110
    .end local v1           #e:Lorg/json/JSONException;
    :cond_b
    return-object v4
.end method

.method public static parseMailAccountListInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailAccountList;
    .locals 8
    .parameter "json"

    .prologue
    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, jsonObj:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 50
    .local v5, mailAccountList:Lcom/zhangdan/app/data/model/http/MailAccountList;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v2           #jsonObj:Lorg/json/JSONObject;
    .local v3, jsonObj:Lorg/json/JSONObject;
    :try_start_1
    new-instance v6, Lcom/zhangdan/app/data/model/http/MailAccountList;

    invoke-direct {v6}, Lcom/zhangdan/app/data/model/http/MailAccountList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    .end local v5           #mailAccountList:Lcom/zhangdan/app/data/model/http/MailAccountList;
    .local v6, mailAccountList:Lcom/zhangdan/app/data/model/http/MailAccountList;
    :try_start_2
    const-string v7, "code"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 53
    const-string v7, "code"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/zhangdan/app/data/model/http/MailAccountList;->setCode(I)V

    .line 55
    :cond_0
    const-string v7, "msg"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 56
    const-string v7, "msg"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zhangdan/app/data/model/http/MailAccountList;->setMsg(Ljava/lang/String;)V

    .line 58
    :cond_1
    const-string v7, "time"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 59
    const-string v7, "time"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zhangdan/app/data/model/http/MailAccountList;->setTime(Ljava/lang/String;)V

    .line 61
    :cond_2
    const-string v7, "total_results"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 62
    const-string v7, "total_results"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/zhangdan/app/data/model/http/MailAccountList;->setTotalResults(I)V

    .line 64
    :cond_3
    const-string v7, "UserMailAccounts"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 65
    const-string v7, "UserMailAccounts"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 66
    .local v0, banksJson:Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/zhangdan/app/api/UserMailAccountApi;->parseMailAccount(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 67
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/MailAccount;>;"
    invoke-virtual {v6, v4}, Lcom/zhangdan/app/data/model/http/MailAccountList;->setMailList(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v0           #banksJson:Lorg/json/JSONArray;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/MailAccount;>;"
    :cond_4
    move-object v5, v6

    .end local v6           #mailAccountList:Lcom/zhangdan/app/data/model/http/MailAccountList;
    .restart local v5       #mailAccountList:Lcom/zhangdan/app/data/model/http/MailAccountList;
    move-object v2, v3

    .line 73
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .restart local v2       #jsonObj:Lorg/json/JSONObject;
    :goto_0
    return-object v5

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #jsonObj:Lorg/json/JSONObject;
    .restart local v3       #jsonObj:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .restart local v2       #jsonObj:Lorg/json/JSONObject;
    goto :goto_1

    .end local v2           #jsonObj:Lorg/json/JSONObject;
    .end local v5           #mailAccountList:Lcom/zhangdan/app/data/model/http/MailAccountList;
    .restart local v3       #jsonObj:Lorg/json/JSONObject;
    .restart local v6       #mailAccountList:Lcom/zhangdan/app/data/model/http/MailAccountList;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6           #mailAccountList:Lcom/zhangdan/app/data/model/http/MailAccountList;
    .restart local v5       #mailAccountList:Lcom/zhangdan/app/data/model/http/MailAccountList;
    move-object v2, v3

    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .restart local v2       #jsonObj:Lorg/json/JSONObject;
    goto :goto_1
.end method
