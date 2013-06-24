.class Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$3;
.super Landroid/content/BroadcastReceiver;
.source "CardDetailBillAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$3;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 481
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan_finish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$3;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$3;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07009e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$3;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$3;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$3;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-static {v2}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$400(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Lcom/zhangdan/app/data/model/UserBankInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/detail/DetailDataManager;->getSmsUnSettledBills(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mUnSettledBillList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$302(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;Ljava/util/List;)Ljava/util/List;

    .line 484
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$3;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->notifyDataSetChanged()V

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$3;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$3;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07009d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
