.class Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "AlipayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/alipay/AlipayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateOrderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;

.field final synthetic this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;
    .locals 9
    .parameter "params"

    .prologue
    .line 301
    const/4 v8, 0x0

    aget-object v0, p1, v8

    .line 302
    .local v0, billId:Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v1, p1, v8

    .line 303
    .local v1, bankId:Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v2, p1, v8

    .line 304
    .local v2, userName:Ljava/lang/String;
    const/4 v8, 0x3

    aget-object v3, p1, v8

    .line 305
    .local v3, cardNo:Ljava/lang/String;
    const/4 v8, 0x4

    aget-object v4, p1, v8

    .line 306
    .local v4, amount:Ljava/lang/String;
    const/4 v8, 0x5

    aget-object v5, p1, v8

    .line 307
    .local v5, token:Ljava/lang/String;
    const/4 v8, 0x6

    aget-object v6, p1, v8

    .line 308
    .local v6, userId:Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/zhangdan/app/api/AlipayApi;->createAlipayOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;

    move-result-object v7

    .line 309
    .local v7, data:Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;
    return-object v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 288
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;->doInBackground([Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 316
    :try_start_0
    iget-object v4, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    if-nez p1, :cond_0

    .line 320
    iget-object v4, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    iget-object v5, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    const v6, 0x7f070024

    invoke-virtual {v5, v6}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    :goto_1
    return-void

    .line 322
    :cond_0
    const-string v4, "alipay"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->getCode()I

    move-result v4

    if-nez v4, :cond_1

    .line 324
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 325
    .local v3, intent:Landroid/content/Intent;
    new-instance v0, Ljava/lang/String;

    const-string v4, "alipays://platformapi/startapp?appId=09999999&sourceId=51zhangdan&clientVersion=%1$s&outTradeNo=%2$s&cardTailNumber=%3$s&amount=%4$s&userName=%5$s&bankMark=%6$s&returnUrl=%7$s"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, alipayUri:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->getOrder()Lcom/zhangdan/app/data/model/http/AlipayOrder;

    move-result-object v2

    .line 328
    .local v2, data:Lcom/zhangdan/app/data/model/http/AlipayOrder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "en51ccm://startapp?appId=09999999&sourceId=alipay&tradeNo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->getTradeNo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&billId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    #getter for: Lcom/zhangdan/app/activities/alipay/AlipayActivity;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-static {v5}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->access$000(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)Lcom/zhangdan/app/data/model/UserBankInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLastBillId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, callback:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/zhangdan/app/util/Base64Utils;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    .line 330
    const-string v4, "alipay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callback:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v4, "%1$s"

    const-string v5, "5.2.0.0307"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%2$s"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->getTradeNo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%3$s"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->getCardNo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%4$s"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->getAmount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%5$s"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangdan/app/util/URIEncodingUtil;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%6$s"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/AlipayOrder;->getBankMark()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%7$s"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 339
    const-string v4, "alipay"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 341
    iget-object v4, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-virtual {v4, v3}, Lcom/zhangdan/app/activities/alipay/AlipayActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 343
    .end local v0           #alipayUri:Ljava/lang/String;
    .end local v1           #callback:Ljava/lang/String;
    .end local v2           #data:Lcom/zhangdan/app/data/model/http/AlipayOrder;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 317
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 288
    check-cast p1, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;->onPostExecute(Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 294
    invoke-super {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPreExecute()V

    .line 295
    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    const-string v1, ""

    const-string v2, "\u6b63\u5728\u521b\u5efa\u652f\u4ed8\u8ba2\u5355\uff0c\u8bf7\u7a0d\u540e..."

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->buildeProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;->dialog:Landroid/app/Dialog;

    .line 296
    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 297
    return-void
.end method
