.class public Lcom/zhangdan/app/data/model/http/BaseHttpResult;
.super Ljava/lang/Object;
.source "BaseHttpResult.java"


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;
    .locals 7
    .parameter "json"

    .prologue
    const/4 v5, 0x0

    .line 48
    if-nez p0, :cond_0

    move-object v1, v5

    .line 61
    :goto_0
    return-object v1

    .line 51
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    .local v4, obj:Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 53
    .local v0, code:I
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, msg:Ljava/lang/String;
    new-instance v1, Lcom/zhangdan/app/data/model/http/BaseHttpResult;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;-><init>()V

    .line 55
    .local v1, data:Lcom/zhangdan/app/data/model/http/BaseHttpResult;
    invoke-virtual {v1, v0}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->setCode(I)V

    .line 56
    invoke-virtual {v1, v3}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->setMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v0           #code:I
    .end local v1           #data:Lcom/zhangdan/app/data/model/http/BaseHttpResult;
    .end local v3           #msg:Ljava/lang/String;
    .end local v4           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 59
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v5

    .line 61
    goto :goto_0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public parseComm(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "obj"

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 38
    :cond_0
    :try_start_0
    const-string v3, "code"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 39
    .local v0, code:I
    const-string v3, "msg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, msg:Ljava/lang/String;
    iput v0, p0, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->code:I

    .line 41
    iput-object v2, p0, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->msg:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v0           #code:I
    .end local v2           #msg:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 43
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 20
    iput p1, p0, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->code:I

    .line 21
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->msg:Ljava/lang/String;

    .line 27
    return-void
.end method
