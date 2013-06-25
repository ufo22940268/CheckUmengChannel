.class abstract Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;
.super Landroid/os/AsyncTask;
.source "RecommendDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/RecommendDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbsGetPageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/Void;",
        "Lcom/zhangdan/preferential/data/model/PromotionExtra;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/RecommendDetailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/PromotionExtra;
    .locals 3
    .parameter "params"

    .prologue
    .line 292
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 293
    .local v0, request:Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 294
    const/4 v1, 0x0

    .line 297
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$500(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v2}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$500(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zhangdan/preferential/utils/JsonParser;->parseShop(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->inflatePromotionExtra(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/PromotionExtra;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 283
    check-cast p1, [Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;->doInBackground([Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/PromotionExtra;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/preferential/data/model/PromotionExtra;)V
    .locals 1
    .parameter "extra"

    .prologue
    .line 303
    if-nez p1, :cond_0

    .line 311
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;->setRecommendToAdapter(Lcom/zhangdan/preferential/data/model/PromotionExtra;)V

    .line 308
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mAdapter:Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$600(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->notifyDataSetChanged()V

    .line 309
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$400(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 310
    invoke-virtual {p0}, Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;->setPage()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 283
    check-cast p1, Lcom/zhangdan/preferential/data/model/PromotionExtra;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;->onPostExecute(Lcom/zhangdan/preferential/data/model/PromotionExtra;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$400(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 288
    return-void
.end method

.method protected abstract setPage()V
.end method

.method protected abstract setRecommendToAdapter(Lcom/zhangdan/preferential/data/model/PromotionExtra;)V
.end method
