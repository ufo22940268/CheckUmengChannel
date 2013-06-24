.class public Lcom/zhangdan/app/data/db/util/BankDbUtil;
.super Ljava/lang/Object;
.source "BankDbUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructValues(Lcom/zhangdan/app/data/model/http/Bank;)Landroid/content/ContentValues;
    .locals 3
    .parameter "data"

    .prologue
    .line 94
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "bank_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bank;->getBankId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string v1, "bank_name"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bank;->getBankName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "simple_name"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bank;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "full_name"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bank;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "logo"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bank;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "short_tel"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bank;->getShortTel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "long_tel"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bank;->getLongTel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "max_free_peirod"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bank;->getMaxFreePeriod()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v1, "order_index"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bank;->getOrderIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v1, "point_mall"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bank;->getPointMall()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-object v0
.end method

.method public static loadAllBankInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 16
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BankInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BankInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zhangdan/app/data/db/table/BankField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "order_index ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 119
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    new-instance v9, Lcom/zhangdan/app/data/model/BankInfo;

    invoke-direct {v9}, Lcom/zhangdan/app/data/model/BankInfo;-><init>()V

    .line 122
    .local v9, data:Lcom/zhangdan/app/data/model/BankInfo;
    const-string v0, "bank_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 123
    .local v6, bankId:I
    const-string v0, "bank_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, bankName:Ljava/lang/String;
    const-string v0, "simple_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, simpleName:Ljava/lang/String;
    const-string v0, "full_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, fullName:Ljava/lang/String;
    const-string v0, "max_free_peirod"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 127
    .local v12, maxFreePeriod:I
    const-string v0, "point_mall"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 128
    .local v14, pointMall:Ljava/lang/String;
    const-string v0, "order_index"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 129
    .local v13, orderIndex:I
    invoke-virtual {v9, v6}, Lcom/zhangdan/app/data/model/BankInfo;->setBankId(I)V

    .line 130
    invoke-virtual {v9, v7}, Lcom/zhangdan/app/data/model/BankInfo;->setBankName(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v9, v15}, Lcom/zhangdan/app/data/model/BankInfo;->setSimpleName(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v9, v10}, Lcom/zhangdan/app/data/model/BankInfo;->setFullName(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v9, v12}, Lcom/zhangdan/app/data/model/BankInfo;->setMaxFreePeriod(I)V

    .line 134
    invoke-virtual {v9, v14}, Lcom/zhangdan/app/data/model/BankInfo;->setPointMall(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v9, v13}, Lcom/zhangdan/app/data/model/BankInfo;->setOrderIndex(I)V

    .line 136
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 140
    .end local v6           #bankId:I
    .end local v7           #bankName:Ljava/lang/String;
    .end local v9           #data:Lcom/zhangdan/app/data/model/BankInfo;
    .end local v10           #fullName:Ljava/lang/String;
    .end local v12           #maxFreePeriod:I
    .end local v13           #orderIndex:I
    .end local v14           #pointMall:Ljava/lang/String;
    .end local v15           #simpleName:Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    .line 141
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_2
    return-object v11

    .line 140
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 141
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static saveBankList(Landroid/content/Context;Ljava/util/List;)V
    .locals 21
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Bank;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bank;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 40
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v18, opsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v13, existIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 43
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .local v19, sb:Ljava/lang/StringBuffer;
    const-string v2, "bank_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " in("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zhangdan/app/data/model/http/Bank;

    .line 46
    .local v7, bank:Lcom/zhangdan/app/data/model/http/Bank;
    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/http/Bank;->getBankId()I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 48
    .end local v7           #bank:Lcom/zhangdan/app/data/model/http/Bank;
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 49
    const-string v2, ")"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    sget-object v2, Lcom/zhangdan/app/data/db/table/BankField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "bank_id"

    aput-object v5, v3, v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 53
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 55
    :cond_3
    const-string v2, "bank_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 56
    .local v8, bankId:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 60
    .end local v8           #bankId:I
    :cond_4
    if-eqz v10, :cond_5

    .line 61
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 65
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v19           #sb:Ljava/lang/StringBuffer;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/data/model/http/Bank;

    .line 66
    .local v11, data:Lcom/zhangdan/app/data/model/http/Bank;
    invoke-static {v11}, Lcom/zhangdan/app/data/db/util/BankDbUtil;->constructValues(Lcom/zhangdan/app/data/model/http/Bank;)Landroid/content/ContentValues;

    move-result-object v20

    .line 67
    .local v20, values:Landroid/content/ContentValues;
    invoke-virtual {v11}, Lcom/zhangdan/app/data/model/http/Bank;->getBankId()I

    move-result v8

    .line 68
    .restart local v8       #bankId:I
    const/4 v14, 0x0

    .line 69
    .local v14, flag:Z
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 70
    .local v17, id:I
    move/from16 v0, v17

    if-ne v8, v0, :cond_6

    .line 71
    const/4 v14, 0x1

    .line 75
    .end local v17           #id:I
    :cond_7
    const/4 v9, 0x0

    .line 76
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v14, :cond_9

    .line 77
    sget-object v2, Lcom/zhangdan/app/data/db/table/BankField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bank_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 81
    :goto_3
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 60
    .end local v8           #bankId:I
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #data:Lcom/zhangdan/app/data/model/http/Bank;
    .end local v14           #flag:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v20           #values:Landroid/content/ContentValues;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v19       #sb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_8

    .line 61
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 79
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v19           #sb:Ljava/lang/StringBuffer;
    .restart local v8       #bankId:I
    .restart local v9       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v11       #data:Lcom/zhangdan/app/data/model/http/Bank;
    .restart local v14       #flag:Z
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_9
    sget-object v2, Lcom/zhangdan/app/data/db/table/BankField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    goto :goto_3

    .line 85
    .end local v8           #bankId:I
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #data:Lcom/zhangdan/app/data/model/http/Bank;
    .end local v14           #flag:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_a
    :try_start_1
    const-string v2, "com.zhangdan.app"

    move-object/from16 v0, v18

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 86
    :catch_0
    move-exception v12

    .line 87
    .local v12, e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 88
    .end local v12           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v12

    .line 89
    .local v12, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method
