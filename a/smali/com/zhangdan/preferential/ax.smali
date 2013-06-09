.class abstract Lcom/zhangdan/preferential/ax;
.super Lcom/a/a/a/e/a/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/as;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/as;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/ax;->a:Lcom/zhangdan/preferential/as;

    invoke-direct {p0}, Lcom/a/a/a/e/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/as;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ax;-><init>(Lcom/zhangdan/preferential/as;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, [Lcom/zhangdan/preferential/be;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v0, v1, Lcom/zhangdan/preferential/be;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/ax;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->e(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/f;

    move-result-object v0

    iget-object v2, v1, Lcom/zhangdan/preferential/be;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lcom/zhangdan/preferential/a/f;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/preferential/ax;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v2}, Lcom/zhangdan/preferential/as;->e(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/a/f;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->e(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    new-instance v0, Lcom/zhangdan/preferential/bf;

    iget-object v3, p0, Lcom/zhangdan/preferential/ax;->a:Lcom/zhangdan/preferential/as;

    iget v1, v1, Lcom/zhangdan/preferential/be;->a:I

    invoke-direct {v0, v3, v1, v2}, Lcom/zhangdan/preferential/bf;-><init>(Lcom/zhangdan/preferential/as;ILjava/util/List;)V

    goto :goto_0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/zhangdan/preferential/bf;

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/zhangdan/preferential/bf;->a:I

    iget-object v1, p0, Lcom/zhangdan/preferential/ax;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v1}, Lcom/zhangdan/preferential/as;->g(Lcom/zhangdan/preferential/as;)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/zhangdan/preferential/bf;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/ax;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->h(Lcom/zhangdan/preferential/as;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lcom/zhangdan/preferential/bf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p1, Lcom/zhangdan/preferential/bf;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ax;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ax;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->a(Lcom/zhangdan/preferential/as;)Lcom/zhangdan/preferential/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/bd;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/zhangdan/preferential/ax;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->i(Lcom/zhangdan/preferential/as;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->B()V

    iget-object v0, p0, Lcom/zhangdan/preferential/ax;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->i(Lcom/zhangdan/preferential/as;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o()V

    iget-object v0, p0, Lcom/zhangdan/preferential/ax;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v0}, Lcom/zhangdan/preferential/as;->i(Lcom/zhangdan/preferential/as;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/ax;->a:Lcom/zhangdan/preferential/as;

    invoke-static {v1}, Lcom/zhangdan/preferential/as;->j(Lcom/zhangdan/preferential/as;)Lcom/handmark/pulltorefresh/library/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Lcom/handmark/pulltorefresh/library/f;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ax;->g()V

    goto :goto_0
.end method

.method protected abstract a(Ljava/util/List;)V
.end method

.method protected abstract g()V
.end method
