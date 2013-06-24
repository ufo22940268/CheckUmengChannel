.class Lcom/zhangdan/app/activities/main/MainContentFragment$8;
.super Ljava/lang/Object;
.source "MainContentFragment.java"

# interfaces
.implements Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/main/MainContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$8;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadEnd(Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 483
    const-string v1, "new_user_bank"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 485
    .local v0, hasNewUserBankInfo:Z
    const-string v1, "MenuTopView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasNewUserBankInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    if-eqz v0, :cond_0

    .line 487
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$8;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #calls: Lcom/zhangdan/app/activities/main/MainContentFragment;->refreshCardList()V
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1200(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$8;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mAbImgRefresh:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1100(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 490
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$8;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mAbImgRefresh:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1100(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 492
    :cond_1
    return-void
.end method

.method public onDownloadNotifyMsg(Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 497
    return-void
.end method

.method public onDownloadStart()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$8;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mAbImgRefresh:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1100(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$8;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$8;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mAbImgRefresh:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1100(Lcom/zhangdan/app/activities/main/MainContentFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/main/MainContentFragment;->startRefreshAnim(Landroid/view/View;)V

    .line 479
    :cond_0
    return-void
.end method
