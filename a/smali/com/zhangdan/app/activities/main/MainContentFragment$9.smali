.class Lcom/zhangdan/app/activities/main/MainContentFragment$9;
.super Ljava/lang/Object;
.source "MainContentFragment.java"

# interfaces
.implements Lcom/zhangdan/app/receiver/BroadcastReceiveMgr$OnUserBankDataChangedListener;


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
    .line 503
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$9;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserBankChanged(Ljava/lang/String;II)V
    .locals 8
    .parameter "ubId"
    .parameter "status"
    .parameter "userBankType"

    .prologue
    const/4 v6, 0x1

    .line 506
    iget-object v5, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$9;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #setter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mNeedSyncData:Z
    invoke-static {v5, v6}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1302(Lcom/zhangdan/app/activities/main/MainContentFragment;Z)Z

    .line 508
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 509
    .local v3, ub:J
    iget-object v5, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$9;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mDataManager:Lcom/zhangdan/app/global/DataManager;
    invoke-static {v5}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1400(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/global/DataManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v2

    .line 510
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    if-nez v2, :cond_0

    .line 542
    :goto_0
    return-void

    .line 512
    :cond_0
    if-ne p2, v6, :cond_3

    .line 513
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 514
    .local v0, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-nez v5, :cond_1

    .line 515
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 541
    .end local v0           #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$9;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #calls: Lcom/zhangdan/app/activities/main/MainContentFragment;->refreshCardList()V
    invoke-static {v5}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1200(Lcom/zhangdan/app/activities/main/MainContentFragment;)V

    goto :goto_0

    .line 519
    :cond_3
    if-nez p2, :cond_2

    .line 520
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 521
    .restart local v0       #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-nez v5, :cond_4

    .line 523
    if-nez p3, :cond_6

    .line 524
    iget-object v5, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$9;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mDataManager:Lcom/zhangdan/app/global/DataManager;
    invoke-static {v5}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1400(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/global/DataManager;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$9;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v6}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v7}, Lcom/zhangdan/app/global/DataManager;->readUserBankBillInfo(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;Ljava/util/List;)V

    .line 532
    .end local v0           #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_5
    :goto_2
    if-eqz p3, :cond_2

    .line 533
    iget-object v5, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$9;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v5}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v3, v4}, Lcom/zhangdan/app/data/db/util/SmsUserBankDbUtil;->querySmsUserBank(Landroid/content/Context;J)Lcom/zhangdan/app/data/model/UserBankInfo;

    move-result-object v0

    .line 534
    .restart local v0       #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    if-eqz v0, :cond_2

    .line 535
    iget-object v5, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$9;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainContentFragment;->mDataManager:Lcom/zhangdan/app/global/DataManager;
    invoke-static {v5}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1400(Lcom/zhangdan/app/activities/main/MainContentFragment;)Lcom/zhangdan/app/global/DataManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/zhangdan/app/global/DataManager;->readSmsUserBank(Lcom/zhangdan/app/data/model/UserBankInfo;)V

    .line 536
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 526
    :cond_6
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method
