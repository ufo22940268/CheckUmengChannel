.class abstract Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "ShopListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/ShopListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbsGetPageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;",
        "Ljava/lang/Void;",
        "Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/ShopListFragment;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;-><init>(Lcom/zhangdan/preferential/ShopListFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;)Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;
    .locals 6
    .parameter "params"

    .prologue
    .line 421
    const/4 v3, 0x0

    aget-object v2, p1, v3

    .line 422
    .local v2, typeReq:Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;->request:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 423
    :cond_0
    const/4 v3, 0x0

    .line 427
    :goto_0
    return-object v3

    .line 425
    :cond_1
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v3}, Lcom/zhangdan/preferential/ShopListFragment;->access$1000(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v3

    iget-object v4, v2, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;->request:Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lcom/zhangdan/preferential/utils/JsonParser;->parseShop(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 426
    .local v0, resp:Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v3}, Lcom/zhangdan/preferential/ShopListFragment;->access$1000(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateShops(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 427
    .local v1, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    new-instance v3, Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;

    iget-object v4, p0, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    iget v5, v2, Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;->typeId:I

    invoke-direct {v3, v4, v5, v1}, Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;-><init>(Lcom/zhangdan/preferential/ShopListFragment;ILjava/util/List;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 417
    check-cast p1, [Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;->doInBackground([Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;)Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;)V
    .locals 2
    .parameter "typeResp"

    .prologue
    .line 433
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;->typeId:I

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mTypeId:I
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopListFragment;->access$500(Lcom/zhangdan/preferential/ShopListFragment;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p1, Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;->shops:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mMode:I
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$1200(Lcom/zhangdan/preferential/ShopListFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;->shops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    :cond_2
    iget-object v0, p1, Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;->shops:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;->setShopsToAdapter(Ljava/util/List;)V

    .line 446
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mAdapter:Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$400(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->notifyDataSetChanged()V

    .line 447
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$1300(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->hideLoading()V

    .line 448
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$1300(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 449
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$1300(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mPullToRefreshMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopListFragment;->access$1400(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 450
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;->setPage()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 417
    check-cast p1, Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;->onPostExecute(Lcom/zhangdan/preferential/ShopListFragment$TypeResponse;)V

    return-void
.end method

.method protected abstract setPage()V
.end method

.method protected abstract setShopsToAdapter(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;)V"
        }
    .end annotation
.end method
