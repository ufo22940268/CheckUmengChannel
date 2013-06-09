.class public final Lcom/zhangdan/app/activities/stage/b;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/zhangdan/app/activities/stage/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/app/activities/stage/b;->a:Landroid/content/Context;

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zhangdan/app/activities/stage/b;->a:Landroid/content/Context;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    aget-object v3, p1, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zhangdan/app/activities/stage/b;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/zhangdan/app/data/db/b/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zhangdan/app/activities/stage/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v3}, Lcom/zhangdan/app/ZhangdanApplication;->b()Lcom/zhangdan/app/c/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zhangdan/app/c/a;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Lcom/zhangdan/app/activities/stage/a;

    invoke-direct {v3}, Lcom/zhangdan/app/activities/stage/a;-><init>()V

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v3, v5

    goto :goto_0

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/zhangdan/app/data/model/http/o;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/o;->f()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v10, Lcom/zhangdan/app/data/model/e;

    invoke-direct {v10}, Lcom/zhangdan/app/data/model/e;-><init>()V

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/o;->a()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/zhangdan/app/data/model/e;->a(J)V

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/o;->c()I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/zhangdan/app/data/model/e;->a(I)V

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/o;->b()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/zhangdan/app/data/model/e;->b(J)V

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/o;->d()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/zhangdan/app/data/model/e;->c(J)V

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/o;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/zhangdan/app/data/model/e;->a(Ljava/lang/String;)V

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/zhangdan/app/c/a;->f()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    :goto_2
    :try_start_0
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v3, v4, :cond_8

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v10, v9}, Lcom/zhangdan/app/data/model/e;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v12

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/o;->d()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_5

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/zhangdan/app/data/model/e;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/zhangdan/app/data/model/e;->c(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/zhangdan/app/data/model/e;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    :try_start_1
    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v12, "Description"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "CardNo"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/zhangdan/app/data/model/d;

    invoke-direct {v14}, Lcom/zhangdan/app/data/model/d;-><init>()V

    invoke-virtual {v14, v12}, Lcom/zhangdan/app/data/model/d;->a(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Lcom/zhangdan/app/data/model/d;->b(Ljava/lang/String;)V

    const-string v12, "BillStageList"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_9

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v4, v15, :cond_a

    invoke-virtual {v14, v13}, Lcom/zhangdan/app/data/model/d;->a(Ljava/util/List;)V

    :cond_9
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v12, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "Year"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v17, "Month"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const-string v18, "Amount"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    const-string v20, "Sn"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    new-instance v20, Lcom/zhangdan/app/data/model/f;

    invoke-direct/range {v20 .. v20}, Lcom/zhangdan/app/data/model/f;-><init>()V

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/f;->a(I)V

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/f;->b(I)V

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/data/model/f;->a(D)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/zhangdan/app/data/model/f;->c(I)V

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method


# virtual methods
.method protected final bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/stage/b;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/a/a/a/e/a/a;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/b;->b:Lcom/zhangdan/app/activities/stage/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/b;->b:Lcom/zhangdan/app/activities/stage/c;

    invoke-interface {v0}, Lcom/zhangdan/app/activities/stage/c;->d_()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/zhangdan/app/activities/stage/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/stage/b;->b:Lcom/zhangdan/app/activities/stage/c;

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/b;->b:Lcom/zhangdan/app/activities/stage/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/stage/b;->b:Lcom/zhangdan/app/activities/stage/c;

    invoke-interface {v0, p1}, Lcom/zhangdan/app/activities/stage/c;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
