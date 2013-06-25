.class public Lcom/zhangdan/app/activities/chart/util/ChartJsonParser;
.super Ljava/lang/Object;
.source "ChartJsonParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseTotalChartInfo(Ljava/util/List;)Ljava/util/List;
    .locals 25
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/ChartInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ChartInfo;>;"
    if-eqz p0, :cond_3

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_3

    .line 32
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v19

    .line 33
    .local v19, size:I
    const/4 v14, 0x0

    .line 34
    .local v14, data:Lcom/zhangdan/app/data/model/http/ChartInfo;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 35
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/zhangdan/app/data/model/http/ChartInfo;

    .line 36
    .local v12, chartInfo:Lcom/zhangdan/app/data/model/http/ChartInfo;
    invoke-virtual {v12}, Lcom/zhangdan/app/data/model/http/ChartInfo;->getYear()I

    move-result v24

    if-nez v24, :cond_1

    .line 37
    move-object v14, v12

    .line 41
    .end local v12           #chartInfo:Lcom/zhangdan/app/data/model/http/ChartInfo;
    :cond_0
    if-eqz v14, :cond_3

    .line 43
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {v14}, Lcom/zhangdan/app/data/model/http/ChartInfo;->getValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 44
    .local v6, arr:Lorg/json/JSONArray;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v21, totalList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;>;"
    const/16 v16, 0x0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 46
    new-instance v20, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;

    invoke-direct/range {v20 .. v20}, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;-><init>()V

    .line 47
    .local v20, totalInfo:Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 48
    .local v23, yearTotalObj:Lorg/json/JSONObject;
    const-string v24, "year"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 49
    .local v22, year:I
    const-string v24, "count"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 50
    .local v13, count:I
    const-string v24, "amount"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 51
    .local v4, amount:D
    const-string v24, "CardHolder"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 52
    .local v9, cardHolderArr:Lorg/json/JSONArray;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v10, cardHolderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;>;"
    const/16 v17, 0x0

    .local v17, j:I
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 54
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 55
    .local v11, cardHolderObj:Lorg/json/JSONObject;
    new-instance v8, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;

    invoke-direct {v8}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;-><init>()V

    .line 56
    .local v8, cardHolder:Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
    const-string v24, "name"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 57
    .local v18, name:Ljava/lang/String;
    const-string v24, "count"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 58
    .local v7, c:I
    const-string v24, "amount"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 59
    .local v2, a:D
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->setName(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v8, v7}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->setCount(I)V

    .line 61
    invoke-virtual {v8, v2, v3}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->setAmount(D)V

    .line 62
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 34
    .end local v2           #a:D
    .end local v4           #amount:D
    .end local v6           #arr:Lorg/json/JSONArray;
    .end local v7           #c:I
    .end local v8           #cardHolder:Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
    .end local v9           #cardHolderArr:Lorg/json/JSONArray;
    .end local v10           #cardHolderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;>;"
    .end local v11           #cardHolderObj:Lorg/json/JSONObject;
    .end local v13           #count:I
    .end local v17           #j:I
    .end local v18           #name:Ljava/lang/String;
    .end local v20           #totalInfo:Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;
    .end local v21           #totalList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;>;"
    .end local v22           #year:I
    .end local v23           #yearTotalObj:Lorg/json/JSONObject;
    .restart local v12       #chartInfo:Lcom/zhangdan/app/data/model/http/ChartInfo;
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 64
    .end local v12           #chartInfo:Lcom/zhangdan/app/data/model/http/ChartInfo;
    .restart local v4       #amount:D
    .restart local v6       #arr:Lorg/json/JSONArray;
    .restart local v9       #cardHolderArr:Lorg/json/JSONArray;
    .restart local v10       #cardHolderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;>;"
    .restart local v13       #count:I
    .restart local v17       #j:I
    .restart local v20       #totalInfo:Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;
    .restart local v21       #totalList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;>;"
    .restart local v22       #year:I
    .restart local v23       #yearTotalObj:Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;->setYear(I)V

    .line 65
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;->setCount(I)V

    .line 66
    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;->setAmount(D)V

    .line 67
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;->setCardHolderList(Ljava/util/List;)V

    .line 68
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 71
    .end local v4           #amount:D
    .end local v6           #arr:Lorg/json/JSONArray;
    .end local v9           #cardHolderArr:Lorg/json/JSONArray;
    .end local v10           #cardHolderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;>;"
    .end local v13           #count:I
    .end local v17           #j:I
    .end local v20           #totalInfo:Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;
    .end local v21           #totalList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;>;"
    .end local v22           #year:I
    .end local v23           #yearTotalObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v15

    .line 72
    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    .end local v14           #data:Lcom/zhangdan/app/data/model/http/ChartInfo;
    .end local v15           #e:Ljava/lang/Exception;
    .end local v16           #i:I
    .end local v19           #size:I
    :cond_3
    const/16 v21, 0x0

    :cond_4
    return-object v21
