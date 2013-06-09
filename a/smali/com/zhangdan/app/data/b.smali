.class public final Lcom/zhangdan/app/data/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 5

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/zhangdan/app/data/b;->a(Ljava/lang/String;)[Lcom/zhangdan/app/data/model/b;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v0, v3

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)[Lcom/zhangdan/app/data/model/b;
    .locals 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/zhangdan/app/data/model/b;

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    new-instance v4, Lcom/zhangdan/app/data/model/b;

    invoke-direct {v4}, Lcom/zhangdan/app/data/model/b;-><init>()V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "method"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "des"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2}, Lcom/zhangdan/app/data/model/b;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/data/model/b;->c(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/zhangdan/app/data/model/b;->b(Ljava/lang/String;)V

    aput-object v4, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 5

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/zhangdan/app/data/b;->b(Ljava/lang/String;)[Lcom/zhangdan/app/data/model/b;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v0, v3

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)[Lcom/zhangdan/app/data/model/b;
    .locals 10

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/zhangdan/app/data/model/b;

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    new-instance v4, Lcom/zhangdan/app/data/model/b;

    invoke-direct {v4}, Lcom/zhangdan/app/data/model/b;-><init>()V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "method"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "des"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "isp"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "to"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2}, Lcom/zhangdan/app/data/model/b;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/zhangdan/app/data/model/b;->c(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/zhangdan/app/data/model/b;->b(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/zhangdan/app/data/model/b;->a(I)V

    invoke-virtual {v4, v5}, Lcom/zhangdan/app/data/model/b;->d(Ljava/lang/String;)V

    aput-object v4, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method
