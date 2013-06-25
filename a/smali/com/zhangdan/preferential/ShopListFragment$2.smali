.class Lcom/zhangdan/preferential/ShopListFragment$2;
.super Ljava/lang/Object;
.source "ShopListFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/ShopListFragment;
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
.field final synthetic this$0:Lcom/zhangdan/preferential/ShopListFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopListFragment$2;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 5
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
    .line 616
    .local p1, refreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;,"Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment$2;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mProvider:Lcom/zhangdan/preferential/utils/PositionProvider;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopListFragment;->access$2100(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/PositionProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    .line 617
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    if-eqz v0, :cond_0

    .line 618
    new-instance v1, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;

    iget-object v2, p0, Lcom/zhangdan/preferential/ShopListFragment$2;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;-><init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zhangdan/preferential/ShopListFragment$2;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #calls: Lcom/zhangdan/preferential/ShopListFragment;->getInitPageRequest(Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;
    invoke-static {v4, v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$2200(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/ShopListFragment$GetInitPageTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 620
    :cond_0
    return-void
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 5
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
    .line 624
    .local p1, refreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;,"Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment$2;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mProvider:Lcom/zhangdan/preferential/utils/PositionProvider;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopListFragment;->access$2100(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/PositionProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    .line 625
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    if-eqz v0, :cond_0

    .line 626
    new-instance v1, Lcom/zhangdan/preferential/ShopListFragment$GetNextPageTask;

    iget-object v2, p0, Lcom/zhangdan/preferential/ShopListFragment$2;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/zhangdan/preferential/ShopListFragment$GetNextPageTask;-><init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zhangdan/preferential/ShopListFragment$2;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #calls: Lcom/zhangdan/preferential/ShopListFragment;->getNextPageRequest(Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;
    invoke-static {v4, v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$2300(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/data/model/Position;)Lcom/zhangdan/preferential/ShopListFragment$TypeRequest;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/ShopListFragment$GetNextPageTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 628
    :cond_0
    return-void
.end method
