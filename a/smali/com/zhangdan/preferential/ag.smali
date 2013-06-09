.class abstract Lcom/zhangdan/preferential/ag;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/ab;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/ag;->a:Lcom/zhangdan/preferential/ab;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/ab;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ag;-><init>(Lcom/zhangdan/preferential/ab;)V

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

    iget-object v0, p0, Lcom/zhangdan/preferential/ag;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/ab;->e(Lcom/zhangdan/preferential/ab;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/ag;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/ab;->f(Lcom/zhangdan/preferential/ab;)Lcom/zhangdan/preferential/a/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ag;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/a/f;->d(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/ag;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ag;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/ab;->g(Lcom/zhangdan/preferential/ab;)Lcom/zhangdan/preferential/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/al;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/zhangdan/preferential/ag;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/ab;->h(Lcom/zhangdan/preferential/ab;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->B()V

    iget-object v0, p0, Lcom/zhangdan/preferential/ag;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/ab;->h(Lcom/zhangdan/preferential/ab;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->d:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Lcom/handmark/pulltorefresh/library/f;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ag;->a:Lcom/zhangdan/preferential/ab;

    invoke-static {v0}, Lcom/zhangdan/preferential/ab;->h(Lcom/zhangdan/preferential/ab;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o()V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ag;->a()V

    :cond_0
    return-void
.end method
