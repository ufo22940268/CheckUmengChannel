.class Lcom/zhangdan/app/activities/account/LoadingActivity$2;
.super Ljava/lang/Object;
.source "LoadingActivity.java"

# interfaces
.implements Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/account/LoadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/account/LoadingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadEnd(Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    #getter for: Lcom/zhangdan/app/activities/account/LoadingActivity;->mHander:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$300(Lcom/zhangdan/app/activities/account/LoadingActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    const/16 v2, 0x2710

    #setter for: Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrProgress:I
    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$002(Lcom/zhangdan/app/activities/account/LoadingActivity;I)I

    .line 155
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    #getter for: Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrProgress:I
    invoke-static {v2}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$000(Lcom/zhangdan/app/activities/account/LoadingActivity;)I

    move-result v2

    #calls: Lcom/zhangdan/app/activities/account/LoadingActivity;->setLoadingProgress(I)V
    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$200(Lcom/zhangdan/app/activities/account/LoadingActivity;I)V

    .line 156
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    const v3, 0x7f0700b4

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/account/LoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/zhangdan/app/activities/account/LoadingActivity;->setLoadingDesc(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$400(Lcom/zhangdan/app/activities/account/LoadingActivity;Ljava/lang/String;)V

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    const-class v2, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    .line 161
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/account/LoadingActivity;->setResult(I)V

    .line 162
    iget-object v1, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->finish()V

    .line 163
    return-void
.end method

.method public onDownloadNotifyMsg(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 167
    const-string v2, "msg"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, desc:Ljava/lang/String;
    const-string v2, "progress"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 169
    .local v0, currMaxProgress:I
    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    #calls: Lcom/zhangdan/app/activities/account/LoadingActivity;->setLoadingDesc(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$400(Lcom/zhangdan/app/activities/account/LoadingActivity;Ljava/lang/String;)V

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    iget-object v3, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    #getter for: Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrMaxProgress:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$100(Lcom/zhangdan/app/activities/account/LoadingActivity;)I

    move-result v3

    #setter for: Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrProgress:I
    invoke-static {v2, v3}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$002(Lcom/zhangdan/app/activities/account/LoadingActivity;I)I

    .line 172
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    iget-object v3, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    #getter for: Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrProgress:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$000(Lcom/zhangdan/app/activities/account/LoadingActivity;)I

    move-result v3

    #calls: Lcom/zhangdan/app/activities/account/LoadingActivity;->setLoadingProgress(I)V
    invoke-static {v2, v3}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$200(Lcom/zhangdan/app/activities/account/LoadingActivity;I)V

    .line 173
    iget-object v2, p0, Lcom/zhangdan/app/activities/account/LoadingActivity$2;->this$0:Lcom/zhangdan/app/activities/account/LoadingActivity;

    #setter for: Lcom/zhangdan/app/activities/account/LoadingActivity;->mCurrMaxProgress:I
    invoke-static {v2, v0}, Lcom/zhangdan/app/activities/account/LoadingActivity;->access$102(Lcom/zhangdan/app/activities/account/LoadingActivity;I)I

    .line 174
    return-void
.end method

.method public onDownloadStart()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method
