.class public Lcom/zhangdan/app/data/db/util/MailBillRecordDbUtil;
.super Ljava/lang/Object;
.source "MailBillRecordDbUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructValues(Lcom/zhangdan/app/data/model/http/MailBillInfo;)Landroid/content/ContentValues;
    .locals 4
    .parameter "data"

    .prologue
    .line 94
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "mail_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getMailId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    const-string v1, "mail_account_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getMailAccountId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string v1, "mail_subject"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getMailSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "state_msg"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getStateMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "analyse_time"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getAnalyseTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "create_time"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "send_time"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getSendTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "email_name"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getEmailName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-object v0
.end method

.method public static deleteBillRecord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "emailName"

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/MailBillRecordeField;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "email_name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public static loadAllBillRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 23
    .parameter "context"
    .parameter "emailName"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zhangdan/app/data/model/http/MailBillInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v15, mailBills:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zhangdan/app/data/model/http/MailBillInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 117
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/zhangdan/app/data/db/table/MailBillRecordeField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "email_name = ? and user_id = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const-string v7, "send_time asc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 119
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    :cond_0
    new-instance v14, Lcom/zhangdan/app/data/model/http/MailBillInfo;

    invoke-direct {v14}, Lcom/zhangdan/app/data/model/http/MailBillInfo;-><init>()V

    .line 122
    .local v14, maiBill:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    const-string v3, "mail_account_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 123
    .local v8, accId:J
    const-string v3, "mail_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 124
    .local v16, mailId:J
    const-string v3, "user_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 125
    .local v21, userId:J
    const-string v3, "state_msg"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 126
    .local v20, status:Ljava/lang/String;
    const-string v3, "mail_subject"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 127
    .local v18, mailSubjct:Ljava/lang/String;
    const-string v3, "analyse_time"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, analyseTime:Ljava/lang/String;
    const-string v3, "create_time"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 129
    .local v11, createTime:Ljava/lang/String;
    const-string v3, "send_time"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 130
    .local v19, sendTime:Ljava/lang/String;
    move-wide/from16 v0, v21

    invoke-virtual {v14, v0, v1}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setUserId(J)V

    .line 131
    invoke-virtual {v14, v8, v9}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setMailAccountId(J)V

    .line 132
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setMailId(J)V

    .line 133
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setMailSubject(Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setStateMsg(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v14, v10}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setAnalyseTime(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v14, v11}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setCreateTime(Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->setSendTime(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 144
    .end local v8           #accId:J
    .end local v10           #analyseTime:Ljava/lang/String;
    .end local v11           #createTime:Ljava/lang/String;
    .end local v14           #maiBill:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    .end local v16           #mailId:J
    .end local v18           #mailSubjct:Ljava/lang/String;
    .end local v19           #sendTime:Ljava/lang/String;
    .end local v20           #status:Ljava/lang/String;
    .end local v21           #userId:J
    :cond_1
    if-eqz v12, :cond_2

    .line 145
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 146
    const/4 v12, 0x0

    .line 149
    :cond_2
    :goto_0
    return-object v15

    .line 141
    :catch_0
    move-exception v13

    .line 142
    .local v13, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    if-eqz v12, :cond_2

    .line 145
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 146
    const/4 v12, 0x0

    goto :goto_0

    .line 144
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_3

    .line 145
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 146
    const/4 v12, 0x0

    :cond_3
    throw v3
.end method

.method public static saveBillRecordList(Landroid/content/Context;Ljava/util/List;)V
    .locals 24
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/MailBillInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/MailBillInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v21, opsLis:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 38
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v12, existIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 40
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v22, sb:Ljava/lang/StringBuffer;
    const-string v3, "mail_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " in("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/zhangdan/app/data/model/http/MailBillInfo;

    .line 43
    .local v18, mailBill:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    invoke-virtual/range {v18 .. v18}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getMailId()J

    move-result-wide v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 45
    .end local v18           #mailBill:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    :cond_2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 46
    const-string v3, ")"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    sget-object v3, Lcom/zhangdan/app/data/db/table/MailBillRecordeField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "mail_id"

    aput-object v6, v4, v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 50
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 52
    :cond_3
    const-string v3, "mail_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 53
    .local v19, mailId:J
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 57
    .end local v19           #mailId:J
    :cond_4
    if-eqz v9, :cond_5

    .line 58
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v14           #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zhangdan/app/data/model/http/MailBillInfo;

    .line 63
    .local v10, data:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    invoke-static {v10}, Lcom/zhangdan/app/data/db/util/MailBillRecordDbUtil;->constructValues(Lcom/zhangdan/app/data/model/http/MailBillInfo;)Landroid/content/ContentValues;

    move-result-object v23

    .line 64
    .local v23, values:Landroid/content/ContentValues;
    invoke-virtual {v10}, Lcom/zhangdan/app/data/model/http/MailBillInfo;->getMailId()J

    move-result-wide v19

    .line 65
    .restart local v19       #mailId:J
    const/4 v13, 0x0

    .line 66
    .local v13, flag:Z
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 67
    .local v16, id:J
    cmp-long v3, v19, v16

    if-nez v3, :cond_6

    .line 68
    const/4 v13, 0x1

    .line 72
    .end local v16           #id:J
    :cond_7
    const/4 v8, 0x0

    .line 73
    .local v8, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v13, :cond_9

    .line 74
    sget-object v3, Lcom/zhangdan/app/data/db/table/MailBillRecordeField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mail_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 80
    :goto_3
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 57
    .end local v8           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #data:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    .end local v13           #flag:Z
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v19           #mailId:J
    .end local v23           #values:Landroid/content/ContentValues;
    .restart local v14       #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_8

    .line 58
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .line 77
    .end local v14           #i$:Ljava/util/Iterator;
    .restart local v8       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v10       #data:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    .restart local v13       #flag:Z
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v19       #mailId:J
    .restart local v23       #values:Landroid/content/ContentValues;
    :cond_9
    sget-object v3, Lcom/zhangdan/app/data/db/table/MailBillRecordeField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    goto :goto_3

    .line 83
    .end local v8           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #data:Lcom/zhangdan/app/data/model/http/MailBillInfo;
    .end local v13           #flag:Z
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v19           #mailId:J
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_a
    :try_start_1
    const-string v3, "com.zhangdan.app"

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 84
    :catch_0
    move-exception v11

    .line 85
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 86
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    .line 87
    .local v11, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v11}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method
