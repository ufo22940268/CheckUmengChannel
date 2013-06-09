.class public final Lcom/zhangdan/app/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/util/Map;

.field private c:Ljava/util/List;

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/zhangdan/app/c/a;->a:Z

    iput-object v1, p0, Lcom/zhangdan/app/c/a;->b:Ljava/util/Map;

    iput-object v1, p0, Lcom/zhangdan/app/c/a;->c:Ljava/util/List;

    iput-boolean v0, p0, Lcom/zhangdan/app/c/a;->d:Z

    iput-boolean v0, p0, Lcom/zhangdan/app/c/a;->a:Z

    return-void
.end method

.method private static a(Landroid/content/Context;J)D
    .locals 11

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, p1, p2}, Lcom/zhangdan/app/data/db/b/e;->a(Landroid/content/Context;J)Lcom/zhangdan/app/data/model/http/o;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/o;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    new-instance v7, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/o;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-wide v0, v2

    move v6, v5

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v6, v4, :cond_0

    :goto_1
    return-wide v0

    :cond_0
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v8, "BillStageList"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move v4, v5

    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v4, v9, :cond_1

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "Amount"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    add-double/2addr v0, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    invoke-static {p1}, Lcom/zhangdan/app/data/db/b/l;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-object v1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/c/a;->a(Lcom/zhangdan/app/data/model/j;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 13

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v7

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/zhangdan/app/h/g;->a(Ljava/lang/String;)J

    move-result-wide v8

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    invoke-static {p0, v7, v1, v8, v9}, Lcom/zhangdan/app/sms/d;->b(Landroid/content/Context;ILjava/lang/String;J)D

    move-result-wide v1

    add-double v2, v4, v1

    :cond_3
    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/zhangdan/app/data/model/j;->b(D)V

    goto :goto_0

    :cond_4
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    const/4 v1, 0x0

    move-wide v2, v4

    :goto_2
    array-length v11, v10

    if-ge v1, v11, :cond_3

    aget-object v11, v10, v1

    invoke-static {p0, v7, v11, v8, v9}, Lcom/zhangdan/app/sms/d;->b(Landroid/content/Context;ILjava/lang/String;J)D

    move-result-wide v11

    add-double/2addr v2, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move-wide v2, v4

    goto :goto_1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 12

    invoke-static {p1, p2}, Lcom/zhangdan/app/data/db/b/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/zhangdan/app/data/db/b/n;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_7

    :cond_0
    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "size = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_1
    invoke-direct {p0, p1}, Lcom/zhangdan/app/c/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {p1, v2}, Lcom/zhangdan/app/a/a;->a(Landroid/content/Context;Ljava/util/List;)V

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/c/a;->d:Z

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/c/a;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/zhangdan/app/data/model/j;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/j;-><init>()V

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/zhangdan/app/data/model/j;->a(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->a(I)V

    const-string v2, "\u62db\u884c"

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->a(Ljava/lang/String;)V

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->g(I)V

    const-string v2, "\u9ec4\u5c0f\u5f3a"

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->b(Ljava/lang/String;)V

    const-string v2, "1234"

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->c(Ljava/lang/String;)V

    const v2, 0x469c4000

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->a(F)V

    const v2, 0x461c4000

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->b(F)V

    const-string v2, "2.00\u4e07"

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->i(Ljava/lang/String;)V

    const v2, 0x451c4000

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->c(F)V

    const/high16 v2, 0x437a

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->d(F)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->b(I)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zhangdan/app/data/model/j;->d(Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->e(I)V

    const v4, 0x44bb8000

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->e(F)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->h(F)V

    const v4, 0x455ac000

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->j(F)V

    const v4, 0x453b8000

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->k(F)V

    const/4 v4, 0x5

    const/16 v5, -0x12

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->e(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->f(Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/zhangdan/app/h/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->g(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/zhangdan/app/h/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->c(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->d(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/zhangdan/app/data/model/j;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/j;-><init>()V

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/zhangdan/app/data/model/j;->a(J)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->a(I)V

    const-string v2, "\u5e7f\u53d1"

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->a(Ljava/lang/String;)V

    const v2, 0x7f0200ad

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->g(I)V

    const-string v2, "\u9ec4\u5c0f\u5f3a"

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->b(Ljava/lang/String;)V

    const-string v2, "2134"

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->c(Ljava/lang/String;)V

    const v2, 0x46ea6000

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->a(F)V

    const v2, 0x459c4000

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->b(F)V

    const-string v2, "3.00\u4e07"

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->i(Ljava/lang/String;)V

    const v2, 0x458ca000

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->c(F)V

    const v2, 0x44098000

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->d(F)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->b(I)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zhangdan/app/data/model/j;->d(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->e(I)V

    const v4, 0x44bb8000

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->e(F)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->h(F)V

    const v4, 0x455ac000

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->j(F)V

    const v4, 0x453b8000

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->k(F)V

    const/4 v4, 0x5

    const/16 v5, -0x14

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->e(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->f(Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/zhangdan/app/h/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->g(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/zhangdan/app/h/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->c(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->d(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/zhangdan/app/data/model/j;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/j;-><init>()V

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/zhangdan/app/data/model/j;->a(J)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->a(I)V

    const-string v2, "\u5149\u5927"

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->a(Ljava/lang/String;)V

    const v2, 0x7f0200ac

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->g(I)V

    const-string v2, "\u9ec4\u5c0f\u5f3a"

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->b(Ljava/lang/String;)V

    const-string v2, "4133"

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->c(Ljava/lang/String;)V

    const v2, 0x47435000

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->a(F)V

    const v2, 0x46c35000

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->b(F)V

    const-string v2, "5.00\u4e07"

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->i(Ljava/lang/String;)V

    const v2, 0x46629000

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->c(F)V

    const v2, 0x44b54000

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->d(F)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->b(I)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x5

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zhangdan/app/data/model/j;->d(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->e(I)V

    const v4, 0x44bb8000

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->e(F)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->h(F)V

    const v4, 0x455ac000

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->j(F)V

    const v4, 0x453b8000

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->k(F)V

    const v4, 0x459c4000

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->i(F)V

    const/4 v4, 0x5

    const/16 v5, -0x13

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->e(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->f(Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/zhangdan/app/h/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/j;->g(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/zhangdan/app/h/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->c(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/data/model/j;->d(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-object v0

    :cond_7
    aget-object v5, v3, v0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ubId"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/zhangdan/app/c/a;->a(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;Ljava/util/List;)V

    goto/16 :goto_1

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v7

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    invoke-static {v8}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v3

    :goto_4
    if-nez v0, :cond_3

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v4

    if-ne v7, v4, :cond_a

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_c

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_5
    array-length v11, v10

    if-lt v0, v11, :cond_d

    move v0, v4

    :goto_6
    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_d
    aget-object v11, v10, v0

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    move-object v0, v2

    goto/16 :goto_3
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;Ljava/util/List;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v0, "#0.00"

    invoke-direct {v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/c/a;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/zhangdan/app/data/model/j;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/a;->a()V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/a;->g()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->g(I)V

    :goto_0
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_0

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->i()F

    move-result v0

    const v2, 0x461c4000

    div-float/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    float-to-double v5, v0

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u4e07"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->i(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->d()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/zhangdan/app/data/db/b/c;->a(Landroid/content/Context;J)Lcom/zhangdan/app/data/model/c;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->c(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->j()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->c(F)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->k()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->f(F)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->h()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->d(F)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->i()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->g(F)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->f()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->e(F)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->g()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->h(F)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->p()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->i(F)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->l()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->k(F)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->m()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->j(F)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->r()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->f(I)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->h(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->j(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/zhangdan/app/h/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    :goto_1
    if-eqz v2, :cond_c

    if-eqz v1, :cond_c

    const-string v0, "1900"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v2}, Lcom/zhangdan/app/h/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->n()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/zhangdan/app/data/model/j;->b(I)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->j()F

    move-result v6

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_5

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lcom/zhangdan/app/data/model/j;->d(I)V

    :goto_3
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/zhangdan/app/data/model/j;->d(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zhangdan/app/h/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/zhangdan/app/data/model/j;->c(I)V

    move-object v1, v2

    :goto_4
    invoke-virtual {p2, v1}, Lcom/zhangdan/app/data/model/j;->f(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->e(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->g(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->k()F

    move-result v0

    cmpl-float v0, v0, v11

    if-lez v0, :cond_a

    move v0, v3

    :goto_5
    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->a(Z)V

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/zhangdan/app/c/a;->a(Landroid/content/Context;J)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/zhangdan/app/data/model/j;->a(D)V

    :goto_6
    return-void

    :cond_3
    const v0, 0x7f0200a7

    invoke-virtual {p2, v0}, Lcom/zhangdan/app/data/model/j;->g(I)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->b()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v3}, Lcom/zhangdan/app/data/model/j;->b(Z)V

    goto/16 :goto_1

    :cond_5
    if-ne v1, v3, :cond_7

    invoke-virtual {p2, v10}, Lcom/zhangdan/app/data/model/j;->d(I)V

    :cond_6
    :goto_7
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/c;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/zhangdan/app/data/model/j;->e(I)V

    goto :goto_3

    :cond_7
    if-ne v1, v10, :cond_8

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/zhangdan/app/data/model/j;->d(I)V

    goto :goto_7

    :cond_8
    if-nez v1, :cond_6

    invoke-virtual {p2, v3}, Lcom/zhangdan/app/data/model/j;->d(I)V

    goto :goto_7

    :cond_9
    invoke-static {v2}, Lcom/zhangdan/app/h/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v4}, Lcom/zhangdan/app/data/model/j;->d(I)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zhangdan/app/h/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/zhangdan/app/data/model/j;->c(I)V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/zhangdan/app/h/c;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/zhangdan/app/data/model/j;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    move v0, v4

    goto :goto_5

    :cond_b
    invoke-virtual {p2, v4}, Lcom/zhangdan/app/data/model/j;->d(I)V

    goto :goto_6

    :cond_c
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/zhangdan/app/data/db/b/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/zhangdan/app/c/a;->b:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/zhangdan/app/c/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/c/a;->c:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/zhangdan/app/c/a;->a(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhangdan/app/c/a;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/c/a;->a:Z

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/a;->b()I

    move-result v3

    invoke-static {v3}, Lcom/zhangdan/app/data/a;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/data/model/a;->d(I)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/a;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/zhangdan/app/data/model/j;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/c/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/a;->g()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/zhangdan/app/data/model/j;->g(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v1}, Lcom/zhangdan/app/data/model/j;->d(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v2, 0x7f0200a7

    invoke-virtual {p1, v2}, Lcom/zhangdan/app/data/model/j;->g(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/a;->e()I

    move-result v0

    :goto_2
    invoke-static {v2, v0}, Lcom/zhangdan/app/h/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/c;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v0}, Lcom/zhangdan/app/data/model/j;->f(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/zhangdan/app/h/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/zhangdan/app/data/model/j;->d(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/zhangdan/app/h/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/zhangdan/app/data/model/j;->c(I)V

    invoke-static {v2}, Lcom/zhangdan/app/h/c;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/zhangdan/app/data/model/j;->e(I)V

    if-eqz v3, :cond_7

    invoke-static {v0}, Lcom/zhangdan/app/h/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/zhangdan/app/data/model/j;->e(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/zhangdan/app/h/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zhangdan/app/data/model/j;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    invoke-virtual {p1, v1}, Lcom/zhangdan/app/data/model/j;->d(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/j;->n()I

    move-result v0

    if-ne v0, v5, :cond_5

    invoke-virtual {p1, v6}, Lcom/zhangdan/app/data/model/j;->d(I)V

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {p1, v5}, Lcom/zhangdan/app/data/model/j;->d(I)V

    goto :goto_1

    :cond_6
    if-ne v0, v6, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/zhangdan/app/data/model/j;->d(I)V

    goto :goto_1

    :cond_7
    invoke-static {v0}, Lcom/zhangdan/app/h/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/zhangdan/app/data/model/j;->e(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/zhangdan/app/data/model/j;->f(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/zhangdan/app/h/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zhangdan/app/data/model/j;->g(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/zhangdan/app/data/model/j;->d(I)V

    goto :goto_1
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zhangdan/app/c/a;->a:Z

    return v0
.end method

.method public final b()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/c/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/c/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/c/a;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/c/a;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/c/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/c/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/c/a;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/c/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/c/a;->a:Z

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zhangdan/app/c/a;->d:Z

    return v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/zhangdan/app/c/a;->e:J

    return-wide v0
.end method
