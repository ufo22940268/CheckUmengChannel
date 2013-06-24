.class public Lcom/zhangdan/app/data/db/util/BillDbUtil;
.super Ljava/lang/Object;
.source "BillDbUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructValues(Lcom/zhangdan/app/data/model/http/Bill;)Landroid/content/ContentValues;
    .locals 4
    .parameter "data"

    .prologue
    .line 105
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 106
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "bill_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getBillId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    const-string v1, "bank_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getBanklId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v1, "mail_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getMailId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string v1, "bill_start_date"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getBillStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "bill_date"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getBillDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "name_on_card"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getNameOnCard()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "payment_due_date"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "credit_limit"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getCreditLimit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "cash_limit"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getCashLimit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "new_charges"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getNewCharges()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "usd_new_charges"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getUsdNewCharhes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "min_payment"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getMinPayment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "usd_min_payment"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getUsdMinPaymnet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "new_balance"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getNewBalance()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "usd_new_balance"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getUsdNewBalance()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v1, "adjustment"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getAdjustment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "interest"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getInterest()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v1, "integral"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getIntergral()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "integral_valid_until"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getIntergralValidUntil()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "integral_valid_date"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getIntegralValidDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "last_balance"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getLastBalance()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "last_payment"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getLastPaymnet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "is_return"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getIsReturn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "card_nums"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getCarNums()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "ub_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getUbId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    const-string v1, "mail_sender"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getMailSender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "last_modify_time"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getLastModfyTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "create_time"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "return_amount"

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/Bill;->getReturnAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-object v0
.end method

.method public static deleteBillByUbId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "ubId"

    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 329
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/BillField;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "ub_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 331
    return-void
.end method

.method public static queryBillIdsByName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 362
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/BillField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "bill_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name_on_card = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 363
    .local v8, c:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 368
    .local v6, billId:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 372
    .end local v6           #billId:J
    :cond_1
    if-eqz v8, :cond_2

    .line 373
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_2
    return-object v9

    .line 372
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    .line 373
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static queryBillIdsByUbId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .parameter "ubId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 341
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/BillField;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "bill_id"

    aput-object v3, v2, v8

    const-string v3, "ub_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 345
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 353
    if-eqz v6, :cond_1

    .line 354
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_1
    const/4 v6, 0x0

    .line 357
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v7

    .line 353
    :cond_2
    if-eqz v6, :cond_3

    .line 354
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_3
    const/4 v6, 0x0

    move-object v7, v5

    .line 357
    goto :goto_0

    .line 353
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 354
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_4
    const/4 v6, 0x0

    throw v1
.end method

