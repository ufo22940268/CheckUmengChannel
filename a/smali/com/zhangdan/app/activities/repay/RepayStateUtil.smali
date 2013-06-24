.class public Lcom/zhangdan/app/activities/repay/RepayStateUtil;
.super Ljava/lang/Object;
.source "RepayStateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteReturnRecord(Landroid/content/Context;ILjava/lang/String;JLcom/zhangdan/app/data/model/http/Repayment;D)V
    .locals 8
    .parameter "context"
    .parameter "ubType"
    .parameter "userId"
    .parameter "billId"
    .parameter "data"
    .parameter "totalReturnAmount"

    .prologue
    .line 117
    invoke-virtual {p5}, Lcom/zhangdan/app/data/model/http/Repayment;->getId()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p5}, Lcom/zhangdan/app/data/model/http/Repayment;->getLocalId()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, localId:Ljava/lang/String;
    invoke-static {p0, v6}, Lcom/zhangdan/app/data/db/util/BillReturnDbUtil;->queryBillReturnByLocalId(Landroid/content/Context;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/Repayment;

    move-result-object v7

    .line 120
    .local v7, repayment:Lcom/zhangdan/app/data/model/http/Repayment;
    if-eqz v7, :cond_0

    .line 121
    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/http/Repayment;->getId()I

    move-result v0

    invoke-virtual {p5, v0}, Lcom/zhangdan/app/data/model/http/Repayment;->setId(I)V

    .line 123
    .end local v6           #localId:Ljava/lang/String;
    .end local v7           #repayment:Lcom/zhangdan/app/data/model/http/Repayment;
    :cond_0
    if-nez p1, :cond_1

    .line 124
    invoke-virtual {p5}, Lcom/zhangdan/app/data/model/http/Repayment;->getId()I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->saveDelReturnRecordTask(Landroid/content/Context;Ljava/lang/String;I)V

    .line 125
    invoke-virtual {p5}, Lcom/zhangdan/app/data/model/http/Repayment;->getId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/data/db/util/BillReturnDbUtil;->deleteReturnRecordVirtual(Landroid/content/Context;I)V

    .line 126
    invoke-static {p0, p3, p4, p6, p7}, Lcom/zhangdan/app/data/db/util/BillDbUtil;->updateBillReturnAmount(Landroid/content/Context;JD)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p5}, Lcom/zhangdan/app/data/model/http/Repayment;->getId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/data/db/util/BillReturnDbUtil;->deleteReturnRecordReal(Landroid/content/Context;I)V

    .line 129
    const/4 v3, 0x2

    move-object v0, p0

    move-wide v1, p3

    move-wide v4, p6

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/data/db/util/SmsUserBankDbUtil;->updateBillState(Landroid/content/Context;JID)V

    goto :goto_0
.end method

.method public static setPaidState(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V
    .locals 8
    .parameter "context"
    .parameter "userBankInfo"

    .prologue
    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 31
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLastBillId()J

    move-result-wide v1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/data/db/util/BillDbUtil;->updateBillReturnState(Landroid/content/Context;JID)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLastBillId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v3, v1}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->saveBillReturnSyncTask(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    :goto_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "com.zhangdan.app.user_bank_changed"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v0, "ub_id"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v0, "user_bank_type"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v1

    if-eqz v1, :cond_2

    move v3, v7

    :cond_2
    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const-string v0, "status"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 48
    invoke-static {p0, p1}, Lcom/zhangdan/app/alarm/AlarmUtil;->cancelSingleAlarm(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    goto :goto_0

    .line 37
    .end local v6           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/data/db/util/SmsUserBankDbUtil;->updateBillState(Landroid/content/Context;JID)V

    goto :goto_1
.end method

.method public static setPartPaidState(Landroid/content/Context;ILjava/lang/String;JDD)J
    .locals 8
    .parameter "context"
    .parameter "ubType"
    .parameter "userId"
    .parameter "billId"
    .parameter "currReturnAmount"
    .parameter "totalReturnAmount"

    .prologue
    .line 88
    const-wide/16 v6, 0x0

    .line 89
    .local v6, localId:J
    if-nez p1, :cond_1

    .line 90
    const-wide/16 v0, 0x0

    cmpl-double v0, p5, v0

    if-lez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0, p5, p6}, Lcom/zhangdan/app/data/db/util/BillReturnDbUtil;->insertLocalReturnRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;D)J

    move-result-wide v6

    .line 95
    :goto_0
    const/4 v3, 0x2

    move-object v0, p0

    move-wide v1, p3

    move-wide v4, p7

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/data/db/util/BillDbUtil;->updateBillReturnState(Landroid/content/Context;JID)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->saveBillReturnSyncTask(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    :goto_1
    return-wide v6

    .line 93
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_0

    .line 98
    :cond_1
    const-wide/16 v0, 0x0

    cmpl-double v0, p5, v0

    if-lez v0, :cond_2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0, p5, p6}, Lcom/zhangdan/app/data/db/util/BillReturnDbUtil;->insertLocalReturnRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;D)J

    move-result-wide v6

    .line 103
    :goto_2
    const/4 v3, 0x2

    move-object v0, p0

    move-wide v1, p3

    move-wide v4, p7

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/data/db/util/SmsUserBankDbUtil;->updateBillState(Landroid/content/Context;JID)V

    goto :goto_1

    .line 101
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_2
.end method

.method public static setUnpaidState(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V
    .locals 7
    .parameter "context"
    .parameter "userBankInfo"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 58
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLastBillId()J

    move-result-wide v1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/data/db/util/BillDbUtil;->updateBillReturnState(Landroid/content/Context;JID)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLastBillId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v3, v1}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->saveBillReturnSyncTask(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    :goto_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "com.zhangdan.app.user_bank_changed"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v0, "ub_id"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v0, "status"

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const-string v0, "user_bank_type"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 74
    invoke-static {p0, p1}, Lcom/zhangdan/app/alarm/AlarmUtil;->startSingleAlarm(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    goto :goto_0

    .line 64
    .end local v6           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/data/db/util/SmsUserBankDbUtil;->updateBillState(Landroid/content/Context;JID)V

    goto :goto_1

    .line 71
    .restart local v6       #intent:Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x1

    goto :goto_2
.end method