.end method

.method public static parseYearChartInfo(Ljava/util/List;)Ljava/util/List;
    .locals 38
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/ChartInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ChartInfo;>;"
    if-eqz p0, :cond_5

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_5

    .line 87
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v19, chartYearList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/zhangdan/app/data/model/http/ChartInfo;

    .line 89
    .local v16, chartInfo:Lcom/zhangdan/app/data/model/http/ChartInfo;
    invoke-virtual/range {v16 .. v16}, Lcom/zhangdan/app/data/model/http/ChartInfo;->getYear()I

    move-result v36

    if-eqz v36, :cond_0

    .line 91
    new-instance v18, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;

    invoke-direct/range {v18 .. v18}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;-><init>()V

    .line 92
    .local v18, chartYearInfo:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    invoke-virtual/range {v16 .. v16}, Lcom/zhangdan/app/data/model/http/ChartInfo;->getYear()I

    move-result v35

    .line 93
    .local v35, year:I
    move-object/from16 v0, v18

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->setYear(I)V

    .line 95
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    invoke-virtual/range {v16 .. v16}, Lcom/zhangdan/app/data/model/http/ChartInfo;->getValue()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    .local v17, chartObj:Lorg/json/JSONObject;
    const-string v36, "amount"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 97
    .local v3, amount:D
    const-string v36, "count"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 98
    .local v20, count:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->setAmount(D)V

    .line 99
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->setCount(I)V

    .line 101
    const-string v36, "MonthBill"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 102
    .local v30, monthBillArr:Lorg/json/JSONArray;
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v31, monthBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;>;"
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v36

    move/from16 v0, v22

    move/from16 v1, v36

    if-ge v0, v1, :cond_4

    .line 104
    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v33

    .line 105
    .local v33, monthObj:Lorg/json/JSONObject;
    const-string v36, "month"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 106
    .local v29, month:Ljava/lang/String;
    const-string v36, "amount"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v26

    .line 107
    .local v26, mAmount:D
    const-string v36, "count"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v28

    .line 108
    .local v28, mCount:I
    if-nez v28, :cond_1

    .line 103
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 110
    :cond_1
    new-instance v32, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;

    invoke-direct/range {v32 .. v32}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;-><init>()V

    .line 111
    .local v32, monthInfo:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->setMonth(Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, v32

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->setAmount(D)V

    .line 113
    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->setCount(I)V

    .line 115
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v10, cardHolderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;>;"
    const-string v36, "CardHolder"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 117
    .local v9, cardHolderArr:Lorg/json/JSONArray;
    const/16 v24, 0x0

    .local v24, j:I
    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v36

    move/from16 v0, v24

    move/from16 v1, v36

    if-ge v0, v1, :cond_3

    .line 118
    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 119
    .local v11, cardHolderObj:Lorg/json/JSONObject;
    new-instance v8, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;

    invoke-direct {v8}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;-><init>()V

    .line 120
    .local v8, cardHolder:Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
    const-string v36, "name"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 121
    .local v34, name:Ljava/lang/String;
    const-string v36, "amount"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 122
    .local v5, cAmount:D
    const-string v36, "count"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 124
    .local v7, cCount:I
    const-string v36, "Category"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 125
    .local v13, categoryArr:Lorg/json/JSONArray;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v14, categoryList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CategoryInfo;>;"
    const/16 v25, 0x0

    .local v25, k:I
    :goto_4
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v36

    move/from16 v0, v25

    move/from16 v1, v36

    if-ge v0, v1, :cond_2

    .line 127
    move/from16 v0, v25

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 128
    .local v15, categoryObj:Lorg/json/JSONObject;
    new-instance v12, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;

    invoke-direct {v12}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;-><init>()V

    .line 129
    .local v12, category:Lcom/zhangdan/app/activities/chart/model/CategoryInfo;
    const-string v36, "name"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->setName(Ljava/lang/String;)V

    .line 130
    const-string v36, "id"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v12, v0}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->setId(I)V

    .line 131
    const-string v36, "amount"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v36

    move-wide/from16 v0, v36

    invoke-virtual {v12, v0, v1}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->setAmount(D)V

    .line 132
    const-string v36, "count"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v12, v0}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->setCount(I)V

    .line 133
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 136
    .end local v12           #category:Lcom/zhangdan/app/activities/chart/model/CategoryInfo;
    .end local v15           #categoryObj:Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->setName(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v8, v5, v6}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->setAmount(D)V

    .line 138
    invoke-virtual {v8, v7}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->setCount(I)V

    .line 139
    invoke-virtual {v8, v14}, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->setCategoryList(Ljava/util/List;)V

    .line 141
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_3

    .line 144
    .end local v5           #cAmount:D
    .end local v7           #cCount:I
    .end local v8           #cardHolder:Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
    .end local v11           #cardHolderObj:Lorg/json/JSONObject;
    .end local v13           #categoryArr:Lorg/json/JSONArray;
    .end local v14           #categoryList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CategoryInfo;>;"
    .end local v25           #k:I
    .end local v34           #name:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->setCardHolderList(Ljava/util/List;)V

    .line 145
    invoke-interface/range {v31 .. v32}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 150
    .end local v3           #amount:D
    .end local v9           #cardHolderArr:Lorg/json/JSONArray;
    .end local v10           #cardHolderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;>;"
    .end local v17           #chartObj:Lorg/json/JSONObject;
    .end local v20           #count:I
    .end local v22           #i:I
    .end local v24           #j:I
    .end local v26           #mAmount:D
    .end local v28           #mCount:I
    .end local v29           #month:Ljava/lang/String;
    .end local v30           #monthBillArr:Lorg/json/JSONArray;
    .end local v31           #monthBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;>;"
    .end local v32           #monthInfo:Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
    .end local v33           #monthObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v21

    .line 151
    .local v21, e:Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 148
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v3       #amount:D
    .restart local v17       #chartObj:Lorg/json/JSONObject;
    .restart local v20       #count:I
    .restart local v22       #i:I
    .restart local v30       #monthBillArr:Lorg/json/JSONArray;
    .restart local v31       #monthBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;>;"
    :cond_4
    :try_start_1
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->setMonthBillList(Ljava/util/List;)V

    .line 149
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 156
    .end local v3           #amount:D
    .end local v16           #chartInfo:Lcom/zhangdan/app/data/model/http/ChartInfo;
    .end local v17           #chartObj:Lorg/json/JSONObject;
    .end local v18           #chartYearInfo:Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
    .end local v19           #chartYearList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;>;"
    .end local v20           #count:I
    .end local v22           #i:I
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v30           #monthBillArr:Lorg/json/JSONArray;
    .end local v31           #monthBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;>;"
    .end local v35           #year:I
    :cond_5
    const/16 v19, 0x0

    :cond_6
    return-object v19
.end method
