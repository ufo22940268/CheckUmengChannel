.class public Lcom/zhangdan/preferential/data/model/CommonRequest;
.super Ljava/lang/Object;
.source "CommonRequest.java"

# interfaces
.implements Lcom/zhangdan/preferential/data/model/Request;


# instance fields
.field request:Lorg/json/JSONObject;

.field root:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "cmd"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->root:Lorg/json/JSONObject;

    .line 26
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->request:Lorg/json/JSONObject;

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->root:Lorg/json/JSONObject;

    const-string v2, "cmd"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->root:Lorg/json/JSONObject;

    const-string v2, "sn"

    invoke-static {}, Lcom/zhangdan/preferential/utils/CommonMethod;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->root:Lorg/json/JSONObject;

    const-string v2, "request"

    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->request:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->root:Lorg/json/JSONObject;

    const-string v2, "channel"

    sget-object v3, Lcom/zhangdan/preferential/data/AppConfig;->channelName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->root:Lorg/json/JSONObject;

    const-string v2, "ver"

    sget-object v3, Lcom/zhangdan/preferential/data/AppConfig;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->root:Lorg/json/JSONObject;

    const-string v2, "os"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->root:Lorg/json/JSONObject;

    const-string v2, "request"

    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->request:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->root:Lorg/json/JSONObject;

    const-string v2, "request"

    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->request:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public put(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->request:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->request:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->request:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->request:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->request:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putPosition(Lcom/zhangdan/preferential/data/model/Position;)V
    .locals 5
    .parameter "pos"

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->request:Lorg/json/JSONObject;

    const-string v2, "lat"

    iget-wide v3, p1, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 100
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->request:Lorg/json/JSONObject;

    const-string v2, "lng"

    iget-wide v3, p1, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putUserId(Ljava/lang/String;)V
    .locals 4
    .parameter "youhuiUid"

    .prologue
    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    :try_start_0
    const-string v1, "uid"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public putWeekType(I)V
    .locals 4
    .parameter "weekType"

    .prologue
    .line 107
    invoke-static {p1}, Lcom/zhangdan/preferential/utils/DateUtils;->getServerDateByWeekConstants(I)I

    move-result v1

    .line 110
    .local v1, serverDate:I
    :try_start_0
    iget-object v2, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->request:Lorg/json/JSONObject;

    const-string v3, "day"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putYouhuiUid(Ljava/lang/String;)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 122
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->request:Lorg/json/JSONObject;

    const-string v2, "uid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/zhangdan/preferential/data/model/CommonRequest;->root:Lorg/json/JSONObject;

    return-object v0
.end method
