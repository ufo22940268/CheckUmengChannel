.class public Lcom/zhangdan/app/data/BankServiceJsonUtil;
.super Ljava/lang/Object;
.source "BankServiceJsonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mergeSmsServiceContent(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankService;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BankServiceContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, bankServiceList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    :cond_0
    const/4 v5, 0x0

    .line 123
    :cond_1
    return-object v5

    .line 112
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v5, serviceContentList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BankServiceContent;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/BankService;

    .line 114
    .local v0, bankService:Lcom/zhangdan/app/data/model/http/BankService;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BankService;->getServiceContent()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, content:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 117
    invoke-static {v1}, Lcom/zhangdan/app/data/BankServiceJsonUtil;->parseSmsServiceContent(Ljava/lang/String;)[Lcom/zhangdan/app/data/model/BankServiceContent;

    move-result-object v2

    .line 118
    .local v2, contentArr:[Lcom/zhangdan/app/data/model/BankServiceContent;
    if-eqz v2, :cond_3

    array-length v6, v2

    if-eqz v6, :cond_3

    .line 120
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_3

    .line 121
    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static mergeTelServiceContent(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankService;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BankServiceContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, bankServiceList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 88
    :cond_0
    const/4 v5, 0x0

    .line 100
    :cond_1
    return-object v5

    .line 89
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v5, serviceContentList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BankServiceContent;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/BankService;

    .line 91
    .local v0, bankService:Lcom/zhangdan/app/data/model/http/BankService;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/BankService;->getServiceContent()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, content:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 94
    invoke-static {v1}, Lcom/zhangdan/app/data/BankServiceJsonUtil;->parseTelServiceContent(Ljava/lang/String;)[Lcom/zhangdan/app/data/model/BankServiceContent;

    move-result-object v2

    .line 95
    .local v2, contentArr:[Lcom/zhangdan/app/data/model/BankServiceContent;
    if-eqz v2, :cond_3

    array-length v6, v2

    if-eqz v6, :cond_3

    .line 97
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_3

    .line 98
    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static parseSmsServiceContent(Ljava/lang/String;)[Lcom/zhangdan/app/data/model/BankServiceContent;
    .locals 13
    .parameter "json"

    .prologue
    .line 55
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v9, obj:Lorg/json/JSONObject;
    const-string v12, "title"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 57
    .local v10, title:Ljava/lang/String;
    const-string v12, "sms"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 58
    .local v0, arr:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    new-array v1, v12, [Lcom/zhangdan/app/data/model/BankServiceContent;

    .line 59
    .local v1, contentArr:[Lcom/zhangdan/app/data/model/BankServiceContent;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v12, v1

    if-ge v6, v12, :cond_0

    .line 60
    new-instance v3, Lcom/zhangdan/app/data/model/BankServiceContent;

    invoke-direct {v3}, Lcom/zhangdan/app/data/model/BankServiceContent;-><init>()V

    .line 61
    .local v3, data:Lcom/zhangdan/app/data/model/BankServiceContent;
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 62
    .local v2, contentObj:Lorg/json/JSONObject;
    const-string v12, "method"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, method:Ljava/lang/String;
    const-string v12, "des"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, des:Ljava/lang/String;
    const-string v12, "isp"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 65
    .local v7, isp:I
    const-string v12, "to"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 66
    .local v11, to:Ljava/lang/String;
    invoke-virtual {v3, v10}, Lcom/zhangdan/app/data/model/BankServiceContent;->setTitle(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v3, v4}, Lcom/zhangdan/app/data/model/BankServiceContent;->setDesc(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3, v8}, Lcom/zhangdan/app/data/model/BankServiceContent;->setMethod(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3, v7}, Lcom/zhangdan/app/data/model/BankServiceContent;->setIsp(I)V

    .line 70
    invoke-virtual {v3, v11}, Lcom/zhangdan/app/data/model/BankServiceContent;->setTo(Ljava/lang/String;)V

    .line 71
    aput-object v3, v1, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 74
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #contentArr:[Lcom/zhangdan/app/data/model/BankServiceContent;
    .end local v2           #contentObj:Lorg/json/JSONObject;
    .end local v3           #data:Lcom/zhangdan/app/data/model/BankServiceContent;
    .end local v4           #des:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #isp:I
    .end local v8           #method:Ljava/lang/String;
    .end local v9           #obj:Lorg/json/JSONObject;
    .end local v10           #title:Ljava/lang/String;
    .end local v11           #to:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 75
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    const/4 v1, 0x0

    .end local v5           #e:Ljava/lang/Exception;
    :cond_0
    return-object v1
.end method

.method public static parseTelServiceContent(Ljava/lang/String;)[Lcom/zhangdan/app/data/model/BankServiceContent;
    .locals 11
    .parameter "json"

    .prologue
    .line 26
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v8, obj:Lorg/json/JSONObject;
    const-string v10, "title"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 28
    .local v9, title:Ljava/lang/String;
    const-string v10, "tel"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 29
    .local v0, arr:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v1, v10, [Lcom/zhangdan/app/data/model/BankServiceContent;

    .line 30
    .local v1, contentArr:[Lcom/zhangdan/app/data/model/BankServiceContent;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v10, v1

    if-ge v6, v10, :cond_0

    .line 31
    new-instance v3, Lcom/zhangdan/app/data/model/BankServiceContent;

    invoke-direct {v3}, Lcom/zhangdan/app/data/model/BankServiceContent;-><init>()V

    .line 32
    .local v3, data:Lcom/zhangdan/app/data/model/BankServiceContent;
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 33
    .local v2, contentObj:Lorg/json/JSONObject;
    const-string v10, "method"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 34
    .local v7, method:Ljava/lang/String;
    const-string v10, "des"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, des:Ljava/lang/String;
    invoke-virtual {v3, v9}, Lcom/zhangdan/app/data/model/BankServiceContent;->setTitle(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v3, v4}, Lcom/zhangdan/app/data/model/BankServiceContent;->setDesc(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3, v7}, Lcom/zhangdan/app/data/model/BankServiceContent;->setMethod(Ljava/lang/String;)V

    .line 38
    aput-object v3, v1, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 41
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #contentArr:[Lcom/zhangdan/app/data/model/BankServiceContent;
    .end local v2           #contentObj:Lorg/json/JSONObject;
    .end local v3           #data:Lcom/zhangdan/app/data/model/BankServiceContent;
    .end local v4           #des:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #method:Ljava/lang/String;
    .end local v8           #obj:Lorg/json/JSONObject;
    .end local v9           #title:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 42
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    const/4 v1, 0x0

    .end local v5           #e:Ljava/lang/Exception;
    :cond_0
    return-object v1
.end method
