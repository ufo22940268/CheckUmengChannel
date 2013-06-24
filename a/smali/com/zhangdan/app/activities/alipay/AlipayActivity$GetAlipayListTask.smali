.class Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "AlipayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/alipay/AlipayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetAlipayListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/zhangdan/app/data/model/http/AlipayOrderList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/AlipayOrderList;
    .locals 5
    .parameter "params"

    .prologue
    .line 361
    const/4 v4, 0x0

    aget-object v2, p1, v4

    .line 362
    .local v2, token:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v3, p1, v4

    .line 363
    .local v3, userId:Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v0, p1, v4

    .line 364
    .local v0, billId:Ljava/lang/String;
    invoke-static {v2, v3, v0}, Lcom/zhangdan/app/api/AlipayApi;->getAlipayList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/AlipayOrderList;

    move-result-object v1

    .line 365
    .local v1, list:Lcom/zhangdan/app/data/model/http/AlipayOrderList;
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 357
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;->doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/AlipayOrderList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/app/data/model/http/AlipayOrderList;)V
    .locals 11
    .parameter "result"

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x0

    const/high16 v9, 0x40a0

    .line 370
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 371
    if-eqz p1, :cond_1

    .line 372
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->getCode()I

    move-result v7

    if-nez v7, :cond_1

    .line 373
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->getOrderList()Ljava/util/List;

    move-result-object v5

    .line 374
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/AlipayOrder;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 375
    :cond_0
    iget-object v7, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    #getter for: Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mTvTradeRecordLabel:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->access$100(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v7, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    #getter for: Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mLayoutTradeRecord:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->access$200(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/AlipayOrder;>;"
    :cond_1
    return-void

    .line 378
    .restart local v5       #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/AlipayOrder;>;"
    :cond_2
    iget-object v7, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    #getter for: Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mTvTradeRecordLabel:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->access$100(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v7, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    #getter for: Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mLayoutTradeRecord:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->access$200(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 381
    iget-object v7, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    #getter for: Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mLayoutTradeRecord:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->access$200(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 383
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 384
    .local v0, c:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 385
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/http/AlipayOrder;

    .line 386
    .local v1, data:Lcom/zhangdan/app/data/model/http/AlipayOrder;
    iget-object v7, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    #calls: Lcom/zhangdan/app/activities/alipay/AlipayActivity;->generateTradeRecordView(Lcom/zhangdan/app/data/model/http/AlipayOrder;)V
    invoke-static {v7, v1}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->access$300(Lcom/zhangdan/app/activities/alipay/AlipayActivity;Lcom/zhangdan/app/data/model/http/AlipayOrder;)V

    .line 388
    add-int/lit8 v7, v0, -0x1

    if-ge v4, v7, :cond_3

    .line 389
    iget-object v7, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-virtual {v7}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 390
    .local v3, dm:Landroid/util/DisplayMetrics;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 391
    .local v2, dividerLine:Landroid/widget/ImageView;
    const v7, 0x7f020087

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 392
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 393
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 394
    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 395
    iget-object v7, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    #getter for: Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mLayoutTradeRecord:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->access$200(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    .end local v2           #dividerLine:Landroid/widget/ImageView;
    .end local v3           #dm:Landroid/util/DisplayMetrics;
    .end local v6           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 357
    check-cast p1, Lcom/zhangdan/app/data/model/http/AlipayOrderList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/alipay/AlipayActivity$GetAlipayListTask;->onPostExecute(Lcom/zhangdan/app/data/model/http/AlipayOrderList;)V

    return-void
.end method
