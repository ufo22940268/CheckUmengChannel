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
    .line 273
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Card;>;"
    const-string v5, "cardList"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 275
    .local v1, cardList:Lorg/json/JSONArray;
    if-nez v1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 279
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 280
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 282
    .local v3, jo:Lorg/json/JSONObject;
    new-instance v0, Lcom/zhangdan/preferential/data/model/Card;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Card;-><init>()V

    .line 283
    .local v0, card:Lcom/zhangdan/preferential/data/model/Card;
    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Card;->title:Ljava/lang/String;

    .line 284
    const-string v5, "endTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Card;->endTime:Ljava/lang/String;

    .line 285
    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Card;->id:Ljava/lang/String;

    .line 286
    const-string v5, "discount"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/zhangdan/preferential/data/model/Card;->discount:I

    .line 287
    const-string v5, "bankId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/zhangdan/preferential/data/model/Card;->bankId:J

    .line 288
    const-string v5, "bankName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Card;->bankName:Ljava/lang/String;

    .line 289
    const-string v5, "describ"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Card;->description:Ljava/lang/String;

    .line 291
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 293
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
    .line 394
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Groupon;>;"
    const-string v5, "tuanList"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 396
    .local v1, gList:Lorg/json/JSONArray;
    if-nez v1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 400
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 401
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 402
    .local v3, jo:Lorg/json/JSONObject;
    new-instance v0, Lcom/zhangdan/preferential/data/model/Groupon;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Groupon;-><init>()V

    .line 403
    .local v0, g:Lcom/zhangdan/preferential/data/model/Groupon;
    const-string v5, "endTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Groupon;->endTime:Ljava/lang/String;

    .line 404
    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Groupon;->id:Ljava/lang/String;

    .line 405
    const-string v5, "image"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Groupon;->imageUrl:Ljava/lang/String;

    .line 406
    const-string v5, "sourceUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Groupon;->sourceUrl:Ljava/lang/String;

    .line 407
    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/zhangdan/preferential/data/model/Groupon;->title:Ljava/lang/String;

    .line 408
    const-string v5, "orgPrice"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/zhangdan/preferential/data/model/Groupon;->orgPrice:D

    .line 409
    const-string v5, "price"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/zhangdan/preferential/data/model/Groupon;->price:D

    .line 410
    const-string v5, "discount"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/zhangdan/preferential/data/model/Groupon;->discount:J

    .line 411
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 413
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
    .line 313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    const-string v5, "activityList"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 315
    .local v4, promList:Lorg/json/JSONArray;
    if-nez v4, :cond_0

    .line 326
    :goto_0
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 320
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 321
    .local v1, jo:Lorg/json/JSONObject;
    new-instance v3, Lcom/zhangdan/preferential/data/model/Promotion;

    invoke-direct {v3}, Lcom/zhangdan/preferential/data/model/Promotion;-><init>()V

    .line 322
    .local v3, prom:Lcom/zhangdan/preferential/data/model/Promotion;
    invoke-direct {p0, v3, v1}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSinglePromotion(Lcom/zhangdan/preferential/data/model/Promotion;Lorg/json/JSONObject;)V

    .line 323
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
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
    .line 297
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    const-string v5, "shopList"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 299
    .local v4, shopList:Lorg/json/JSONArray;
    if-nez v4, :cond_0

    .line 310
    :goto_0
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 304
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 305
    .local v1, jo:Lorg/json/JSONObject;
    new-instance v3, Lcom/zhangdan/preferential/data/model/Shop;

    invoke-direct {v3}, Lcom/zhangdan/preferential/data/model/Shop;-><init>()V

    .line 306
    .local v3, shop:Lcom/zhangdan/preferential/data/model/Shop;
    invoke-virtual {p0, v3, v1}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSingleShop(Lcom/zhangdan/preferential/data/model/Shop;Lorg/json/JSONObject;)V

    .line 307
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 309
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
    .line 417
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Ticket;>;"
    const-string v7, "ticketCounter"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 419
    .local v6, tList:Lorg/json/JSONArray;
    if-nez v6, :cond_0

    .line 431
    :goto_0
    return-void

    .line 423
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 424
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 425
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 426
    .local v2, jo:Lorg/json/JSONObject;
    const-string v7, "siteIcon"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, siteIcon:Ljava/lang/String;
    const-string v7, "count"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 428
    .local v0, count:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 430
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
    .line 434
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Ticket;>;"
    const-string v5, "ticketList"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 436
    .local v0, gList:Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 451
    :goto_0
    return-void

    .line 440
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 441
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 442
    .local v2, jo:Lorg/json/JSONObject;
    new-instance v4, Lcom/zhangdan/preferential/data/model/Ticket;

    invoke-direct {v4}, Lcom/zhangdan/preferential/data/model/Ticket;-><init>()V

    .line 443
    .local v4, t:Lcom/zhangdan/preferential/data/model/Ticket;
    const-string v5, "endTime"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/Ticket;->endTime:Ljava/lang/String;

    .line 444
    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/Ticket;->id:Ljava/lang/String;

    .line 445
    const-string v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/Ticket;->url:Ljava/lang/String;

    .line 446
    const-string v5, "title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/Ticket;->title:Ljava/lang/String;

    .line 447
    const-string v5, "siteIcon"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zhangdan/preferential/data/model/Ticket;->siteIcon:Ljava/lang/String;

    .line 448
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 450
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
    .line 627
    if-nez p1, :cond_0

    .line 628
    const/4 v0, 0x0

    .line 630
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
    .line 619
    if-nez p1, :cond_0

    .line 620
    const/4 v0, 0x0

    .line 622
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

    .prologue
    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, itemList:Ljava/util/List;,"Ljava/util/List<Lorg/json/JSONObject;>;"
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

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

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    goto :goto_0
.end method

