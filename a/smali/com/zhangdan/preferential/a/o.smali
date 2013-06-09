.class public final Lcom/zhangdan/preferential/a/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zhangdan/preferential/a/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zhangdan/preferential/a/i;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/i;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/a/o;->a:Lcom/zhangdan/preferential/a/i;

    return-void
.end method

.method public static a(Lcom/zhangdan/preferential/data/model/Position;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://api.map.baidu.com/geocoder?output=json&location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/zhangdan/preferential/data/model/Position;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",%20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zhangdan/preferential/data/model/Position;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&key=118A822A3605D14F287715C841F9490DB6CB2379"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "poiid"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "access_token"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://api.weibo.com/2/place/pois/photos.json?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/zhangdan/preferential/data/model/d;

    const/16 v1, 0x44d

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    const-string v1, "name"

    const-string v2, "topic"

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/zhangdan/preferential/data/model/Position;IILjava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/zhangdan/preferential/data/model/d;

    const/16 v1, 0x835

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    const-string v1, "pageNo"

    invoke-virtual {v0, v1, p1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;I)V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    invoke-static {p2}, Lcom/zhangdan/preferential/data/b;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "typeId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Lcom/zhangdan/preferential/data/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Lcom/zhangdan/preferential/data/model/d;->a(I)V

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Lcom/zhangdan/preferential/data/model/d;->a(Lcom/zhangdan/preferential/data/model/Position;)V

    :cond_2
    invoke-virtual {v0, p3}, Lcom/zhangdan/preferential/data/model/d;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lcom/zhangdan/preferential/data/model/d;

    const/16 v1, 0x2392

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lcom/zhangdan/preferential/data/model/d;

    const/16 v0, 0x23f1

    invoke-direct {v1, v0}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    invoke-virtual {v1, p2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;)V

    const-string v0, "shopId"

    invoke-virtual {v1, v0, p0}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "items"

    invoke-virtual {v1, v2, v0}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[I)Lorg/json/JSONObject;
    .locals 5

    new-instance v1, Lcom/zhangdan/preferential/data/model/d;

    const/16 v0, 0xc81

    invoke-direct {v1, v0}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    const-string v0, "pageNo"

    invoke-virtual {v1, v0, p2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;I)V

    const-string v0, "city"

    invoke-virtual {v1, v0, p1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tag"

    invoke-virtual {v1, v0, p3}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p4

    if-eqz v0, :cond_1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    array-length v3, p4

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_2

    const-string v0, "bankIds"

    invoke-virtual {v1, v0, v2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_1
    invoke-virtual {v1}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_2
    aget v4, p4, v0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zhangdan/preferential/data/model/d;

    const/16 v2, 0x2391

    invoke-direct {v0, v2}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;)V

    const-string v2, "bankIds"

    invoke-virtual {v0, v2, v1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lcom/zhangdan/preferential/data/model/d;

    const/16 v1, 0x835

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    const-string v1, "keyword"

    invoke-virtual {v0, v1, p1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pageNo"

    invoke-virtual {v0, v1, p2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/zhangdan/preferential/a/o;->a:Lcom/zhangdan/preferential/a/i;

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/data/model/d;->a(Lcom/zhangdan/preferential/data/model/Position;)V

    :cond_0
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
