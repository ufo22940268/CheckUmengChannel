.class Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$1;
.super Ljava/lang/Object;
.source "MailListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$1;->this$0:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;

    iput p2, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 121
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 122
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$1;->this$0:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;

    #getter for: Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mList:Ljava/util/List;
    invoke-static {v2}, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->access$000(Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$1;->this$0:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;

    iget v3, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/MailAccountInfo;

    .line 125
    .local v0, data:Lcom/zhangdan/app/data/model/MailAccountInfo;
    if-eqz v0, :cond_0

    .line 128
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$1;->this$0:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;

    #getter for: Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->access$100(Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getAutoId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->saveDelMailAccountSyncTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$1;->this$0:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;

    #getter for: Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->access$100(Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getMailAccount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/zhangdan/app/data/db/util/MailAccountDbUtil;->deleteMailAccountInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$1;->this$0:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;

    #getter for: Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->access$100(Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/MailAccountInfo;->getMailAccount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/data/db/util/MailBillRecordDbUtil;->deleteBillRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.zhangdan.app.mail_account_update"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter$1;->this$0:Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;

    #getter for: Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;->access$100(Lcom/zhangdan/app/activities/mailimport/adapter/MailListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method
