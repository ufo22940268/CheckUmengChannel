.class public final Lcom/zhangdan/preferential/a/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zhangdan/preferential/a/o;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zhangdan/preferential/a/o;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/o;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/a/f;->a:Lcom/zhangdan/preferential/a/o;

    iput-object p1, p0, Lcom/zhangdan/preferential/a/f;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zhangdan/preferential/a/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/zhangdan/preferential/a/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p2, p1}, Lcom/zhangdan/preferential/a/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/io/BufferedReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_4
    :try_start_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_5
    :goto_5
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v2, v0

    goto :goto_3
.end method

.method private static a(Lcom/zhangdan/preferential/data/model/i;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "actId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/i;->a:Ljava/lang/String;

    const-string v0, "actShopId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/i;->b:Ljava/lang/String;

    const-string v0, "bankId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhangdan/preferential/data/model/i;->c:J

    const-string v0, "bankName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/i;->d:Ljava/lang/String;

    const-string v0, "bankSimpleName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/i;->e:Ljava/lang/String;

    const-string v0, "discountWeeks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/i;->f:Ljava/lang/String;

    const-string v0, "remark"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/i;->j:Ljava/lang/String;

    const-string v0, "startTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/i;->k:Ljava/lang/String;

    const-string v0, "endTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/i;->h:Ljava/lang/String;

    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/i;->i:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/i;->l:Ljava/lang/String;

    const-string v0, "remark"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/i;->j:Ljava/lang/String;

    const-string v0, "discountRule"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/i;->g:Ljava/lang/String;

    const-string v0, "tels"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/i;->m:Ljava/lang/String;

    const-string v0, "rate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/data/model/i;->n:I

    const-string v0, "shortUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/i;->o:Ljava/lang/String;

    const-string v0, "isAttention"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/data/model/i;->a(I)V

    return-void
.end method

.method private static a(Lcom/zhangdan/preferential/data/model/k;Lorg/json/JSONObject;)V
    .locals 6

    const/4 v1, 0x0

    const-string v0, "shopid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/k;->a:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/k;->b:Ljava/lang/String;

    const-string v0, "brandName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/k;->c:Ljava/lang/String;

    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/k;->d:Ljava/lang/String;

    const-string v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/data/model/k;->k:I

    const-string v0, "rate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/data/model/k;->h:I

    const-string v0, "tags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/k;->i:[Ljava/lang/String;

    const-string v0, "loc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/preferential/data/model/Position;

    invoke-direct {v1}, Lcom/zhangdan/preferential/data/model/Position;-><init>()V

    const-string v2, "lat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/zhangdan/preferential/data/model/Position;->a:D

    const-string v2, "lng"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/zhangdan/preferential/data/model/Position;->b:D

    iput-object v1, p0, Lcom/zhangdan/preferential/data/model/k;->s:Lcom/zhangdan/preferential/data/model/Position;

    const-string v0, "addr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/k;->j:Ljava/lang/String;

    const-string v0, "countActivity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/data/model/k;->n:I

    const-string v0, "countGroup"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/data/model/k;->m:I

    const-string v0, "countCard"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/data/model/k;->l:I

    const-string v0, "countTicket"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/data/model/k;->o:I

    const-string v0, "workTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/k;->p:Ljava/lang/String;

    const-string v0, "category"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/preferential/data/model/k;->g:I

    const-string v0, "distance"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/k;->q:Ljava/lang/String;

    const-string v0, "discountWeeks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/k;->r:Ljava/lang/String;

    const-string v0, "shortUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/k;->f:Ljava/lang/String;

    const-string v0, "isAttention"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/data/model/k;->c(I)V

    const-string v0, "myBank"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/data/model/k;->a(I)V

    const-string v0, "isToday"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/data/model/k;->b(I)V

    const-string v0, "tels"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/k;->e:[Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_3

    :cond_2
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/l;)V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "shopList"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    iput-object v1, p1, Lcom/zhangdan/preferential/data/model/l;->w:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/zhangdan/preferential/data/model/k;

    invoke-direct {v4}, Lcom/zhangdan/preferential/data/model/k;-><init>()V

    invoke-static {v4, v3}, Lcom/zhangdan/preferential/a/f;->a(Lcom/zhangdan/preferential/data/model/k;Lorg/json/JSONObject;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static b(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/l;)V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "activityList"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    iput-object v1, p1, Lcom/zhangdan/preferential/data/model/l;->x:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/zhangdan/preferential/data/model/i;

    invoke-direct {v4}, Lcom/zhangdan/preferential/data/model/i;-><init>()V

    invoke-static {v4, v3}, Lcom/zhangdan/preferential/a/f;->a(Lcom/zhangdan/preferential/data/model/i;Lorg/json/JSONObject;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static c(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/l;)V
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "tuanList"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    iput-object v1, p1, Lcom/zhangdan/preferential/data/model/l;->y:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/zhangdan/preferential/data/model/e;

    invoke-direct {v4}, Lcom/zhangdan/preferential/data/model/e;-><init>()V

    const-string v5, "endTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/e;->d:Ljava/lang/String;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/e;->e:Ljava/lang/String;

    const-string v5, "image"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/e;->f:Ljava/lang/String;

    const-string v5, "sourceUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/e;->g:Ljava/lang/String;

    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/e;->h:Ljava/lang/String;

    const-string v5, "orgPrice"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v4, Lcom/zhangdan/preferential/data/model/e;->a:D

    const-string v5, "price"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v4, Lcom/zhangdan/preferential/data/model/e;->b:D

    const-string v5, "discount"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/zhangdan/preferential/data/model/e;->c:J

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static d(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/l;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "ticketCounter"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    iput-object v2, p1, Lcom/zhangdan/preferential/data/model/l;->B:Ljava/util/Map;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "siteIcon"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "count"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static e(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "result"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    :cond_0
    :goto_2
    return-object v2

    :cond_1
    const-string v1, "items"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/zhangdan/preferential/data/model/k;

    invoke-direct {v4}, Lcom/zhangdan/preferential/data/model/k;-><init>()V

    invoke-static {v4, v3}, Lcom/zhangdan/preferential/a/f;->a(Lcom/zhangdan/preferential/data/model/k;Lorg/json/JSONObject;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "TAG"

    const-string v3, "Can\'t parse to shop."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private static e(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/l;)V
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "ticketList"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    iput-object v1, p1, Lcom/zhangdan/preferential/data/model/l;->z:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/zhangdan/preferential/data/model/n;

    invoke-direct {v4}, Lcom/zhangdan/preferential/data/model/n;-><init>()V

    const-string v5, "endTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/n;->a:Ljava/lang/String;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/n;->b:Ljava/lang/String;

    const-string v5, "url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/n;->e:Ljava/lang/String;

    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/n;->d:Ljava/lang/String;

    const-string v5, "siteIcon"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/zhangdan/preferential/data/model/n;->c:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static g(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/i;
    .locals 2

    invoke-static {p0}, Lcom/zhangdan/preferential/a/f;->q(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/preferential/data/model/i;

    invoke-direct {v1}, Lcom/zhangdan/preferential/data/model/i;-><init>()V

    invoke-static {v1, v0}, Lcom/zhangdan/preferential/a/f;->a(Lcom/zhangdan/preferential/data/model/i;Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public static h(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/j;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "result"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/zhangdan/preferential/data/model/j;

    invoke-direct {v1}, Lcom/zhangdan/preferential/data/model/j;-><init>()V

    invoke-static {v1, v2}, Lcom/zhangdan/preferential/a/f;->a(Lcom/zhangdan/preferential/data/model/i;Lorg/json/JSONObject;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "shopes"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_3

    :cond_2
    iput-object v3, v1, Lcom/zhangdan/preferential/data/model/j;->p:Ljava/util/List;

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/zhangdan/preferential/data/model/k;

    invoke-direct {v5}, Lcom/zhangdan/preferential/data/model/k;-><init>()V

    invoke-static {v5, v4}, Lcom/zhangdan/preferential/a/f;->a(Lcom/zhangdan/preferential/data/model/k;Lorg/json/JSONObject;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static i(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const-string v0, "result"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/preferential/a/f;->p(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/a;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static j(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/f;->q(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "banks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/preferential/a/f;->p(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/a;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static k(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v0, "result"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "addressComponent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "city"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "\u5e02"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static l(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "result"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "addressComponent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "street"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static m(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7

    const/4 v6, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const-string v0, "result"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/zhangdan/preferential/data/model/g;

    invoke-direct {v4}, Lcom/zhangdan/preferential/data/model/g;-><init>()V

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    const-string v5, "id"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/zhangdan/preferential/data/model/g;->c:I

    iget v5, v4, Lcom/zhangdan/preferential/data/model/g;->c:I

    if-nez v5, :cond_2

    iput v6, v4, Lcom/zhangdan/preferential/data/model/g;->c:I

    :cond_2
    const-string v5, "sequence"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/zhangdan/preferential/data/model/g;->e:I

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static n(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/f;->q(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->r(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    :cond_0
    return-object v1

    :cond_1
    new-instance v3, Lcom/zhangdan/preferential/data/model/k;

    invoke-direct {v3}, Lcom/zhangdan/preferential/data/model/k;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/preferential/a/f;->a(Lcom/zhangdan/preferential/data/model/k;Lorg/json/JSONObject;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static o(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/f;->q(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->r(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    :cond_0
    return-object v1

    :cond_1
    new-instance v3, Lcom/zhangdan/preferential/data/model/i;

    invoke-direct {v3}, Lcom/zhangdan/preferential/data/model/i;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/preferential/a/f;->a(Lcom/zhangdan/preferential/data/model/i;Lorg/json/JSONObject;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static p(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/a;
    .locals 3

    new-instance v0, Lcom/zhangdan/preferential/data/model/a;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/a;-><init>()V

    const-string v1, "bankId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/a;->a:J

    const-string v1, "mark"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/a;->b:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/a;->c:Ljava/lang/String;

    const-string v1, "simpleName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static q(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "result"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private static r(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "items"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/zhangdan/preferential/data/model/Position;)Ljava/util/List;
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/zhangdan/preferential/a/f;->a:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/data/model/d;

    const/16 v1, 0x7d1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/d;->a(Lcom/zhangdan/preferential/data/model/Position;)V

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "http://yhd.51zhangdan.com/http/shop/js.do"

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/a/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    const-string v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/zhangdan/preferential/data/model/b;

    invoke-direct {v4}, Lcom/zhangdan/preferential/data/model/b;-><init>()V

    const-string v5, "icon"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/b;->b:Ljava/lang/String;

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/zhangdan/preferential/data/model/b;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public final a()Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/preferential/a/f;->a:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/data/model/d;

    const/16 v1, 0x44f

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    const-string v1, "name"

    const-string v2, "bank"

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "http://yhd.51zhangdan.com/http/sys/js.do"

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/a/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zhangdan/preferential/a/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/zhangdan/preferential/a/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/zhangdan/preferential/a/h;->a(Ljava/lang/String;)Ljava/io/BufferedReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_4
    :try_start_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_5
    :goto_5
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v2, v0

    goto :goto_3
.end method

.method public final a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "http://yhd.51zhangdan.com/http/shop/js.do"

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/a/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/a/f;->a:Lcom/zhangdan/preferential/a/o;

    invoke-static {p1, p2, p3}, Lcom/zhangdan/preferential/a/o;->a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/zhangdan/preferential/a/f;->a:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/data/model/d;

    const/16 v1, 0xc1d

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    const-string v1, "name"

    const-string v2, "activityTags"

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "http://yhd.51zhangdan.com/http/shop/js.do"

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/a/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    :cond_0
    return-object v1

    :cond_1
    new-instance v3, Lcom/zhangdan/preferential/data/model/g;

    invoke-direct {v3}, Lcom/zhangdan/preferential/data/model/g;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "http://yhd.51zhangdan.com/http/sys/js.do"

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/a/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "http://yhd.51zhangdan.com/http/user/js.do"

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/a/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "http://yhd.51zhangdan.com/http/shop/js.do"

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/a/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "items"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    :cond_0
    return-object v1

    :cond_1
    new-instance v3, Lcom/zhangdan/preferential/data/model/i;

    invoke-direct {v3}, Lcom/zhangdan/preferential/data/model/i;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zhangdan/preferential/a/f;->a(Lcom/zhangdan/preferential/data/model/i;Lorg/json/JSONObject;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final f(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/l;
    .locals 10

    const/4 v0, 0x0

    const-string v1, "http://yhd.51zhangdan.com/http/shop/js.do"

    invoke-direct {p0, p1, v1}, Lcom/zhangdan/preferential/a/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v1, Lcom/zhangdan/preferential/data/model/l;

    invoke-direct {v1}, Lcom/zhangdan/preferential/data/model/l;-><init>()V

    invoke-static {v1, v3}, Lcom/zhangdan/preferential/a/f;->a(Lcom/zhangdan/preferential/data/model/k;Lorg/json/JSONObject;)V

    const-string v2, "dianpingid"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zhangdan/preferential/data/model/l;->t:Ljava/lang/String;

    const-string v2, "weibopoiid"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zhangdan/preferential/data/model/l;->u:Ljava/lang/String;

    const-string v2, "workTime"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zhangdan/preferential/data/model/l;->p:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "cardList"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v2, v6, :cond_2

    iput-object v4, v1, Lcom/zhangdan/preferential/data/model/l;->v:Ljava/util/List;

    :cond_1
    invoke-static {v3, v1}, Lcom/zhangdan/preferential/a/f;->a(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/l;)V

    invoke-static {v3, v1}, Lcom/zhangdan/preferential/a/f;->b(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/l;)V

    invoke-static {v3, v1}, Lcom/zhangdan/preferential/a/f;->c(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/l;)V

    invoke-static {v3, v1}, Lcom/zhangdan/preferential/a/f;->d(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/l;)V

    invoke-static {v3, v1}, Lcom/zhangdan/preferential/a/f;->e(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/l;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/zhangdan/preferential/data/model/c;

    invoke-direct {v7}, Lcom/zhangdan/preferential/data/model/c;-><init>()V

    const-string v8, "title"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/zhangdan/preferential/data/model/c;->e:Ljava/lang/String;

    const-string v8, "endTime"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/zhangdan/preferential/data/model/c;->d:Ljava/lang/String;

    const-string v8, "id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/zhangdan/preferential/data/model/c;->a:Ljava/lang/String;

    const-string v8, "discount"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/zhangdan/preferential/data/model/c;->c:I

    const-string v8, "bankId"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/zhangdan/preferential/data/model/c;->b:J

    const-string v8, "bankName"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/zhangdan/preferential/data/model/c;->f:Ljava/lang/String;

    const-string v8, "describ"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/zhangdan/preferential/data/model/c;->g:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "TAG"

    const-string v3, "Can\'t parse to shop."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method
