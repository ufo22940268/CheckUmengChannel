.class public Lcom/zhangdan/app/data/db/util/ChartDbUtil;
.super Ljava/lang/Object;
.source "ChartDbUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructValues(Lcom/zhangdan/app/data/model/http/ChartInfo;)Landroid/content/ContentValues;
    .locals 4
    .parameter "data"

    .prologue
    .line 98
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ChartInfo;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    const-string v1, "year"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ChartInfo;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v1, "val"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ChartInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v0
.end method

.method public static getAllChartInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 13
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
            "Lcom/zhangdan/app/data/model/http/ChartInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/ChartField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "year"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 116
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ChartInfo;>;"
    :cond_0
    const-string v1, "user_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 120
    .local v9, uid:J
    const-string v1, "year"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 121
    .local v12, year:I
    const-string v1, "val"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 122
    .local v11, val:Ljava/lang/String;
    new-instance v7, Lcom/zhangdan/app/data/model/http/ChartInfo;

    invoke-direct {v7}, Lcom/zhangdan/app/data/model/http/ChartInfo;-><init>()V

    .line 123
    .local v7, data:Lcom/zhangdan/app/data/model/http/ChartInfo;
    invoke-virtual {v7, v9, v10}, Lcom/zhangdan/app/data/model/http/ChartInfo;->setUserId(J)V

    .line 124
    invoke-virtual {v7, v12}, Lcom/zhangdan/app/data/model/http/ChartInfo;->setYear(I)V

    .line 125
    invoke-virtual {v7, v11}, Lcom/zhangdan/app/data/model/http/ChartInfo;->setValue(Ljava/lang/String;)V

    .line 126
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 131
    if-eqz v6, :cond_1

    .line 132
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 134
    .end local v7           #data:Lcom/zhangdan/app/data/model/http/ChartInfo;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ChartInfo;>;"
    .end local v9           #uid:J
    .end local v11           #val:Ljava/lang/String;
    .end local v12           #year:I
    :cond_1
    :goto_0
    return-object v8

    .line 131
    :cond_2
    if-eqz v6, :cond_3

    .line 132
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v2

    .line 134
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 132
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static saveChartList(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 23
    .parameter "context"
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/ChartInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ChartInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v18, opsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 37
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v13, existIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 39
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v19, sb:Ljava/lang/StringBuffer;
    const-string v3, "year"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " in("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zhangdan/app/data/model/http/ChartInfo;

    .line 42
    .local v10, chart:Lcom/zhangdan/app/data/model/http/ChartInfo;
    invoke-virtual {v10}, Lcom/zhangdan/app/data/model/http/ChartInfo;->getYear()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 44
    .end local v10           #chart:Lcom/zhangdan/app/data/model/http/ChartInfo;
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 45
    const-string v3, ")"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    const-string v3, " and "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "user_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    sget-object v3, Lcom/zhangdan/app/data/db/table/ChartField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "year"

    aput-object v6, v4, v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 51
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 53
    :cond_3
    const-string v3, "year"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 54
    .local v21, year:I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 58
    .end local v21           #year:I
    :cond_4
    if-eqz v9, :cond_5

    .line 59
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 65
    .end local v9           #c:Landroid/database/Cursor;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v19           #sb:Ljava/lang/StringBuffer;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/data/model/http/ChartInfo;

    .line 66
    .local v11, data:Lcom/zhangdan/app/data/model/http/ChartInfo;
    invoke-static {v11}, Lcom/zhangdan/app/data/db/util/ChartDbUtil;->constructValues(Lcom/zhangdan/app/data/model/http/ChartInfo;)Landroid/content/ContentValues;

    move-result-object v20

    .line 67
    .local v20, values:Landroid/content/ContentValues;
    invoke-virtual {v11}, Lcom/zhangdan/app/data/model/http/ChartInfo;->getYear()I

    move-result v21

    .line 68
    .restart local v21       #year:I
    const/4 v14, 0x0

    .line 69
    .local v14, flag:Z
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 70
    .local v17, id:I
    move/from16 v0, v21

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 71
    const/4 v14, 0x1

    .line 76
    .end local v17           #id:I
    :cond_7
    const/4 v8, 0x0

    .line 77
    .local v8, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v14, :cond_9

    .line 78
    sget-object v3, Lcom/zhangdan/app/data/db/table/ChartField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "year = ? and user_id = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 85
    :goto_3
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 58
    .end local v8           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #data:Lcom/zhangdan/app/data/model/http/ChartInfo;
    .end local v14           #flag:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v20           #values:Landroid/content/ContentValues;
    .end local v21           #year:I
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v19       #sb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_8

    .line 59
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .line 83
    .end local v9           #c:Landroid/database/Cursor;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v19           #sb:Ljava/lang/StringBuffer;
    .restart local v8       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v11       #data:Lcom/zhangdan/app/data/model/http/ChartInfo;
    .restart local v14       #flag:Z
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v20       #values:Landroid/content/ContentValues;
    .restart local v21       #year:I
    :cond_9
    sget-object v3, Lcom/zhangdan/app/data/db/table/ChartField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    goto :goto_3

    .line 89
    .end local v8           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #data:Lcom/zhangdan/app/data/model/http/ChartInfo;
    .end local v14           #flag:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v20           #values:Landroid/content/ContentValues;
    .end local v21           #year:I
    :cond_a
    :try_start_1
    const-string v3, "com.zhangdan.app"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 90
    :catch_0
    move-exception v12

    .line 91
    .local v12, e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 92
    .end local v12           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v12

    .line 93
    .local v12, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method
