.class abstract Lcom/zhangdan/preferential/v;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/RecommendDetailActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/v;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/v;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(Lcom/zhangdan/preferential/data/model/j;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/v;->b(Lcom/zhangdan/preferential/data/model/j;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/v;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->e(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/y;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/zhangdan/preferential/v;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->c(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o()V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/v;->a()V

    goto :goto_0
.end method

.method protected abstract b(Lcom/zhangdan/preferential/data/model/j;)V
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Lorg/json/JSONObject;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/v;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->d(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/a/f;

    iget-object v1, p0, Lcom/zhangdan/preferential/v;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->d(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/a/f;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->h(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/j;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zhangdan/preferential/data/model/j;

    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/v;->a(Lcom/zhangdan/preferential/data/model/j;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/v;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->c(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->q()V

    return-void
.end method
