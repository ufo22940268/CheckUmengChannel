.class public final Lcom/zhangdan/app/activities/remark/i;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/zhangdan/app/activities/remark/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/i;->a:Ljava/lang/String;

    return-void
.end method

.method private varargs a([Ljava/util/List;)Ljava/lang/Integer;
    .locals 10

    const/4 v9, 0x0

    aget-object v1, p1, v9

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "city"

    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sn"

    const-string v3, "zhangdan"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "items"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/b/u;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/h;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "id"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->a()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "input"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->l()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->f()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->l()Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/zhangdan/app/data/model/h;

    invoke-virtual {v1, v9}, Lcom/zhangdan/app/data/model/h;->n(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/w;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/h;->a()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/w;->a()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/w;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/h;->n(I)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/w;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/data/model/h;->k(Ljava/lang/String;)V

    goto :goto_4
.end method


# virtual methods
.method protected final bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/remark/i;->a([Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/zhangdan/app/activities/remark/j;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/i;->b:Lcom/zhangdan/app/activities/remark/j;

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    invoke-super {p0, p1}, Lcom/a/a/a/e/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/i;->b:Lcom/zhangdan/app/activities/remark/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/i;->b:Lcom/zhangdan/app/activities/remark/j;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/zhangdan/app/activities/remark/j;->a(I)V

    :cond_0
    return-void
.end method
