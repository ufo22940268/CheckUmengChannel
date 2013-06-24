.class public Lcom/zhangdan/app/api/AccountApi;
.super Ljava/lang/Object;
.source "AccountApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertUserInfoToJsonStr(Lcom/zhangdan/app/data/model/UserInfo;)Ljava/lang/String;
    .locals 4
    .parameter "userInfo"

    .prologue
    .line 351
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 353
    .local v1, obj:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "UserId"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v2, "Token"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    const-string v2, "FigureUrl"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/UserInfo;->getFigureUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v2, "From"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/UserInfo;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    const-string v2, "LastLoginTime"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/UserInfo;->getLastLoginTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v2, "LoginTime"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/UserInfo;->getLoginTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    const-string v2, "Mobile"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/UserInfo;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const-string v2, "OutId"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/UserInfo;->getOutId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v2, "QQ"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/UserInfo;->getQq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    const-string v2, "Status"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/UserInfo;->getStatus()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 363
    const-string v2, "RegTime"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/UserInfo;->getRegTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v2, "UserName"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static doCommLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    .locals 9
    .parameter "context"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 47
    .local v0, dm:Landroid/util/DisplayMetrics;
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "username"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "password"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "platform"

    const-string v7, "android"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "uuid"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device_name"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "version"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "width"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "height"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "colordepth"

    const-string v7, "32"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device_token"

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "app_id"

    const-string v7, "1"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "macid"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "http://www.51zhangdan.com"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, "/service/user/login.ashx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, url:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, resp:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 63
    const/4 v4, 0x0

    .line 66
    :goto_0
    return-object v4

    .line 64
    :cond_0
    const-string v5, "doCommLogin"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {v2}, Lcom/zhangdan/app/api/AccountApi;->parseUserLoginInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    move-result-object v4

    .line 66
    .local v4, userLoginInfo:Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    goto :goto_0
.end method

