.class Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;
.super Ljava/lang/Object;
.source "AllSmsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/sms/AllSmsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 292
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 293
    .local v3, pos:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mBillDatas:Ljava/util/List;
    invoke-static {v4}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$200(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/BillData;

    .line 294
    .local v0, data:Lcom/zhangdan/app/sms/BillData;
    new-instance v1, Lcom/zhangdan/app/widget/CustomAlertDialog;

    iget-object v4, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$400(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/zhangdan/app/widget/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 295
    .local v1, dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    const-string v4, "\u662f\u5426\u5220\u9664\u6b64\u4fe1\u606f?"

    const v5, 0x7f0c0024

    invoke-virtual {v1, v4, v5}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogContent(Ljava/lang/String;I)V

    .line 296
    const-string v4, "\u662f"

    const-string v5, "\u5426"

    new-instance v6, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$1;

    invoke-direct {v6, p0, v1, v0}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$1;-><init>(Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;Lcom/zhangdan/app/widget/CustomAlertDialog;Lcom/zhangdan/app/sms/BillData;)V

    new-instance v7, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$2;

    invoke-direct {v7, p0, v1}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4$2;-><init>(Lcom/zhangdan/app/activities/sms/AllSmsAdapter$4;Lcom/zhangdan/app/widget/CustomAlertDialog;)V

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/zhangdan/app/widget/CustomAlertDialog;->setDialogButton(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 320
    invoke-virtual {v1}, Lcom/zhangdan/app/widget/CustomAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v0           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v1           #dialog:Lcom/zhangdan/app/widget/CustomAlertDialog;
    .end local v3           #pos:Ljava/lang/Integer;
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v2

    .line 322
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
