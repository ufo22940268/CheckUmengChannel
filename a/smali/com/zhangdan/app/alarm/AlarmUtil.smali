.class public Lcom/zhangdan/app/alarm/AlarmUtil;
.super Ljava/lang/Object;
.source "AlarmUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAlarm(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "id"

    .prologue
    .line 32
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 33
    .local v1, manager:Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v0, intent:Landroid/content/Intent;
    const-class v3, Lcom/zhangdan/app/receiver/RepaymentNotifyReceiver;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    const/high16 v3, 0x800

    invoke-static {p0, p1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 36
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 37
    return-void
.end method

.method public static cancelAllAlarm(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, bankInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    if-nez p0, :cond_1

    .line 135
    :cond_0
    return-void

    .line 129
    :cond_1
    if-eqz p1, :cond_0

    .line 131
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 132
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 133
    .local v1, info:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-static {p0, v1}, Lcom/zhangdan/app/alarm/AlarmUtil;->cancelSingleAlarm(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static cancelSingleAlarm(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V
    .locals 19
    .parameter "context"
    .parameter "info"

    .prologue
    .line 144
    if-nez p0, :cond_1

    .line 185
    :cond_0
    return-void

    .line 146
    :cond_1
    if-eqz p1, :cond_0

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v16

    if-eqz v16, :cond_0

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLeaveDays()I

    move-result v16

    if-ltz v16, :cond_0

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v10

    .line 153
    .local v10, dateStr:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 155
    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 156
    .local v9, dateArray:[Ljava/lang/String;
    if-eqz v9, :cond_0

    array-length v0, v9

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v5

    .line 159
    .local v5, billState:I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v5, v0, :cond_2

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v5, v0, :cond_2

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v5, v0, :cond_0

    .line 160
    :cond_2
    const/16 v16, 0x0

    aget-object v16, v9, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 161
    .local v14, dueYear:I
    const/16 v16, 0x1

    aget-object v16, v9, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int/lit8 v13, v16, -0x1

    .line 162
    .local v13, dueMonth:I
    const/16 v16, 0x2

    aget-object v16, v9, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 164
    .local v12, dueDay:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 165
    .local v11, dueCalendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 166
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 167
    .local v8, currYear:I
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 168
    .local v7, currMon:I
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 170
    .local v6, currDay:I
    const/4 v15, 0x0

    .local v15, j:I
    :goto_0
    const/16 v16, 0x5

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 171
    invoke-virtual {v11, v14, v13, v12}, Ljava/util/Calendar;->set(III)V

    .line 172
    const/16 v16, 0x5

    neg-int v0, v15

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 173
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 174
    .local v4, alarmYear:I
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 175
    .local v3, alarmMonth:I
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 177
    .local v2, alarmDay:I
    mul-int/lit16 v0, v8, 0x2710

    move/from16 v16, v0

    mul-int/lit8 v17, v7, 0x64

    add-int v16, v16, v17

    add-int v16, v16, v6

    mul-int/lit16 v0, v4, 0x2710

    move/from16 v17, v0

    mul-int/lit8 v18, v3, 0x64

    add-int v17, v17, v18

    add-int v17, v17, v2

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_0

    .line 180
    const-string v16, "Alarm"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "cancel: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    add-int/lit8 v18, v3, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x9

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/zhangdan/app/alarm/AlarmUtil;->cancelAlarm(Landroid/content/Context;I)V

    .line 182
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x14

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/zhangdan/app/alarm/AlarmUtil;->cancelAlarm(Landroid/content/Context;I)V

    .line 170
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0
.end method

.method public static getLasetNeedPay(Landroid/content/Context;Ljava/util/List;)V
    .locals 28
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, bankInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    if-nez p0, :cond_1

    .line 118
    :cond_0
    return-void

    .line 42
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 43
    .local v3, dueCalendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 44
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 45
    .local v16, currYear:I
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 46
    .local v15, currMon:I
    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 47
    .local v14, currDay:I
    const/16 v7, 0xb

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 49
    .local v22, hourOfDay:I
    const/16 v23, 0x0

    .local v23, i:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    move/from16 v0, v23

    if-ge v0, v7, :cond_0

    .line 50
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 51
    .local v24, info:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v7

    if-nez v7, :cond_3

    .line 49
    :cond_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLeaveDays()I

    move-result v7

    if-ltz v7, :cond_2

    .line 55
    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v18

    .line 56
    .local v18, dateStr:Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 58
    const-string v7, "/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 59
    .local v17, dateArray:[Ljava/lang/String;
    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    array-length v7, v0

    const/4 v8, 0x3

    if-lt v7, v8, :cond_2

    .line 61
    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v10

    .line 62
    .local v10, bankId:I
    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    .line 64
    .local v11, bankName:Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v17, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 65
    .local v21, dueYear:I
    const/4 v7, 0x1

    aget-object v7, v17, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v20, v7, -0x1

    .line 66
    .local v20, dueMonth:I
    const/4 v7, 0x2

    aget-object v7, v17, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 68
    .local v19, dueDay:I
    const/16 v26, 0x0

    .local v26, j:I
    :goto_1
    const/4 v7, 0x5

    move/from16 v0, v26

    if-ge v0, v7, :cond_2

    .line 69
    move/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 70
    const/4 v7, 0x5

    move/from16 v0, v26

    neg-int v8, v0

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 71
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 72
    .local v4, alarmYear:I
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 73
    .local v5, alarmMonth:I
    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 74
    .local v6, alarmDay:I
    move/from16 v0, v16

    mul-int/lit16 v7, v0, 0x2710

    mul-int/lit8 v8, v15, 0x64

    add-int/2addr v7, v8

    add-int/2addr v7, v14

    mul-int/lit16 v8, v4, 0x2710

    mul-int/lit8 v9, v5, 0x64

    add-int/2addr v8, v9

    add-int/2addr v8, v6

    if-gt v7, v8, :cond_2

    .line 77
    const/16 v25, 0x0

    .line 78
    .local v25, isToday:Z
    move/from16 v0, v16

    if-ne v0, v4, :cond_4

    if-ne v15, v5, :cond_4

    if-ne v14, v6, :cond_4

    .line 79
    const/16 v25, 0x1

    .line 82
    :cond_4
    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_b

    .line 83
    :cond_5
    const/4 v12, 0x0

    .line 84
    .local v12, str:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUsdNewBalance()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_a

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07015b

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v9, v13

    const/4 v13, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v9, v13

    const/4 v13, 0x2

    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v9, v13

    const/4 v13, 0x3

    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    aput-object v27, v9, v13

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 97
    :goto_2
    const-string v7, "Alarm"

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eqz v25, :cond_6

    if-eqz v25, :cond_7

    const/16 v7, 0x9

    move/from16 v0, v22

    if-ge v0, v7, :cond_7

    .line 99
    :cond_6
    const/16 v7, 0x9

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 100
    const-string v7, "Alarm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " 09:00"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v13, 0x9

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v13

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v13}, Lcom/zhangdan/app/alarm/AlarmUtil;->startAlarm(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;I)V

    .line 105
    :cond_7
    if-eqz v25, :cond_8

    if-eqz v25, :cond_9

    const/16 v7, 0x14

    move/from16 v0, v22

    if-ge v0, v7, :cond_9

    .line 106
    :cond_8
    const/16 v7, 0x14

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 107
    const-string v7, "Alarm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " 20:00"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v13, 0x14

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v13

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v13}, Lcom/zhangdan/app/alarm/AlarmUtil;->startAlarm(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;I)V

    .line 68
    .end local v12           #str:Ljava/lang/String;
    :cond_9
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 90
    .restart local v12       #str:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07015b

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v9, v13

    const/4 v13, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v9, v13

    const/4 v13, 0x2

    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v9, v13

    const/4 v13, 0x3

    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    aput-object v27, v9, v13

    const/4 v13, 0x4

    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUsdNewBalance()F

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    aput-object v27, v9, v13

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 111
    .end local v12           #str:Ljava/lang/String;
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/zhangdan/app/alarm/AlarmUtil;->cancelAlarm(Landroid/content/Context;I)V

    .line 112
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/zhangdan/app/alarm/AlarmUtil;->cancelAlarm(Landroid/content/Context;I)V

    goto/16 :goto_3
.end method

.method public static startAlarm(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "triggerAtMillis"
    .parameter "bankId"
    .parameter "title"
    .parameter "content"
    .parameter "id"

    .prologue
    .line 21
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 22
    .local v1, manager:Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 23
    .local v0, intent:Landroid/content/Intent;
    const-class v3, Lcom/zhangdan/app/receiver/RepaymentNotifyReceiver;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 24
    const-string v3, "alarm_content"

    invoke-virtual {v0, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const-string v3, "bank_id"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    const-string v3, "alarm_title"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const/high16 v3, 0x800

    invoke-static {p0, p6, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 28
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 29
    return-void
.end method

.method public static startSingleAlarm(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;)V
    .locals 26
    .parameter "context"
    .parameter "info"

    .prologue
    .line 194
    if-nez p0, :cond_1

    .line 265
    :cond_0
    return-void

    .line 196
    :cond_1
    if-eqz p1, :cond_0

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v7

    if-eqz v7, :cond_0

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLeaveDays()I

    move-result v7

    if-ltz v7, :cond_0

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v18

    .line 203
    .local v18, dateStr:Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 205
    const-string v7, "/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 206
    .local v17, dateArray:[Ljava/lang/String;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    array-length v7, v0

    const/4 v8, 0x3

    if-lt v7, v8, :cond_0

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 210
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v10

    .line 211
    .local v10, bankId:I
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    .line 213
    .local v11, bankName:Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v17, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 214
    .local v21, dueYear:I
    const/4 v7, 0x1

    aget-object v7, v17, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v20, v7, -0x1

    .line 215
    .local v20, dueMonth:I
    const/4 v7, 0x2

    aget-object v7, v17, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 217
    .local v19, dueDay:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 218
    .local v3, dueCalendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 219
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 220
    .local v16, currYear:I
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 221
    .local v15, currMon:I
    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 222
    .local v14, currDay:I
    const/16 v7, 0xb

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 224
    .local v22, hourOfDay:I
    const/16 v24, 0x0

    .local v24, j:I
    :goto_0
    const/4 v7, 0x5

    move/from16 v0, v24

    if-ge v0, v7, :cond_0

    .line 225
    move/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 226
    const/4 v7, 0x5

    move/from16 v0, v24

    neg-int v8, v0

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 227
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 228
    .local v4, alarmYear:I
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 229
    .local v5, alarmMonth:I
    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 231
    .local v6, alarmDay:I
    move/from16 v0, v16

    mul-int/lit16 v7, v0, 0x2710

    mul-int/lit8 v8, v15, 0x64

    add-int/2addr v7, v8

    add-int/2addr v7, v14

    mul-int/lit16 v8, v4, 0x2710

    mul-int/lit8 v9, v5, 0x64

    add-int/2addr v8, v9

    add-int/2addr v8, v6

    if-gt v7, v8, :cond_0

    .line 234
    const/16 v23, 0x0

    .line 235
    .local v23, isToday:Z
    move/from16 v0, v16

    if-ne v0, v4, :cond_3

    if-ne v15, v5, :cond_3

    if-ne v14, v6, :cond_3

    .line 236
    const/16 v23, 0x1

    .line 238
    :cond_3
    const/4 v12, 0x0

    .line 239
    .local v12, str:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUsdNewBalance()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_8

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07015b

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v13

    const/4 v13, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v13

    const/4 v13, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v13

    const/4 v13, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    aput-object v25, v9, v13

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 250
    :goto_1
    const-string v7, "Alarm"

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz v23, :cond_4

    if-eqz v23, :cond_5

    const/16 v7, 0x9

    move/from16 v0, v22

    if-ge v0, v7, :cond_5

    .line 252
    :cond_4
    const/16 v7, 0x9

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 253
    const-string v7, "Alarm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " 09:00"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v13, 0x9

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v13

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v13}, Lcom/zhangdan/app/alarm/AlarmUtil;->startAlarm(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;I)V

    .line 258
    :cond_5
    if-eqz v23, :cond_6

    if-eqz v23, :cond_7

    const/16 v7, 0x14

    move/from16 v0, v22

    if-ge v0, v7, :cond_7

    .line 259
    :cond_6
    const/16 v7, 0x14

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 260
    const-string v7, "Alarm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " 20:00"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v13, 0x14

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v13

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v13}, Lcom/zhangdan/app/alarm/AlarmUtil;->startAlarm(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;I)V

    .line 224
    :cond_7
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 245
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07015b

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v13

    const/4 v13, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v13

    const/4 v13, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v13

    const/4 v13, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    aput-object v25, v9, v13

    const/4 v13, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUsdNewBalance()F

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    aput-object v25, v9, v13

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1
.end method
