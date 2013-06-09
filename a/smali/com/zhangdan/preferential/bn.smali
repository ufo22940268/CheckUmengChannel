.class final Lcom/zhangdan/preferential/bn;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/bm;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/bm;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/bn;->a:Lcom/zhangdan/preferential/bm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/bm;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/bn;-><init>(Lcom/zhangdan/preferential/bm;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v1, 0x0

    check-cast p1, [Lcom/zhangdan/preferential/data/model/Position;

    aget-object v0, p1, v1

    iget-object v2, p0, Lcom/zhangdan/preferential/bn;->a:Lcom/zhangdan/preferential/bm;

    invoke-static {v2}, Lcom/zhangdan/preferential/bm;->a(Lcom/zhangdan/preferential/bm;)Lcom/zhangdan/preferential/a/o;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/o;->a(Lcom/zhangdan/preferential/data/model/Position;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/preferential/bn;->a:Lcom/zhangdan/preferential/bm;

    invoke-static {v2}, Lcom/zhangdan/preferential/bm;->b(Lcom/zhangdan/preferential/bm;)Lcom/zhangdan/preferential/a/f;

    iget-object v2, p0, Lcom/zhangdan/preferential/bn;->a:Lcom/zhangdan/preferential/bm;

    invoke-static {v2}, Lcom/zhangdan/preferential/bm;->b(Lcom/zhangdan/preferential/bm;)Lcom/zhangdan/preferential/a/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zhangdan/preferential/a/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->k(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/zhangdan/preferential/bn;->a:Lcom/zhangdan/preferential/bm;

    invoke-static {v2}, Lcom/zhangdan/preferential/bm;->b(Lcom/zhangdan/preferential/bm;)Lcom/zhangdan/preferential/a/f;

    iget-object v2, p0, Lcom/zhangdan/preferential/bn;->a:Lcom/zhangdan/preferential/bm;

    invoke-static {v2}, Lcom/zhangdan/preferential/bm;->b(Lcom/zhangdan/preferential/bm;)Lcom/zhangdan/preferential/a/f;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/bn;->a:Lcom/zhangdan/preferential/bm;

    invoke-static {v3}, Lcom/zhangdan/preferential/bm;->a(Lcom/zhangdan/preferential/bm;)Lcom/zhangdan/preferential/a/o;

    new-instance v3, Lcom/zhangdan/preferential/data/model/d;

    const/16 v4, 0x44e

    invoke-direct {v3, v4}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    const-string v4, "name"

    const-string v5, "tag"

    invoke-virtual {v3, v4, v5}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "city"

    invoke-virtual {v3, v4, v0}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zhangdan/preferential/a/f;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v0, v1

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v5, Lcom/zhangdan/preferential/data/model/f;

    invoke-direct {v5}, Lcom/zhangdan/preferential/data/model/f;-><init>()V

    const-string v6, "icon"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/zhangdan/preferential/data/model/f;->a:Ljava/lang/String;

    const-string v6, "name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/zhangdan/preferential/data/model/f;->d:Ljava/lang/String;

    const-string v6, "id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/zhangdan/preferential/data/model/f;->c:I

    const-string v6, "sequence"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/zhangdan/preferential/data/model/f;->e:I

    const-string v6, "childs"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_3

    iput-object v7, v5, Lcom/zhangdan/preferential/data/model/f;->b:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/zhangdan/preferential/data/model/m;

    invoke-direct {v9}, Lcom/zhangdan/preferential/data/model/m;-><init>()V

    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/zhangdan/preferential/data/model/m;->c:I

    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/zhangdan/preferential/data/model/m;->d:Ljava/lang/String;

    const-string v10, "sequence"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v9, Lcom/zhangdan/preferential/data/model/m;->e:I

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/bn;->a:Lcom/zhangdan/preferential/bm;

    invoke-static {v0}, Lcom/zhangdan/preferential/bm;->c(Lcom/zhangdan/preferential/bm;)Lcom/zhangdan/preferential/bo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/bo;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/bn;->a:Lcom/zhangdan/preferential/bm;

    invoke-static {v0}, Lcom/zhangdan/preferential/bm;->c(Lcom/zhangdan/preferential/bm;)Lcom/zhangdan/preferential/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/bo;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
