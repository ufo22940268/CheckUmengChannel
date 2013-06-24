.class Lcom/zhangdan/preferential/RecommendDetailActivity$GetNextPageTask;
.super Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;
.source "RecommendDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/RecommendDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetNextPageTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$GetNextPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/RecommendDetailActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/RecommendDetailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$GetNextPageTask;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected setPage()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$GetNextPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1412(Lcom/zhangdan/preferential/RecommendDetailActivity;I)I

    .line 355
    return-void
.end method

.method protected setRecommendToAdapter(Lcom/zhangdan/preferential/data/model/PromotionExtra;)V
    .locals 2
    .parameter "extra"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$GetNextPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mAdapter:Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$600(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/PromotionExtra;->shopList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->addShops(Ljava/util/List;)V

    .line 350
    return-void
.end method
