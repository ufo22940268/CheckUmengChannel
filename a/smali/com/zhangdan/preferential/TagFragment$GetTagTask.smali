.class Lcom/zhangdan/preferential/TagFragment$GetTagTask;
.super Landroid/os/AsyncTask;
.source "TagFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/TagFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetTagTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/zhangdan/preferential/data/model/Position;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/zhangdan/preferential/data/model/IconTag;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/TagFragment;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/TagFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/zhangdan/preferential/TagFragment$GetTagTask;->this$0:Lcom/zhangdan/preferential/TagFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/TagFragment;Lcom/zhangdan/preferential/TagFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/TagFragment$GetTagTask;-><init>(Lcom/zhangdan/preferential/TagFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    check-cast p1, [Lcom/zhangdan/preferential/data/model/Position;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/TagFragment$GetTagTask;->doInBackground([Lcom/zhangdan/preferential/data/model/Position;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/zhangdan/preferential/data/model/Position;)Ljava/util/List;
    .locals 6
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/zhangdan/preferential/data/model/Position;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/IconTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    const/4 v3, 0x0

    aget-object v1, p1, v3

    .line 110
    .local v1, pos:Lcom/zhangdan/preferential/data/model/Position;
    iget-object v3, p0, Lcom/zhangdan/preferential/TagFragment$GetTagTask;->this$0:Lcom/zhangdan/preferential/TagFragment;

    #getter for: Lcom/zhangdan/preferential/TagFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;
    invoke-static {v3}, Lcom/zhangdan/preferential/TagFragment;->access$100(Lcom/zhangdan/preferential/TagFragment;)Lcom/zhangdan/preferential/utils/RequestGenerator;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getCityRequestUrl(Lcom/zhangdan/preferential/data/model/Position;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/preferential/TagFragment$GetTagTask;->this$0:Lcom/zhangdan/preferential/TagFragment;

    #getter for: Lcom/zhangdan/preferential/TagFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v3}, Lcom/zhangdan/preferential/TagFragment;->access$200(Lcom/zhangdan/preferential/TagFragment;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/preferential/TagFragment$GetTagTask;->this$0:Lcom/zhangdan/preferential/TagFragment;

    #getter for: Lcom/zhangdan/preferential/TagFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v4}, Lcom/zhangdan/preferential/TagFragment;->access$200(Lcom/zhangdan/preferential/TagFragment;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->parseUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateCity(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, city:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 113
    const/4 v3, 0x0

    .line 115
    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/zhangdan/preferential/TagFragment$GetTagTask;->this$0:Lcom/zhangdan/preferential/TagFragment;

    #getter for: Lcom/zhangdan/preferential/TagFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v3}, Lcom/zhangdan/preferential/TagFragment;->access$200(Lcom/zhangdan/preferential/TagFragment;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/preferential/TagFragment$GetTagTask;->this$0:Lcom/zhangdan/preferential/TagFragment;

    #getter for: Lcom/zhangdan/preferential/TagFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v4}, Lcom/zhangdan/preferential/TagFragment;->access$200(Lcom/zhangdan/preferential/TagFragment;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/preferential/TagFragment$GetTagTask;->this$0:Lcom/zhangdan/preferential/TagFragment;

    #getter for: Lcom/zhangdan/preferential/TagFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;
    invoke-static {v5}, Lcom/zhangdan/preferential/TagFragment;->access$100(Lcom/zhangdan/preferential/TagFragment;)Lcom/zhangdan/preferential/utils/RequestGenerator;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getTagRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zhangdan/preferential/utils/JsonParser;->parseSys(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateTags(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/TagFragment$GetTagTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/IconTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/IconTag;>;"
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/TagFragment$GetTagTask;->this$0:Lcom/zhangdan/preferential/TagFragment;

    #getter for: Lcom/zhangdan/preferential/TagFragment;->mMainTagAdapter:Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/TagFragment;->access$300(Lcom/zhangdan/preferential/TagFragment;)Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;->setTags(Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Lcom/zhangdan/preferential/TagFragment$GetTagTask;->this$0:Lcom/zhangdan/preferential/TagFragment;

    #getter for: Lcom/zhangdan/preferential/TagFragment;->mMainTagAdapter:Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/TagFragment;->access$300(Lcom/zhangdan/preferential/TagFragment;)Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/TagFragment$MainTagAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
