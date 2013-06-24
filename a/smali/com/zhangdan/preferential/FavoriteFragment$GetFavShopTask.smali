.class Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;
.super Landroid/os/AsyncTask;
.source "FavoriteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/FavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetFavShopTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/zhangdan/preferential/data/model/Shop;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/FavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/FavoriteFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/FavoriteFragment;Lcom/zhangdan/preferential/FavoriteFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;-><init>(Lcom/zhangdan/preferential/FavoriteFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v0}, Lcom/zhangdan/preferential/FavoriteFragment;->access$500(Lcom/zhangdan/preferential/FavoriteFragment;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v1}, Lcom/zhangdan/preferential/FavoriteFragment;->access$500(Lcom/zhangdan/preferential/FavoriteFragment;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;
    invoke-static {v2}, Lcom/zhangdan/preferential/FavoriteFragment;->access$400(Lcom/zhangdan/preferential/FavoriteFragment;)Lcom/zhangdan/preferential/utils/RequestGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #calls: Lcom/zhangdan/preferential/FavoriteFragment;->getUserId()Ljava/lang/String;
    invoke-static {v3}, Lcom/zhangdan/preferential/FavoriteFragment;->access$300(Lcom/zhangdan/preferential/FavoriteFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getSavedShopRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->parseUser(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateFavShops(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;->onPostExecute(Ljava/util/List;)V

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
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, shops:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;
    invoke-static {v0}, Lcom/zhangdan/preferential/FavoriteFragment;->access$200(Lcom/zhangdan/preferential/FavoriteFragment;)Lcom/zhangdan/preferential/widget/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/LoadingDialog;->dismiss()V

    .line 174
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mAdapter:Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/FavoriteFragment;->access$600(Lcom/zhangdan/preferential/FavoriteFragment;)Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->setShops(Ljava/util/List;)V

    .line 175
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mAdapter:Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/FavoriteFragment;->access$600(Lcom/zhangdan/preferential/FavoriteFragment;)Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/FavoriteFragment$FavAdapter;->notifyDataSetInvalidated()V

    .line 176
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/zhangdan/preferential/FavoriteFragment$GetFavShopTask;->this$0:Lcom/zhangdan/preferential/FavoriteFragment;

    #getter for: Lcom/zhangdan/preferential/FavoriteFragment;->mLoadingDialog:Lcom/zhangdan/preferential/widget/LoadingDialog;
    invoke-static {v0}, Lcom/zhangdan/preferential/FavoriteFragment;->access$200(Lcom/zhangdan/preferential/FavoriteFragment;)Lcom/zhangdan/preferential/widget/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/widget/LoadingDialog;->show()V

    .line 163
    return-void
.end method
