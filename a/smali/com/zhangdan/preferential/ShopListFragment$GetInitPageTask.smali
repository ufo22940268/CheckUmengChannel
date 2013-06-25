.class Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;
.super Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;
.source "ShopListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/ShopListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetInitPageTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/ShopListFragment;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;-><init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;-><init>(Lcom/zhangdan/preferential/ShopListFragment;)V

    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mFakeListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$1300(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mPullToRefreshMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopListFragment;->access$1400(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 462
    return-void
.end method

.method protected setPage()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    const/4 v1, 0x1

    #setter for: Lcom/zhangdan/preferential/ShopListFragment;->mPage:I
    invoke-static {v0, v1}, Lcom/zhangdan/preferential/ShopListFragment;->access$1602(Lcom/zhangdan/preferential/ShopListFragment;I)I

    .line 472
    return-void
.end method

.method protected setShopsToAdapter(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mAdapter:Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$400(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->setShops(Ljava/util/List;)V

    .line 467
    return-void
.end method