.method public static queryBillInfoByBillId(Landroid/content/Context;J)Lcom/zhangdan/app/data/model/BillInfo;
    .locals 37
    .parameter "context"
    .parameter "billId"

    .prologue
    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 151
    .local v3, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/zhangdan/app/data/db/table/BillField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bill_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 154
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    const-string v4, "bill_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 156
    .local v18, id:J
    const-string v4, "ub_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 157
    .local v32, ubId:J
    const-string v4, "bank_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 158
    .local v9, bankId:I
    const-string v4, "mail_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 159
    .local v23, mailId:J
    const-string v4, "bill_start_date"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 161
    .local v11, billStartDate:Ljava/lang/String;
    const-string v4, "bill_date"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 163
    .local v10, billDate:Ljava/lang/String;
    const-string v4, "payment_due_date"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 165
    .local v29, paymentDueDate:Ljava/lang/String;
    const-string v4, "credit_limit"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v16

    .line 167
    .local v16, creditLimit:F
    const-string v4, "cash_limit"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v14

    .line 169
    .local v14, cashLimit:F
    const-string v4, "new_charges"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v28

    .line 171
    .local v28, newCharges:F
    const-string v4, "usd_new_charges"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v36

    .line 173
    .local v36, usdNewCharges:F
    const-string v4, "min_payment"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v26

    .line 175
    .local v26, minPayment:F
    const-string v4, "usd_min_payment"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v34

    .line 177
    .local v34, usdMinPayment:F
    const-string v4, "new_balance"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v27

    .line 179
    .local v27, newBalance:F
    const-string v4, "usd_new_balance"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v35

    .line 181
    .local v35, usdNewBalance:F
    const-string v4, "last_balance"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v21

    .line 183
    .local v21, lastBalance:F
    const-string v4, "last_payment"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v22

    .line 185
    .local v22, lastPayment:F
    const-string v4, "is_return"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 187
    .local v31, returnState:I
    const-string v4, "card_nums"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 189
    .local v13, cardNums:Ljava/lang/String;
    const-string v4, "return_amount"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v30

    .line 191
    .local v30, returnAmount:F
    const-string v4, "integral"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 192
    .local v20, integral:I
    const-string v4, "mail_sender"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 194
    .local v25, mailSender:Ljava/lang/String;
    const-string v4, "create_time"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 197
    .local v15, createTime:Ljava/lang/String;
    new-instance v17, Lcom/zhangdan/app/data/model/BillInfo;

    invoke-direct/range {v17 .. v17}, Lcom/zhangdan/app/data/model/BillInfo;-><init>()V

    .line 198
    .local v17, data:Lcom/zhangdan/app/data/model/BillInfo;
    invoke-virtual/range {v17 .. v19}, Lcom/zhangdan/app/data/model/BillInfo;->setBillId(J)V

    .line 199
    move-object/from16 v0, v17

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/data/model/BillInfo;->setUbId(J)V

    .line 200
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/zhangdan/app/data/model/BillInfo;->setBankId(I)V

    .line 201
    move-object/from16 v0, v17

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/data/model/BillInfo;->setMailId(J)V

    .line 202
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/zhangdan/app/data/model/BillInfo;->setBillStartDate(Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/zhangdan/app/data/model/BillInfo;->setBillDate(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setPaymentDueDate(Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setCreditLimit(F)V

    .line 206
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/zhangdan/app/data/model/BillInfo;->setCashLimit(F)V

    .line 207
    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setNewCharges(F)V

    .line 208
    move-object/from16 v0, v17

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setUsdNewCharges(F)V

    .line 209
    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setMinPayment(F)V

    .line 210
    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setUsdMinPayment(F)V

    .line 211
    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setNewBalance(F)V

    .line 212
    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setUsdNewBalance(F)V

    .line 213
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setLastBalance(F)V

    .line 214
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setLastPayment(F)V

    .line 215
    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setReturnState(I)V

    .line 216
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/data/model/BillInfo;->setCardNums(Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setReturnAmount(F)V

    .line 218
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setIntegral(I)V

    .line 219
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/BillInfo;->setMailSender(Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/zhangdan/app/data/model/BillInfo;->setCreateTime(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    if-eqz v12, :cond_0

    .line 225
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_0
    const/4 v12, 0x0

    .line 228
    .end local v9           #bankId:I
    .end local v10           #billDate:Ljava/lang/String;
    .end local v11           #billStartDate:Ljava/lang/String;
    .end local v13           #cardNums:Ljava/lang/String;
    .end local v14           #cashLimit:F
    .end local v15           #createTime:Ljava/lang/String;
    .end local v16           #creditLimit:F
    .end local v17           #data:Lcom/zhangdan/app/data/model/BillInfo;
    .end local v18           #id:J
    .end local v20           #integral:I
    .end local v21           #lastBalance:F
    .end local v22           #lastPayment:F
    .end local v23           #mailId:J
    .end local v25           #mailSender:Ljava/lang/String;
    .end local v26           #minPayment:F
    .end local v27           #newBalance:F
    .end local v28           #newCharges:F
    .end local v29           #paymentDueDate:Ljava/lang/String;
    .end local v30           #returnAmount:F
    .end local v31           #returnState:I
    .end local v32           #ubId:J
    .end local v34           #usdMinPayment:F
    .end local v35           #usdNewBalance:F
    .end local v36           #usdNewCharges:F
    :goto_0
    return-object v17

    .line 224
    :cond_1
    if-eqz v12, :cond_2

    .line 225
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_2
    const/4 v12, 0x0

    .line 228
    const/16 v17, 0x0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_3

    .line 225
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_3
    const/4 v12, 0x0

    throw v4
.end method

.method public static queryBillInfoByUbId(Landroid/content/Context;J)Ljava/util/List;
    .locals 26
    .parameter "context"
    .parameter "ubId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v10, billInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BillInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 277
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/zhangdan/app/data/db/table/BillField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ub_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "payment_due_date desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 279
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    :cond_0
    const-string v3, "bill_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 282
    .local v15, id:J
    const-string v3, "bank_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 283
    .local v8, bankId:I
    const-string v3, "bill_start_date"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 284
    .local v11, billStartDate:Ljava/lang/String;
    const-string v3, "bill_date"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 285
    .local v9, billDate:Ljava/lang/String;
    const-string v3, "payment_due_date"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 286
    .local v22, paymentDueDate:Ljava/lang/String;
    const-string v3, "new_charges"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v21

    .line 287
    .local v21, newCharges:F
    const-string v3, "usd_new_charges"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v25

    .line 288
    .local v25, usdNewCharges:F
    const-string v3, "new_balance"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v20

    .line 289
    .local v20, newBalance:F
    const-string v3, "usd_new_balance"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v24

    .line 290
    .local v24, usdNewBalance:F
    const-string v3, "last_balance"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v17

    .line 291
    .local v17, lastBalance:F
    const-string v3, "last_payment"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v18

    .line 292
    .local v18, lastPayment:F
    const-string v3, "is_return"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 293
    .local v23, returnState:I
    const-string v3, "card_nums"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 294
    .local v13, cardNums:Ljava/lang/String;
    const-string v3, "mail_sender"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 295
    .local v19, mailSender:Ljava/lang/String;
    new-instance v14, Lcom/zhangdan/app/data/model/BillInfo;

    invoke-direct {v14}, Lcom/zhangdan/app/data/model/BillInfo;-><init>()V

    .line 296
    .local v14, data:Lcom/zhangdan/app/data/model/BillInfo;
    invoke-virtual/range {v14 .. v16}, Lcom/zhangdan/app/data/model/BillInfo;->setBillId(J)V

    .line 297
    invoke-virtual {v14, v8}, Lcom/zhangdan/app/data/model/BillInfo;->setBankId(I)V

    .line 298
    invoke-virtual {v14, v11}, Lcom/zhangdan/app/data/model/BillInfo;->setBillStartDate(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v14, v9}, Lcom/zhangdan/app/data/model/BillInfo;->setBillDate(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/zhangdan/app/data/model/BillInfo;->setPaymentDueDate(Ljava/lang/String;)V

    .line 301
    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/zhangdan/app/data/model/BillInfo;->setNewCharges(F)V

    .line 302
    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/zhangdan/app/data/model/BillInfo;->setUsdNewCharges(F)V

    .line 303
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/zhangdan/app/data/model/BillInfo;->setNewBalance(F)V

    .line 304
    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/zhangdan/app/data/model/BillInfo;->setUsdNewBalance(F)V

    .line 305
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/zhangdan/app/data/model/BillInfo;->setLastBalance(F)V

    .line 306
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/zhangdan/app/data/model/BillInfo;->setLastPayment(F)V

    .line 307
    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/zhangdan/app/data/model/BillInfo;->setReturnState(I)V

    .line 308
    invoke-virtual {v14, v13}, Lcom/zhangdan/app/data/model/BillInfo;->setCardNums(Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/zhangdan/app/data/model/BillInfo;->setMailSender(Ljava/lang/String;)V

    .line 310
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 314
    .end local v8           #bankId:I
    .end local v9           #billDate:Ljava/lang/String;
    .end local v11           #billStartDate:Ljava/lang/String;
    .end local v13           #cardNums:Ljava/lang/String;
    .end local v14           #data:Lcom/zhangdan/app/data/model/BillInfo;
    .end local v15           #id:J
    .end local v17           #lastBalance:F
    .end local v18           #lastPayment:F
    .end local v19           #mailSender:Ljava/lang/String;
    .end local v20           #newBalance:F
    .end local v21           #newCharges:F
    .end local v22           #paymentDueDate:Ljava/lang/String;
    .end local v23           #returnState:I
    .end local v24           #usdNewBalance:F
    .end local v25           #usdNewCharges:F
    :cond_1
    if-eqz v12, :cond_2

    .line 315
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 316
    :cond_2
    const/4 v12, 0x0

    .line 318
    return-object v10

    .line 314
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_3

    .line 315
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 316
    :cond_3
    const/4 v12, 0x0

    throw v3
.end method

.method public static saveBillList(Landroid/content/Context;Ljava/util/List;)V
    .locals 23
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Bill;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bill;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v20, opsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 42
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v14, existIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 44
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v21, sb:Ljava/lang/StringBuffer;
    const-string v2, "bill_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " in("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zhangdan/app/data/model/http/Bill;

    .line 47
    .local v7, bill:Lcom/zhangdan/app/data/model/http/Bill;
    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/http/Bill;->getBillId()J

    move-result-wide v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 49
    .end local v7           #bill:Lcom/zhangdan/app/data/model/http/Bill;
    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 50
    const-string v2, ")"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    sget-object v2, Lcom/zhangdan/app/data/db/table/BillField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "bill_id"

    aput-object v5, v3, v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 56
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 58
    :cond_3
    const-string v2, "bill_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 60
    .local v8, billId:J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 64
    .end local v8           #billId:J
    :cond_4
    if-eqz v11, :cond_5

    .line 65
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 71
    .end local v11           #c:Landroid/database/Cursor;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #sb:Ljava/lang/StringBuffer;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/zhangdan/app/data/model/http/Bill;

    .line 72
    .local v12, data:Lcom/zhangdan/app/data/model/http/Bill;
    invoke-static {v12}, Lcom/zhangdan/app/data/db/util/BillDbUtil;->constructValues(Lcom/zhangdan/app/data/model/http/Bill;)Landroid/content/ContentValues;

    move-result-object v22

    .line 73
    .local v22, values:Landroid/content/ContentValues;
    invoke-virtual {v12}, Lcom/zhangdan/app/data/model/http/Bill;->getBillId()J

    move-result-wide v8

    .line 74
    .restart local v8       #billId:J
    const/4 v15, 0x0

    .line 75
    .local v15, flag:Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 76
    .local v18, id:J
    cmp-long v2, v8, v18

    if-nez v2, :cond_6

    .line 77
    const/4 v15, 0x1

    .line 82
    .end local v18           #id:J
    :cond_7
    const/4 v10, 0x0

    .line 83
    .local v10, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v15, :cond_9

    .line 84
    sget-object v2, Lcom/zhangdan/app/data/db/table/BillField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bill_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 92
    :goto_3
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 64
    .end local v8           #billId:J
    .end local v10           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v12           #data:Lcom/zhangdan/app/data/model/http/Bill;
    .end local v15           #flag:Z
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v22           #values:Landroid/content/ContentValues;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v21       #sb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_8

    .line 65
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 89
    .end local v11           #c:Landroid/database/Cursor;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #sb:Ljava/lang/StringBuffer;
    .restart local v8       #billId:J
    .restart local v10       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v12       #data:Lcom/zhangdan/app/data/model/http/Bill;
    .restart local v15       #flag:Z
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v22       #values:Landroid/content/ContentValues;
    :cond_9
    sget-object v2, Lcom/zhangdan/app/data/db/table/BillField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    goto :goto_3

    .line 96
    .end local v8           #billId:J
    .end local v10           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v12           #data:Lcom/zhangdan/app/data/model/http/Bill;
    .end local v15           #flag:Z
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_a
    :try_start_1
    const-string v2, "com.zhangdan.app"

    move-object/from16 v0, v20

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 97
    :catch_0
    move-exception v13

    .line 98
    .local v13, e:Landroid/os/RemoteException;
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 99
    .end local v13           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v13

    .line 100
    .local v13, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v13}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static updateBillReturnAmount(Landroid/content/Context;JD)V
    .locals 5
    .parameter "context"
    .parameter "billId"
    .parameter "returnAmount"

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 262
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 263
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "return_amount"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 264
    sget-object v2, Lcom/zhangdan/app/data/db/table/BillField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bill_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public static updateBillReturnState(Landroid/content/Context;JID)V
    .locals 5
    .parameter "context"
    .parameter "billId"
    .parameter "returnState"
    .parameter "returnAmount"

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 243
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "is_return"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    .line 247
    const-string v2, "return_amount"

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 249
    :cond_0
    sget-object v2, Lcom/zhangdan/app/data/db/table/BillField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bill_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 251
    return-void
.end method
