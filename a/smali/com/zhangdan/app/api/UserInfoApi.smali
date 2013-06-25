.class public Lcom/zhangdan/app/api/UserInfoApi;
.super Ljava/lang/Object;
.source "UserInfoApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserInfoJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "userId"
    .parameter "token"

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 31
    .local v1, json:Ljava/lang/String;
    :try_start_0
    const-string v3, "http://www.51zhangdan.com/service/user/get_user_info_ext.ashx?"

    .line 32
    .local v3, url:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v2, param:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "token"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "jv"

    const-string v6, "1.22"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
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

    .line 37
    invoke-static {v3, v2}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    .end local v2           #param:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseUserInfoExtJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserInfoExt;
    .locals 11
    .parameter "json"

    .prologue
    .line 51
    new-instance v8, Lcom/zhangdan/app/data/model/http/UserInfoExt;

    invoke-direct {v8}, Lcom/zhangdan/app/data/model/http/UserInfoExt;-><init>()V

    .line 53
    .local v8, userInfo:Lcom/zhangdan/app/data/model/http/UserInfoExt;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v4, obj:Lorg/json/JSONObject;
    const-string v10, "code"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, code:I
    const-string v10, "msg"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, msg:Ljava/lang/String;
    const-string v10, "time"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, time:Ljava/lang/String;
    const-string v10, "UserInfoExt"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 58
    .local v9, userObj:Lorg/json/JSONObject;
    const-string v10, "user_id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 59
    .local v7, userId:I
    const-string v10, "no_push_in_night"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 60
    .local v3, noPushInNight:I
    const-string v10, "private_info"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, privateInfo:Ljava/lang/String;
    invoke-virtual {v8, v0}, Lcom/zhangdan/app/data/model/http/UserInfoExt;->setCode(I)V

    .line 62
    invoke-virtual {v8, v2}, Lcom/zhangdan/app/data/model/http/UserInfoExt;->setMsg(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v8, v6}, Lcom/zhangdan/app/data/model/http/UserInfoExt;->setTime(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v8, v7}, Lcom/zhangdan/app/data/model/http/UserInfoExt;->setUserId(I)V

    .line 65
    invoke-virtual {v8, v3}, Lcom/zhangdan/app/data/model/http/UserInfoExt;->setNoPushInNight(I)V

    .line 66
    invoke-virtual {v8, v5}, Lcom/zhangdan/app/data/model/http/UserInfoExt;->setPrivateInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0           #code:I
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #noPushInNight:I
    .end local v4           #obj:Lorg/json/JSONObject;
    .end local v5           #privateInfo:Ljava/lang/String;
    .end local v6           #time:Ljava/lang/String;
    .end local v7           #userId:I
    .end local v9           #userObj:Lorg/json/JSONObject;
    :goto_0
    return-object v8

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
