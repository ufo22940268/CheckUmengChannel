.class Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;
.super Ljava/lang/Object;
.source "MailParseActivity.java"

# interfaces
.implements Lcom/zhangdan/app/activities/mailimport/SubmitMailLoginTask$OnMailSubmitProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/mailimport/MailParseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/zhangdan/app/data/model/http/MailLoginResult;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 638
    if-nez p1, :cond_0

    .line 639
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    #calls: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->dismissLoadingDialog()V
    invoke-static {v2}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$200(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)V

    .line 640
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    const v4, 0x7f070024

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 641
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    #setter for: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMailAccountId:Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$302(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 642
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    #setter for: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSubmitTime:Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$402(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->getCode()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->getCode()I

    move-result v2

    const/16 v3, 0x70

    if-ne v2, v3, :cond_3

    .line 645
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;
    invoke-static {v2}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$000(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Lcom/zhangdan/app/widget/LoadingDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 646
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;
    invoke-static {v2}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$000(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Lcom/zhangdan/app/widget/LoadingDialog;

    move-result-object v2

    const v3, 0x7f0700f9

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/widget/LoadingDialog;->setContent(I)V

    .line 647
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;
    invoke-static {v2}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$000(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Lcom/zhangdan/app/widget/LoadingDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/widget/LoadingDialog;->setOnClickCancelListener(Landroid/view/View$OnClickListener;)V

    .line 650
    :cond_2
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->getSid()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMailAccountId:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$302(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 651
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->getTime()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSubmitTime:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$402(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 653
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v1

    .line 654
    .local v1, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSubmitTime:Ljava/lang/String;
    invoke-static {v3}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$400(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mEmailName:Ljava/lang/String;
    invoke-static {v5}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$500(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/zhangdan/app/data/db/util/MailAccountDbUtil;->updateMailAccessTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 657
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    const-class v3, Lcom/zhangdan/app/service/MailStatusService;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 658
    const-string v2, "sid"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->getSid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const-string v2, "token"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    const-string v2, "user_id"

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 664
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    :cond_3
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    #calls: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->dismissLoadingDialog()V
    invoke-static {v2}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$200(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)V

    .line 665
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailLoginResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 666
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    #setter for: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mMailAccountId:Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$302(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 667
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    #setter for: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mSubmitTime:Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$402(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 629
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    new-instance v1, Lcom/zhangdan/app/widget/LoadingDialog;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-direct {v1, v2}, Lcom/zhangdan/app/widget/LoadingDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;
    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$002(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Lcom/zhangdan/app/widget/LoadingDialog;)Lcom/zhangdan/app/widget/LoadingDialog;

    .line 630
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;
    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$000(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Lcom/zhangdan/app/widget/LoadingDialog;

    move-result-object v0

    const v1, 0x7f0700f8

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/LoadingDialog;->setContent(I)V

    .line 631
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;
    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$000(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Lcom/zhangdan/app/widget/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/widget/LoadingDialog;->setCancelable(Z)V

    .line 632
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    #getter for: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mDialog:Lcom/zhangdan/app/widget/LoadingDialog;
    invoke-static {v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$000(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Lcom/zhangdan/app/widget/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/LoadingDialog;->show()V

    .line 633
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity$1;->this$0:Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    #setter for: Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->mLoginSuccess:Z
    invoke-static {v0, v3}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->access$102(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Z)Z

    .line 634
    return-void
.end method
