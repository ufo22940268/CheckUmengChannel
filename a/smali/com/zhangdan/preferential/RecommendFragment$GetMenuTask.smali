.class Lcom/zhangdan/preferential/RecommendFragment$GetMenuTask;
.super Landroid/os/AsyncTask;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMenuTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/zhangdan/preferential/data/model/MenuTag;",
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
    .line 499
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendFragment$GetMenuTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/RecommendFragment;Lcom/zhangdan/preferential/RecommendFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/RecommendFragment$GetMenuTask;-><init>(Lcom/zhangdan/preferential/RecommendFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 499
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/RecommendFragment$GetMenuTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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
            "Lcom/zhangdan/preferential/data/model/MenuTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendFragment$GetMenuTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #getter for: Lcom/zhangdan/preferential/RecommendFragment;->mTags:Ljava/util/List;
    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendFragment;->access$1800(Lcom/zhangdan/preferential/RecommendFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendFragment$GetMenuTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #getter for: Lcom/zhangdan/preferential/RecommendFragment;->mTags:Ljava/util/List;
    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendFragment;->access$1800(Lcom/zhangdan/preferential/RecommendFragment;)Ljava/util/List;

    move-result-object v0

    .line 508
    :goto_0
    return-object v0

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendFragment$GetMenuTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #getter for: Lcom/zhangdan/preferential/RecommendFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendFragment;->access$800(Lcom/zhangdan/preferential/RecommendFragment;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/preferential/utils/JsonParser;->parseRecommendMenuTags()Ljava/util/List;

    move-result-object v0

    .line 506
    .local v0, tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/MenuTag;>;"
    const/4 v1, 0x0

    invoke-static {}, Lcom/zhangdan/preferential/data/model/MenuTag;->getNearTag()Lcom/zhangdan/preferential/data/model/MenuTag;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 507
    const/4 v1, 0x1

    invoke-static {}, Lcom/zhangdan/preferential/data/model/MenuTag;->getTodayTag()Lcom/zhangdan/preferential/data/model/MenuTag;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 499
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/RecommendFragment$GetMenuTask;->onPostExecute(Ljava/util/List;)V

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
            "Lcom/zhangdan/preferential/data/model/MenuTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/MenuTag;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment$GetMenuTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #getter for: Lcom/zhangdan/preferential/RecommendFragment;->mMenuAdapter:Lcom/zhangdan/preferential/RecommendFragment$MenuAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendFragment;->access$1900(Lcom/zhangdan/preferential/RecommendFragment;)Lcom/zhangdan/preferential/RecommendFragment$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/RecommendFragment$MenuAdapter;->setTags(Ljava/util/List;)V

    .line 516
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendFragment$GetMenuTask;->this$0:Lcom/zhangdan/preferential/RecommendFragment;

    #setter for: Lcom/zhangdan/preferential/RecommendFragment;->mTags:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/zhangdan/preferential/RecommendFragment;->access$1802(Lcom/zhangdan/preferential/RecommendFragment;Ljava/util/List;)Ljava/util/List;

    .line 518
    :cond_0
    return-void
.end method
