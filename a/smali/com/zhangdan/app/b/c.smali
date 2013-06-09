.class public final Lcom/zhangdan/app/b/c;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lorg/json/JSONObject;)Lcom/zhangdan/app/data/model/http/a;
    .locals 15

    new-instance v0, Lcom/zhangdan/app/data/model/http/a;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/http/a;-><init>()V

    :try_start_0
    const-string v1, "bank_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "amount"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "create_time"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_name"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_id"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "trade_no"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "card_no"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "bill_id"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v10, "bank_mark"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ali_status"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "ali_trade_id"

    invoke-virtual {p0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "last_modify_time"

    invoke-virtual {p0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "status"

    invoke-virtual {p0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/a;->a(I)V

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/data/model/http/a;->e(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/data/model/http/a;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/zhangdan/app/data/model/http/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/http/a;->i(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/zhangdan/app/data/model/http/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/zhangdan/app/data/model/http/a;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Lcom/zhangdan/app/data/model/http/a;->a(J)V

    invoke-virtual {v0, v10}, Lcom/zhangdan/app/data/model/http/a;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/zhangdan/app/data/model/http/a;->b(I)V

    invoke-virtual {v0, v12}, Lcom/zhangdan/app/data/model/http/a;->f(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/data/model/http/a;->g(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lcom/zhangdan/app/data/model/http/a;->c(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/b;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "msg"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/zhangdan/app/data/model/http/b;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/b;-><init>()V

    invoke-virtual {v1, v3}, Lcom/zhangdan/app/data/model/http/b;->a(I)V

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/http/b;->a(Ljava/lang/String;)V

    const-string v3, "time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zhangdan/app/data/model/http/b;->b(Ljava/lang/String;)V

    :cond_1
    const-string v3, "Trade"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Trade"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/b/c;->a(Lorg/json/JSONObject;)Lcom/zhangdan/app/data/model/http/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/http/b;->a(Lcom/zhangdan/app/data/model/http/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/b;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_id"

    invoke-direct {v1, v2, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "action"

    const-string v3, "alipay_return"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "bill_id"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "bank_id"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_name"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "card_no"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "amount"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "http://www.51zhangdan.com/service/bill/set.ashx?"

    invoke-static {v1, v0}, Lcom/zhangdan/app/d/b;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/b/c;->a(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/c;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_id"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "bill_id"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "http://www.51zhangdan.com/service/alipay/get_list.ashx?"

    invoke-static {v1, v0}, Lcom/zhangdan/app/d/b;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "userId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",billId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/b/c;->b(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/c;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/c;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "msg"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/zhangdan/app/data/model/http/c;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/c;-><init>()V

    invoke-virtual {v1, v3}, Lcom/zhangdan/app/data/model/http/c;->a(I)V

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/http/c;->a(Ljava/lang/String;)V

    const-string v3, "time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zhangdan/app/data/model/http/c;->b(Ljava/lang/String;)V

    :cond_1
    const-string v3, "total_results"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "total_results"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/zhangdan/app/data/model/http/c;->b(I)V

    :cond_2
    const-string v3, "Trades"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Trades"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_4

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/http/c;->a(Ljava/util/List;)V

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangdan/app/b/c;->a(Lorg/json/JSONObject;)Lcom/zhangdan/app/data/model/http/a;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
