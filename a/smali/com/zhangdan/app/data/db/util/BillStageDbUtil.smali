.class public Lcom/zhangdan/app/data/db/util/BillStageDbUtil;
.super Ljava/lang/Object;
.source "BillStageDbUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructValues(Lcom/zhangdan/app/data/model/http/BillStages;)Landroid/content/ContentValues;
    .locals 4
    .parameter "data"

    .prologue
    .line 92
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 93
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/BillStages;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    const-string v1, "ub_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/BillStages;->getUbId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    const-string v1, "bill_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/BillStages;->getBillId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const-string v1, "bank_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/BillStages;->getBankId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v1, "bill_date"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/BillStages;->getBillDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "stages"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/BillStages;->getStages()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v0
.end method

.method public static loadAllBillStages(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BillStages;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/BillStageField;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "user_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BillStages;>;"
    :cond_0
    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/BillStageDbUtil;->parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/http/BillStages;

    move-result-object v7

    .line 117
    .local v7, data:Lcom/zhangdan/app/data/model/http/BillStages;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 122
    if-eqz v6, :cond_1

    .line 123
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 125
    .end local v7           #data:Lcom/zhangdan/app/data/model/http/BillStages;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BillStages;>;"
    :cond_1
    :goto_0
    return-object v8

    .line 122
    :cond_2
    if-eqz v6, :cond_3

    .line 123
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v2

    .line 125
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 123
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private static parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/http/BillStages;
    .locals 11
    .parameter "c"

    .prologue
    .line 129
    new-instance v4, Lcom/zhangdan/app/data/model/http/BillStages;

    invoke-direct {v4}, Lcom/zhangdan/app/data/model/http/BillStages;-><init>()V

    .line 130
    .local v4, data:Lcom/zhangdan/app/data/model/http/BillStages;
    const-string v10, "user_id"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 131
    .local v8, uid:J
    const-string v10, "bill_id"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 132
    .local v2, billId:J
    const-string v10, "bank_id"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 133
    .local v0, bankId:I
    const-string v10, "ub_id"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 134
    .local v6, ubId:J
    const-string v10, "bill_date"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, billDate:Ljava/lang/String;
    const-string v10, "stages"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, stages:Ljava/lang/String;
    invoke-virtual {v4, v8, v9}, Lcom/zhangdan/app/data/model/http/BillStages;->setUserId(J)V

    .line 137
    invoke-virtual {v4, v2, v3}, Lcom/zhangdan/app/data/model/http/BillStages;->setBillId(J)V

    .line 138
    invoke-virtual {v4, v0}, Lcom/zhangdan/app/data/model/http/BillStages;->setBankId(I)V

    .line 139
    invoke-virtual {v4, v6, v7}, Lcom/zhangdan/app/data/model/http/BillStages;->setUbId(J)V

    .line 140
    invoke-virtual {v4, v1}, Lcom/zhangdan/app/data/model/http/BillStages;->setBillDate(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v4, v5}, Lcom/zhangdan/app/data/model/http/BillStages;->setStages(Ljava/lang/String;)V

    .line 142
    return-object v4
.end method

.method public static queryBillStageByUbId(Landroid/content/Context;J)Lcom/zhangdan/app/data/model/http/BillStages;
    .locals 10
    .parameter "context"
    .parameter "ubId"

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 155
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/BillStageField;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "ub_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 157
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/BillStageDbUtil;->parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/http/BillStages;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 162
    .local v7, data:Lcom/zhangdan/app/data/model/http/BillStages;
    if-eqz v6, :cond_0

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 165
    .end local v7           #data:Lcom/zhangdan/app/data/model/http/BillStages;
    :cond_0
    :goto_0
    return-object v7

    .line 162
    :cond_1
    if-eqz v6, :cond_2

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, v2

    .line 165
    goto :goto_0

    .line 162
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static saveBillStageList(Landroid/content/Context;Ljava/util/List;)V
    .locals 23
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BillStages;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, billStageList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BillStages;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 37
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v18, opsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v12, existIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 40
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v19, sb:Ljava/lang/StringBuffer;
    const-string v3, "ub_id"

    move-object/from16 v0, v19

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

    move-result-object v10

    check-cast v10, Lcom/zhangdan/app/data/model/http/BillStages;

    .line 43
    .local v10, data:Lcom/zhangdan/app/data/model/http/BillStages;
    invoke-virtual {v10}, Lcom/zhangdan/app/data/model/http/BillStages;->getUbId()J

    move-result-wide v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 45
    .end local v10           #data:Lcom/zhangdan/app/data/model/http/BillStages;
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 46
    const-string v3, ")"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    sget-object v3, Lcom/zhangdan/app/data/db/table/BillStageField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ub_id"

    aput-object v6, v4, v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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
    const-string v3, "ub_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v20, v0

    .line 53
    .local v20, ubId:J
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 57
    .end local v20           #ubId:J
    :cond_4
    if-eqz v9, :cond_5

    .line 58
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 62
    .end local v9           #c:Landroid/database/Cursor;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v19           #sb:Ljava/lang/StringBuffer;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zhangdan/app/data/model/http/BillStages;

    .line 63
    .restart local v10       #data:Lcom/zhangdan/app/data/model/http/BillStages;
    invoke-static {v10}, Lcom/zhangdan/app/data/db/util/BillStageDbUtil;->constructValues(Lcom/zhangdan/app/data/model/http/BillStages;)Landroid/content/ContentValues;

    move-result-object v22

    .line 64
    .local v22, values:Landroid/content/ContentValues;
    invoke-virtual {v10}, Lcom/zhangdan/app/data/model/http/BillStages;->getUbId()J

    move-result-wide v20

    .line 65
    .restart local v20       #ubId:J
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
    cmp-long v3, v20, v16

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
    sget-object v3, Lcom/zhangdan/app/data/db/table/BillStageField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ub_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 78
    :goto_3
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 57
    .end local v8           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #data:Lcom/zhangdan/app/data/model/http/BillStages;
    .end local v13           #flag:Z
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #ubId:J
    .end local v22           #values:Landroid/content/ContentValues;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v19       #sb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_8

    .line 58
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .line 76
    .end local v9           #c:Landroid/database/Cursor;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v19           #sb:Ljava/lang/StringBuffer;
    .restart local v8       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v10       #data:Lcom/zhangdan/app/data/model/http/BillStages;
    .restart local v13       #flag:Z
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v20       #ubId:J
    .restart local v22       #values:Landroid/content/ContentValues;
    :cond_9
    sget-object v3, Lcom/zhangdan/app/data/db/table/BillStageField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    goto :goto_3

    .line 82
    .end local v8           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #data:Lcom/zhangdan/app/data/model/http/BillStages;
    .end local v13           #flag:Z
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #ubId:J
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_a
    :try_start_1
    const-string v3, "com.zhangdan.app"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 83
    :catch_0
    move-exception v11

    .line 84
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 85
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    .line 86
    .local v11, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v11}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method