.method private inflateSingleBank(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/Bank;
    .locals 3
    .parameter "item"

    .prologue
    .line 490
    new-instance v0, Lcom/zhangdan/preferential/data/model/Bank;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Bank;-><init>()V

    .line 491
    .local v0, bank:Lcom/zhangdan/preferential/data/model/Bank;
    const-string v1, "bankId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Bank;->id:J

    .line 492
    const-string v1, "mark"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/Bank;->mark:Ljava/lang/String;

    .line 493
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/Bank;->name:Ljava/lang/String;

    .line 494
    const-string v1, "simpleName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/Bank;->simpleName:Ljava/lang/String;

    .line 495
    return-object v0
.end method

.method private inflateSinglePromotion(Lcom/zhangdan/preferential/data/model/Promotion;Lorg/json/JSONObject;)V
    .locals 2
    .parameter "prom"
    .parameter "jo"

    .prologue
    .line 336
    const-string v0, "actId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->id:Ljava/lang/String;

    .line 337
    const-string v0, "actShopId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->shopId:Ljava/lang/String;

    .line 338
    const-string v0, "bankId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->bankId:J

    .line 339
    const-string v0, "bankName"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->bankName:Ljava/lang/String;

    .line 340
    const-string v0, "bankSimpleName"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->bankSimpleName:Ljava/lang/String;

    .line 341
    const-string v0, "discountWeeks"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->discountWeeks:Ljava/lang/String;

    .line 342
    const-string v0, "remark"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->remark:Ljava/lang/String;

    .line 343
    const-string v0, "startTime"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->startTime:Ljava/lang/String;

    .line 344
    const-string v0, "endTime"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->endTime:Ljava/lang/String;

    .line 345
    const-string v0, "image"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->imageUrl:Ljava/lang/String;

    .line 346
    const-string v0, "title"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->title:Ljava/lang/String;

    .line 347
    const-string v0, "remark"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->remark:Ljava/lang/String;

    .line 348
    const-string v0, "discountRule"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->discountRule:Ljava/lang/String;

    .line 349
    const-string v0, "tels"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->tels:Ljava/lang/String;

    .line 350
    const-string v0, "rate"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->rate:I

    .line 351
    const-string v0, "shortUrl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->shortUrl:Ljava/lang/String;

    .line 352
    const-string v0, "isAttention"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zhangdan/preferential/data/model/Promotion;->setIsFav(I)V

    .line 353
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
    .line 454
    new-instance v0, Lcom/zhangdan/preferential/data/model/Position;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Position;-><init>()V

    .line 455
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    const-string v1, "lat"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    .line 456
    const-string v1, "lng"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    .line 457
    return-object v0
.end method

.method private parseTags(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 6
    .parameter "tags"

    .prologue
    const/4 v5, 0x0

    .line 226
    if-nez p1, :cond_0

    .line 227
    new-array v3, v5, [Ljava/lang/String;

    .line 237
    :goto_0
    return-object v3

    .line 230
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 231
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

    .line 232
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, tag:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 234
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
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
    .line 260
    const-string v0, "dianpingid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/zhangdan/preferential/data/model/ShopExtra;->dianpingId:Ljava/lang/String;

    .line 261
    const-string v0, "weibopoiid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/zhangdan/preferential/data/model/ShopExtra;->weiboId:Ljava/lang/String;

    .line 262
    const-string v0, "workTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/zhangdan/preferential/data/model/ShopExtra;->workTime:Ljava/lang/String;

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/utils/JsonParser;->addCardList(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/utils/JsonParser;->addShopList(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/utils/JsonParser;->addPromList(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/utils/JsonParser;->addGrouponList(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/utils/JsonParser;->addTicketCounter(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/utils/JsonParser;->addTicketList(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    .line 270
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
    .line 461
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v1, banks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Bank;>;"
    if-eqz p1, :cond_0

    .line 463
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 464
    .local v0, ar:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 465
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 466
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 467
    .local v3, item:Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSingleBank(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/Bank;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
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
    .line 499
    if-nez p1, :cond_1

    .line 500
    const-string v1, ""

    .line 514
    :cond_0
    :goto_0
    return-object v1

    .line 504
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

    .line 506
    .local v1, rawCity:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 507
    const-string v2, "\u5e02"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 510
    .end local v1           #rawCity:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 511
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "JsonParser"

    const-string v3, "Can\'t get city."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 514
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
    .line 602
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v3, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->getResult(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 604
    .local v4, result:Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 605
    invoke-direct {p0, v4}, Lcom/zhangdan/preferential/utils/JsonParser;->getItems(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    .line 606
    .local v1, items:Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 607
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 608
    new-instance v2, Lcom/zhangdan/preferential/data/model/Promotion;

    invoke-direct {v2}, Lcom/zhangdan/preferential/data/model/Promotion;-><init>()V

    .line 609
    .local v2, prom:Lcom/zhangdan/preferential/data/model/Promotion;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 610
    .local v5, sj:Lorg/json/JSONObject;
    invoke-direct {p0, v2, v5}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSinglePromotion(Lcom/zhangdan/preferential/data/model/Promotion;Lorg/json/JSONObject;)V

    .line 611
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
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
    .line 585
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v4, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->getResult(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 587
    .local v2, result:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 588
    invoke-direct {p0, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->getItems(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    .line 589
    .local v1, items:Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 590
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 591
    new-instance v3, Lcom/zhangdan/preferential/data/model/Shop;

    invoke-direct {v3}, Lcom/zhangdan/preferential/data/model/Shop;-><init>()V

    .line 592
    .local v3, shop:Lcom/zhangdan/preferential/data/model/Shop;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 593
    .local v5, sj:Lorg/json/JSONObject;
    invoke-virtual {p0, v3, v5}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSingleShop(Lcom/zhangdan/preferential/data/model/Shop;Lorg/json/JSONObject;)V

    .line 594
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
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

    .line 564
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v4, tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/MenuTag;>;"
    if-eqz p1, :cond_1

    .line 566
    const-string v5, "result"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 567
    .local v3, result:Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 568
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 569
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 570
    .local v2, item:Lorg/json/JSONObject;
    new-instance v1, Lcom/zhangdan/preferential/data/model/MenuTag;

    invoke-direct {v1}, Lcom/zhangdan/preferential/data/model/MenuTag;-><init>()V

    .line 571
    .local v1, it:Lcom/zhangdan/preferential/data/model/MenuTag;
    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    .line 572
    const-string v5, "id"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v1, Lcom/zhangdan/preferential/data/model/MenuTag;->typeId:I

    .line 573
    iget v5, v1, Lcom/zhangdan/preferential/data/model/MenuTag;->typeId:I

    if-nez v5, :cond_0

    .line 574
    iput v6, v1, Lcom/zhangdan/preferential/data/model/MenuTag;->typeId:I

    .line 576
    :cond_0
    const-string v5, "sequence"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/zhangdan/preferential/data/model/MenuTag;->sequence:I

    .line 577
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
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
    .line 475
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v1, banks:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Bank;>;"
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->getResult(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 477
    .local v4, result:Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 478
    const-string v5, "banks"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 479
    .local v0, ar:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 480
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 481
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 482
    .local v3, item:Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSingleBank(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/Bank;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
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
    .line 329
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->getResult(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 330
    .local v1, result:Lorg/json/JSONObject;
    new-instance v0, Lcom/zhangdan/preferential/data/model/Promotion;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Promotion;-><init>()V

    .line 331
    .local v0, prom:Lcom/zhangdan/preferential/data/model/Promotion;
    invoke-direct {p0, v0, v1}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSinglePromotion(Lcom/zhangdan/preferential/data/model/Promotion;Lorg/json/JSONObject;)V

    .line 332
    return-object v0
.end method

.method public inflatePromotionExtra(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/PromotionExtra;
    .locals 10
    .parameter "resp"

    .prologue
    .line 356
    const/4 v2, 0x0

    .line 357
    .local v2, extra:Lcom/zhangdan/preferential/data/model/PromotionExtra;
    if-nez p1, :cond_0

    .line 358
    const/4 v9, 0x0

    .line 390
    :goto_0
    return-object v9

    .line 361
    :cond_0
    const-string v9, "result"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 362
    .local v5, result:Lorg/json/JSONObject;
    if-eqz v5, :cond_3

    .line 363
    new-instance v2, Lcom/zhangdan/preferential/data/model/PromotionExtra;

    .end local v2           #extra:Lcom/zhangdan/preferential/data/model/PromotionExtra;
    invoke-direct {v2}, Lcom/zhangdan/preferential/data/model/PromotionExtra;-><init>()V

    .line 364
    .restart local v2       #extra:Lcom/zhangdan/preferential/data/model/PromotionExtra;
    invoke-direct {p0, v2, v5}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSinglePromotion(Lcom/zhangdan/preferential/data/model/Promotion;Lorg/json/JSONObject;)V

    .line 366
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v7, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    const-string v9, "shopes"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 368
    .local v4, items:Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    .line 369
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 370
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 371
    .local v8, so:Lorg/json/JSONObject;
    new-instance v6, Lcom/zhangdan/preferential/data/model/Shop;

    invoke-direct {v6}, Lcom/zhangdan/preferential/data/model/Shop;-><init>()V

    .line 372
    .local v6, shop:Lcom/zhangdan/preferential/data/model/Shop;
    invoke-virtual {p0, v6, v8}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSingleShop(Lcom/zhangdan/preferential/data/model/Shop;Lorg/json/JSONObject;)V

    .line 373
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 376
    .end local v3           #i:I
    .end local v6           #shop:Lcom/zhangdan/preferential/data/model/Shop;
    .end local v8           #so:Lorg/json/JSONObject;
    :cond_1
    iput-object v7, v2, Lcom/zhangdan/preferential/data/model/PromotionExtra;->shopList:Ljava/util/List;

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v1, brands:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Brand;>;"
    const-string v9, "brands"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 380
    if-eqz v4, :cond_2

    .line 381
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 382
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 383
    .restart local v8       #so:Lorg/json/JSONObject;
    new-instance v0, Lcom/zhangdan/preferential/data/model/Brand;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Brand;-><init>()V

    .line 384
    .local v0, b:Lcom/zhangdan/preferential/data/model/Brand;
    invoke-virtual {p0, v0, v8}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSingleBrand(Lcom/zhangdan/preferential/data/model/Brand;Lorg/json/JSONObject;)V

    .line 385
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 388
    .end local v0           #b:Lcom/zhangdan/preferential/data/model/Brand;
    .end local v3           #i:I
    .end local v8           #so:Lorg/json/JSONObject;
    :cond_2
    iput-object v1, v2, Lcom/zhangdan/preferential/data/model/PromotionExtra;->brandList:Ljava/util/List;

    .end local v1           #brands:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Brand;>;"
    .end local v4           #items:Lorg/json/JSONArray;
    .end local v7           #shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    :cond_3
    move-object v9, v2

    .line 390
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

.method public inflateRecommendShopList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
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
    .line 723
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v4, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->getResultItems(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    .line 725
    .local v2, items:Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 726
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 727
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 728
    .local v1, item:Lorg/json/JSONObject;
    new-instance v3, Lcom/zhangdan/preferential/data/model/Shop;

    invoke-direct {v3}, Lcom/zhangdan/preferential/data/model/Shop;-><init>()V

    .line 729
    .local v3, s:Lcom/zhangdan/preferential/data/model/Shop;
    invoke-virtual {p0, v3, v1}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSingleShop(Lcom/zhangdan/preferential/data/model/Shop;Lorg/json/JSONObject;)V

    .line 730
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 734
    .end local v0           #i:I
    .end local v1           #item:Lorg/json/JSONObject;
    .end local v3           #s:Lcom/zhangdan/preferential/data/model/Shop;
    :cond_0
    return-object v4
.end method

.method public inflateShopExtra(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/ShopExtra;
    .locals 7
    .parameter "request"

    .prologue
    const/4 v4, 0x0

    .line 241
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->parseShop(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 242
    .local v2, response:Lorg/json/JSONObject;
    if-nez v2, :cond_0

    move-object v1, v4

    .line 256
    :goto_0
    return-object v1

    .line 247
    :cond_0
    :try_start_0
    const-string v5, "result"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 248
    .local v3, result:Lorg/json/JSONObject;
    new-instance v1, Lcom/zhangdan/preferential/data/model/ShopExtra;

    invoke-direct {v1}, Lcom/zhangdan/preferential/data/model/ShopExtra;-><init>()V

    .line 249
    .local v1, extra:Lcom/zhangdan/preferential/data/model/ShopExtra;
    invoke-virtual {p0, v1, v3}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateSingleShop(Lcom/zhangdan/preferential/data/model/Shop;Lorg/json/JSONObject;)V

    .line 250
    invoke-virtual {p0, v3, v1}, Lcom/zhangdan/preferential/utils/JsonParser;->addExtra(Lorg/json/JSONObject;Lcom/zhangdan/preferential/data/model/ShopExtra;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v1           #extra:Lcom/zhangdan/preferential/data/model/ShopExtra;
    .end local v3           #result:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Lorg/json/JSONException;
    const-string v5, "TAG"

    const-string v6, "Can\'t parse to shop."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v4

    .line 256
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

.method public inflateSingleBrand(Lcom/zhangdan/preferential/data/model/Brand;Lorg/json/JSONObject;)V
    .locals 1
    .parameter "b"
    .parameter "jo"

    .prologue
    .line 220
    const-string v0, "cityId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/zhangdan/preferential/data/model/Brand;->cityId:I

    .line 221
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Brand;->name:Ljava/lang/String;

    .line 222
    const-string v0, "icon"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zhangdan/preferential/data/model/Brand;->iconUrl:Ljava/lang/String;

    .line 223
    return-void
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
    .line 518
    if-nez p1, :cond_0

    .line 519
    const-string v1, ""

    .line 530
    :goto_0
    return-object v1

    .line 523
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

    .line 525
    .local v1, rawCity:Ljava/lang/String;
    goto :goto_0

    .line 526
    .end local v1           #rawCity:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 527
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "JsonParser"

    const-string v3, "Can\'t get address."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 530
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
    .line 534
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v3, iconTags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/IconTag;>;"
    if-eqz p1, :cond_1

    .line 536
    const-string v10, "result"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 537
    .local v7, result:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 538
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 539
    .local v5, item:Lorg/json/JSONObject;
    new-instance v4, Lcom/zhangdan/preferential/data/model/IconTag;

    invoke-direct {v4}, Lcom/zhangdan/preferential/data/model/IconTag;-><init>()V

    .line 540
    .local v4, it:Lcom/zhangdan/preferential/data/model/IconTag;
    const-string v10, "icon"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/zhangdan/preferential/data/model/IconTag;->icon:Ljava/lang/String;

    .line 541
    const-string v10, "name"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/zhangdan/preferential/data/model/IconTag;->name:Ljava/lang/String;

    .line 542
    const-string v10, "id"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/zhangdan/preferential/data/model/IconTag;->typeId:I

    .line 543
    const-string v10, "sequence"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/zhangdan/preferential/data/model/IconTag;->sequence:I

    .line 545
    const-string v10, "childs"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 546
    .local v1, childs:Lorg/json/JSONArray;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v9, tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Tag;>;"
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 548
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 549
    .local v0, child:Lorg/json/JSONObject;
    new-instance v8, Lcom/zhangdan/preferential/data/model/Tag;

    invoke-direct {v8}, Lcom/zhangdan/preferential/data/model/Tag;-><init>()V

    .line 550
    .local v8, t:Lcom/zhangdan/preferential/data/model/Tag;
    const-string v10, "id"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/zhangdan/preferential/data/model/Tag;->typeId:I

    .line 551
    const-string v10, "name"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/zhangdan/preferential/data/model/Tag;->name:Ljava/lang/String;

    .line 552
    const-string v10, "sequence"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/zhangdan/preferential/data/model/Tag;->sequence:I

    .line 553
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 555
    .end local v0           #child:Lorg/json/JSONObject;
    .end local v8           #t:Lcom/zhangdan/preferential/data/model/Tag;
    :cond_0
    iput-object v9, v4, Lcom/zhangdan/preferential/data/model/IconTag;->subTags:Ljava/util/List;

    .line 557
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 560
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
    .line 677
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .local v2, infos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;>;"
    if-nez p1, :cond_1

    .line 697
    :cond_0
    return-object v2

    .line 682
    :cond_1
    const-string v6, "statuses"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 683
    .local v4, statuses:Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 687
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 688
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 689
    .local v3, status:Lorg/json/JSONObject;
    new-instance v1, Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;

    invoke-direct {v1}, Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;-><init>()V

    .line 690
    .local v1, info:Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;
    const-string v6, "text"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;->comment:Ljava/lang/String;

    .line 691
    const-string v6, "thumbnail_pic"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;->photoUrl:Ljava/lang/String;

    .line 692
    const-string v6, "user"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 693
    .local v5, user:Lorg/json/JSONObject;
    const-string v6, "profile_image_url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/zhangdan/preferential/data/model/WeiboPoiInfo;->portraitUrl:Ljava/lang/String;

    .line 694
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isLastPage(Lorg/json/JSONObject;)Z
    .locals 5
    .parameter "resp"

    .prologue
    const/4 v3, 0x0

    .line 666
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->getResult(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 667
    .local v1, result:Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 673
    :cond_0
    :goto_0
    return v3

    .line 671
    :cond_1
    const-string v4, "Total"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 672
    .local v2, total:I
    const-string v4, "count"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 673
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
    .line 701
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v1, brands:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Brand;>;"
    iget-object v7, p0, Lcom/zhangdan/preferential/utils/JsonParser;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-virtual {v7, p1}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getBrandListRequest(Lcom/zhangdan/preferential/data/model/Position;)Lorg/json/JSONObject;

    move-result-object v5

    .line 704
    .local v5, req:Lorg/json/JSONObject;
    invoke-virtual {p0, v5}, Lcom/zhangdan/preferential/utils/JsonParser;->parseShop(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    .line 705
    .local v6, resp:Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 706
    .local v3, items:Lorg/json/JSONArray;
    if-eqz v6, :cond_0

    .line 707
    const-string v7, "result"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 709
    :cond_0
    if-eqz v3, :cond_1

    .line 710
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 711
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 712
    .local v4, jo:Lorg/json/JSONObject;
    new-instance v0, Lcom/zhangdan/preferential/data/model/Brand;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Brand;-><init>()V

    .line 713
    .local v0, b:Lcom/zhangdan/preferential/data/model/Brand;
    const-string v7, "icon"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/zhangdan/preferential/data/model/Brand;->iconUrl:Ljava/lang/String;

    .line 714
    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/zhangdan/preferential/data/model/Brand;->name:Ljava/lang/String;

    .line 715
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 719
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
    .line 649
    iget-object v6, p0, Lcom/zhangdan/preferential/utils/JsonParser;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-virtual {v6}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getBankTagsRequest()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/zhangdan/preferential/utils/JsonParser;->parseShop(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 650
    .local v2, resp:Lorg/json/JSONObject;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v5, tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/MenuTag;>;"
    if-eqz v2, :cond_0

    .line 652
    const-string v6, "result"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 653
    .local v3, result:Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 654
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 655
    new-instance v4, Lcom/zhangdan/preferential/data/model/MenuTag;

    invoke-direct {v4}, Lcom/zhangdan/preferential/data/model/MenuTag;-><init>()V

    .line 656
    .local v4, tag:Lcom/zhangdan/preferential/data/model/MenuTag;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, name:Ljava/lang/String;
    iput-object v1, v4, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    .line 658
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
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
    .line 636
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/utils/JsonParser;->getResult(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 641
    :goto_0
    return-object v1

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 641
    const-string v1, ""

    goto :goto_0
.end method

.method public sendErrorMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "shopId"
    .parameter "errorId"
    .parameter "youhuiUid"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/JsonParser;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getPickErrorRequest(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    .line 646
    return-void
.end method
