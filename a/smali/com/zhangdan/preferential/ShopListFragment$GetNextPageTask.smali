.class Lcom/zhangdan/preferential/ShopListFragment$GetNextPageTask;
.super Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;
.source "ShopListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/ShopListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetNextPageTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/ShopListFragment;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopListFragment$GetNextPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/ShopListFragment$AbsGetPageTask;-><init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment$GetNextPageTask;-><init>(Lcom/zhangdan/preferential/ShopListFragment;)V

    return-void
.end method


# virtual methods
.method protected setPage()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$GetNextPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/ShopListFragment;->access$1612(Lcom/zhangdan/preferential/ShopListFragment;I)I

    .line 485
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
    .line 479
    .local p1, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$GetNextPageTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mAdapter:Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$400(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/ShopListFragment$ShopAdapter;->addShops(Ljava/util/List;)V

    .line 480
    return-void
.end method
