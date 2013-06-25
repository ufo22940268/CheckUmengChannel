.class Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;
.super Ljava/lang/Object;
.source "AlipayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/alipay/AlipayActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

.field final synthetic val$amountStr:Ljava/lang/String;

.field final synthetic val$bankId:I

.field final synthetic val$items:[Ljava/lang/String;

.field final synthetic val$lastBillId:J

.field final synthetic val$nameOnBill:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/alipay/AlipayActivity;JILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    iput-wide p2, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;->val$lastBillId:J

    iput p4, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;->val$bankId:I

    iput-object p5, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;->val$nameOnBill:Ljava/lang/String;

    iput-object p6, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;->val$items:[Ljava/lang/String;

    iput-object p7, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;->val$amountStr:Ljava/lang/String;

    iput-object p8, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;->val$token:Ljava/lang/String;

    iput-object p9, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 236
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    new-instance v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;

    iget-object v1, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;->this$0:Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;-><init>(Lcom/zhangdan/app/activities/alipay/AlipayActivity;)V

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;->val$lastBillId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;->val$bankId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;->val$nameOnBill:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;->val$items:[Ljava/lang/String;

    aget-object v3, v3, p2

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;->val$amountStr:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;->val$token:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/zhangdan/app/activities/alipay/AlipayActivity$1;->val$userId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/alipay/AlipayActivity$CreateOrderTask;->execute([Ljava/lang/Object;)Lcom/novoda/imageloader/core/loader/util/AsyncTask;

    .line 240
    return-void

    .line 237
    :catch_0
    move-exception v0

    goto :goto_0
.end method
