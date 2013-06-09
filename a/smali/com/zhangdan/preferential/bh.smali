.class abstract Lcom/zhangdan/preferential/bh;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/SpecificRecommendActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/bh;->a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/bh;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;)V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Ljava/util/List;)V
.end method

.method protected abstract b()Lorg/json/JSONObject;
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/bh;->a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    iget-object v0, v0, Lcom/zhangdan/preferential/SpecificRecommendActivity;->c:Lcom/zhangdan/preferential/a/f;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/bh;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/a/f;->d(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/bh;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/bh;->a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->a(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lcom/zhangdan/preferential/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/bk;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/zhangdan/preferential/bh;->a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->b(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->B()V

    iget-object v0, p0, Lcom/zhangdan/preferential/bh;->a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->b(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->d:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Lcom/handmark/pulltorefresh/library/f;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/bh;->a:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->b(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o()V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/bh;->a()V

    :cond_0
    return-void
.end method
