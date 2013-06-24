.class public Lcom/zhangdan/app/data/db/util/ShoppingSheetRemarkDbUtil;
.super Ljava/lang/Object;
.source "ShoppingSheetRemarkDbUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructValues(Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;)Landroid/content/ContentValues;
    .locals 4
    .parameter "data"

    .prologue
    .line 94
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "auto_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getAutoId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getBankId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v1, "shoppingsheet_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getShoppingSheetId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string v1, "category_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getCategoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v1, "remark"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getRemark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "store_name"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "mood_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getMoodId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v1, "ub_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getUbId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    const-string v1, "bank_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getBankId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v1, "card_no"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getCardNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "trans_time"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getTransTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "trans_type"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getTransType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "currency_type"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getCurrencyType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v1, "amount_money"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getAmountMoney()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "discription"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getDiscription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-object v0
.end method

.method private static parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    .locals 25
    .parameter "c"

    .prologue
    .line 173
    new-instance v10, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;

    invoke-direct {v10}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;-><init>()V

    .line 174
    .local v10, data:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    const-string v24, "auto_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 175
    .local v3, autoId:J
    const-string v24, "user_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 176
    .local v22, userId:J
    const-string v24, "shoppingsheet_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 177
    .local v15, shoppingSheetId:J
    const-string v24, "category_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 178
    .local v7, categoryId:I
    const-string v24, "remark"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 179
    .local v14, remark:Ljava/lang/String;
    const-string v24, "store_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 180
    .local v17, storeName:Ljava/lang/String;
    const-string v24, "mood_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 181
    .local v13, moodId:I
    const-string v24, "ub_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 182
    .local v20, ubId:J
    const-string v24, "bank_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 183
    .local v5, bankId:I
    const-string v24, "card_no"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, cardNo:Ljava/lang/String;
    const-string v24, "trans_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 185
    .local v18, transTime:Ljava/lang/String;
    const-string v24, "trans_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 186
    .local v19, transTypeStr:Ljava/lang/String;
    const-string v24, "currency_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 187
    .local v9, currencyTypeStr:Ljava/lang/String;
    const-string v24, "amount_money"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, amout:Ljava/lang/String;
    const-string v24, "discription"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 189
    .local v11, desc:Ljava/lang/String;
    const/4 v8, 0x0

    .line 191
    .local v8, currencyType:I
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 196
    :goto_0
    invoke-virtual {v10, v3, v4}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setAutoId(J)V

    .line 197
    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setUserId(J)V

    .line 198
    move-wide v0, v15

    invoke-virtual {v10, v0, v1}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setShoppingSheetId(J)V

    .line 199
    invoke-virtual {v10, v7}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setCategoryId(I)V

    .line 200
    invoke-virtual {v10, v14}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setRemark(Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setStoreName(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v10, v13}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setMoodId(I)V

    .line 203
    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setUbId(J)V

    .line 204
    invoke-virtual {v10, v5}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setBankId(I)V

    .line 205
    invoke-virtual {v10, v6}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setCardNo(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setTransTime(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setTransType(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v10, v8}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setCurrencyType(I)V

    .line 209
    invoke-virtual {v10, v2}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setAmountMoney(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v10, v11}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->setDiscription(Ljava/lang/String;)V

    .line 211
    return-object v10

    .line 192
    :catch_0
    move-exception v12

    .line 193
    .local v12, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static queryShoppingSheetRemarkByLocalId(Landroid/content/Context;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    .locals 7
    .parameter "context"
    .parameter "localId"

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/ShoppingSheetRemarkField;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "local_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 139
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/ShoppingSheetRemarkDbUtil;->parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 143
    if-eqz v6, :cond_0

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_0
    :goto_0
    return-object v2

    .line 143
    :cond_1
    if-eqz v6, :cond_0

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static queryShoppingSheetRemarkBySheetId(Landroid/content/Context;J)Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    .locals 9
    .parameter "context"
    .parameter "shoppingSheetId"

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/ShoppingSheetRemarkField;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "shoppingsheet_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 161
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/ShoppingSheetRemarkDbUtil;->parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 165
    if-eqz v6, :cond_0

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_0
    :goto_0
    return-object v2

    .line 165
    :cond_1
    if-eqz v6, :cond_0

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static saveShoppingSheetRemark(Landroid/content/Context;Lcom/zhangdan/app/data/model/ShoppingSheetInfo;Ljava/lang/String;)J
    .locals 13
    .parameter "context"
    .parameter "data"
    .parameter "userId"

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 221
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 222
    .local v10, sb:Ljava/lang/StringBuffer;
    const-string v1, "shoppingsheet_id"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAutoId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 223
    sget-object v1, Lcom/zhangdan/app/data/db/table/ShoppingSheetRemarkField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 224
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 226
    .local v7, flag:Z
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const/4 v7, 0x1

    .line 230
    :cond_0
    if-eqz v6, :cond_1

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 235
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "user_id"

    invoke-virtual {v11, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "shoppingsheet_id"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAutoId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 237
    const-string v1, "category_id"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCustomCategoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v1, "remark"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getRemark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v1, "store_name"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "mood_id"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getMoodId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    const-string v1, "bank_id"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getBankId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 244
    .local v8, now:J
    const-string v1, "local_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 246
    if-eqz v7, :cond_3

    .line 247
    sget-object v1, Lcom/zhangdan/app/data/db/table/ShoppingSheetRemarkField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v11, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 253
    :goto_0
    return-wide v8

    .line 230
    .end local v8           #now:J
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 249
    .restart local v8       #now:J
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_3
    const-string v1, "auto_id"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-string v1, "ub_id"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    sget-object v1, Lcom/zhangdan/app/data/db/table/ShoppingSheetRemarkField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public static saveShoppingSheetRemarkList(Landroid/content/Context;Ljava/util/List;)V
    .locals 22
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v19, opsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 39
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v13, existIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 42
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 43
    .local v20, sb:Ljava/lang/StringBuffer;
    const-string v2, "auto_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " in("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;

    .line 45
    .local v11, data:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    invoke-virtual {v11}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getAutoId()J

    move-result-wide v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 47
    .end local v11           #data:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    :cond_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 48
    const-string v2, ")"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    sget-object v2, Lcom/zhangdan/app/data/db/table/ShoppingSheetRemarkField;->CONTENT_URI:Landroid/net/Uri;

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

    .line 52
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    :cond_3
    const-string v2, "auto_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 55
    .local v17, id:J
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 59
    .end local v17           #id:J
    :cond_4
    if-eqz v10, :cond_5

    .line 60
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 65
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

    check-cast v11, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;

    .line 66
    .restart local v11       #data:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    invoke-static {v11}, Lcom/zhangdan/app/data/db/util/ShoppingSheetRemarkDbUtil;->constructValues(Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;)Landroid/content/ContentValues;

    move-result-object v21

    .line 67
    .local v21, values:Landroid/content/ContentValues;
    invoke-virtual {v11}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getAutoId()J

    move-result-wide v7

    .line 68
    .local v7, autoId:J
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

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 70
    .restart local v17       #id:J
    cmp-long v2, v7, v17

    if-nez v2, :cond_6

    .line 71
    const/4 v14, 0x1

    .line 75
    .end local v17           #id:J
    :cond_7
    const/4 v9, 0x0

    .line 76
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v14, :cond_9

    .line 77
    sget-object v2, Lcom/zhangdan/app/data/db/table/ShoppingSheetRemarkField;->CONTENT_URI:Landroid/net/Uri;

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

    .line 82
    :goto_3
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 59
    .end local v7           #autoId:J
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #data:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    .end local v14           #flag:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #values:Landroid/content/ContentValues;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v20       #sb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_8

    .line 60
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 79
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #sb:Ljava/lang/StringBuffer;
    .restart local v7       #autoId:J
    .restart local v9       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v11       #data:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    .restart local v14       #flag:Z
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v21       #values:Landroid/content/ContentValues;
    :cond_9
    sget-object v2, Lcom/zhangdan/app/data/db/table/ShoppingSheetRemarkField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    goto :goto_3

    .line 85
    .end local v7           #autoId:J
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #data:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
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

.method public static updateShoppingSheetRemark(Landroid/content/Context;Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;)V
    .locals 6
    .parameter "context"
    .parameter "data"

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 122
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/zhangdan/app/data/db/util/ShoppingSheetRemarkDbUtil;->constructValues(Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;)Landroid/content/ContentValues;

    move-result-object v2

    .line 123
    .local v2, values:Landroid/content/ContentValues;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v3, "shoppingsheet_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;->getShoppingSheetId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 125
    sget-object v3, Lcom/zhangdan/app/data/db/table/ShoppingSheetRemarkField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    return-void
.end method
