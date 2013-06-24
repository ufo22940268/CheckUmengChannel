.class Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;
.super Landroid/os/AsyncTask;
.source "RecommendDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/RecommendDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowPromTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/zhangdan/preferential/data/model/Promotion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/RecommendDetailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/zhangdan/preferential/data/model/Promotion;
    .locals 5
    .parameter "params"

    .prologue
    .line 367
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 368
    .local v1, shopId:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v0, p1, v2

    .line 369
    .local v0, promId:Ljava/lang/String;
    iget-object v2, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v2}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$500(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v3}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$500(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;
    invoke-static {v4}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1500(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/utils/RequestGenerator;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getPromotionRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/preferential/utils/JsonParser;->parseShop(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/utils/JsonParser;->inflatePromotion(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/Promotion;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 358
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;->doInBackground([Ljava/lang/String;)Lcom/zhangdan/preferential/data/model/Promotion;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/preferential/data/model/Promotion;)V
    .locals 2
    .parameter "prom"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->dismissLoading()V

    .line 376
    if-eqz p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;
    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1600(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/zhangdan/preferential/utils/ViewUtils;->showPromDialog(Landroid/content/Context;Lcom/zhangdan/preferential/data/model/Promotion;Lcom/novoda/imageloader/core/ImageManager;)V

    .line 379
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 358
    check-cast p1, Lcom/zhangdan/preferential/data/model/Promotion;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;->onPostExecute(Lcom/zhangdan/preferential/data/model/Promotion;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$ShowPromTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->showLoading()V

    .line 363
    return-void
.end method
