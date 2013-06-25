.class Lcom/zhangdan/preferential/MainMapActivity$SetupMenuTagTask;
.super Landroid/os/AsyncTask;
.source "MainMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/MainMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupMenuTagTask"
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
.field final synthetic this$0:Lcom/zhangdan/preferential/MainMapActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/MainMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/zhangdan/preferential/MainMapActivity$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/MainMapActivity;Lcom/zhangdan/preferential/MainMapActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/MainMapActivity$SetupMenuTagTask;-><init>(Lcom/zhangdan/preferential/MainMapActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 370
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/MainMapActivity$SetupMenuTagTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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
    .line 374
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v0}, Lcom/zhangdan/preferential/MainMapActivity;->access$400(Lcom/zhangdan/preferential/MainMapActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/MainMapActivity$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v1}, Lcom/zhangdan/preferential/MainMapActivity;->access$400(Lcom/zhangdan/preferential/MainMapActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;
    invoke-static {v2}, Lcom/zhangdan/preferential/MainMapActivity;->access$300(Lcom/zhangdan/preferential/MainMapActivity;)Lcom/zhangdan/preferential/utils/RequestGenerator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getMenuTagRequest()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->parseSys(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateMenuTags(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 370
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/MainMapActivity$SetupMenuTagTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
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
    .line 379
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/MenuTag;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mMenuAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/zhangdan/preferential/MainMapActivity;->access$800(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 381
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/MenuTag;

    .line 382
    .local v1, tag:Lcom/zhangdan/preferential/data/model/MenuTag;
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mMenuAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/zhangdan/preferential/MainMapActivity;->access$800(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 385
    .end local v1           #tag:Lcom/zhangdan/preferential/data/model/MenuTag;
    :cond_0
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mIsRunning:Z
    invoke-static {v2}, Lcom/zhangdan/preferential/MainMapActivity;->access$900(Lcom/zhangdan/preferential/MainMapActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    iget-object v2, p0, Lcom/zhangdan/preferential/MainMapActivity$SetupMenuTagTask;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mMenuAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/zhangdan/preferential/MainMapActivity;->access$800(Lcom/zhangdan/preferential/MainMapActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 389
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
