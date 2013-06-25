.class Lcom/zhangdan/preferential/SpecificRecommendActivity$GetInitPageTask;
.super Lcom/zhangdan/preferential/SpecificRecommendActivity$AbsGetPageTask;
.source "SpecificRecommendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/SpecificRecommendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetInitPageTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity$AbsGetPageTask;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;Lcom/zhangdan/preferential/SpecificRecommendActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;Lcom/zhangdan/preferential/SpecificRecommendActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetInitPageTask;-><init>(Lcom/zhangdan/preferential/SpecificRecommendActivity;)V

    return-void
.end method


# virtual methods
.method protected getRequest()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    #calls: Lcom/zhangdan/preferential/SpecificRecommendActivity;->getInitPageRequest()Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->access$500(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
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
    .line 117
    .local p1, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Promotion;>;"
    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    #getter for: Lcom/zhangdan/preferential/SpecificRecommendActivity;->mAdapter:Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->access$100(Lcom/zhangdan/preferential/SpecificRecommendActivity;)Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/SpecificRecommendActivity$SpecificAdapter;->setProms(Ljava/util/List;)V

    .line 118
    return-void
.end method

.method protected setupPage()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/zhangdan/preferential/SpecificRecommendActivity$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/SpecificRecommendActivity;

    const/4 v1, 0x1

    #setter for: Lcom/zhangdan/preferential/SpecificRecommendActivity;->mPage:I
    invoke-static {v0, v1}, Lcom/zhangdan/preferential/SpecificRecommendActivity;->access$402(Lcom/zhangdan/preferential/SpecificRecommendActivity;I)I

    .line 123
    return-void
.end method
