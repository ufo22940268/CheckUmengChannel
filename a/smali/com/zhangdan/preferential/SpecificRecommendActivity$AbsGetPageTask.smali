.class abstract Lcom/zhangdan/preferential/SpecificRecommendActivity$AbsGetPageTask;
.super Landroid/os/AsyncTask;
.source "SpecificRecommendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/SpecificRecommendActivity;
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
.field final synthetic this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;Lcom/zhangdan/preferential/SpecificRecommendActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/SpecificRecommendActivity$AbsGetPageTask;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/SpecificRecommendActivity$AbsGetPageTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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
    .line 89
    iget-object v1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    iget-object v1, v1, Lcom/zhangdan/preferential/SpecificRecommendActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/SpecificRecommendActivity$AbsGetPageTask;->getRequest()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->inflatePromotionList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    return-object v0
.end method

.method protected abstract getRequest()Lorg/json/JSONObject;
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/SpecificRecommendActivity$AbsGetPageTask;->onPostExecute(Ljava/util/List;)V

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
    .line 96
    .local p1, proms:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/SpecificRecommendActivity$AbsGetPageTask;->setRecommendToAdapter(Ljava/util/List;)V

    .line 101
    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    #getter for: Lcom/zhangdan/preferential/SpecificRecommendActivity;->mAdapter:Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->access$100(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;->notifyDataSetChanged()V

    .line 102
    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    #getter for: Lcom/zhangdan/preferential/SpecificRecommendActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->access$200(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->hideLoading()V

    .line 103
    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    #getter for: Lcom/zhangdan/preferential/SpecificRecommendActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->access$200(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 104
    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    #getter for: Lcom/zhangdan/preferential/SpecificRecommendActivity;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->access$200(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 105
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SpecificRecommendActivity$AbsGetPageTask;->setupPage()V

    goto :goto_0
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

.method protected abstract setupPage()V
.end method
