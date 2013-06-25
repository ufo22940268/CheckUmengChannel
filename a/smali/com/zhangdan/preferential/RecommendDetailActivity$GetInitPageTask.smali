.class Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;
.super Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;
.source "RecommendDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/preferential/RecommendDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetInitPageTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/RecommendDetailActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/RecommendDetailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;-><init>(Lcom/zhangdan/preferential/RecommendDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/zhangdan/preferential/data/model/PromotionExtra;)V
    .locals 1
    .parameter "extra"

    .prologue
    .line 326
    if-eqz p1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->dismissLoading()V

    .line 328
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #calls: Lcom/zhangdan/preferential/RecommendDetailActivity;->updateMenuItems(Lcom/zhangdan/preferential/data/model/PromotionExtra;)V
    invoke-static {v0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$800(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/data/model/PromotionExtra;)V

    .line 330
    :cond_0
    invoke-super {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$AbsGetPageTask;->onPostExecute(Lcom/zhangdan/preferential/data/model/PromotionExtra;)V

    .line 331
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 317
    check-cast p1, Lcom/zhangdan/preferential/data/model/PromotionExtra;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;->onPostExecute(Lcom/zhangdan/preferential/data/model/PromotionExtra;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->showLoading()V

    .line 322
    return-void
.end method

.method protected setPage()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    const/4 v1, 0x1

    #setter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mPage:I
    invoke-static {v0, v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1402(Lcom/zhangdan/preferential/RecommendDetailActivity;I)I

    .line 345
    return-void
.end method

.method protected setRecommendToAdapter(Lcom/zhangdan/preferential/data/model/PromotionExtra;)V
    .locals 3
    .parameter "extra"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    iget-object v1, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$900(Lcom/zhangdan/preferential/RecommendDetailActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/PromotionExtra;->imageUrl:Ljava/lang/String;

    #calls: Lcom/zhangdan/preferential/RecommendDetailActivity;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1000(Lcom/zhangdan/preferential/RecommendDetailActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1100(Lcom/zhangdan/preferential/RecommendDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/PromotionExtra;->getFullTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #setter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mProm:Lcom/zhangdan/preferential/data/model/PromotionExtra;
    invoke-static {v0, p1}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$1202(Lcom/zhangdan/preferential/RecommendDetailActivity;Lcom/zhangdan/preferential/data/model/PromotionExtra;)Lcom/zhangdan/preferential/data/model/PromotionExtra;

    .line 339
    iget-object v0, p0, Lcom/zhangdan/preferential/RecommendDetailActivity$GetInitPageTask;->this$0:Lcom/zhangdan/preferential/RecommendDetailActivity;

    #getter for: Lcom/zhangdan/preferential/RecommendDetailActivity;->mAdapter:Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;
    invoke-static {v0}, Lcom/zhangdan/preferential/RecommendDetailActivity;->access$600(Lcom/zhangdan/preferential/RecommendDetailActivity;)Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/PromotionExtra;->shopList:Ljava/util/List;

    #calls: Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->setShops(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;->access$1300(Lcom/zhangdan/preferential/RecommendDetailActivity$RecommendDetailAdapter;Ljava/util/List;)V

    .line 340
    return-void
.end method
