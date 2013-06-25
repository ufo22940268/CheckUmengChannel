.class public Lcom/zhangdan/app/data/db/util/SmsUserBankDbUtil;
.super Ljava/lang/Object;
.source "SmsUserBankDbUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteSmsUserBank(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "id"

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/SmsUserBankField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method public static loadAllSmsUserBankInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 57
    if-nez p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v2

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/SmsUserBankField;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 63
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    :cond_2
    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/SmsUserBankDbUtil;->parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/UserBankInfo;

    move-result-object v7

    .line 67
    .local v7, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 74
    if-eqz v6, :cond_3

    .line 75
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 76
    const/4 v6, 0x0

    :cond_3
    move-object v2, v9

    goto :goto_0

    .line 74
    .end local v7           #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    :cond_4
    if-eqz v6, :cond_0

    .line 75
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 76
    const/4 v6, 0x0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v8

    .line 72
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    if-eqz v6, :cond_0

    .line 75
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 76
    const/4 v6, 0x0

    goto :goto_0

    .line 74
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 75
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 76
    const/4 v6, 0x0

    :cond_5
    throw v1
.end method

.method private static parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/UserBankInfo;
    .locals 25
    .parameter "c"

    .prologue
    .line 83
    new-instance v10, Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-direct {v10}, Lcom/zhangdan/app/data/model/UserBankInfo;-><init>()V

    .line 84
    .local v10, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->setEmailUserBank(Z)V

    .line 85
    const-string v23, "bank_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 86
    .local v3, bankId:I
    const-string v23, "bank_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, bankName:Ljava/lang/String;
    const-string v23, "name_on_sms"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 88
    .local v13, nameOnSms:Ljava/lang/String;
    const-string v23, "card_no"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, cardNo:Ljava/lang/String;
    const-string v23, "credit_limit"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, creditLimitStr:Ljava/lang/String;
    const-string v23, "cash_limit"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, cashLimitStr:Ljava/lang/String;
    const-string v23, "new_balance"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 93
    .local v15, newBalanceStr:Ljava/lang/String;
    const-string v23, "usd_new_balance"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 94
    .local v22, usdNewBalanceStr:Ljava/lang/String;
    const-string v23, "return_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 95
    .local v20, returnStateStr:Ljava/lang/String;
    const-string v23, "return_amount"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 96
    .local v18, returnAmountStr:Ljava/lang/String;
    const-string v23, "payment_due_date"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 97
    .local v16, paymentDueDate:Ljava/lang/String;
    const-string v23, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 99
    .local v11, id:J
    invoke-static {v9}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    const/4 v8, 0x0

    .line 100
    .local v8, creditLimit:F
    :goto_0
    invoke-static {v7}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1

    const/4 v6, 0x0

    .line 101
    .local v6, cashLimit:F
    :goto_1
    invoke-static {v15}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/4 v14, 0x0

    .line 102
    .local v14, newBalance:F
    :goto_2
    invoke-static/range {v22 .. v22}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    const/16 v21, 0x0

    .line 103
    .local v21, usdNewBalance:F
    :goto_3
    invoke-static/range {v20 .. v20}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    const/16 v19, 0x0

    .line 104
    .local v19, returnState:I
    :goto_4
    invoke-static/range {v18 .. v18}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v17, 0x0

    .line 106
    .local v17, returnAmount:F
    :goto_5
    invoke-virtual {v10, v11, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setUbId(J)V

    .line 107
    invoke-virtual {v10, v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBankId(I)V

    .line 108
    invoke-virtual {v10, v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->setSimpleName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v10, v13}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNameOnBill(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v10, v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCardNo(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v10, v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCreditLimit(F)V

    .line 112
    invoke-virtual {v10, v6}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCashLimit(F)V

    .line 113
    invoke-virtual {v10, v14}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNewBalance(F)V

    .line 114
    move/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->setUsdNewBalance(F)V

    .line 115
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->setReturnState(I)V

    .line 116
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->setReturnAmount(F)V

    .line 117
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->setPaymentDueDate(Ljava/lang/String;)V

    .line 119
    return-object v10

    .line 99
    .end local v6           #cashLimit:F
    .end local v8           #creditLimit:F
    .end local v14           #newBalance:F
    .end local v17           #returnAmount:F
    .end local v19           #returnState:I
    .end local v21           #usdNewBalance:F
    :cond_0
    const-string v23, ","

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_0

    .line 100
    .restart local v8       #creditLimit:F
    :cond_1
    const-string v23, ","

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_1

    .line 101
    .restart local v6       #cashLimit:F
    :cond_2
    const-string v23, ","

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v14

    goto/16 :goto_2

    .line 102
    .restart local v14       #newBalance:F
    :cond_3
    const-string v23, ","

    const-string v24, ""

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v21

    goto/16 :goto_3

    .line 103
    .restart local v21       #usdNewBalance:F
    :cond_4
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v19

    goto/16 :goto_4

    .line 104
    .restart local v19       #returnState:I
    :cond_5
    const-string v23, ","

    const-string v24, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v17

    goto/16 :goto_5
.end method

.method public static queryBillIdWitchCard(Landroid/content/Context;Ljava/lang/String;)Lcom/zhangdan/app/data/model/UserBankInfo;
    .locals 10
    .parameter "context"
    .parameter "card"

    .prologue
    const/4 v2, 0x0

    .line 191
    const/4 v9, 0x0

    .line 192
    .local v9, info:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/SmsUserBankField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "card_no =\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    new-instance v9, Lcom/zhangdan/app/data/model/UserBankInfo;

    .end local v9           #info:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-direct {v9}, Lcom/zhangdan/app/data/model/UserBankInfo;-><init>()V

    .line 196
    .restart local v9       #info:Lcom/zhangdan/app/data/model/UserBankInfo;
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 197
    .local v7, id:J
    invoke-virtual {v9, v7, v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->setUbId(J)V

    .line 198
    invoke-virtual {v9, p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCardNo(Ljava/lang/String;)V

    .line 200
    .end local v7           #id:J
    :cond_0
    if-eqz v6, :cond_1

    .line 201
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 202
    const/4 v6, 0x0

    .line 204
    :cond_1
    return-object v9
.end method

.method public static querySmsUserBank(Landroid/content/Context;J)Lcom/zhangdan/app/data/model/UserBankInfo;
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 35
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/SmsUserBankField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 37
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/SmsUserBankDbUtil;->parseCursor(Landroid/database/Cursor;)Lcom/zhangdan/app/data/model/UserBankInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 42
    .local v7, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    if-eqz v6, :cond_0

    .line 43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 44
    const/4 v6, 0x0

    .line 47
    .end local v7           #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_0
    :goto_0
    return-object v7

    .line 42
    :cond_1
    if-eqz v6, :cond_2

    .line 43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 44
    const/4 v6, 0x0

    :cond_2
    move-object v7, v2

    .line 47
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 44
    const/4 v6, 0x0

    :cond_3
    throw v1
.end method

.method public static queryTheSameCard(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 168
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v1, "select card_no ,_id,count(*) from SmsUserBank group by card_no having(count(*)>1)"

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 171
    .local v6, buffer:Ljava/lang/StringBuffer;
    sget-object v1, Lcom/zhangdan/app/data/db/DataProvider;->CONTENT_RAW_QUERY_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 173
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    new-instance v11, Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-direct {v11}, Lcom/zhangdan/app/data/model/UserBankInfo;-><init>()V

    .line 175
    .local v11, info:Lcom/zhangdan/app/data/model/UserBankInfo;
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 176
    .local v9, id:J
    const-string v1, "card_no"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, card:Ljava/lang/String;
    invoke-virtual {v11, v9, v10}, Lcom/zhangdan/app/data/model/UserBankInfo;->setUbId(J)V

    .line 178
    invoke-virtual {v11, v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCardNo(Ljava/lang/String;)V

    .line 179
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .end local v8           #card:Ljava/lang/String;
    .end local v9           #id:J
    .end local v11           #info:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_0
    if-eqz v7, :cond_1

    .line 183
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_1
    const/4 v7, 0x0

    .line 186
    return-object v12

    .line 182
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    .line 183
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_2
    const/4 v7, 0x0

    throw v1
.end method

.method public static updateBillState(Landroid/content/Context;JID)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "returnState"
    .parameter "returnAmount"

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "return_state"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    .line 135
    const-string v2, "return_amount"

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 137
    :cond_0
    sget-object v2, Lcom/zhangdan/app/data/db/table/SmsUserBankField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public static updateSmsUserBankInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .parameter "context"
    .parameter "card"
    .parameter "name"
    .parameter "paymentdueDate"
    .parameter "id"

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .local v1, value:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    const-string v2, "card_no"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    const-string v2, "name_on_sms"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 161
    const-string v2, "payment_due_date"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_2
    sget-object v2, Lcom/zhangdan/app/data/db/table/SmsUserBankField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    return-void
.end method
