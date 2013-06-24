.class public Lcom/zhangdan/app/data/db/util/ShoppingSheetDbUtil;
.super Ljava/lang/Object;
.source "ShoppingSheetDbUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructValues(Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;)Landroid/content/ContentValues;
    .locals 4
    .parameter "data"

    .prologue
    .line 97
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "auto_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getAutoId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    const-string v1, "bank_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getBankId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v1, "bill_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getBillId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v1, "trans_date"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getTransDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "post_date"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getPostDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "discription"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getDiscription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "trans_type"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getTransType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "currency_type"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getCurrencyType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v1, "category_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getCategoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v1, "amount_money"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getAmountMoney()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "trans_org_amount"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getTransOrgamount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "trans_addr"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getTransAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "card_no"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getCardNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "create_time"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "last_modify_time"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getLastModifyTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "has_remark"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getHasRemark()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v1, "custom_category_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getCustomeCategoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v1, "remark"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getRemark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "mood_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getMoodId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v1, "store_name"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-object v0
.end method

.method public static deleteShoppingSheetByBillIds(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, billIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 161
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v5, opsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x0

    .line 163
    .local v4, ops:Landroid/content/ContentProviderOperation;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    .local v0, billId:Ljava/lang/String;
    sget-object v6, Lcom/zhangdan/app/data/db/table/ShoppingSheetField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "bill_id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 165
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    .end local v0           #billId:Ljava/lang/String;
    :cond_2
    :try_start_0
    const-string v6, "com.zhangdan.app"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 172
    .local v2, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v2}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSlotCardRecord(Landroid/content/Context;J)Ljava/util/List;
    .locals 16
    .parameter "context"
    .parameter "billid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v13, slotList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zhangdan/app/data/db/table/ShoppingSheetField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "category_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "amount_money"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "trans_date"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "discription"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "currency_type"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bill_id= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "trans_date desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 128
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    :cond_0
    new-instance v12, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;

    invoke-direct {v12}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;-><init>()V

    .line 131
    .local v12, record:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    const-string v2, "category_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 132
    .local v10, id:I
    invoke-virtual {v12, v10}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setCategoryId(I)V

    .line 133
    const-string v2, "discription"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, discription:Ljava/lang/String;
    invoke-virtual {v12, v9}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setDiscription(Ljava/lang/String;)V

    .line 135
    const-string v2, "amount_money"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 136
    .local v11, pay:Ljava/lang/String;
    invoke-virtual {v12, v11}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setAmountMoney(Ljava/lang/String;)V

    .line 137
    const-string v2, "trans_date"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 138
    .local v14, time:Ljava/lang/String;
    invoke-virtual {v12, v14}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setTransDate(Ljava/lang/String;)V

    .line 139
    const-string v2, "currency_type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 140
    .local v15, type:I
    invoke-virtual {v12, v15}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->setCurrencyType(I)V

    .line 141
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 145
    .end local v9           #discription:Ljava/lang/String;
    .end local v10           #id:I
    .end local v11           #pay:Ljava/lang/String;
    .end local v12           #record:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    .end local v14           #time:Ljava/lang/String;
    .end local v15           #type:I
    :cond_1
    if-eqz v8, :cond_2

    .line 146
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_2
    return-object v13

    .line 145
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_3

    .line 146
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private static parseShoppingSheetCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .locals 22
    .parameter "c"

    .prologue
    .line 265
    new-instance v12, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    invoke-direct {v12}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;-><init>()V

    .line 266
    .local v12, data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    const-string v21, "auto_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 267
    .local v3, autoId:J
    const-string v21, "bill_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 268
    .local v6, billId:J
    const-string v21, "bank_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 269
    .local v5, bankId:I
    const-string v21, "card_no"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 270
    .local v8, cardNo:Ljava/lang/String;
    const-string v21, "trans_date"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 271
    .local v20, transDate:Ljava/lang/String;
    const-string v21, "trans_addr"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 272
    .local v19, transAddr:Ljava/lang/String;
    const-string v21, "discription"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 273
    .local v13, desciption:Ljava/lang/String;
    const-string v21, "currency_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 274
    .local v10, currencyType:I
    const-string v21, "amount_money"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, amount:Ljava/lang/String;
    const-string v21, "category_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 276
    .local v9, categoryId:I
    const-string v21, "custom_category_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 277
    .local v11, customCategoryId:I
    const-string v21, "has_remark"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 278
    .local v14, hasRemark:I
    const-string v21, "store_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 279
    .local v18, storeName:Ljava/lang/String;
    const-string v21, "remark"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 280
    .local v17, remark:Ljava/lang/String;
    const-string v21, "mood_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 281
    .local v16, moodId:I
    const-string v21, "is_star"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 283
    .local v15, isStar:I
    invoke-virtual {v12, v3, v4}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setAutoId(J)V

    .line 284
    invoke-virtual {v12, v6, v7}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setBillId(J)V

    .line 285
    invoke-virtual {v12, v5}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setBankId(I)V

    .line 286
    invoke-virtual {v12, v8}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCardNo(Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setTransDate(Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setTransAddr(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v12, v13}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setDesciption(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v12, v10}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCurrencyType(I)V

    .line 291
    invoke-virtual {v12, v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setAmountMoney(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v12, v9}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCategoryId(I)V

    .line 293
    invoke-virtual {v12, v11}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setCustomCategoryId(I)V

    .line 294
    invoke-virtual {v12, v14}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setHasRemark(I)V

    .line 295
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setStoreName(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setRemark(Ljava/lang/String;)V

    .line 297
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setMoodId(I)V

    .line 298
    invoke-virtual {v12, v15}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setIsStar(I)V

    .line 300
    return-object v12
.end method

.method public static queryShoppingSheet(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 13
    .parameter "context"
    .parameter "userId"
    .parameter "start"
    .parameter "limit"
    .parameter "startDate"
    .parameter "endDate"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    .local p6, categoryList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p7, billIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 219
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "select * from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "ShoppingSheet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 220
    .local v11, sb:Ljava/lang/StringBuffer;
    const-string v2, " where "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "user_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-static/range {p4 .. p4}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p5 .. p5}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    const-string v2, " and "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "trans_date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " >= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string v2, " and "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "trans_date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " <= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    :cond_0
    if-eqz p6, :cond_3

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 226
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v12

    .line 227
    .local v12, size:I
    const-string v2, " and "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "category_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v12, :cond_2

    .line 229
    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 230
    add-int/lit8 v2, v12, -0x1

    if-ge v9, v2, :cond_1

    .line 231
    const-string v2, ","

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 233
    :cond_2
    const-string v2, ")"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    .end local v9           #i:I
    .end local v12           #size:I
    :cond_3
    if-eqz p7, :cond_6

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 236
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v12

    .line 237
    .restart local v12       #size:I
    const-string v2, " and "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "bill_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_1
    if-ge v9, v12, :cond_5

    .line 239
    move-object/from16 v0, p7

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 240
    add-int/lit8 v2, v12, -0x1

    if-ge v9, v2, :cond_4

    .line 241
    const-string v2, ","

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 243
    :cond_5
    const-string v2, ")"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    .end local v9           #i:I
    .end local v12           #size:I
    :cond_6
    const-string v2, " order by "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "trans_date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " desc limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    invoke-virtual {v11, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 247
    sget-object v2, Lcom/zhangdan/app/data/db/DataProvider;->CONTENT_RAW_QUERY_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 249
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_8

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 251
    :cond_7
    invoke-static {v7}, Lcom/zhangdan/app/data/db/util/ShoppingSheetDbUtil;->parseShoppingSheetCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    move-result-object v8

    .line 252
    .local v8, data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_7

    .line 256
    .end local v8           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    :cond_8
    if-eqz v7, :cond_9

    .line 257
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 258
    const/4 v7, 0x0

    .line 261
    :cond_9
    return-object v10

    .line 256
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_a

    .line 257
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 258
    const/4 v7, 0x0

    :cond_a
    throw v2
.end method

.method public static queryShoppingSheet(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/List;
    .locals 10
    .parameter "context"
    .parameter "userId"
    .parameter "billId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 185
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 187
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "select * from "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "ShoppingSheet"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 188
    .local v9, sb:Ljava/lang/StringBuffer;
    const-string v1, " where "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "user_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const-string v1, " and "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "bill_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 190
    const-string v1, " order by "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "trans_date"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " desc"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    sget-object v1, Lcom/zhangdan/app/data/db/DataProvider;->CONTENT_RAW_QUERY_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 193
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/ShoppingSheetDbUtil;->parseShoppingSheetCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    move-result-object v7

    .line 196
    .local v7, data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 200
    .end local v7           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    :cond_1
    if-eqz v6, :cond_2

    .line 201
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 202
    const/4 v6, 0x0

    .line 205
    :cond_2
    return-object v8

    .line 200
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 201
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 202
    const/4 v6, 0x0

    :cond_3
    throw v1
.end method

.method public static queryTotalCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "userId"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 312
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "select count(*) from "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "ShoppingSheet"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 313
    .local v7, sb:Ljava/lang/StringBuffer;
    sget-object v1, Lcom/zhangdan/app/data/db/DataProvider;->CONTENT_RAW_QUERY_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 315
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 319
    if-eqz v6, :cond_0

    .line 320
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_0
    :goto_0
    return v1

    .line 319
    :cond_1
    if-eqz v6, :cond_2

    .line 320
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v1, v8

    .line 323
    goto :goto_0

    .line 319
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 320
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static saveShoppingSheetList(Landroid/content/Context;Ljava/util/List;)V
    .locals 22
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v19, opsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 41
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v13, existIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 44
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v20, sb:Ljava/lang/StringBuffer;
    const-string v2, "auto_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " in("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;

    .line 47
    .local v11, data:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    invoke-virtual {v11}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getAutoId()J

    move-result-wide v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 49
    .end local v11           #data:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    :cond_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 50
    const-string v2, ")"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    sget-object v2, Lcom/zhangdan/app/data/db/table/ShoppingSheetField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "auto_id"

    aput-object v5, v3, v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 54
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    :cond_3
    const-string v2, "auto_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 57
    .local v17, id:J
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 61
    .end local v17           #id:J
    :cond_4
    if-eqz v10, :cond_5

    .line 62
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 67
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #sb:Ljava/lang/StringBuffer;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;

    .line 68
    .restart local v11       #data:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    invoke-static {v11}, Lcom/zhangdan/app/data/db/util/ShoppingSheetDbUtil;->constructValues(Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;)Landroid/content/ContentValues;

    move-result-object v21

    .line 69
    .local v21, values:Landroid/content/ContentValues;
    invoke-virtual {v11}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;->getAutoId()J

    move-result-wide v7

    .line 70
    .local v7, autoId:J
    const/4 v14, 0x0

    .line 71
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

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 72
    .restart local v17       #id:J
    cmp-long v2, v7, v17

    if-nez v2, :cond_6

    .line 73
    const/4 v14, 0x1

    .line 77
    .end local v17           #id:J
    :cond_7
    const/4 v9, 0x0

    .line 78
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v14, :cond_9

    .line 79
    sget-object v2, Lcom/zhangdan/app/data/db/table/ShoppingSheetField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 84
    :goto_3
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 61
    .end local v7           #autoId:J
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #data:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    .end local v14           #flag:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #values:Landroid/content/ContentValues;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v20       #sb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_8

    .line 62
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 81
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #sb:Ljava/lang/StringBuffer;
    .restart local v7       #autoId:J
    .restart local v9       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v11       #data:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    .restart local v14       #flag:Z
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v21       #values:Landroid/content/ContentValues;
    :cond_9
    sget-object v2, Lcom/zhangdan/app/data/db/table/ShoppingSheetField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    goto :goto_3

    .line 88
    .end local v7           #autoId:J
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #data:Lcom/zhangdan/app/data/model/http/ShoppingSheetRecord;
    .end local v14           #flag:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_a
    :try_start_1
    const-string v2, "com.zhangdan.app"

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 89
    :catch_0
    move-exception v12

    .line 90
    .local v12, e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 91
    .end local v12           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v12

    .line 92
    .local v12, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static updateRemarkInfo(Landroid/content/Context;Lcom/zhangdan/app/data/model/ShoppingSheetInfo;)V
    .locals 6
    .parameter "context"
    .parameter "data"

    .prologue
    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 334
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 335
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "has_remark"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 336
    const-string v3, "custom_category_id"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCustomCategoryId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v3, "store_name"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getStoreName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v3, "remark"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getRemark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v3, "mood_id"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getMoodId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 341
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v3, "auto_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAutoId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 342
    sget-object v3, Lcom/zhangdan/app/data/db/table/ShoppingSheetField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 343
    return-void
.end method

.method public static updateStarFlag(Landroid/content/Context;JI)V
    .locals 5
    .parameter "context"
    .parameter "autoId"
    .parameter "flag"

    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 354
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 355
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "is_star"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    sget-object v2, Lcom/zhangdan/app/data/db/table/ShoppingSheetField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 357
    return-void
.end method
