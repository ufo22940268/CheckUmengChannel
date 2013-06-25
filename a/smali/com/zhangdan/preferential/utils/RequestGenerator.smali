.class public Lcom/zhangdan/preferential/utils/RequestGenerator;
.super Ljava/lang/Object;
.source "RequestGenerator.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RequestGenerator"


# instance fields
.field private mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-direct {v0}, Lcom/zhangdan/preferential/utils/PositionProvider;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/utils/RequestGenerator;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    .line 36
    return-void
.end method


# virtual methods
.method public getAllDayPromotionListRequest(Ljava/lang/String;Ljava/lang/String;II)Lorg/json/JSONObject;
    .locals 1
    .parameter "youhuiUid"
    .parameter "city"
    .parameter "page"
    .parameter "typeId"

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getDayPromotionListRequest(Ljava/lang/String;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getAllPromotionListRequest(Ljava/lang/String;Ljava/lang/String;I[I)Lorg/json/JSONObject;
    .locals 6
    .parameter "youhuiUid"
    .parameter "city"
    .parameter "page"
    .parameter "bankIds"

    .prologue
    .line 83
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getPromotionListRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getBankListRequest()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 118
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0x44f

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 119
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    const-string v1, "name"

    const-string v2, "bank"

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getBankTagsRequest()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 278
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0xc1d

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 279
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    const-string v1, "name"

    const-string v2, "activityTags"

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getBrandListRequest(Lcom/zhangdan/preferential/data/model/Position;)Lorg/json/JSONObject;
    .locals 2
    .parameter "pos"

    .prologue
    .line 284
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0x7d1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 285
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putPosition(Lcom/zhangdan/preferential/data/model/Position;)V

    .line 286
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getCityRequestUrl(Lcom/zhangdan/preferential/data/model/Position;)Ljava/lang/String;
    .locals 3
    .parameter "pos"

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.map.baidu.com/geocoder?output=json&location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",%20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "118A822A3605D14F287715C841F9490DB6CB2379"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDayPromotionListRequest(Ljava/lang/String;Ljava/lang/String;II)Lorg/json/JSONObject;
    .locals 3
    .parameter "youhuiUid"
    .parameter "city"
    .parameter "page"
    .parameter "typeId"

    .prologue
    .line 109
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0xc81

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 110
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    const-string v1, "pageNo"

    invoke-virtual {v0, v1, p3}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;I)V

    .line 111
    const-string v1, "city"

    invoke-virtual {v0, v1, p2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putUserId(Ljava/lang/String;)V

    .line 113
    const-string v1, "day"

    invoke-static {p4}, Lcom/zhangdan/preferential/utils/DateUtils;->getServerDateByWeekConstants(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;I)V

    .line 114
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getKeywordRequest(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 3
    .parameter "keyword"
    .parameter "pageNo"

    .prologue
    .line 58
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v2, 0x835

    invoke-direct {v0, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 59
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    const-string v2, "keyword"

    invoke-virtual {v0, v2, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v2, "pageNo"

    invoke-virtual {v0, v2, p2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;I)V

    .line 61
    iget-object v2, p0, Lcom/zhangdan/preferential/utils/RequestGenerator;->mPositionProvider:Lcom/zhangdan/preferential/utils/PositionProvider;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v1

    .line 62
    .local v1, pos:Lcom/zhangdan/preferential/data/model/Position;
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putPosition(Lcom/zhangdan/preferential/data/model/Position;)V

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method public getMenuTagRequest()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0x44d

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 160
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    const-string v1, "name"

    const-string v2, "topic"

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getMyBankRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter "youhuiId"

    .prologue
    .line 200
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0x2392

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 201
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putUserId(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getPageRequest(Lcom/zhangdan/preferential/data/model/Position;IILjava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "pos"
    .parameter "pageNo"
    .parameter "typeId"
    .parameter "uid"

    .prologue
    .line 39
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0x835

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 40
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    const-string v1, "pageNo"

    invoke-virtual {v0, v1, p2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;I)V

    .line 42
    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    invoke-static {p3}, Lcom/zhangdan/preferential/data/TypeConstants;->isWeekType(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string v1, "typeId"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    invoke-static {p3}, Lcom/zhangdan/preferential/data/TypeConstants;->isWeekType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v0, p3}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putWeekType(I)V

    .line 50
    :cond_1
    if-eqz p1, :cond_2

    .line 51
    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putPosition(Lcom/zhangdan/preferential/data/model/Position;)V

    .line 53
    :cond_2
    invoke-virtual {v0, p4}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putYouhuiUid(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getPickErrorRequest(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "shopId"
    .parameter "errorId"
    .parameter "youhuiUid"

    .prologue
    .line 264
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v3, 0x23f1

    invoke-direct {v0, v3}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 265
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    invoke-virtual {v0, p3}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putUserId(Ljava/lang/String;)V

    .line 266
    const-string v3, "shopId"

    invoke-virtual {v0, v3, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 269
    .local v2, items:Lorg/json/JSONObject;
    const-string v3, "type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v3, "items"

    invoke-virtual {v0, v3, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v2           #items:Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    return-object v3

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPositionRequest(Lcom/zhangdan/preferential/data/model/Position;I)Lorg/json/JSONObject;
    .locals 4
    .parameter "pos"
    .parameter "typeId"

    .prologue
    const/4 v3, 0x1

    .line 69
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0x835

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 70
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    if-eq p2, v3, :cond_0

    .line 71
    const-string v1, "typeId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    const-string v1, "pageNo"

    invoke-virtual {v0, v1, v3}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;I)V

    .line 74
    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putPosition(Lcom/zhangdan/preferential/data/model/Position;)V

    .line 75
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getPromotionExtraRequest(Lcom/zhangdan/preferential/data/model/Position;Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 2
    .parameter "pos"
    .parameter "id"
    .parameter "page"

    .prologue
    .line 131
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0xc84

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 132
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "pageNo"

    invoke-virtual {v0, v1, p3}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;I)V

    .line 134
    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putPosition(Lcom/zhangdan/preferential/data/model/Position;)V

    .line 135
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getPromotionExtraRequest(Lcom/zhangdan/preferential/data/model/Position;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter "pos"
    .parameter "id"
    .parameter "page"
    .parameter "youhuiId"

    .prologue
    .line 139
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0xc84

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 140
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "pageNo"

    invoke-virtual {v0, v1, p3}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;I)V

    .line 142
    invoke-virtual {v0, p4}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putUserId(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putPosition(Lcom/zhangdan/preferential/data/model/Position;)V

    .line 144
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getPromotionListRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .parameter "youhuiUid"
    .parameter "city"
    .parameter "page"
    .parameter "tag"

    .prologue
    .line 79
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getPromotionListRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getPromotionListRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[I)Lorg/json/JSONObject;
    .locals 7
    .parameter "youhuiUid"
    .parameter "city"
    .parameter "page"
    .parameter "tag"
    .parameter "bankIds"

    .prologue
    .line 87
    new-instance v1, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v6, 0xc81

    invoke-direct {v1, v6}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 88
    .local v1, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    const-string v6, "pageNo"

    invoke-virtual {v1, v6, p3}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;I)V

    .line 89
    const-string v6, "city"

    invoke-virtual {v1, v6, p2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putUserId(Ljava/lang/String;)V

    .line 91
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 92
    const-string v6, "tag"

    invoke-virtual {v1, v6, p4}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    if-eqz p5, :cond_2

    array-length v6, p5

    if-eqz v6, :cond_2

    .line 95
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 96
    .local v4, ids:Lorg/json/JSONArray;
    move-object v0, p5

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget v3, v0, v2

    .line 97
    .local v3, id:I
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v3           #id:I
    :cond_1
    const-string v6, "bankIds"

    invoke-virtual {v1, v6, v4}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 101
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v4           #ids:Lorg/json/JSONArray;
    .end local v5           #len$:I
    :cond_2
    invoke-virtual {v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v6

    return-object v6
.end method

.method public getPromotionRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter "shopId"
    .parameter "promId"

    .prologue
    .line 124
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0xc83

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 125
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    const-string v1, "shopId"

    invoke-virtual {v0, v1, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "activityId"

    invoke-virtual {v0, v1, p2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getRecommendShopListRequest(Lcom/zhangdan/preferential/data/model/Position;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter "pos"
    .parameter "brand"
    .parameter "actId"

    .prologue
    .line 303
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0xc86

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 304
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putPosition(Lcom/zhangdan/preferential/data/model/Position;)V

    .line 305
    const-string v1, "brand"

    invoke-virtual {v0, v1, p2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "actId"

    invoke-virtual {v0, v1, p3}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getSaveBankRequest(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 5
    .parameter "youhuiId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 206
    .local p2, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 207
    .local v0, ar:Lorg/json/JSONArray;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 208
    .local v3, id:Ljava/lang/Long;
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 211
    .end local v3           #id:Ljava/lang/Long;
    :cond_0
    new-instance v1, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v4, 0x2391

    invoke-direct {v1, v4}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 212
    .local v1, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    invoke-virtual {v1, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putUserId(Ljava/lang/String;)V

    .line 213
    const-string v4, "bankIds"

    invoke-virtual {v1, v4, v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 214
    invoke-virtual {v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    return-object v4
.end method

.method public getSavePromRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .parameter "youhuiId"
    .parameter "promId"

    .prologue
    .line 234
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0x238d

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 235
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putUserId(Ljava/lang/String;)V

    .line 236
    const-string v1, "discountId"

    invoke-virtual {v0, v1, p2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v1, "type"

    const-string v2, "Activity"

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "set"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 239
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getSaveShopRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .parameter "youhuiId"
    .parameter "shopId"

    .prologue
    .line 218
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0x238f

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 219
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putUserId(Ljava/lang/String;)V

    .line 220
    const-string v1, "shopId"

    invoke-virtual {v0, v1, p2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "set"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getSavedPromRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "youhuiId"

    .prologue
    .line 257
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0x238e

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 258
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putUserId(Ljava/lang/String;)V

    .line 259
    const-string v1, "type"

    const-string v2, "Activity"

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getSavedShopRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter "youhuiId"

    .prologue
    .line 251
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0x2390

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 252
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putUserId(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getShopExtraRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter "id"

    .prologue
    .line 165
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0x836

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 166
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getShopExtraRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter "id"
    .parameter "youhuiId"

    .prologue
    .line 171
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0x836

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 172
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putUserId(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getTagRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "city"

    .prologue
    .line 148
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0x44e

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 149
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    const-string v1, "name"

    const-string v2, "tag"

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "city"

    invoke-virtual {v0, v1, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getUnsavePromRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .parameter "youhuiId"
    .parameter "promId"

    .prologue
    .line 243
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0x238d

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 244
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putUserId(Ljava/lang/String;)V

    .line 245
    const-string v1, "discountId"

    invoke-virtual {v0, v1, p2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "set"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getUnsaveShopRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .parameter "youhuiId"
    .parameter "shopId"

    .prologue
    .line 226
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0x238f

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 227
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->putUserId(Ljava/lang/String;)V

    .line 228
    const-string v1, "shopId"

    invoke-virtual {v0, v1, p2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "set"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 230
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getWeiboPoiRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "token"
    .parameter "poiid"

    .prologue
    .line 291
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "poiid"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "access_token"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, paramsStr:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://api.weibo.com/2/place/pois/photos.json?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 299
    .end local v1           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v2           #paramsStr:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getYouhuiLoginRequest(Ljava/lang/String;Lcom/zhangdan/preferential/data/model/WeiboInfo;Lcom/zhangdan/preferential/data/model/ZhangdanInfo;J)Lorg/json/JSONObject;
    .locals 4
    .parameter "sinaToken"
    .parameter "weibo"
    .parameter "zhangdan"
    .parameter "sinaUid"

    .prologue
    .line 190
    new-instance v0, Lcom/zhangdan/preferential/data/model/CommonRequest;

    const/16 v1, 0x2329

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/data/model/CommonRequest;-><init>(I)V

    .line 191
    .local v0, cr:Lcom/zhangdan/preferential/data/model/CommonRequest;
    const-string v1, "uid"

    iget-wide v2, p3, Lcom/zhangdan/preferential/data/model/ZhangdanInfo;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    const-string v1, "token"

    iget-object v2, p3, Lcom/zhangdan/preferential/data/model/ZhangdanInfo;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "sinaToken"

    invoke-virtual {v0, v1, p1}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "sinaUid"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    const-string v1, "userName"

    iget-object v2, p2, Lcom/zhangdan/preferential/data/model/WeiboInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/data/model/CommonRequest;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Lcom/zhangdan/preferential/data/model/CommonRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getZhangdanLoginRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "token"

    .prologue
    .line 179
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "access_token"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, paramsStr:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www.51zhangdan.com/service/user/sinalogin.ashx?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 186
    .end local v1           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v2           #paramsStr:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    const/4 v3, 0x0

    goto :goto_0
.end method
