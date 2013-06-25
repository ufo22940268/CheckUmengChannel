.class Lcom/zhangdan/preferential/RecommendFragment$GetNextPageTask;
.super Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetNextPageTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/RecommendFragment;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/RecommendFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendFragment$GetNextPageTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/RecommendFragment$AbsGetPageTask;-><init>(Lcom/zhangdan/preferential/RecommendFragment;Lcom/zhangdan/preferential/RecommendFragment$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/RecommendFragment;Lcom/zhangdan/preferential/RecommendFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/RecommendFragment$GetNextPageTask;-><init>(Lcom/zhangdan/preferential/RecommendFragment;)V

    return-void
.end method


# virtual methods
.method protected getRequest()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment$GetNextPageTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #calls: Lcom/zhangdan/preferential/RecommendFragment;->getNextPageRequest()Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendFragment;->access$1400(Lcom/zhangdan/preferential/RecommendFragment;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected setPage()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment$GetNextPageTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/RecommendFragment;->access$1212(Lcom/zhangdan/preferential/RecommendFragment;I)I

    .line 319
    return-void
.end method

.method protected setRecommendToAdapter(Ljava/util/List;)V
    .locals 1
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
    .line 313
    .local p1, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment$GetNextPageTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #getter for: Lcom/zhangdan/preferential/RecommendFragment;->mAdapter:Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendFragment;->access$900(Lcom/zhangdan/preferential/RecommendFragment;)Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/RecommendFragment$RecommendAdapter;->addProms(Ljava/util/List;)V

    .line 314
    return-void
.end method
