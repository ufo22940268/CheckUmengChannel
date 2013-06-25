.class Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "ShopListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/ShopListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupMenuTagTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
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
.field final synthetic this$0:Lcom/zhangdan/preferential/ShopListFragment;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;-><init>(Lcom/zhangdan/preferential/ShopListFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 586
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
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
    .line 590
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mTags:Ljava/util/List;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopListFragment;->access$1900(Lcom/zhangdan/preferential/ShopListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mTags:Ljava/util/List;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopListFragment;->access$1900(Lcom/zhangdan/preferential/ShopListFragment;)Ljava/util/List;

    move-result-object v0

    .line 597
    :cond_0
    :goto_0
    return-object v0

    .line 593
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopListFragment;->access$1000(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v2}, Lcom/zhangdan/preferential/ShopListFragment;->access$1000(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;
    invoke-static {v3}, Lcom/zhangdan/preferential/ShopListFragment;->access$900(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/RequestGenerator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getMenuTagRequest()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/utils/JsonParser;->parseSys(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateMenuTags(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 594
    .local v0, tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/MenuTag;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 595
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
    .line 586
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;->onPostExecute(Ljava/util/List;)V

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
    .line 603
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/MenuTag;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 604
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #setter for: Lcom/zhangdan/preferential/ShopListFragment;->mTags:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/zhangdan/preferential/ShopListFragment;->access$1902(Lcom/zhangdan/preferential/ShopListFragment;Ljava/util/List;)Ljava/util/List;

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mTags:Ljava/util/List;
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$1900(Lcom/zhangdan/preferential/ShopListFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mMenuAdapter:Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$2000(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopListFragment$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mTags:Ljava/util/List;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopListFragment;->access$1900(Lcom/zhangdan/preferential/ShopListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/ShopListFragment$MenuAdapter;->setTags(Ljava/util/List;)V

    .line 610
    :cond_1
    return-void
.end method
