.class Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;
.super Landroid/os/AsyncTask;
.source "MainMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/MainMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPoiTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/zhangdan/preferential/data/model/Shop;",
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
    .line 306
    iput-object p1, p0, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/MainMapActivity;Lcom/zhangdan/preferential/MainMapActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;-><init>(Lcom/zhangdan/preferential/MainMapActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 306
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;->doInBackground([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/List;
    .locals 7
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    sget-object v3, Lcom/zhangdan/preferential/MainMapActivity;->mMapView:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v3}, Lcom/baidu/mapapi/MapView;->getMapCenter()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    .line 316
    .local v0, center:Lcom/baidu/mapapi/GeoPoint;
    const/4 v1, 0x0

    .line 317
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 318
    .local v2, type:I
    iget-object v3, p0, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v3}, Lcom/zhangdan/preferential/MainMapActivity;->access$400(Lcom/zhangdan/preferential/MainMapActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v4}, Lcom/zhangdan/preferential/MainMapActivity;->access$400(Lcom/zhangdan/preferential/MainMapActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #getter for: Lcom/zhangdan/preferential/MainMapActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;
    invoke-static {v5}, Lcom/zhangdan/preferential/MainMapActivity;->access$300(Lcom/zhangdan/preferential/MainMapActivity;)Lcom/zhangdan/preferential/utils/RequestGenerator;

    move-result-object v5

    invoke-static {v0}, Lcom/zhangdan/preferential/utils/MapUtils;->convertToPosition(Lcom/baidu/mapapi/GeoPoint;)Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getPositionRequest(Lcom/zhangdan/preferential/data/model/Position;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zhangdan/preferential/utils/JsonParser;->parseShop(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateShops(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 321
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 306
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;->onPostExecute(Ljava/util/List;)V

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
    .line 326
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/preferential/data/model/Shop;>;"
    if-eqz p1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/MainMapActivity;->dismissLoading()V

    .line 328
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #calls: Lcom/zhangdan/preferential/MainMapActivity;->populateShops(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/zhangdan/preferential/MainMapActivity;->access$500(Lcom/zhangdan/preferential/MainMapActivity;Ljava/util/List;)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    #calls: Lcom/zhangdan/preferential/MainMapActivity;->hidePopup()V
    invoke-static {v0}, Lcom/zhangdan/preferential/MainMapActivity;->access$600(Lcom/zhangdan/preferential/MainMapActivity;)V

    .line 331
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/zhangdan/preferential/MainMapActivity$GetPoiTask;->this$0:Lcom/zhangdan/preferential/MainMapActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/MainMapActivity;->showLoading()V

    .line 311
    return-void
.end method
