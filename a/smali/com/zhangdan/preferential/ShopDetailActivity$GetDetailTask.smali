.class Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;
.super Landroid/os/AsyncTask;
.source "ShopDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/ShopDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetDetailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/zhangdan/preferential/data/model/ShopExtra;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/ShopDetailActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/ShopDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/ShopDetailActivity;Lcom/zhangdan/preferential/ShopDetailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;-><init>(Lcom/zhangdan/preferential/ShopDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/zhangdan/preferential/data/model/ShopExtra;
    .locals 7
    .parameter "params"

    .prologue
    .line 343
    const/4 v3, 0x0

    aget-object v2, p1, v3

    .line 344
    .local v2, shopId:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v3}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$200(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;
    invoke-static {v4}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$100(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/utils/RequestGenerator;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-virtual {v5}, Lcom/zhangdan/preferential/ShopDetailActivity;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getShopExtraRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateShopExtra(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/ShopExtra;

    move-result-object v0

    .line 347
    .local v0, extra:Lcom/zhangdan/preferential/data/model/ShopExtra;
    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/ShopExtra;->weiboId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 348
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v3}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$200(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v3

    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mRequestGenerator:Lcom/zhangdan/preferential/utils/RequestGenerator;
    invoke-static {v4}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$100(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/utils/RequestGenerator;

    move-result-object v4

    const-string v5, "2.00k8wvoBmwdnQC2c67bdd404s_BXXC"

    iget-object v6, v0, Lcom/zhangdan/preferential/data/model/ShopExtra;->weiboId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/zhangdan/preferential/utils/RequestGenerator;->getWeiboPoiRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zhangdan/preferential/utils/JsonParser;->parseUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 350
    .local v1, jo:Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mParser:Lcom/zhangdan/preferential/utils/JsonParser;
    invoke-static {v3}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$200(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/utils/JsonParser;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/zhangdan/preferential/utils/JsonParser;->inflateWeibPoiList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/zhangdan/preferential/data/model/ShopExtra;->weiboPoiList:Ljava/util/List;

    .line 352
    .end local v1           #jo:Lorg/json/JSONObject;
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 334
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->doInBackground([Ljava/lang/String;)Lcom/zhangdan/preferential/data/model/ShopExtra;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/preferential/data/model/ShopExtra;)V
    .locals 6
    .parameter "extra"

    .prologue
    const/4 v5, 0x0

    .line 357
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #setter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mShopExtra:Lcom/zhangdan/preferential/data/model/ShopExtra;
    invoke-static {v1, p1}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$302(Lcom/zhangdan/preferential/ShopDetailActivity;Lcom/zhangdan/preferential/data/model/ShopExtra;)Lcom/zhangdan/preferential/data/model/ShopExtra;

    .line 358
    if-nez p1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-virtual {v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->dismissLoading()V

    .line 363
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    iget-object v1, v1, Lcom/zhangdan/preferential/ShopDetailActivity;->imageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/ImageManager;->getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v1

    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->imageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$400(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$400(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/novoda/imageloader/core/cache/CacheManager;->get(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 365
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 366
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$400(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 370
    :goto_1
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mMainTitleView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$600(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mSubTitleView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$700(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupShopNameSeparately(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/Shop;)V

    .line 371
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mShopNameView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$800(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupShopName(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/Shop;)V

    .line 372
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mStarView:Lcom/zhangdan/preferential/widget/CustomStarView;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$900(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/widget/CustomStarView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/ShopExtra;->getRating()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/widget/CustomStarView;->setRating(I)V

    .line 373
    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/ShopExtra;->hasPrice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mPriceView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$1000(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->price:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zhangdan/preferential/utils/ViewUtils;->setupPrice(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 379
    :goto_2
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #calls: Lcom/zhangdan/preferential/ShopDetailActivity;->updateMenuItems(Lcom/zhangdan/preferential/data/model/ShopExtra;)V
    invoke-static {v1, p1}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$1100(Lcom/zhangdan/preferential/ShopDetailActivity;Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    .line 381
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mAdapter:Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$1200(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->setShopExtra(Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    .line 382
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mAdapter:Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$1200(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/preferential/ShopDetailActivity$ShopDetailAdapter;->notifyDataSetChanged()V

    .line 383
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mLayerView:Landroid/view/View;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$1300(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mHeaderLayerView:Landroid/view/View;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$1400(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    iget-object v2, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$400(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p1, Lcom/zhangdan/preferential/data/model/ShopExtra;->imageUrl:Ljava/lang/String;

    #calls: Lcom/zhangdan/preferential/ShopDetailActivity;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$500(Lcom/zhangdan/preferential/ShopDetailActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 376
    :cond_2
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    #getter for: Lcom/zhangdan/preferential/ShopDetailActivity;->mPriceView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->access$1000(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 334
    check-cast p1, Lcom/zhangdan/preferential/data/model/ShopExtra;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->onPostExecute(Lcom/zhangdan/preferential/data/model/ShopExtra;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity$GetDetailTask;->this$0:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->showLoading()V

    .line 339
    return-void
.end method
