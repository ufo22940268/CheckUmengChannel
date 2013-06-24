.class Lcom/zhangdan/app/activities/sms/AllSmsAdapter$2;
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
    .line 232
    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 237
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 238
    .local v2, pos:I
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->mBillDatas:Ljava/util/List;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$200(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/BillData;

    .line 240
    .local v0, data:Lcom/zhangdan/app/sms/BillData;
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->editListener:Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$300(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/zhangdan/app/activities/sms/AllSmsAdapter$2;->this$0:Lcom/zhangdan/app/activities/sms/AllSmsAdapter;

    #getter for: Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->editListener:Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;
    invoke-static {v3}, Lcom/zhangdan/app/activities/sms/AllSmsAdapter;->access$300(Lcom/zhangdan/app/activities/sms/AllSmsAdapter;)Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/zhangdan/app/activities/sms/AllSmsActivity$IOnEditListener;->gotoFeedBack(Lcom/zhangdan/app/sms/BillData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v2           #pos:I
    :cond_0
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
