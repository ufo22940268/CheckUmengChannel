.class public Lcom/zhangdan/app/service/SyncService;
.super Landroid/app/IntentService;
.source "SyncService.java"


# static fields
.field public static final EXTRA_KEY_TOKEN:Ljava/lang/String; = "token"

.field public static final EXTRA_KEY_USERID:Ljava/lang/String; = "user_id"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "SyncService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private doSyncDelMailAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "userId"
    .parameter "token"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->queryDelMailAccountSyncTask(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 143
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/SyncTaskInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    :cond_0
    return-void

    .line 145
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/SyncTaskInfo;

    .line 146
    .local v0, data:Lcom/zhangdan/app/data/model/SyncTaskInfo;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/SyncTaskInfo;->getVal1()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {p1, p2, v4, v5}, Lcom/zhangdan/app/api/DelMailAccountApi;->deleteMailAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BaseHttpResult;

    move-result-object v3

    .line 147
    .local v3, result:Lcom/zhangdan/app/data/model/http/BaseHttpResult;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;->getCode()I

    move-result v4

    if-nez v4, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/SyncTaskInfo;->getId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->deleteSyncTask(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private doSyncDelReturnRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "userId"
    .parameter "token"

    .prologue
    .line 115
    const-string v6, "SyncService"

    const-string v7, "doSyncDelReturnRecord"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->queryDelReturnRecordTask(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 117
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/SyncTaskInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    :cond_0
    return-void

    .line 119
    :cond_1
    const-string v6, "SyncService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "list.size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/SyncTaskInfo;

    .line 121
    .local v0, data:Lcom/zhangdan/app/data/model/SyncTaskInfo;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/SyncTaskInfo;->getVal1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 122
    .local v2, id:I
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/zhangdan/app/data/db/util/BillReturnDbUtil;->queryBillReturnById(Landroid/content/Context;I)Lcom/zhangdan/app/data/model/http/Repayment;

    move-result-object v4

    .line 123
    .local v4, repayment:Lcom/zhangdan/app/data/model/http/Repayment;
    if-eqz v4, :cond_2

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/Repayment;->getBillId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/Repayment;->getAutoId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p2, p1}, Lcom/zhangdan/app/api/SyncApi;->delReturnPartRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;

    move-result-object v5

    .line 125
    .local v5, result:Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;->getCode()I

    move-result v6

    if-nez v6, :cond_2

    .line 126
    const-string v6, "SyncService"

    const-string v7, "doSyncDelReturnRecord \u540c\u6b65\u6210\u529f"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/SyncTaskInfo;->getId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->deleteSyncTask(Landroid/content/Context;I)V

    .line 128
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/zhangdan/app/data/db/util/BillReturnDbUtil;->deleteReturnRecordReal(Landroid/content/Context;I)V

    .line 129
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/http/Repayment;->getBillId()J

    move-result-wide v7

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;->getReturnAmount()D

    move-result-wide v9

    invoke-static {v6, v7, v8, v9, v10}, Lcom/zhangdan/app/data/db/util/BillDbUtil;->updateBillReturnAmount(Landroid/content/Context;JD)V

    goto/16 :goto_0
.end method

.method private doSyncReturnState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "userId"
    .parameter "token"

    .prologue
    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->queryBillReturnSyncTask(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 65
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/SyncTaskInfo;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 106
    :cond_0
    return-void

    .line 67
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhangdan/app/data/model/SyncTaskInfo;

    .line 68
    .local v5, data:Lcom/zhangdan/app/data/model/SyncTaskInfo;
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/SyncTaskInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, billId:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/SyncTaskInfo;->getVal1()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 70
    .local v11, returnState:I
    if-eqz v11, :cond_3

    const/4 v13, 0x1

    if-ne v11, v13, :cond_4

    .line 72
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4, v11}, Lcom/zhangdan/app/api/SyncApi;->setHasPaidOrNot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v12

    .line 73
    .local v12, succ:Z
    const-string v13, "SyncService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u5df2\u8fd8\u3001\u672a\u8fd8\u7684\u540c\u6b65\u7ed3\u679c\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz v12, :cond_2

    .line 75
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/SyncTaskInfo;->getId()I

    move-result v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->deleteSyncTask(Landroid/content/Context;I)V

    goto :goto_0

    .line 77
    .end local v12           #succ:Z
    :cond_4
    const/4 v13, 0x2

    if-ne v11, v13, :cond_2

    .line 79
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4, v11}, Lcom/zhangdan/app/api/SyncApi;->setHasPaidOrNot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v12

    .line 80
    .restart local v12       #succ:Z
    const-string v13, "SyncService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u8fd8\u90e8\u5206\u540c\u6b65\uff1a\u8bbe\u7f6e\u72b6\u6001"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/SyncTaskInfo;->getVal2()Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, localId:Ljava/lang/String;
    const/4 v10, 0x0

    .line 83
    .local v10, returnPartSucc:Z
    if-eqz v12, :cond_5

    .line 84
    const-string v13, "0"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 85
    const/4 v10, 0x1

    .line 101
    :cond_5
    :goto_1
    if-eqz v12, :cond_2

    if-eqz v10, :cond_2

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/SyncTaskInfo;->getId()I

    move-result v14

    invoke-static {v13, v14}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->deleteSyncTask(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 87
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v8}, Lcom/zhangdan/app/data/db/util/BillReturnDbUtil;->queryBillReturnAmountByLocalId(Landroid/content/Context;Ljava/lang/String;)D

    move-result-wide v2

    .line 88
    .local v2, amount:D
    const-wide/16 v13, 0x0

    cmpl-double v13, v2, v13

    if-lez v13, :cond_8

    .line 89
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4, v13}, Lcom/zhangdan/app/api/SyncApi;->setPartPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ReturnPart;

    move-result-object v9

    .line 90
    .local v9, result:Lcom/zhangdan/app/data/model/http/ReturnPart;
    const-string v14, "SyncService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u8fd8\u90e8\u5206\u7684\u91d1\u989d\u540c\u6b65\u7ed3\u679c\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v9, :cond_7

    const-string v13, "null"

    :goto_2
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/zhangdan/app/data/model/http/ReturnPart;->getCode()I

    move-result v13

    if-nez v13, :cond_5

    .line 93
    const/4 v10, 0x1

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v9}, Lcom/zhangdan/app/data/model/http/ReturnPart;->getAutoId()J

    move-result-wide v14

    invoke-static {v13, v8, v14, v15}, Lcom/zhangdan/app/data/db/util/BillReturnDbUtil;->updateBillReturnAutoId(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1

    :cond_7
    move-object v13, v9

    .line 90
    goto :goto_2

    .line 97
    .end local v9           #result:Lcom/zhangdan/app/data/model/http/ReturnPart;
    :cond_8
    const/4 v10, 0x1

    goto :goto_1
.end method

.method private doSyncShoppingRemark(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "userId"
    .parameter "token"

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->queryShoppingRemarkSyncTask(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 162
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/SyncTaskInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 179
    :cond_0
    return-void

    .line 164
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/SyncTaskInfo;

    .line 165
    .local v0, data:Lcom/zhangdan/app/data/model/SyncTaskInfo;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/SyncTaskInfo;->getVal1()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, localId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/zhangdan/app/data/db/util/ShoppingSheetRemarkDbUtil;->queryShoppingSheetRemarkByLocalId(Landroid/content/Context;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;

    move-result-object v5

    .line 167
    .local v5, remarkData:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    if-nez v5, :cond_3

    .line 168
    const-string v7, "SyncService"

    const-string v8, "doSyncShoppingRemark()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_3
    invoke-static {p1, p2, v5}, Lcom/zhangdan/app/api/SyncApi;->setShoppingSheetRemark(Ljava/lang/String;Ljava/lang/String;Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;)Lcom/zhangdan/app/data/model/http/SyncShoppingRemarkResult;

    move-result-object v6

    .line 172
    .local v6, result:Lcom/zhangdan/app/data/model/http/SyncShoppingRemarkResult;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/http/SyncShoppingRemarkResult;->getCode()I

    move-result v7

    if-nez v7, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/SyncTaskInfo;->getId()I

    move-result v8

    invoke-static {v7, v8}, Lcom/zhangdan/app/data/db/util/SyncTaskDbUtil;->deleteSyncTask(Landroid/content/Context;I)V

    .line 175
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/http/SyncShoppingRemarkResult;->getShoppingSheetRemark()Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;

    move-result-object v4

    .line 176
    .local v4, remark:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/zhangdan/app/data/db/util/ShoppingSheetRemarkDbUtil;->updateShoppingSheetRemark(Landroid/content/Context;Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;)V

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 42
    const-string v3, "SyncService"

    const-string v4, "onHandleIntent()..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v3, "user_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, userId:Ljava/lang/String;
    const-string v3, "token"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, token:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v2, v1}, Lcom/zhangdan/app/service/SyncService;->doSyncReturnState(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, v2, v1}, Lcom/zhangdan/app/service/SyncService;->doSyncDelReturnRecord(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, v2, v1}, Lcom/zhangdan/app/service/SyncService;->doSyncDelMailAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, v2, v1}, Lcom/zhangdan/app/service/SyncService;->doSyncShoppingRemark(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
