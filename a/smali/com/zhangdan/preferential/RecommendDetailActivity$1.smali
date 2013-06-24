.class Lcom/zhangdan/preferential/RecommendDetailActivity$1;
.super Ljava/lang/Object;
.source "RecommendDetailActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/RecommendDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$1;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, refreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;,"Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    new-instance v0, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$1;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/RecommendDetailActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$1;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #calls: Lcom/zhangdan/preferential/RecommendDetailActivity;->getInitPageRequest()Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$100(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lorg/json/JSONObject;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 212
    return-void
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, refreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;,"Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    new-instance v0, Lcom/zhangdan/preferential/RecommendDetailActivity$GetNextPageTask;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$1;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/preferential/RecommendDetailActivity$GetNextPageTask;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/RecommendDetailActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$1;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #calls: Lcom/zhangdan/preferential/RecommendDetailActivity;->getNextPageRequest()Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$200(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lorg/json/JSONObject;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/RecommendDetailActivity$GetNextPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 217
    return-void
.end method
