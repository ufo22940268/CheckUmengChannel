.class public final Lcom/zhangdan/app/activities/chart/c/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 19

    if-eqz p0, :cond_4

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-lt v4, v5, :cond_1

    move-object v2, v3

    :cond_0
    if-eqz v2, :cond_4

    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lt v3, v4, :cond_2

    :goto_2
    return-object v2

    :cond_1
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/http/r;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/r;->b()I

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v6, Lcom/zhangdan/app/activities/chart/b/c;

    invoke-direct {v6}, Lcom/zhangdan/app/activities/chart/b/c;-><init>()V

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "year"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "count"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "amount"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-string v11, "CardHolder"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lt v4, v13, :cond_3

    invoke-virtual {v6, v7}, Lcom/zhangdan/app/activities/chart/b/c;->a(I)V

    invoke-virtual {v6, v8}, Lcom/zhangdan/app/activities/chart/b/c;->b(I)V

    invoke-virtual {v6, v9, v10}, Lcom/zhangdan/app/activities/chart/b/c;->a(D)V

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/activities/chart/b/c;->a(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    new-instance v14, Lcom/zhangdan/app/activities/chart/b/a;

    invoke-direct {v14}, Lcom/zhangdan/app/activities/chart/b/a;-><init>()V

    const-string v15, "name"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "count"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v17, "amount"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v17

    invoke-virtual {v14, v15}, Lcom/zhangdan/app/activities/chart/b/a;->a(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/zhangdan/app/activities/chart/b/a;->a(I)V

    move-wide/from16 v0, v17

    invoke-virtual {v14, v0, v1}, Lcom/zhangdan/app/activities/chart/b/a;->a(D)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 24

    if-eqz p0, :cond_6

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v3

    :goto_1
    return-object v2

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/http/r;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/r;->b()I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v7, Lcom/zhangdan/app/activities/chart/b/d;

    invoke-direct {v7}, Lcom/zhangdan/app/activities/chart/b/d;-><init>()V

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/r;->b()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/zhangdan/app/activities/chart/b/d;->a(I)V

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "amount"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v2, "count"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v8, v9}, Lcom/zhangdan/app/activities/chart/b/d;->a(D)V

    invoke-virtual {v7, v2}, Lcom/zhangdan/app/activities/chart/b/d;->b(I)V

    const-string v2, "MonthBill"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v2, v4, :cond_2

    invoke-virtual {v7, v9}, Lcom/zhangdan/app/activities/chart/b/d;->a(Ljava/util/List;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "month"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "amount"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-string v12, "count"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_3

    new-instance v13, Lcom/zhangdan/app/activities/chart/b/e;

    invoke-direct {v13}, Lcom/zhangdan/app/activities/chart/b/e;-><init>()V

    invoke-virtual {v13, v5}, Lcom/zhangdan/app/activities/chart/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {v13, v10, v11}, Lcom/zhangdan/app/activities/chart/b/e;->a(D)V

    invoke-virtual {v13, v12}, Lcom/zhangdan/app/activities/chart/b/e;->a(I)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "CardHolder"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v4, v5, :cond_4

    invoke-virtual {v13, v10}, Lcom/zhangdan/app/activities/chart/b/e;->a(Ljava/util/List;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v12, Lcom/zhangdan/app/activities/chart/b/a;

    invoke-direct {v12}, Lcom/zhangdan/app/activities/chart/b/a;-><init>()V

    const-string v14, "name"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "amount"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v15

    const-string v17, "count"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const-string v18, "Category"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_4
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-lt v5, v0, :cond_5

    invoke-virtual {v12, v14}, Lcom/zhangdan/app/activities/chart/b/a;->a(Ljava/lang/String;)V

    move-wide v0, v15

    invoke-virtual {v12, v0, v1}, Lcom/zhangdan/app/activities/chart/b/a;->a(D)V

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/zhangdan/app/activities/chart/b/a;->a(I)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/zhangdan/app/activities/chart/b/a;->a(Ljava/util/List;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    new-instance v21, Lcom/zhangdan/app/activities/chart/b/b;

    invoke-direct/range {v21 .. v21}, Lcom/zhangdan/app/activities/chart/b/b;-><init>()V

    const-string v22, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/zhangdan/app/activities/chart/b/b;->a(Ljava/lang/String;)V

    const-string v22, "id"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/zhangdan/app/activities/chart/b/b;->a(I)V

    const-string v22, "amount"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/zhangdan/app/activities/chart/b/b;->a(D)V

    const-string v22, "count"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/chart/b/b;->b(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1
.end method
