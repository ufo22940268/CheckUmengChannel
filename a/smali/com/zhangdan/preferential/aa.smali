.class final Lcom/zhangdan/preferential/aa;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/RecommendDetailActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/aa;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/aa;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/zhangdan/preferential/aa;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/RecommendDetailActivity;->d(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/a/f;

    iget-object v2, p0, Lcom/zhangdan/preferential/aa;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/RecommendDetailActivity;->d(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/a/f;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/aa;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v3}, Lcom/zhangdan/preferential/RecommendDetailActivity;->i(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/a/o;

    new-instance v3, Lcom/zhangdan/preferential/data/model/d;

    const/16 v4, 0xc83

    invoke-direct {v3, v4}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    const-string v4, "shopId"

    invoke-virtual {v3, v4, v0}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "activityId"

    invoke-virtual {v3, v0, v1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zhangdan/preferential/a/f;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->g(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/i;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/zhangdan/preferential/data/model/i;

    iget-object v0, p0, Lcom/zhangdan/preferential/aa;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->e()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/aa;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    iget-object v1, p0, Lcom/zhangdan/preferential/aa;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->j(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/a/a/a/a;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/zhangdan/preferential/a/z;->a(Landroid/content/Context;Lcom/zhangdan/preferential/data/model/i;Lcom/a/a/a/a;)V

    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/aa;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->d()V

    return-void
.end method
