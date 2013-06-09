.class public final Lcom/zhangdan/app/b/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/e;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/zhangdan/app/data/model/http/e;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/http/e;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/e;->a(I)V

    :cond_0
    const-string v1, "msg"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "msg"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/e;->a(Ljava/lang/String;)V

    :cond_1
    const-string v1, "time"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "time"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/e;->b(Ljava/lang/String;)V

    :cond_2
    const-string v1, "total_results"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "total_results"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/e;->b(I)V

    :cond_3
    const-string v1, "Banks"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Banks"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/b/d;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/e;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 15

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "bank_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "bank_name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "full_name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "simple_name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "is_deleted"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "logo"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "long_tel"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "short_tel"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "max_free_peirod"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "order_index"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, "point_mall"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v14, Lcom/zhangdan/app/data/model/http/d;

    invoke-direct {v14}, Lcom/zhangdan/app/data/model/http/d;-><init>()V

    invoke-virtual {v14, v4}, Lcom/zhangdan/app/data/model/http/d;->a(I)V

    invoke-virtual {v14, v5}, Lcom/zhangdan/app/data/model/http/d;->a(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Lcom/zhangdan/app/data/model/http/d;->c(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Lcom/zhangdan/app/data/model/http/d;->b(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Lcom/zhangdan/app/data/model/http/d;->b(I)V

    invoke-virtual {v14, v9}, Lcom/zhangdan/app/data/model/http/d;->d(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Lcom/zhangdan/app/data/model/http/d;->f(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Lcom/zhangdan/app/data/model/http/d;->e(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Lcom/zhangdan/app/data/model/http/d;->c(I)V

    invoke-virtual {v14, v3}, Lcom/zhangdan/app/data/model/http/d;->g(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Lcom/zhangdan/app/data/model/http/d;->d(I)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