.method public static doMailAccountLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;
    .locals 13
    .parameter "context"
    .parameter "mailAccount"
    .parameter "pwd"

    .prologue
    .line 225
    new-instance v11, Ljava/lang/StringBuffer;

    const-string v12, "http://www.51zhangdan.com"

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v12, "/service/user/mail_account_login.ashx"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, url:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v6, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "mail"

    invoke-direct {v11, v12, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "pass"

    invoke-direct {v11, v12, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-static {v8, v6}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, resp:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 231
    const/4 v1, 0x0

    .line 259
    :cond_0
    :goto_0
    return-object v1

    .line 233
    :cond_1
    const-string v11, "doMailAccountLogin"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 236
    .local v5, obj:Lorg/json/JSONObject;
    new-instance v1, Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;-><init>()V

    .line 237
    .local v1, data:Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;
    const-string v11, "code"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;->setCode(I)V

    .line 238
    const-string v11, "msg"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;->setMsg(Ljava/lang/String;)V

    .line 240
    const-string v11, "list"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 241
    const-string v11, "list"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 242
    .local v0, arr:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 243
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_3

    .line 245
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 246
    .local v10, userObj:Lorg/json/JSONObject;
    invoke-static {v10}, Lcom/zhangdan/app/api/AccountApi;->parseUserSuiInfo(Lorg/json/JSONObject;)Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v9

    .line 247
    .local v9, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-eqz v9, :cond_2

    .line 248
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 251
    .end local v9           #userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    .end local v10           #userObj:Lorg/json/JSONObject;
    :cond_3
    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;->setList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #data:Lcom/zhangdan/app/data/model/http/MailAccountLoginResult;
    .end local v3           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserInfo;>;"
    .end local v5           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 257
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 259
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static doQQLogin(Landroid/content/Context;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    .locals 9
    .parameter "context"
    .parameter "qqToken"

    .prologue
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 79
    .local v0, dm:Landroid/util/DisplayMetrics;
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "access_token"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "from"

    const-string v7, "mobile"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "platform"

    const-string v7, "android"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "uuid"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device_name"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "version"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "width"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "height"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "colordepth"

    const-string v7, "32"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device_token"

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "app_id"

    const-string v7, "1"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "macid"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "http://www.51zhangdan.com"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, "/service/user/qqlogin.ashx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, url:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, resp:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 95
    const/4 v4, 0x0

    .line 98
    :goto_0
    return-object v4

    .line 96
    :cond_0
    const-string v5, "doQQLogin"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {v2}, Lcom/zhangdan/app/api/AccountApi;->parseUserLoginInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    move-result-object v4

    .line 98
    .local v4, userLoginInfo:Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    goto :goto_0
.end method

.method public static doQuickLogin(Landroid/content/Context;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    .locals 7
    .parameter "context"

    .prologue
    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "devicename"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "platform"

    const-string v6, "android"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "devicetoken"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "version"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "uuid"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v4, "doQuickLogin"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v4, "doQuickLogin"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "macid"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "app_id"

    const-string v6, "1"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "http://www.51zhangdan.com"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "/service/user/quicklogin.ashx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, url:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, resp:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 187
    const/4 v3, 0x0

    .line 190
    :goto_0
    return-object v3

    .line 188
    :cond_0
    const-string v4, "doQuickLogin"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {v1}, Lcom/zhangdan/app/api/AccountApi;->parseUserLoginInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    move-result-object v3

    .line 190
    .local v3, userLoginInfo:Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    goto :goto_0
.end method

.method public static doRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/RegisterResult;
    .locals 7
    .parameter "context"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 201
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "http://www.51zhangdan.com"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "/service/user/register.ashx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, url:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "username"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "password"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "platform"

    const-string v6, "android"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "macid"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "app_id"

    const-string v6, "1"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-static {v3, v1}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, resp:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 212
    :goto_0
    return-object v0

    .line 211
    :cond_0
    invoke-static {v2}, Lcom/zhangdan/app/api/AccountApi;->parseRegisterResult(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/RegisterResult;

    move-result-object v0

    .line 212
    .local v0, data:Lcom/zhangdan/app/data/model/http/RegisterResult;
    goto :goto_0
.end method

.method public static doSinaLogin(Landroid/content/Context;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    .locals 9
    .parameter "context"
    .parameter "sinaToken"

    .prologue
    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 146
    .local v0, dm:Landroid/util/DisplayMetrics;
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "access_token"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "platform"

    const-string v7, "android"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "uuid"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device_name"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "version"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "width"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "height"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "colordepth"

    const-string v7, "32"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device_token"

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "app_id"

    const-string v7, "1"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "macid"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "http://www.51zhangdan.com"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, "/service/user/sinalogin.ashx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, url:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, resp:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 160
    const/4 v4, 0x0

    .line 163
    :goto_0
    return-object v4

    .line 161
    :cond_0
    const-string v5, "doSinaLogin"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {v2}, Lcom/zhangdan/app/api/AccountApi;->parseUserLoginInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    move-result-object v4

    .line 163
    .local v4, userLoginInfo:Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    goto :goto_0
.end method

.method public static doTencentWeiboLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    .locals 9
    .parameter "context"
    .parameter "qqToken"
    .parameter "openid"
    .parameter "openkey"

    .prologue
    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 111
    .local v0, dm:Landroid/util/DisplayMetrics;
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "access_token"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "openid"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "openkey"

    invoke-direct {v5, v6, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "from"

    const-string v7, "mobile"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "platform"

    const-string v7, "android"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "uuid"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device_name"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "version"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "width"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "height"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "colordepth"

    const-string v7, "32"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device_token"

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "app_id"

    const-string v7, "1"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "macid"

    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->getMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "http://www.51zhangdan.com"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, "/service/user/qqlogin.ashx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, url:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/zhangdan/app/http/HttpUtils;->get(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, resp:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 130
    const/4 v4, 0x0

    .line 133
    :goto_0
    return-object v4

    .line 131
    :cond_0
    const-string v5, "doQQLogin"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {v2}, Lcom/zhangdan/app/api/AccountApi;->parseUserLoginInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    move-result-object v4

    .line 133
    .local v4, userLoginInfo:Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    goto :goto_0
.end method

.method private static parseRegisterResult(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/RegisterResult;
    .locals 6
    .parameter "json"

    .prologue
    .line 379
    const-string v3, "Register"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 382
    .local v2, obj:Lorg/json/JSONObject;
    new-instance v0, Lcom/zhangdan/app/data/model/http/RegisterResult;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/http/RegisterResult;-><init>()V

    .line 383
    .local v0, data:Lcom/zhangdan/app/data/model/http/RegisterResult;
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/data/model/http/RegisterResult;->setCode(I)V

    .line 384
    const-string v3, "msg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/data/model/http/RegisterResult;->setMsg(Ljava/lang/String;)V

    .line 386
    const-string v3, "username"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    const-string v3, "username"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/data/model/http/RegisterResult;->setUsername(Ljava/lang/String;)V

    .line 389
    :cond_0
    const-string v3, "password"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 390
    const-string v3, "password"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/data/model/http/RegisterResult;->setPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v0           #data:Lcom/zhangdan/app/data/model/http/RegisterResult;
    .end local v2           #obj:Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-object v0

    .line 393
    :catch_0
    move-exception v1

    .line 394
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 396
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseUserLoginInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    .locals 5
    .parameter "json"

    .prologue
    .line 270
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    .local v2, obj:Lorg/json/JSONObject;
    new-instance v0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;-><init>()V

    .line 272
    .local v0, data:Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->setCode(I)V

    .line 273
    const-string v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->setMsg(Ljava/lang/String;)V

    .line 274
    const-string v4, "time"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->setTime(Ljava/lang/String;)V

    .line 276
    const-string v4, "sui"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    const-string v4, "sui"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, userInfo:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->setUserInfo(Ljava/lang/String;)V

    .line 280
    .end local v3           #userInfo:Ljava/lang/String;
    :cond_0
    const-string v4, "mailcount"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    const-string v4, "mailcount"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->setMailcount(I)V

    .line 282
    :cond_1
    const-string v4, "bbs_api_url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    const-string v4, "bbs_api_url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->setBbsApiUrl(Ljava/lang/String;)V

    .line 284
    :cond_2
    const-string v4, "uc_time"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 285
    const-string v4, "uc_time"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->setUcTime(Ljava/lang/String;)V

    .line 286
    :cond_3
    const-string v4, "uc_code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 287
    const-string v4, "uc_code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->setUcCode(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v0           #data:Lcom/zhangdan/app/data/model/http/UserLoginInfo;
    .end local v2           #obj:Lorg/json/JSONObject;
    :cond_4
    :goto_0
    return-object v0

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 292
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseUserSuiInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/UserInfo;
    .locals 4
    .parameter "suiJson"

    .prologue
    const/4 v2, 0x0

    .line 302
    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    :goto_0
    return-object v2

    .line 305
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 306
    .local v1, obj:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/zhangdan/app/api/AccountApi;->parseUserSuiInfo(Lorg/json/JSONObject;)Lcom/zhangdan/app/data/model/UserInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 307
    .end local v1           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseUserSuiInfo(Lorg/json/JSONObject;)Lcom/zhangdan/app/data/model/UserInfo;
    .locals 5
    .parameter "obj"

    .prologue
    .line 315
    :try_start_0
    const-string v4, "UserId"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, userId:Ljava/lang/String;
    const-string v4, "Token"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, token:Ljava/lang/String;
    new-instance v3, Lcom/zhangdan/app/data/model/UserInfo;

    invoke-direct {v3}, Lcom/zhangdan/app/data/model/UserInfo;-><init>()V

    .line 319
    .local v3, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    invoke-virtual {v3, v2}, Lcom/zhangdan/app/data/model/UserInfo;->setUserId(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v3, v1}, Lcom/zhangdan/app/data/model/UserInfo;->setToken(Ljava/lang/String;)V

    .line 322
    const-string v4, "FigureUrl"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    const-string v4, "FigureUrl"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/data/model/UserInfo;->setFigureUrl(Ljava/lang/String;)V

    .line 324
    :cond_0
    const-string v4, "From"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 325
    const-string v4, "From"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/data/model/UserInfo;->setFrom(Ljava/lang/String;)V

    .line 326
    :cond_1
    const-string v4, "LastLoginTime"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 327
    const-string v4, "LastLoginTime"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/data/model/UserInfo;->setLastLoginTime(Ljava/lang/String;)V

    .line 328
    :cond_2
    const-string v4, "LoginTime"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 329
    const-string v4, "LoginTime"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/data/model/UserInfo;->setLoginTime(Ljava/lang/String;)V

    .line 330
    :cond_3
    const-string v4, "Mobile"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 331
    const-string v4, "Mobile"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/data/model/UserInfo;->setMobile(Ljava/lang/String;)V

    .line 332
    :cond_4
    const-string v4, "OutId"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 333
    const-string v4, "OutId"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/data/model/UserInfo;->setOutId(Ljava/lang/String;)V

    .line 334
    :cond_5
    const-string v4, "QQ"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 335
    const-string v4, "QQ"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/data/model/UserInfo;->setQq(Ljava/lang/String;)V

    .line 336
    :cond_6
    const-string v4, "Status"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 337
    const-string v4, "Status"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/data/model/UserInfo;->setStatus(I)V

    .line 338
    :cond_7
    const-string v4, "RegTime"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 339
    const-string v4, "RegTime"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/data/model/UserInfo;->setRegTime(Ljava/lang/String;)V

    .line 340
    :cond_8
    const-string v4, "UserName"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 341
    const-string v4, "UserName"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/data/model/UserInfo;->setUserName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v1           #token:Ljava/lang/String;
    .end local v2           #userId:Ljava/lang/String;
    .end local v3           #userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    :cond_9
    :goto_0
    return-object v3

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 347
    const/4 v3, 0x0

    goto :goto_0
.end method
