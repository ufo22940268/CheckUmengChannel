.class public Lcom/zhangdan/preferential/utils/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# static fields
.field public static final DEBUG_VERBOSE:Z = true

.field public static final TAG:Ljava/lang/String; = "JsonParser"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/JsonParser;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    .line 34
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/JsonParser;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private addCardList(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V
    .locals 7
    .parameter "result"
    .parameter "se"

    .prologue
    .line 267
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Card;>;"
    const-string v5, "cardList"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 269
    .local v1, cardList:Lorg/json/JSONArray;
    if-nez v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 273
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 274
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 276
    .local v3, jo:Lorg/json/JSONObject;
    new-instance v0, Lcom/zhangdan/preferential/data/model/Card;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Card;-><init>()V

    .line 277
    .local v0, card:Lcom/zhangdan/preferential/data/model/Card;
    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Card;->title:Ljava/lang/String;

    .line 278
    const-string v5, "endTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Card;->endTime:Ljava/lang/String;

    .line 279
    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Card;->id:Ljava/lang/String;

    .line 280
    const-string v5, "discount"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/zhangdan/preferential/data/model/Card;->discount:I

    .line 281
    const-string v5, "bankId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/zhangdan/preferential/data/model/Card;->bankId:J

    .line 282
    const-string v5, "bankName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Card;->bankName:Ljava/lang/String;

    .line 283
    const-string v5, "describ"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Card;->description:Ljava/lang/String;

    .line 285
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 287
    .end local v0           #card:Lcom/zhangdan/preferential/data/model/Card;
    .end local v3           #jo:Lorg/json/JSONObject;
    :cond_1
    iput-object v4, p2, Lcom/zhangdan/preferential/data/model/ShopExtra;->cardList:Ljava/util/List;

    goto :goto_0
.end method

.method private addGrouponList(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V
    .locals 7
    .parameter "result"
    .parameter "se"

    .prologue
    .line 376
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Groupon;>;"
    const-string v5, "tuanList"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 378
    .local v1, gList:Lorg/json/JSONArray;
    if-nez v1, :cond_0

    .line 396
    :goto_0
    return-void

    .line 382
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 383
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 384
    .local v3, jo:Lorg/json/JSONObject;
    new-instance v0, Lcom/zhangdan/preferential/data/model/Groupon;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Groupon;-><init>()V

    .line 385
    .local v0, g:Lcom/zhangdan/preferential/data/model/Groupon;
    const-string v5, "endTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Groupon;->endTime:Ljava/lang/String;

    .line 386
    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Groupon;->id:Ljava/lang/String;

    .line 387
    const-string v5, "image"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Groupon;->imageUrl:Ljava/lang/String;

    .line 388
    const-string v5, "sourceUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Groupon;->sourceUrl:Ljava/lang/String;

    .line 389
    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Groupon;->title:Ljava/lang/String;

    .line 390
    const-string v5, "orgPrice"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/zhangdan/preferential/data/model/Groupon;->orgPrice:D

    .line 391
    const-string v5, "price"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/zhangdan/preferential/data/model/Groupon;->price:D

    .line 392
    const-string v5, "discount"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/zhangdan/preferential/data/model/Groupon;->discount:J

    .line 393
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 395
    .end local v0           #g:Lcom/zhangdan/preferential/data/model/Groupon;
    .end local v3           #jo:Lorg/json/JSONObject;
    :cond_1
    iput-object v4, p2, Lcom/zhangdan/preferential/data/model/ShopExtra;->grouponList:Ljava/util/List;

    goto :goto_0
.end method

.method private addPromList(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V
    .locals 6
    .parameter "result"
    .parameter "se"

    .prologue
    .line 307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    const-string v5, "activityList"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 309
    .local v4, promList:Lorg/json/JSONArray;
    if-nez v4, :cond_0

    .line 320
    :goto_0
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 314
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 315
    .local v1, jo:Lorg/json/JSONObject;
    new-instance v3, Lcom/zhangdan/preferential/data/model/Promotion;

    invoke-direct {v3}, Lcom/zhangdan/preferential/data/model/Promotion;-><init>()V

    .line 316
    .local v3, prom:Lcom/zhangdan/preferential/data/model/Promotion;
    invoke-direct {p0, v3, v1}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSinglePromotion(Lcom/zhangdan/preferential/data/model/Promotion;Lorg/json/JSONObject;)V

    .line 317
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    .end local v1           #jo:Lorg/json/JSONObject;
    .end local v3           #prom:Lcom/zhangdan/preferential/data/model/Promotion;
    :cond_1
    iput-object v2, p2, Lcom/zhangdan/preferential/data/model/ShopExtra;->promList:Ljava/util/List;

    goto :goto_0
.end method

.method private addShopList(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V
    .locals 6
    .parameter "result"
    .parameter "se"

    .prologue
    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    const-string v5, "shopList"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 293
    .local v4, shopList:Lorg/json/JSONArray;
    if-nez v4, :cond_0

    .line 304
    :goto_0
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 298
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 299
    .local v1, jo:Lorg/json/JSONObject;
    new-instance v3, Lcom/zhangdan/preferential/data/model/Shop;

    invoke-direct {v3}, Lcom/zhangdan/preferential/data/model/Shop;-><init>()V

    .line 300
    .local v3, shop:Lcom/zhangdan/preferential/data/model/Shop;
    invoke-virtual {p0, v3, v1}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSingleShop(Lcom/zhangdan/preferential/data/model/Shop;Lorg/json/JSONObject;)V

    .line 301
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    .end local v1           #jo:Lorg/json/JSONObject;
    .end local v3           #shop:Lcom/zhangdan/preferential/data/model/Shop;
    :cond_1
    iput-object v2, p2, Lcom/zhangdan/preferential/data/model/ShopExtra;->shopList:Ljava/util/List;

    goto :goto_0
.end method

.method private addTicketCounter(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V
    .locals 8
    .parameter "result"
    .parameter "se"

    .prologue
    .line 399
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Ticket;>;"
    const-string v7, "ticketCounter"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 401
    .local v6, tList:Lorg/json/JSONArray;
    if-nez v6, :cond_0

    .line 413
    :goto_0
    return-void

    .line 405
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 406
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 407
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 408
    .local v2, jo:Lorg/json/JSONObject;
    const-string v7, "siteIcon"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, siteIcon:Ljava/lang/String;
    const-string v7, "count"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 410
    .local v0, count:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    .end local v0           #count:I
    .end local v2           #jo:Lorg/json/JSONObject;
    .end local v5           #siteIcon:Ljava/lang/String;
    :cond_1
    iput-object v4, p2, Lcom/zhangdan/preferential/data/model/ShopExtra;->ticketCounter:Ljava/util/Map;

    goto :goto_0
.end method

.method private addTicketList(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V
    .locals 6
    .parameter "result"
    .parameter "se"

    .prologue
    .line 416
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Ticket;>;"
    const-string v5, "ticketList"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 418
    .local v0, gList:Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 422
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 423
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 424
    .local v2, jo:Lorg/json/JSONObject;
    new-instance v4, Lcom/zhangdan/preferential/data/model/Ticket;

    invoke-direct {v4}, Lcom/zhangdan/preferential/data/model/Ticket;-><init>()V

    .line 425
    .local v4, t:Lcom/zhangdan/preferential/data/model/Ticket;
    const-string v5, "endTime"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/Ticket;->endTime:Ljava/lang/String;

    .line 426
    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/Ticket;->id:Ljava/lang/String;

    .line 427
    const-string v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/Ticket;->url:Ljava/lang/String;

    .line 428
    const-string v5, "title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/Ticket;->title:Ljava/lang/String;

    .line 429
    const-string v5, "siteIcon"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/Ticket;->siteIcon:Ljava/lang/String;

    .line 430
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 432
    .end local v2           #jo:Lorg/json/JSONObject;
    .end local v4           #t:Lcom/zhangdan/preferential/data/model/Ticket;
    :cond_1
    iput-object v3, p2, Lcom/zhangdan/preferential/data/model/ShopExtra;->ticketList:Ljava/util/List;

    goto :goto_0
.end method

.method private dirtyGetRequest()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 39
    :try_start_0
    const-string v1, "{\"cmd\":2101,\"request\":{\"lat\":\"30.28132\",\"lng\":\"120.121636\"}}"

    .line 40
    .local v1, request:Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1           #request:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getItems(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1
    .parameter "jo"

    .prologue
    .line 609
    if-nez p1, :cond_0

    .line 610
    const/4 v0, 0x0

    .line 612
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0
.end method

.method private getResult(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .parameter "jo"

    .prologue
    .line 601
    if-nez p1, :cond_0

    .line 602
    const/4 v0, 0x0

    .line 604
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private getResultItems(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 3
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, itemList:Ljava/util/List;,"Ljava/util/List<Lorg/json/JSONObject;>;"
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 165
    .local v1, result:Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 166
    const/4 v2, 0x0

    .line 169
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "items"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    goto :goto_0
.end method

.method private inflateSingleBank(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/Bank;
    .locals 3
    .parameter "item"

    .prologue
    .line 472
    new-instance v0, Lcom/zhangdan/preferential/data/model/Bank;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Bank;-><init>()V

    .line 473
    .local v0, bank:Lcom/zhangdan/preferential/data/model/Bank;
    const-string v1, "bankId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Bank;->id:J

    .line 474
    const-string v1, "mark"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/Bank;->mark:Ljava/lang/String;

    .line 475
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/Bank;->name:Ljava/lang/String;

    .line 476
    const-string v1, "simpleName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/Bank;->simpleName:Ljava/lang/String;

    .line 477
    return-object v0
.end method

.method private inflateSinglePromotion(Lcom/zhangdan/preferential/data/model/Promotion;Lorg/json/JSONObject;)V
    .locals 2
    .parameter "prom"
    .parameter "jo"

    .prologue
    .line 330
    const-string v0, "actId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->id:Ljava/lang/String;

    .line 331
    const-string v0, "actShopId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->shopId:Ljava/lang/String;

    .line 332
    const-string v0, "bankId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->bankId:J

    .line 333
    const-string v0, "bankName"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->bankName:Ljava/lang/String;

    .line 334
    const-string v0, "bankSimpleName"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->bankSimpleName:Ljava/lang/String;

    .line 335
    const-string v0, "discountWeeks"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->discountWeeks:Ljava/lang/String;

    .line 336
    const-string v0, "remark"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->remark:Ljava/lang/String;

    .line 337
    const-string v0, "startTime"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->startTime:Ljava/lang/String;

    .line 338
    const-string v0, "endTime"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->endTime:Ljava/lang/String;

    .line 339
    const-string v0, "image"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->imageUrl:Ljava/lang/String;

    .line 340
    const-string v0, "title"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->title:Ljava/lang/String;

    .line 341
    const-string v0, "remark"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->remark:Ljava/lang/String;

    .line 342
    const-string v0, "discountRule"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->discountRule:Ljava/lang/String;

    .line 343
    const-string v0, "tels"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->tels:Ljava/lang/String;

    .line 344
    const-string v0, "rate"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->rate:I

    .line 345
    const-string v0, "shortUrl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->shortUrl:Ljava/lang/String;

    .line 346
    const-string v0, "isAttention"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zhangdan/preferential/data/model/Promotion;->setIsFav(I)V

    .line 347
    return-void
.end method

.method private parse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .parameter "request"
    .parameter "reqUrl"

    .prologue
    const/4 v4, 0x0

    .line 50
    iget-object v5, p0, Lcom/zhangdan/preferential/utils/JsonParser;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/zhangdan/preferential/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v4

    .line 54
    :cond_1
    const/4 v3, 0x0

    .line 57
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {p2, p1}, Lcom/zhangdan/preferential/utils/NetUtils;->getResponseReader(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/io/BufferedReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 60
    if-nez v3, :cond_2

    .line 75
    if-eqz v3, :cond_0

    .line 76
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v2, ""

    .line 66
    .local v2, line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 70
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #line:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 72
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    if-eqz v3, :cond_0

    .line 76
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 78
    :catch_2
    move-exception v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #line:Ljava/lang/String;
    :cond_3
    :try_start_5
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 75
    if-eqz v3, :cond_4

    .line 76
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_2
    move-object v4, v5

    .line 80
    goto :goto_0

    .line 78
    :catch_3
    move-exception v1

    .line 79
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 74
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #line:Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 75
    if-eqz v3, :cond_5

    .line 76
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 80
    :cond_5
    :goto_3
    throw v4

    .line 78
    :catch_4
    move-exception v1

    .line 79
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private parseLoc(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/Position;
    .locals 3
    .parameter "loc"

    .prologue
    .line 436
    new-instance v0, Lcom/zhangdan/preferential/data/model/Position;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Position;-><init>()V

    .line 437
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    const-string v1, "lat"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    .line 438
    const-string v1, "lng"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    .line 439
    return-object v0
.end method

.method private parseTags(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 6
    .parameter "tags"

    .prologue
    const/4 v5, 0x0

    .line 220
    if-nez p1, :cond_0

    .line 221
    new-array v3, v5, [Ljava/lang/String;

    .line 231
    :goto_0
    return-object v3

    .line 224
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v2, tagList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 226
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, tag:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 228
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    .end local v1           #tag:Ljava/lang/String;
    :cond_2
    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addExtra(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V
    .locals 1
    .parameter "result"
    .parameter "se"

    .prologue
    .line 254
    const-string v0, "dianpingid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/zhangdan/preferential/data/model/ShopExtra;->dianpingId:Ljava/lang/String;

    .line 255
    const-string v0, "weibopoiid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/zhangdan/preferential/data/model/ShopExtra;->weiboId:Ljava/lang/String;

    .line 256
    const-string v0, "workTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/zhangdan/preferential/data/model/ShopExtra;->workTime:Ljava/lang/String;

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/utils/JsonParser;->addCardList(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/utils/JsonParser;->addShopList(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/utils/JsonParser;->addPromList(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/utils/JsonParser;->addGrouponList(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/utils/JsonParser;->addTicketCounter(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/utils/JsonParser;->addTicketList(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    .line 264
    return-void
.end method

.method public inflateBankList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Bank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v1, banks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Bank;>;"
    if-eqz p1, :cond_0

    .line 445
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 446
    .local v0, ar:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 447
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 448
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 449
    .local v3, item:Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSingleBank(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/Bank;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 453
    .end local v0           #ar:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #item:Lorg/json/JSONObject;
    :cond_0
    return-object v1
.end method

.method public inflateCity(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .parameter "response"

    .prologue
    .line 481
    if-nez p1, :cond_1

    .line 482
    const-string v1, ""

    .line 496
    :cond_0
    :goto_0
    return-object v1

    .line 486
    :cond_1
    :try_start_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "addressComponent"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "city"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, rawCity:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 489
    const-string v2, "\u5e02"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 492
    .end local v1           #rawCity:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 493
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "JsonParser"

    const-string v3, "Can\'t get city."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 496
    const-string v1, ""

    goto :goto_0
.end method

.method public inflateFavProms(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7
    .parameter "resp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Promotion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 584
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v3, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->getResult(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 586
    .local v4, result:Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 587
    invoke-direct {p0, v4}, Lcom/zhangdan/preferential/utils/JsonParser;->getItems(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    .line 588
    .local v1, items:Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 589
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 590
    new-instance v2, Lcom/zhangdan/preferential/data/model/Promotion;

    invoke-direct {v2}, Lcom/zhangdan/preferential/data/model/Promotion;-><init>()V

    .line 591
    .local v2, prom:Lcom/zhangdan/preferential/data/model/Promotion;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 592
    .local v5, sj:Lorg/json/JSONObject;
    invoke-direct {p0, v2, v5}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSinglePromotion(Lcom/zhangdan/preferential/data/model/Promotion;Lorg/json/JSONObject;)V

    .line 593
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    .end local v0           #i:I
    .end local v1           #items:Lorg/json/JSONArray;
    .end local v2           #prom:Lcom/zhangdan/preferential/data/model/Promotion;
    .end local v5           #sj:Lorg/json/JSONObject;
    :cond_0
    return-object v3
.end method

.method public inflateFavShops(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7
    .parameter "resp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v4, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->getResult(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 569
    .local v2, result:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 570
    invoke-direct {p0, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->getItems(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    .line 571
    .local v1, items:Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 572
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 573
    new-instance v3, Lcom/zhangdan/preferential/data/model/Shop;

    invoke-direct {v3}, Lcom/zhangdan/preferential/data/model/Shop;-><init>()V

    .line 574
    .local v3, shop:Lcom/zhangdan/preferential/data/model/Shop;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 575
    .local v5, sj:Lorg/json/JSONObject;
    invoke-virtual {p0, v3, v5}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSingleShop(Lcom/zhangdan/preferential/data/model/Shop;Lorg/json/JSONObject;)V

    .line 576
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 580
    .end local v0           #i:I
    .end local v1           #items:Lorg/json/JSONArray;
    .end local v3           #shop:Lcom/zhangdan/preferential/data/model/Shop;
    .end local v5           #sj:Lorg/json/JSONObject;
    :cond_0
    return-object v4
.end method

.method public inflateMenuTags(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7
    .parameter "resp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/MenuTag;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 546
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v4, tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/MenuTag;>;"
    if-eqz p1, :cond_1

    .line 548
    const-string v5, "result"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 549
    .local v3, result:Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 550
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 551
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 552
    .local v2, item:Lorg/json/JSONObject;
    new-instance v1, Lcom/zhangdan/preferential/data/model/MenuTag;

    invoke-direct {v1}, Lcom/zhangdan/preferential/data/model/MenuTag;-><init>()V

    .line 553
    .local v1, it:Lcom/zhangdan/preferential/data/model/MenuTag;
    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    .line 554
    const-string v5, "id"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v1, Lcom/zhangdan/preferential/data/model/MenuTag;->typeId:I

    .line 555
    iget v5, v1, Lcom/zhangdan/preferential/data/model/MenuTag;->typeId:I

    if-nez v5, :cond_0

    .line 556
    iput v6, v1, Lcom/zhangdan/preferential/data/model/MenuTag;->typeId:I

    .line 558
    :cond_0
    const-string v5, "sequence"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/zhangdan/preferential/data/model/MenuTag;->sequence:I

    .line 559
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    .end local v0           #i:I
    .end local v1           #it:Lcom/zhangdan/preferential/data/model/MenuTag;
    .end local v2           #item:Lorg/json/JSONObject;
    .end local v3           #result:Lorg/json/JSONArray;
    :cond_1
    return-object v4
.end method

.method public inflateMyBankList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .parameter "root"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Bank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v1, banks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Bank;>;"
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->getResult(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 459
    .local v4, result:Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 460
    const-string v5, "banks"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 461
    .local v0, ar:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 462
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 463
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 464
    .local v3, item:Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSingleBank(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/Bank;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    .end local v0           #ar:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #item:Lorg/json/JSONObject;
    :cond_0
    return-object v1
.end method

.method public inflatePromotion(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/Promotion;
    .locals 2
    .parameter "response"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->getResult(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 324
    .local v1, result:Lorg/json/JSONObject;
    new-instance v0, Lcom/zhangdan/preferential/data/model/Promotion;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Promotion;-><init>()V

    .line 325
    .local v0, prom:Lcom/zhangdan/preferential/data/model/Promotion;
    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSinglePromotion(Lcom/zhangdan/preferential/data/model/Promotion;Lorg/json/JSONObject;)V

    .line 326
    return-object v0
.end method

.method public inflatePromotionExtra(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/PromotionExtra;
    .locals 8
    .parameter "resp"

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, extra:Lcom/zhangdan/preferential/data/model/PromotionExtra;
    if-nez p1, :cond_0

    .line 352
    const/4 v7, 0x0

    .line 372
    :goto_0
    return-object v7

    .line 355
    :cond_0
    const-string v7, "result"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 356
    .local v3, result:Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 357
    new-instance v0, Lcom/zhangdan/preferential/data/model/PromotionExtra;

    .end local v0           #extra:Lcom/zhangdan/preferential/data/model/PromotionExtra;
    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/PromotionExtra;-><init>()V

    .line 358
    .restart local v0       #extra:Lcom/zhangdan/preferential/data/model/PromotionExtra;
    invoke-direct {p0, v0, v3}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSinglePromotion(Lcom/zhangdan/preferential/data/model/Promotion;Lorg/json/JSONObject;)V

    .line 360
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v5, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    const-string v7, "shopes"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 362
    .local v2, items:Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    .line 363
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 364
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 365
    .local v6, so:Lorg/json/JSONObject;
    new-instance v4, Lcom/zhangdan/preferential/data/model/Shop;

    invoke-direct {v4}, Lcom/zhangdan/preferential/data/model/Shop;-><init>()V

    .line 366
    .local v4, shop:Lcom/zhangdan/preferential/data/model/Shop;
    invoke-virtual {p0, v4, v6}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSingleShop(Lcom/zhangdan/preferential/data/model/Shop;Lorg/json/JSONObject;)V

    .line 367
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 370
    .end local v1           #i:I
    .end local v4           #shop:Lcom/zhangdan/preferential/data/model/Shop;
    .end local v6           #so:Lorg/json/JSONObject;
    :cond_1
    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/PromotionExtra;->shopList:Ljava/util/List;

    .end local v2           #items:Lorg/json/JSONArray;
    .end local v5           #shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    :cond_2
    move-object v7, v0

    .line 372
    goto :goto_0
.end method

.method public inflatePromotionList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 8
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Promotion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v4, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->parseShop(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 144
    .local v5, response:Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 145
    const-string v7, "result"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 146
    .local v6, result:Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    .line 147
    const-string v7, "items"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 148
    .local v1, items:Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 150
    new-instance v3, Lcom/zhangdan/preferential/data/model/Promotion;

    invoke-direct {v3}, Lcom/zhangdan/preferential/data/model/Promotion;-><init>()V

    .line 151
    .local v3, prom:Lcom/zhangdan/preferential/data/model/Promotion;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 152
    .local v2, jo:Lorg/json/JSONObject;
    invoke-direct {p0, v3, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSinglePromotion(Lcom/zhangdan/preferential/data/model/Promotion;Lorg/json/JSONObject;)V

    .line 153
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v0           #i:I
    .end local v1           #items:Lorg/json/JSONArray;
    .end local v2           #jo:Lorg/json/JSONObject;
    .end local v3           #prom:Lcom/zhangdan/preferential/data/model/Promotion;
    .end local v6           #result:Lorg/json/JSONObject;
    :cond_0
    return-object v4
.end method

.method public inflateShopExtra(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/ShopExtra;
    .locals 7
    .parameter "request"

    .prologue
    const/4 v4, 0x0

    .line 235
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->parseShop(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 236
    .local v2, response:Lorg/json/JSONObject;
    if-nez v2, :cond_0

    move-object v1, v4

    .line 250
    :goto_0
    return-object v1

    .line 241
    :cond_0
    :try_start_0
    const-string v5, "result"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 242
    .local v3, result:Lorg/json/JSONObject;
    new-instance v1, Lcom/zhangdan/preferential/data/model/ShopExtra;

    invoke-direct {v1}, Lcom/zhangdan/preferential/data/model/ShopExtra;-><init>()V

    .line 243
    .local v1, extra:Lcom/zhangdan/preferential/data/model/ShopExtra;
    invoke-virtual {p0, v1, v3}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSingleShop(Lcom/zhangdan/preferential/data/model/Shop;Lorg/json/JSONObject;)V

    .line 244
    invoke-virtual {p0, v3, v1}, Lcom/zhangdan/preferential/utils/JsonParser;->addExtra(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    .end local v1           #extra:Lcom/zhangdan/preferential/data/model/ShopExtra;
    .end local v3           #result:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Lorg/json/JSONException;
    const-string v5, "TAG"

    const-string v6, "Can\'t parse to shop."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v4

    .line 250
    goto :goto_0
.end method

.method public inflateShops(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 8
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v5, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    if-eqz p1, :cond_0

    .line 177
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->getResultItems(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v3

    .line 178
    .local v3, items:Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 179
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 180
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 181
    .local v2, item:Lorg/json/JSONObject;
    new-instance v4, Lcom/zhangdan/preferential/data/model/Shop;

    invoke-direct {v4}, Lcom/zhangdan/preferential/data/model/Shop;-><init>()V

    .line 182
    .local v4, shop:Lcom/zhangdan/preferential/data/model/Shop;
    invoke-virtual {p0, v4, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSingleShop(Lcom/zhangdan/preferential/data/model/Shop;Lorg/json/JSONObject;)V

    .line 183
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v1           #i:I
    .end local v2           #item:Lorg/json/JSONObject;
    .end local v3           #items:Lorg/json/JSONArray;
    .end local v4           #shop:Lcom/zhangdan/preferential/data/model/Shop;
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Lorg/json/JSONException;
    const-string v6, "TAG"

    const-string v7, "Can\'t parse to shop."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 191
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    return-object v5
.end method

.method public inflateSingleShop(Lcom/zhangdan/preferential/data/model/Shop;Lorg/json/JSONObject;)V
    .locals 1
    .parameter "shop"
    .parameter "jo"

    .prologue
    .line 195
    const-string v0, "shopid"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->id:Ljava/lang/String;

    .line 196
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->name:Ljava/lang/String;

    .line 197
    const-string v0, "brandName"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->brandName:Ljava/lang/String;

    .line 198
    const-string v0, "image"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->imageUrl:Ljava/lang/String;

    .line 199
    const-string v0, "price"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->price:I

    .line 200
    const-string v0, "rate"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->rate:I

    .line 201
    const-string v0, "tags"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/utils/JsonParser;->parseTags(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->tags:[Ljava/lang/String;

    .line 202
    const-string v0, "loc"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/utils/JsonParser;->parseLoc(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->pos:Lcom/zhangdan/preferential/data/model/Position;

    .line 203
    const-string v0, "addr"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->address:Ljava/lang/String;

    .line 204
    const-string v0, "countActivity"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->promotionCount:I

    .line 205
    const-string v0, "countGroup"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->grouponCount:I

    .line 206
    const-string v0, "countCard"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->cardCount:I

    .line 207
    const-string v0, "countTicket"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->ticketCount:I

    .line 208
    const-string v0, "workTime"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->workTime:Ljava/lang/String;

    .line 209
    const-string v0, "category"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->category:I

    .line 210
    const-string v0, "distance"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->distance:Ljava/lang/String;

    .line 211
    const-string v0, "discountWeeks"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->discountWeeks:Ljava/lang/String;

    .line 212
    const-string v0, "shortUrl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Shop;->shortUrl:Ljava/lang/String;

    .line 213
    const-string v0, "isAttention"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zhangdan/preferential/data/model/Shop;->setIsFav(I)V

    .line 214
    const-string v0, "myBank"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zhangdan/preferential/data/model/Shop;->setIsMine(I)V

    .line 215
    const-string v0, "isToday"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zhangdan/preferential/data/model/Shop;->setIsToday(I)V

    .line 216
    const-string v0, "tels"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zhangdan/preferential/data/model/Shop;->setTels(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public inflateStreet(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .parameter "response"

    .prologue
    .line 500
    if-nez p1, :cond_0

    .line 501
    const-string v1, ""

    .line 512
    :goto_0
    return-object v1

    .line 505
    :cond_0
    :try_start_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "addressComponent"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "street"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 507
    .local v1, rawCity:Ljava/lang/String;
    goto :goto_0

    .line 508
    .end local v1           #rawCity:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "JsonParser"

    const-string v3, "Can\'t get address."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 512
    const-string v1, ""

    goto :goto_0
.end method

.method public inflateTags(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 11
    .parameter "resp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/IconTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v3, iconTags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/IconTag;>;"
    if-eqz p1, :cond_1

    .line 518
    const-string v10, "result"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 519
    .local v7, result:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 520
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 521
    .local v5, item:Lorg/json/JSONObject;
    new-instance v4, Lcom/zhangdan/preferential/data/model/IconTag;

    invoke-direct {v4}, Lcom/zhangdan/preferential/data/model/IconTag;-><init>()V

    .line 522
    .local v4, it:Lcom/zhangdan/preferential/data/model/IconTag;
    const-string v10, "icon"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/zhangdan/preferential/data/model/IconTag;->icon:Ljava/lang/String;

    .line 523
    const-string v10, "name"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/zhangdan/preferential/data/model/IconTag;->name:Ljava/lang/String;

    .line 524
    const-string v10, "id"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/zhangdan/preferential/data/model/IconTag;->typeId:I

    .line 525
    const-string v10, "sequence"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/zhangdan/preferential/data/model/IconTag;->sequence:I

    .line 527
    const-string v10, "childs"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 528
    .local v1, childs:Lorg/json/JSONArray;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v9, tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Tag;>;"
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 530
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 531
    .local v0, child:Lorg/json/JSONObject;
    new-instance v8, Lcom/zhangdan/preferential/data/model/Tag;

    invoke-direct {v8}, Lcom/zhangdan/preferential/data/model/Tag;-><init>()V

    .line 532
    .local v8, t:Lcom/zhangdan/preferential/data/model/Tag;
    const-string v10, "id"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/zhangdan/preferential/data/model/Tag;->typeId:I

    .line 533
    const-string v10, "name"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/zhangdan/preferential/data/model/Tag;->name:Ljava/lang/String;

    .line 534
    const-string v10, "sequence"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/zhangdan/preferential/data/model/Tag;->sequence:I

    .line 535
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 537
    .end local v0           #child:Lorg/json/JSONObject;
    .end local v8           #t:Lcom/zhangdan/preferential/data/model/Tag;
    :cond_0
    iput-object v9, v4, Lcom/zhangdan/preferential/data/model/IconTag;->subTags:Ljava/util/List;

    .line 539
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 542
    .end local v1           #childs:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v4           #it:Lcom/zhangdan/preferential/data/model/IconTag;
    .end local v5           #item:Lorg/json/JSONObject;
    .end local v6           #j:I
    .end local v7           #result:Lorg/json/JSONArray;
    .end local v9           #tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Tag;>;"
    :cond_1
    return-object v3
.end method

.method public inflateWeibPoiList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7
    .parameter "resp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v2, infos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;>;"
    if-nez p1, :cond_1

    .line 679
    :cond_0
    return-object v2

    .line 664
    :cond_1
    const-string v6, "statuses"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 665
    .local v4, statuses:Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 669
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 670
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 671
    .local v3, status:Lorg/json/JSONObject;
    new-instance v1, Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;

    invoke-direct {v1}, Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;-><init>()V

    .line 672
    .local v1, info:Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;
    const-string v6, "text"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;->comment:Ljava/lang/String;

    .line 673
    const-string v6, "thumbnail_pic"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;->photoUrl:Ljava/lang/String;

    .line 674
    const-string v6, "user"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 675
    .local v5, user:Lorg/json/JSONObject;
    const-string v6, "profile_image_url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;->portraitUrl:Ljava/lang/String;

    .line 676
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isLastPage(Lorg/json/JSONObject;)Z
    .locals 5
    .parameter "resp"

    .prologue
    const/4 v3, 0x0

    .line 648
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->getResult(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 649
    .local v1, result:Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return v3

    .line 653
    :cond_1
    const-string v4, "Total"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 654
    .local v2, total:I
    const-string v4, "count"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 655
    .local v0, cnt:I
    if-ge v0, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public parseBankList()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/JsonParser;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getBankListRequest()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/utils/JsonParser;->parseSys(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public parseBrandList(Lcom/zhangdan/preferential/data/model/Position;)Ljava/util/List;
    .locals 8
    .parameter "pos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhangdan/preferential/data/model/Position;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Brand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v1, brands:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Brand;>;"
    iget-object v7, p0, Lcom/zhangdan/preferential/utils/JsonParser;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-virtual {v7, p1}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getBrandListRequest(Lcom/zhangdan/preferential/data/model/Position;)Lorg/json/JSONObject;

    move-result-object v5

    .line 686
    .local v5, req:Lorg/json/JSONObject;
    invoke-virtual {p0, v5}, Lcom/zhangdan/preferential/utils/JsonParser;->parseShop(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    .line 687
    .local v6, resp:Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 688
    .local v3, items:Lorg/json/JSONArray;
    if-eqz v6, :cond_0

    .line 689
    const-string v7, "result"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 691
    :cond_0
    if-eqz v3, :cond_1

    .line 692
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 693
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 694
    .local v4, jo:Lorg/json/JSONObject;
    new-instance v0, Lcom/zhangdan/preferential/data/model/Brand;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Brand;-><init>()V

    .line 695
    .local v0, b:Lcom/zhangdan/preferential/data/model/Brand;
    const-string v7, "icon"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/zhangdan/preferential/data/model/Brand;->iconUrl:Ljava/lang/String;

    .line 696
    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/zhangdan/preferential/data/model/Brand;->name:Ljava/lang/String;

    .line 697
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 701
    .end local v0           #b:Lcom/zhangdan/preferential/data/model/Brand;
    .end local v2           #i:I
    .end local v4           #jo:Lorg/json/JSONObject;
    :cond_1
    return-object v1
.end method

.method public parseRecommendMenuTags()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/MenuTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    iget-object v6, p0, Lcom/zhangdan/preferential/utils/JsonParser;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-virtual {v6}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getBankTagsRequest()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zhangdan/preferential/utils/JsonParser;->parseShop(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 632
    .local v2, resp:Lorg/json/JSONObject;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v5, tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/MenuTag;>;"
    if-eqz v2, :cond_0

    .line 634
    const-string v6, "result"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 635
    .local v3, result:Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 636
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 637
    new-instance v4, Lcom/zhangdan/preferential/data/model/MenuTag;

    invoke-direct {v4}, Lcom/zhangdan/preferential/data/model/MenuTag;-><init>()V

    .line 638
    .local v4, tag:Lcom/zhangdan/preferential/data/model/MenuTag;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, name:Ljava/lang/String;
    iput-object v1, v4, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    .line 640
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    .end local v0           #i:I
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #result:Lorg/json/JSONArray;
    .end local v4           #tag:Lcom/zhangdan/preferential/data/model/MenuTag;
    :cond_0
    return-object v5
.end method

.method public parseShop(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .parameter "request"

    .prologue
    .line 125
    const-string v0, "http://yhd.51zhangdan.com/http/shop/js.do"

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/utils/JsonParser;->parse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public parseSys(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .parameter "request"

    .prologue
    .line 129
    const-string v0, "http://yhd.51zhangdan.com/http/sys/js.do"

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/utils/JsonParser;->parse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public parseUrl(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-object v5, p0, Lcom/zhangdan/preferential/utils/JsonParser;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/zhangdan/preferential/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v4

    .line 91
    :cond_1
    const/4 v3, 0x0

    .line 94
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {p1}, Lcom/zhangdan/preferential/utils/NetUtils;->getResponseReader(Ljava/lang/String;)Ljava/io/BufferedReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 97
    if-nez v3, :cond_2

    .line 112
    if-eqz v3, :cond_0

    .line 113
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, builder:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 107
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #line:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 109
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    if-eqz v3, :cond_0

    .line 113
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 115
    :catch_2
    move-exception v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #line:Ljava/lang/String;
    :cond_3
    :try_start_5
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 112
    if-eqz v3, :cond_4

    .line 113
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_2
    move-object v4, v5

    .line 117
    goto :goto_0

    .line 115
    :catch_3
    move-exception v1

    .line 116
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 111
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #line:Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 112
    if-eqz v3, :cond_5

    .line 113
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 117
    :cond_5
    :goto_3
    throw v4

    .line 115
    :catch_4
    move-exception v1

    .line 116
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public parseUser(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .parameter "request"

    .prologue
    .line 133
    const-string v0, "http://yhd.51zhangdan.com/http/user/js.do"

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/utils/JsonParser;->parse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public parseYouhuiUid(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "resp"

    .prologue
    .line 618
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->getResult(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 623
    :goto_0
    return-object v1

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 623
    const-string v1, ""

    goto :goto_0
.end method

.method public sendErrorMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "shopId"
    .parameter "errorId"
    .parameter "youhuiUid"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/JsonParser;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getPickErrorRequest(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    .line 628
    return-void
.end method
