.class public Lcom/zhangdan/app/service/SmsService;
.super Landroid/app/IntentService;
.source "SmsService.java"


# static fields
.field public static final IS_SCAN_ALL:Ljava/lang/String; = "is_scan_all"

.field public static final SCAN_FINISH:Ljava/lang/String; = "scan_finish"

.field public static final SCAN_PROCESS:Ljava/lang/String; = "scan_process"

.field public static final SCAN_START:Ljava/lang/String; = "scan_start"


# instance fields
.field private billList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;"
        }
    .end annotation
.end field

.field private isStartScan:Z

.field private smsBillList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zhangdan/app/sms/SmsBillData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "SmsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/service/SmsService;->billList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/service/SmsService;->smsBillList:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/service/SmsService;->isStartScan:Z

    .line 37
    return-void
.end method

.method private declared-synchronized startScanSms(Z)Z
    .locals 21
    .parameter "isScanAll"

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 41
    .local v2, resolver:Landroid/content/ContentResolver;
    const-wide/16 v18, 0x0

    .line 42
    .local v18, smsTime:J
    if-nez p1, :cond_0

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/app/util/SharedPreferencesUtil;->getSmsTime(Landroid/content/Context;)J

    move-result-wide v18

    .line 44
    :cond_0
    const-string v3, "content://sms/inbox"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "address"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "body"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "date"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date asc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 46
    .local v9, cursor:Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 47
    .local v20, sum:I
    const/16 v16, 0x0

    .line 49
    .local v16, result:Z
    if-eqz v9, :cond_4

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 51
    :cond_1
    new-instance v17, Lcom/zhangdan/app/sms/SmsData;

    invoke-direct/range {v17 .. v17}, Lcom/zhangdan/app/sms/SmsData;-><init>()V

    .line 52
    .local v17, sms:Lcom/zhangdan/app/sms/SmsData;
    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 53
    .local v13, id:Ljava/lang/String;
    const-string v3, "address"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 55
    .local v15, phone:Ljava/lang/String;
    const-string v3, "body"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 57
    .local v8, body:Ljava/lang/String;
    const-string v3, "date"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 59
    .local v10, date:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/zhangdan/app/sms/SmsData;->setSmsbody(Ljava/lang/String;)V

    .line 60
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/zhangdan/app/sms/SmsData;->setPhoneNumber(Ljava/lang/String;)V

    .line 61
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/zhangdan/app/sms/SmsData;->setId(J)V

    .line 62
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/zhangdan/app/sms/SmsData;->setDate(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    const/4 v12, 0x0

    .line 65
    .local v12, flag:Z
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zhangdan/app/service/SmsService;->billList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zhangdan/app/service/SmsService;->smsBillList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-static {v3, v0, v4, v5}, Lcom/zhangdan/app/sms/ParseSms;->parseSms(Landroid/content/Context;Lcom/zhangdan/app/sms/SmsData;Ljava/util/List;Ljava/util/List;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v12

    .line 69
    if-eqz v12, :cond_2

    .line 70
    const/16 v16, 0x1

    .line 71
    :cond_2
    :try_start_3
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v14, intent:Landroid/content/Intent;
    const-string v3, "update_sms"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v3, "sms_list"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zhangdan/app/service/SmsService;->smsBillList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 74
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zhangdan/app/service/SmsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    add-int/lit8 v20, v20, 0x1

    .line 76
    const/16 v3, 0x1f4

    move/from16 v0, v20

    if-ne v0, v3, :cond_3

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zhangdan/app/service/SmsService;->billList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->saveBillDataList(Landroid/content/Context;Ljava/util/List;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zhangdan/app/service/SmsService;->billList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 79
    const/16 v20, 0x0

    .line 81
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/zhangdan/app/util/SharedPreferencesUtil;->putSmsTime(Landroid/content/Context;J)V

    .line 84
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 87
    .end local v8           #body:Ljava/lang/String;
    .end local v10           #date:Ljava/lang/String;
    .end local v12           #flag:Z
    .end local v13           #id:Ljava/lang/String;
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #phone:Ljava/lang/String;
    .end local v17           #sms:Lcom/zhangdan/app/sms/SmsData;
    :cond_4
    if-eqz v9, :cond_5

    .line 88
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zhangdan/app/service/SmsService;->billList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->saveBillDataList(Landroid/content/Context;Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 92
    monitor-exit p0

    return v16

    .line 66
    .restart local v8       #body:Ljava/lang/String;
    .restart local v10       #date:Ljava/lang/String;
    .restart local v12       #flag:Z
    .restart local v13       #id:Ljava/lang/String;
    .restart local v15       #phone:Ljava/lang/String;
    .restart local v17       #sms:Lcom/zhangdan/app/sms/SmsData;
    :catch_0
    move-exception v11

    .line 67
    .local v11, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 69
    if-eqz v12, :cond_6

    .line 70
    const/16 v16, 0x1

    .line 71
    :cond_6
    :try_start_6
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 72
    .restart local v14       #intent:Landroid/content/Intent;
    const-string v3, "update_sms"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v3, "sms_list"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zhangdan/app/service/SmsService;->smsBillList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 74
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zhangdan/app/service/SmsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    add-int/lit8 v20, v20, 0x1

    .line 76
    const/16 v3, 0x1f4

    move/from16 v0, v20

    if-ne v0, v3, :cond_7

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zhangdan/app/service/SmsService;->billList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->saveBillDataList(Landroid/content/Context;Ljava/util/List;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zhangdan/app/service/SmsService;->billList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 79
    const/16 v20, 0x0

    .line 81
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/zhangdan/app/util/SharedPreferencesUtil;->putSmsTime(Landroid/content/Context;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 87
    .end local v8           #body:Ljava/lang/String;
    .end local v10           #date:Ljava/lang/String;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v12           #flag:Z
    .end local v13           #id:Ljava/lang/String;
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #phone:Ljava/lang/String;
    .end local v17           #sms:Lcom/zhangdan/app/sms/SmsData;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_8

    .line 88
    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zhangdan/app/service/SmsService;->billList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->saveBillDataList(Landroid/content/Context;Ljava/util/List;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 40
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v16           #result:Z
    .end local v18           #smsTime:J
    .end local v20           #sum:I
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 69
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v8       #body:Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v10       #date:Ljava/lang/String;
    .restart local v12       #flag:Z
    .restart local v13       #id:Ljava/lang/String;
    .restart local v15       #phone:Ljava/lang/String;
    .restart local v16       #result:Z
    .restart local v17       #sms:Lcom/zhangdan/app/sms/SmsData;
    .restart local v18       #smsTime:J
    .restart local v20       #sum:I
    :catchall_2
    move-exception v3

    if-eqz v12, :cond_9

    .line 70
    const/16 v16, 0x1

    .line 71
    :cond_9
    :try_start_8
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 72
    .restart local v14       #intent:Landroid/content/Intent;
    const-string v4, "update_sms"

    invoke-virtual {v14, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v4, "sms_list"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zhangdan/app/service/SmsService;->smsBillList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 74
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zhangdan/app/service/SmsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    add-int/lit8 v20, v20, 0x1

    .line 76
    const/16 v4, 0x1f4

    move/from16 v0, v20

    if-ne v0, v4, :cond_a

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zhangdan/app/service/SmsService;->billList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->saveBillDataList(Landroid/content/Context;Ljava/util/List;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zhangdan/app/service/SmsService;->billList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 79
    const/16 v20, 0x0

    .line 81
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/zhangdan/app/util/SharedPreferencesUtil;->putSmsTime(Landroid/content/Context;J)V

    .line 82
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "scan_finish"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/service/SmsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    iget-object v1, p0, Lcom/zhangdan/app/service/SmsService;->billList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 129
    iget-object v1, p0, Lcom/zhangdan/app/service/SmsService;->smsBillList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 130
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 131
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 98
    iget-boolean v7, p0, Lcom/zhangdan/app/service/SmsService;->isStartScan:Z

    if-eqz v7, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/zhangdan/app/service/SmsService;->isStartScan:Z

    .line 101
    const-string v7, "is_scan_all"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 102
    .local v5, isScanAll:Z
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->initSmsRegex(Landroid/content/Context;)V

    .line 103
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v4, intent1:Landroid/content/Intent;
    const-string v7, "scan_start"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v4}, Lcom/zhangdan/app/service/SmsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    invoke-direct {p0, v5}, Lcom/zhangdan/app/service/SmsService;->startScanSms(Z)Z

    move-result v2

    .line 107
    .local v2, flag:Z
    if-eqz v2, :cond_2

    .line 109
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v3, i:Landroid/content/Intent;
    const-class v7, Lcom/zhangdan/app/service/ReadLocalDataService;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v3}, Lcom/zhangdan/app/service/SmsService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 114
    .end local v3           #i:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 115
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v1

    .line 116
    .local v1, dataMgr:Lcom/zhangdan/app/global/DataManager;
    invoke-virtual {v1}, Lcom/zhangdan/app/global/DataManager;->isFakeData()Z

    move-result v7

    if-nez v7, :cond_0

    .line 117
    invoke-virtual {v1}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v6

    .line 118
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    invoke-virtual {p0}, Lcom/zhangdan/app/service/SmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lcom/zhangdan/app/global/DataManager;->calcUnBilledAmount(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method
