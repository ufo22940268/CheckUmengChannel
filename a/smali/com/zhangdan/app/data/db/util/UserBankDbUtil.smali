.class public Lcom/zhangdan/app/data/db/util/UserBankDbUtil;
.super Ljava/lang/Object;
.source "UserBankDbUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructValues(Lcom/zhangdan/app/data/model/http/UserBank;)Landroid/content/ContentValues;
    .locals 4
    .parameter "data"

    .prologue
    .line 97
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/UserBank;->getUser_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "bank_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/UserBank;->getBank_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "bank_name"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/UserBank;->getBank_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "name_on_bill"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/UserBank;->getName_on_bill()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "credit_limit"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/UserBank;->getCredit_limit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "cash_limit"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/UserBank;->getCash_limit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "bill_data"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/UserBank;->getBill_data()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "bind_email"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/UserBank;->getBind_email()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "auto_return_card"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/UserBank;->getAuto_return_card()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "last_bill_date"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/UserBank;->getLast_bill_date()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "status"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/UserBank;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "ub_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/UserBank;->getUb_id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string v1, "last_bill_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/UserBank;->getLast_bill_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "last_bill_due_date"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/UserBank;->getLast_bill_due_date()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-object v0
.end method

.method public static deleteUserBank(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "ubId"

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 169
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/UserBankField;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "ub_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public static loadAllUserBankInfos(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 20
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
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v16, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 127
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/zhangdan/app/data/db/table/UserBankField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ub_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "bank_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "bank_name"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "name_on_bill"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "credit_limit"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "cash_limit"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "last_bill_id"

    aput-object v6, v4, v5

    const-string v5, "user_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 131
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    :cond_0
    const-string v3, "ub_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 134
    .local v18, ubId:J
    const-string v3, "last_bill_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 135
    .local v14, lastBillId:J
    const-string v3, "bank_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 136
    .local v8, bankId:I
    const-string v3, "bank_name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, bankName:Ljava/lang/String;
    const-string v3, "name_on_bill"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 138
    .local v17, nameOnBill:Ljava/lang/String;
    const-string v3, "credit_limit"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v12

    .line 139
    .local v12, creditLimit:F
    const-string v3, "cash_limit"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    .line 141
    .local v11, cashLimit:F
    new-instance v13, Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-direct {v13}, Lcom/zhangdan/app/data/model/UserBankInfo;-><init>()V

    .line 142
    .local v13, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setUbId(J)V

    .line 143
    invoke-virtual {v13, v14, v15}, Lcom/zhangdan/app/data/model/UserBankInfo;->setLastBillId(J)V

    .line 144
    invoke-virtual {v13, v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBankId(I)V

    .line 145
    invoke-virtual {v13, v9}, Lcom/zhangdan/app/data/model/UserBankInfo;->setSimpleName(Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNameOnBill(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v13, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCreditLimit(F)V

    .line 148
    invoke-virtual {v13, v11}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCashLimit(F)V

    .line 150
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 154
    .end local v8           #bankId:I
    .end local v9           #bankName:Ljava/lang/String;
    .end local v11           #cashLimit:F
    .end local v12           #creditLimit:F
    .end local v13           #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    .end local v14           #lastBillId:J
    .end local v17           #nameOnBill:Ljava/lang/String;
    .end local v18           #ubId:J
    :cond_1
    if-eqz v10, :cond_2

    .line 155
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_2
    const/4 v10, 0x0

    .line 158
    return-object v16

    .line 154
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_3

    .line 155
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_3
    const/4 v10, 0x0

    throw v3
.end method

.method public static queryCardCountByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 181
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    .local v7, sb:Ljava/lang/StringBuffer;
    const-string v1, "select count(*) from "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    const-string v1, "UserBank"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-static {p1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    const-string v1, " where "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "name_on_bill"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    :cond_0
    sget-object v1, Lcom/zhangdan/app/data/db/DataProvider;->CONTENT_RAW_QUERY_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 189
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 193
    if-eqz v6, :cond_1

    .line 194
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_1
    :goto_0
    return v1

    .line 193
    :cond_2
    if-eqz v6, :cond_3

    .line 194
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v1, v8

    .line 196
    goto :goto_0

    .line 193
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 194
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static saveUserBankList(Landroid/content/Context;Ljava/util/List;)V
    .locals 24
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/UserBank;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/UserBank;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v19, opsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 43
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v13, existIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 45
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v20, sb:Ljava/lang/StringBuffer;
    const-string v3, "ub_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " in("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zhangdan/app/data/model/http/UserBank;

    .line 48
    .local v8, bank:Lcom/zhangdan/app/data/model/http/UserBank;
    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/http/UserBank;->getUb_id()J

    move-result-wide v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 50
    .end local v8           #bank:Lcom/zhangdan/app/data/model/http/UserBank;
    :cond_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 51
    const-string v3, ")"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    sget-object v3, Lcom/zhangdan/app/data/db/table/UserBankField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ub_id"

    aput-object v6, v4, v5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 55
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 57
    :cond_3
    const-string v3, "ub_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 58
    .local v21, ubId:J
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 62
    .end local v21           #ubId:J
    :cond_4
    if-eqz v10, :cond_5

    .line 63
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 69
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #sb:Ljava/lang/StringBuffer;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/data/model/http/UserBank;

    .line 70
    .local v11, data:Lcom/zhangdan/app/data/model/http/UserBank;
    invoke-static {v11}, Lcom/zhangdan/app/data/db/util/UserBankDbUtil;->constructValues(Lcom/zhangdan/app/data/model/http/UserBank;)Landroid/content/ContentValues;

    move-result-object v23

    .line 71
    .local v23, values:Landroid/content/ContentValues;
    invoke-virtual {v11}, Lcom/zhangdan/app/data/model/http/UserBank;->getUb_id()J

    move-result-wide v21

    .line 72
    .restart local v21       #ubId:J
    const/4 v14, 0x0

    .line 73
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

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 74
    .local v17, id:J
    cmp-long v3, v21, v17

    if-nez v3, :cond_6

    .line 75
    const/4 v14, 0x1

    .line 79
    .end local v17           #id:J
    :cond_7
    const/4 v9, 0x0

    .line 80
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v14, :cond_9

    .line 81
    sget-object v3, Lcom/zhangdan/app/data/db/table/UserBankField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ub_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 85
    :goto_3
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 62
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #data:Lcom/zhangdan/app/data/model/http/UserBank;
    .end local v14           #flag:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #ubId:J
    .end local v23           #values:Landroid/content/ContentValues;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v20       #sb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_8

    .line 63
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .line 83
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #sb:Ljava/lang/StringBuffer;
    .restart local v9       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v11       #data:Lcom/zhangdan/app/data/model/http/UserBank;
    .restart local v14       #flag:Z
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v21       #ubId:J
    .restart local v23       #values:Landroid/content/ContentValues;
    :cond_9
    sget-object v3, Lcom/zhangdan/app/data/db/table/UserBankField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    goto :goto_3

    .line 88
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #data:Lcom/zhangdan/app/data/model/http/UserBank;
    .end local v14           #flag:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #ubId:J
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_a
    :try_start_1
    const-string v3, "com.zhangdan.app"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
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
