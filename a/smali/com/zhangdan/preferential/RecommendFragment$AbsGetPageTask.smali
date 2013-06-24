.class abstract Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;
.super Landroid/os/AsyncTask;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbsGetPageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/zhangdan/preferential/data/model/Promotion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/RecommendFragment;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/RecommendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/RecommendFragment;Lcom/zhangdan/preferential/RecommendFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;-><init>(Lcom/zhangdan/preferential/RecommendFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 260
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Promotion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #calls: Lcom/zhangdan/preferential/RecommendFragment;->getUserId()Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendFragment;->access$700(Lcom/zhangdan/preferential/RecommendFragment;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 265
    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #getter for: Lcom/zhangdan/preferential/RecommendFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendFragment;->access$800(Lcom/zhangdan/preferential/RecommendFragment;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;->getRequest()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->inflatePromotionList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 269
    .local v0, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    goto :goto_0
.end method

.method protected abstract getRequest()Lorg/json/JSONObject;
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 260
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Promotion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    if-nez p1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;->setRecommendToAdapter(Ljava/util/List;)V

    .line 280
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #getter for: Lcom/zhangdan/preferential/RecommendFragment;->mAdapter:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendFragment;->access$900(Lcom/zhangdan/preferential/RecommendFragment;)Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->notifyDataSetChanged()V

    .line 281
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #getter for: Lcom/zhangdan/preferential/RecommendFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendFragment;->access$1000(Lcom/zhangdan/preferential/RecommendFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->hideLoading()V

    .line 282
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #getter for: Lcom/zhangdan/preferential/RecommendFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendFragment;->access$1000(Lcom/zhangdan/preferential/RecommendFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 283
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #getter for: Lcom/zhangdan/preferential/RecommendFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendFragment;->access$1000(Lcom/zhangdan/preferential/RecommendFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 284
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;->setPage()V

    goto :goto_0
.end method

.method protected abstract setPage()V
.end method

.method protected abstract setRecommendToAdapter(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Promotion;",
            ">;)V"
        }
    .end annotation
.end method
