.class Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastReceiveMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 209
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, strAction:Ljava/lang/String;
    const-string v6, "com.zhangdan.app.download_data_start"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 211
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$000(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 212
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$000(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;->onDownloadStart()V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const-string v6, "com.zhangdan.app.download_data_end"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 214
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$000(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 215
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$000(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;->onDownloadEnd(Landroid/os/Bundle;)V

    goto :goto_0

    .line 216
    :cond_2
    const-string v6, "com.zhangdan.app.download_progress"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 217
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$000(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 218
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnDownloadProgressListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$000(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;->onDownloadNotifyMsg(Landroid/os/Bundle;)V

    goto :goto_0

    .line 219
    :cond_3
    const-string v6, "com.zhangdan.app.download_avatar"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 220
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnAvatarChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$100(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 221
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnAvatarChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$100(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnAvatarChangedListener;->onAvatarChanged()V

    goto :goto_0

    .line 222
    :cond_4
    const-string v6, "com.zhangdan.app.mail_account_update"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 223
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnMailAccountListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$200(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 224
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnMailAccountListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$200(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailAccountListener;->onMailAccountUpdate()V

    goto :goto_0

    .line 225
    :cond_5
    const-string v6, "com.zhangdan.app.user_bank_changed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 226
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnUserBankDataChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$300(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 227
    const-string v6, "ub_id"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, ubId:Ljava/lang/String;
    const-string v6, "status"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 229
    .local v2, status:I
    const-string v6, "user_bank_type"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 230
    .local v5, userBankType:I
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnUserBankDataChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$300(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;

    move-result-object v6

    invoke-interface {v6, v4, v2, v5}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;->onUserBankChanged(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 232
    .end local v2           #status:I
    .end local v4           #ubId:Ljava/lang/String;
    .end local v5           #userBankType:I
    :cond_6
    const-string v6, "com.zhangdan.app.new_bill"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 233
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnNewBillListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$400(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 234
    const-string v6, "bill_count"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 235
    .local v0, count:I
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnNewBillListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$400(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnNewBillListener;->onNewBill(I)V

    goto/16 :goto_0

    .line 237
    .end local v0           #count:I
    :cond_7
    const-string v6, "com.zhangdan.app.mail_status"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 238
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnMailStatusListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$500(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 239
    const-string v6, "data"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/http/MailStatusResult;

    .line 240
    .local v1, data:Lcom/zhangdan/app/data/model/http/MailStatusResult;
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnMailStatusListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$500(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnMailStatusListener;->onMailStatusListener(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto/16 :goto_0

    .line 242
    .end local v1           #data:Lcom/zhangdan/app/data/model/http/MailStatusResult;
    :cond_8
    const-string v6, "com.zhangdan.app.parse_bill"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 243
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnBillParseListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBillParseListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$600(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBillParseListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 244
    const-string v6, "bill"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/http/MailBillResult;

    .line 245
    .local v1, data:Lcom/zhangdan/app/data/model/http/MailBillResult;
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnBillParseListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBillParseListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$600(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBillParseListener;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBillParseListener;->onBillParse(Lcom/zhangdan/app/data/model/http/MailBillResult;)V

    goto/16 :goto_0

    .line 247
    .end local v1           #data:Lcom/zhangdan/app/data/model/http/MailBillResult;
    :cond_9
    const-string v6, "com.zhangdan.app.bank_changed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 248
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnBankChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBankChangedListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$700(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBankChangedListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 249
    iget-object v6, p0, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$1;->this$0:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;

    #getter for: Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->mOnBankChangedListener:Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBankChangedListener;
    invoke-static {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;->access$700(Lcom/zhangdan/app/receiver/BroadcastReceiveMgr;)Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBankChangedListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnBankChangedListener;->onBankChanged()V

    goto/16 :goto_0
.end method
