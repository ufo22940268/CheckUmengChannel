.class final Lcom/zhangdan/preferential/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/RecommendDetailActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/u;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/zhangdan/preferential/w;

    iget-object v1, p0, Lcom/zhangdan/preferential/u;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-direct {v0, v1, v3}, Lcom/zhangdan/preferential/w;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/zhangdan/preferential/u;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/RecommendDetailActivity;->a(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/w;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/zhangdan/preferential/x;

    iget-object v1, p0, Lcom/zhangdan/preferential/u;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-direct {v0, v1, v3}, Lcom/zhangdan/preferential/x;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/zhangdan/preferential/u;->a:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/RecommendDetailActivity;->b(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/x;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
