.class Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "ShopListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/ShopListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAddressTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Lcom/zhangdan/preferential/data/model/Position;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/ShopListFragment;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/ShopListFragment;Lcom/zhangdan/preferential/ShopListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;-><init>(Lcom/zhangdan/preferential/ShopListFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 394
    check-cast p1, [Lcom/zhangdan/preferential/data/model/Position;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;->doInBackground([Lcom/zhangdan/preferential/data/model/Position;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/zhangdan/preferential/data/model/Position;)[Ljava/lang/String;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 397
    aget-object v1, p1, v5

    .line 399
    .local v1, pos:Lcom/zhangdan/preferential/data/model/Position;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v0, v5

    const-string v4, ""

    aput-object v4, v0, v6

    .line 400
    .local v0, addr:[Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;
    invoke-static {v4}, Lcom/zhangdan/preferential/ShopListFragment;->access$900(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/RequestGenerator;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getCityRequestUrl(Lcom/zhangdan/preferential/data/model/Position;)Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v4}, Lcom/zhangdan/preferential/ShopListFragment;->access$1000(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zhangdan/preferential/utils/JsonParser;->parseUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 402
    .local v2, resp:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v4}, Lcom/zhangdan/preferential/ShopListFragment;->access$1000(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateCity(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    .line 403
    iget-object v4, p0, Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v4}, Lcom/zhangdan/preferential/ShopListFragment;->access$1000(Lcom/zhangdan/preferential/ShopListFragment;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateStreet(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 404
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 394
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 3
    .parameter "addr"

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopListFragment$GetAddressTask;->this$0:Lcom/zhangdan/preferential/ShopListFragment;

    #getter for: Lcom/zhangdan/preferential/ShopListFragment;->mAddrView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zhangdan/preferential/ShopListFragment;->access$1100(Lcom/zhangdan/preferential/ShopListFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
