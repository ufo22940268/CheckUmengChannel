.class Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$2;
.super Landroid/content/BroadcastReceiver;
.source "CardDetailBillEmptyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan_finish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->access$000(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->access$000(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07009e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->access$000(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mUserBankInfo:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-static {v2}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->access$200(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;)Lcom/zhangdan/app/data/model/UserBankInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/detail/DetailDataManager;->getSmsUnSettledBills(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mUnSettledBillList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->access$102(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;Ljava/util/List;)Ljava/util/List;

    .line 195
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->notifyDataSetChanged()V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->access$000(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;->access$000(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillEmptyAdapter;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07009d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
