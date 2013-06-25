.class public final Lcom/zhangdan/app/sms/BillRegexDbUtil;
.super Ljava/lang/Object;
.source "BillRegexDbUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBillData(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "data"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zhangdan/app/sms/BillData;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, billList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_0
    return-void
.end method

.method public static deleteBillData(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "id"

    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 239
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/sms/BillSmsField;->CONTENT_URI:Landroid/net/Uri;

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

    .line 240
    return-void
.end method

.method private static fillValuesWithBillData(Lcom/zhangdan/app/sms/BillData;)Landroid/content/ContentValues;
    .locals 5
    .parameter "data"

    .prologue
    .line 258
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "bank_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/BillData;->getBankId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v1, "bank_name"

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/BillData;->getBankName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v1, "card_last"

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/BillData;->getCardLast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "bill_type"

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const-string v1, "amount"

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "currency_type"

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/BillData;->getCurrencyType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    const-string v1, "sms_data"

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/BillData;->getSms()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v1, "remark"

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/BillData;->getRemark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "sms_date"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/BillData;->getDate()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v1, "repay_day"

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/BillData;->getRepaymentDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string v1, "repay_month"

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/BillData;->getRepaymentMonth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    const-string v1, "us_amount"

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/BillData;->getUsAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v1, "phone"

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/BillData;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v1, "true_name"

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/BillData;->getTrueName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v1, "repay_year"

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/BillData;->getRepaymentYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    const-string v1, "bill_id"

    invoke-virtual {p0}, Lcom/zhangdan/app/sms/BillData;->getBillId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    return-object v0
.end method

.method public static getCountWithBillType(Landroid/content/Context;III)I
    .locals 9
    .parameter "context"
    .parameter "bankId"
    .parameter "billid"
    .parameter "billType"

    .prologue
    const/4 v2, 0x0

    .line 617
    const/4 v6, 0x0

    .line 618
    .local v6, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 619
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 620
    .local v8, sb:Ljava/lang/StringBuffer;
    const-string v1, "select count(*) from "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "bill_data"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " where "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "bank_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "bill_type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 622
    const-string v1, " and "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "bill_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 623
    sget-object v1, Lcom/zhangdan/app/data/db/DataProvider;->CONTENT_RAW_QUERY_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 625
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 628
    :cond_0
    if-eqz v7, :cond_1

    .line 629
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 630
    :cond_1
    const/4 v7, 0x0

    .line 632
    return v6

    .line 628
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    .line 629
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 630
    :cond_2
    const/4 v7, 0x0

    throw v1
.end method

.method public static getUnknowBill(Landroid/content/Context;ILjava/lang/String;J)Ljava/util/List;
    .locals 21
    .parameter "context"
    .parameter "bankId"
    .parameter "card"
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v14, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    if-nez p2, :cond_0

    .line 711
    :goto_0
    return-object v14

    .line 662
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 663
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 664
    .local v8, buffer:Ljava/lang/StringBuffer;
    const-string v3, "select * from "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "bill_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " where "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 665
    const-string v3, "card_last"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 666
    const/16 v17, 0x0

    .line 667
    .local v17, strArray:[Ljava/lang/String;
    const-string v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 668
    const-string v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 673
    :goto_1
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    move-object/from16 v0, v17

    array-length v3, v0

    if-ge v13, v3, :cond_3

    .line 674
    aget-object v18, v17, v13

    .line 675
    .local v18, tempCard:Ljava/lang/String;
    const-string v3, "\'"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 676
    move-object/from16 v0, v17

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v13, v3, :cond_1

    .line 677
    const-string v3, ","

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 670
    .end local v13           #i:I
    .end local v18           #tempCard:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 671
    const/4 v3, 0x0

    aput-object p2, v17, v3

    goto :goto_1

    .line 680
    .restart local v13       #i:I
    :cond_3
    const-string v3, ") and "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "bank_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 681
    const-string v3, " and "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "bill_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " >= 1 and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "bill_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " <= 2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    const-string v3, " and "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "sms_date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 683
    const-string v3, " order by "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "sms_date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " desc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 684
    sget-object v3, Lcom/zhangdan/app/data/db/DataProvider;->CONTENT_RAW_QUERY_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 686
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 688
    :cond_4
    const-string v3, "amount"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 689
    .local v15, money:Ljava/lang/String;
    const-string v3, "sms_date"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 690
    .local v12, date:Ljava/lang/String;
    const-string v3, "bill_type"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 691
    .local v19, type:I
    const-string v3, "us_amount"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 692
    .local v20, usMoney:Ljava/lang/String;
    const-string v3, "sms_data"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 693
    .local v16, sms:Ljava/lang/String;
    const-string v3, "card_last"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 694
    .local v9, cardNo:Ljava/lang/String;
    new-instance v11, Lcom/zhangdan/app/sms/BillData;

    invoke-direct {v11}, Lcom/zhangdan/app/sms/BillData;-><init>()V

    .line 695
    .local v11, data:Lcom/zhangdan/app/sms/BillData;
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/zhangdan/app/sms/BillData;->setUsAmount(Ljava/lang/String;)V

    .line 696
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 697
    invoke-virtual {v11, v15}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    .line 698
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v11, v3, v4}, Lcom/zhangdan/app/sms/BillData;->setDate(J)V

    .line 699
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/zhangdan/app/sms/BillData;->setSms(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v11, v9}, Lcom/zhangdan/app/sms/BillData;->setCardLast(Ljava/lang/String;)V

    .line 701
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    .line 706
    .end local v9           #cardNo:Ljava/lang/String;
    .end local v11           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v12           #date:Ljava/lang/String;
    .end local v15           #money:Ljava/lang/String;
    .end local v16           #sms:Ljava/lang/String;
    .end local v19           #type:I
    .end local v20           #usMoney:Ljava/lang/String;
    :cond_5
    if-eqz v10, :cond_6

    .line 707
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 709
    :cond_6
    const/4 v10, 0x0

    .line 710
    goto/16 :goto_0

    .line 706
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_7

    .line 707
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 709
    :cond_7
    const/4 v10, 0x0

    throw v3
.end method

.method public static getUnknowBillAmount(Landroid/content/Context;ILjava/lang/String;J)D
    .locals 17
    .parameter "context"
    .parameter "bankId"
    .parameter "card"
    .parameter "time"

    .prologue
    .line 724
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 725
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 726
    .local v12, buffer:Ljava/lang/StringBuffer;
    const-string v3, "select "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "amount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "bill_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "bill_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " where card_last = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 727
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " and bank_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " and bill_type >= 1 and bill_type <= 2 and sms_date>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " order by sms_date desc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    sget-object v3, Lcom/zhangdan/app/data/db/DataProvider;->CONTENT_RAW_QUERY_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 729
    .local v13, cursor:Landroid/database/Cursor;
    const-wide/16 v15, 0x0

    .line 731
    .local v15, total:D
    if-eqz v13, :cond_2

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 733
    :cond_0
    const-string v3, "amount"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 734
    .local v10, amountStr:Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 736
    .local v8, amount:D
    :try_start_1
    const-string v3, ","

    const-string v4, ""

    invoke-virtual {v10, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    .line 740
    :goto_0
    :try_start_2
    const-string v3, "bill_type"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 741
    .local v11, billType:I
    const/4 v3, 0x1

    if-ne v11, v3, :cond_5

    .line 742
    add-double/2addr v15, v8

    .line 746
    :cond_1
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 749
    .end local v8           #amount:D
    .end local v10           #amountStr:Ljava/lang/String;
    .end local v11           #billType:I
    :cond_2
    if-eqz v13, :cond_3

    .line 750
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 752
    :cond_3
    return-wide v15

    .line 737
    .restart local v8       #amount:D
    .restart local v10       #amountStr:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 738
    .local v14, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 749
    .end local v8           #amount:D
    .end local v10           #amountStr:Ljava/lang/String;
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_4

    .line 750
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    .line 743
    .restart local v8       #amount:D
    .restart local v10       #amountStr:Ljava/lang/String;
    .restart local v11       #billType:I
    :cond_5
    const/4 v3, 0x2

    if-ne v11, v3, :cond_1

    .line 744
    sub-double/2addr v15, v8

    goto :goto_1
.end method

.method private static initSmsPhone(Landroid/content/Context;)V
    .locals 16
    .parameter "context"

    .prologue
    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 55
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 56
    .local v15, sb:Ljava/lang/StringBuffer;
    const-string v1, "select count(*) from "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "bill_sms_num"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    sget-object v1, Lcom/zhangdan/app/data/db/DataProvider;->CONTENT_RAW_QUERY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 58
    .local v8, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 60
    .local v9, count:I
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 64
    :cond_0
    if-eqz v8, :cond_1

    .line 65
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_1
    if-eqz v9, :cond_3

    .line 103
    :goto_0
    return-void

    .line 64
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_2

    .line 65
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 69
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    .line 70
    .local v11, is:Ljava/io/InputStream;
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 73
    .local v14, reader:Ljava/io/BufferedReader;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v13, opsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_1
    :try_start_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, line:Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 76
    const-string v1, " "

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, a:[Ljava/lang/String;
    sget-object v1, Lcom/zhangdan/app/sms/BillSmsNumField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "bank_id"

    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "bank_name"

    const/4 v3, 0x1

    aget-object v3, v6, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "sms_number"

    const/4 v3, 0x2

    aget-object v3, v6, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "create_date"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 82
    .local v7, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 84
    .end local v6           #a:[Ljava/lang/String;
    .end local v7           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v12           #line:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 85
    .local v10, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    if-eqz v14, :cond_4

    .line 89
    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 90
    :cond_4
    if-eqz v11, :cond_5

    .line 91
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 97
    .end local v10           #e:Ljava/io/IOException;
    :cond_5
    :goto_2
    :try_start_4
    const-string v1, "com.zhangdan.app"

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_0

    .line 98
    :catch_1
    move-exception v10

    .line 99
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v12       #line:Ljava/lang/String;
    :cond_6
    if-eqz v14, :cond_7

    .line 89
    :try_start_5
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 90
    :cond_7
    if-eqz v11, :cond_5

    .line 91
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 92
    :catch_2
    move-exception v10

    .line 93
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 92
    .end local v12           #line:Ljava/lang/String;
    .local v10, e:Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 93
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 87
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    .line 88
    if-eqz v14, :cond_8

    .line 89
    :try_start_6
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 90
    :cond_8
    if-eqz v11, :cond_9

    .line 91
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 94
    :cond_9
    :goto_3
    throw v1

    .line 92
    :catch_4
    move-exception v10

    .line 93
    .restart local v10       #e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 100
    .end local v10           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v10

    .line 101
    .local v10, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v10}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static initSmsRegex(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->initSmsPhone(Landroid/content/Context;)V

    .line 45
    invoke-static {p0}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->initSmsTemplace(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private static initSmsTemplace(Landroid/content/Context;)V
    .locals 17
    .parameter "context"

    .prologue
    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 112
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v15, sb:Ljava/lang/StringBuffer;
    const-string v2, "select count(*) from "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "bill_regex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    sget-object v2, Lcom/zhangdan/app/data/db/DataProvider;->CONTENT_RAW_QUERY_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 115
    .local v7, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 117
    .local v8, count:I
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 121
    :cond_0
    if-eqz v7, :cond_1

    .line 122
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_1
    if-eqz v8, :cond_3

    .line 158
    :goto_0
    return-void

    .line 121
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_2

    .line 122
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 126
    :cond_3
    new-instance v10, Lcom/zhangdan/app/data/db/ZhangdanDatabaseHelper;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/zhangdan/app/data/db/ZhangdanDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 127
    .local v10, dbHelper:Lcom/zhangdan/app/data/db/ZhangdanDatabaseHelper;
    invoke-virtual {v10}, Lcom/zhangdan/app/data/db/ZhangdanDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 128
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 129
    .local v12, is:Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 131
    .local v13, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    .line 132
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 133
    .end local v13           #reader:Ljava/io/BufferedReader;
    .local v14, reader:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 135
    :goto_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v16

    .local v16, sql:Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 137
    :try_start_3
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v11

    .line 139
    .local v11, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 143
    .end local v11           #e:Ljava/lang/Exception;
    .end local v16           #sql:Ljava/lang/String;
    :catch_1
    move-exception v11

    move-object v13, v14

    .line 144
    .end local v14           #reader:Ljava/io/BufferedReader;
    .restart local v11       #e:Ljava/lang/Exception;
    .restart local v13       #reader:Ljava/io/BufferedReader;
    :goto_2
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 147
    if-eqz v13, :cond_4

    .line 148
    :try_start_6
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 149
    :cond_4
    if-eqz v12, :cond_5

    .line 150
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 154
    :cond_5
    :goto_3
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 155
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 156
    invoke-virtual {v10}, Lcom/zhangdan/app/data/db/ZhangdanDatabaseHelper;->close()V

    goto :goto_0

    .line 142
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #reader:Ljava/io/BufferedReader;
    .restart local v14       #reader:Ljava/io/BufferedReader;
    .restart local v16       #sql:Ljava/lang/String;
    :cond_6
    :try_start_7
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 147
    if-eqz v14, :cond_7

    .line 148
    :try_start_8
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 149
    :cond_7
    if-eqz v12, :cond_8

    .line 150
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 154
    :cond_8
    :goto_4
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 155
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 156
    invoke-virtual {v10}, Lcom/zhangdan/app/data/db/ZhangdanDatabaseHelper;->close()V

    move-object v13, v14

    .line 157
    .end local v14           #reader:Ljava/io/BufferedReader;
    .restart local v13       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 151
    .end local v13           #reader:Ljava/io/BufferedReader;
    .restart local v14       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v11

    .line 152
    .restart local v11       #e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 151
    .end local v14           #reader:Ljava/io/BufferedReader;
    .end local v16           #sql:Ljava/lang/String;
    .restart local v13       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v11

    .line 152
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 146
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    .line 147
    :goto_5
    if-eqz v13, :cond_9

    .line 148
    :try_start_9
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 149
    :cond_9
    if-eqz v12, :cond_a

    .line 150
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 154
    :cond_a
    :goto_6
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 155
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 156
    invoke-virtual {v10}, Lcom/zhangdan/app/data/db/ZhangdanDatabaseHelper;->close()V

    throw v2

    .line 151
    :catch_4
    move-exception v11

    .line 152
    .restart local v11       #e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 146
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #reader:Ljava/io/BufferedReader;
    .restart local v14       #reader:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v2

    move-object v13, v14

    .end local v14           #reader:Ljava/io/BufferedReader;
    .restart local v13       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 143
    :catch_5
    move-exception v11

    goto :goto_2
.end method

.method public static isHaveBankBillData(Landroid/content/Context;I)Z
    .locals 8
    .parameter "context"
    .parameter "bankid"

    .prologue
    const/4 v4, 0x0

    .line 450
    const/4 v7, 0x0

    .line 451
    .local v7, isHave:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 452
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/sms/BillSmsField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bank_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 454
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 455
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 456
    const/4 v7, 0x1

    .line 460
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 461
    const/4 v6, 0x0

    .line 463
    :cond_0
    return v7

    .line 458
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static isMobileNO(Ljava/lang/String;)Z
    .locals 3
    .parameter "mobiles"

    .prologue
    .line 810
    const-string v2, "[0-9]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 811
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 812
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static loadAllBillData(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .locals 23
    .parameter "context"
    .parameter "bankId"
    .parameter "cardNo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 365
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-static/range {p2 .. p2}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    const-string p2, "a"

    .line 367
    :cond_0
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 368
    .local v19, sb:Ljava/lang/StringBuffer;
    const-string v3, "bank_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "card_last"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "bill_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 372
    sget-object v3, Lcom/zhangdan/app/sms/BillSmsField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "bill_type"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "amount"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "repay_day"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "repay_month"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "remark"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "sms_date"

    aput-object v6, v4, v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "sms_date desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 375
    .local v11, c:Landroid/database/Cursor;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    if-eqz v11, :cond_3

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 379
    :cond_1
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 380
    .local v13, id:J
    const-string v3, "bill_type"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 381
    .local v10, billType:I
    const-string v3, "amount"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 382
    .local v8, amount:Ljava/lang/String;
    const-string v3, "remark"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 383
    .local v16, remark:Ljava/lang/String;
    const-string v3, "sms_date"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 384
    .local v21, time:J
    const-string v3, "repay_day"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 385
    .local v17, repayDay:I
    const-string v3, "repay_month"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 386
    .local v18, repayMonth:I
    new-instance v12, Lcom/zhangdan/app/sms/BillData;

    invoke-direct {v12}, Lcom/zhangdan/app/sms/BillData;-><init>()V

    .line 387
    .local v12, data:Lcom/zhangdan/app/sms/BillData;
    invoke-virtual {v12, v13, v14}, Lcom/zhangdan/app/sms/BillData;->setId(J)V

    .line 388
    invoke-virtual {v12, v10}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 389
    invoke-virtual {v12, v8}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    .line 390
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/zhangdan/app/sms/BillData;->setRemark(Ljava/lang/String;)V

    .line 391
    move-wide/from16 v0, v21

    invoke-virtual {v12, v0, v1}, Lcom/zhangdan/app/sms/BillData;->setDate(J)V

    .line 392
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/zhangdan/app/sms/BillData;->setRepaymentDay(I)V

    .line 393
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/zhangdan/app/sms/BillData;->setRepaymentMonth(I)V

    .line 395
    invoke-static/range {v21 .. v22}, Lcom/zhangdan/app/util/DateUtils;->getYearMonthDay(J)[I

    move-result-object v9

    .line 396
    .local v9, arr:[I
    const/4 v3, 0x0

    aget v3, v9, v3

    invoke-virtual {v12, v3}, Lcom/zhangdan/app/sms/BillData;->setYear(I)V

    .line 397
    const/4 v3, 0x1

    aget v3, v9, v3

    invoke-virtual {v12, v3}, Lcom/zhangdan/app/sms/BillData;->setMonth(I)V

    .line 398
    const/4 v3, 0x2

    aget v3, v9, v3

    invoke-virtual {v12, v3}, Lcom/zhangdan/app/sms/BillData;->setDay(I)V

    .line 399
    if-eqz v17, :cond_2

    if-nez v18, :cond_5

    .line 400
    :cond_2
    const-string v3, "\u672a\u8bc6\u522b"

    invoke-virtual {v12, v3}, Lcom/zhangdan/app/sms/BillData;->setDateStr(Ljava/lang/String;)V

    .line 409
    :goto_0
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 413
    .end local v8           #amount:Ljava/lang/String;
    .end local v9           #arr:[I
    .end local v10           #billType:I
    .end local v12           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v13           #id:J
    .end local v16           #remark:Ljava/lang/String;
    .end local v17           #repayDay:I
    .end local v18           #repayMonth:I
    .end local v21           #time:J
    :cond_3
    if-eqz v11, :cond_4

    .line 414
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 416
    :cond_4
    return-object v15

    .line 402
    .restart local v8       #amount:Ljava/lang/String;
    .restart local v9       #arr:[I
    .restart local v10       #billType:I
    .restart local v12       #data:Lcom/zhangdan/app/sms/BillData;
    .restart local v13       #id:J
    .restart local v16       #remark:Ljava/lang/String;
    .restart local v17       #repayDay:I
    .restart local v18       #repayMonth:I
    .restart local v21       #time:J
    :cond_5
    :try_start_1
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    .local v20, sb1:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    aget v3, v9, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v3, 0xa

    move/from16 v0, v18

    if-ge v0, v3, :cond_7

    const-string v3, "0"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 404
    const-string v3, "-"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    const/16 v3, 0xa

    move/from16 v0, v17

    if-ge v0, v3, :cond_8

    const-string v3, "0"

    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/zhangdan/app/sms/BillData;->setDateStr(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 413
    .end local v8           #amount:Ljava/lang/String;
    .end local v9           #arr:[I
    .end local v10           #billType:I
    .end local v12           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v13           #id:J
    .end local v16           #remark:Ljava/lang/String;
    .end local v17           #repayDay:I
    .end local v18           #repayMonth:I
    .end local v20           #sb1:Ljava/lang/StringBuffer;
    .end local v21           #time:J
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_6

    .line 414
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3

    .line 403
    .restart local v8       #amount:Ljava/lang/String;
    .restart local v9       #arr:[I
    .restart local v10       #billType:I
    .restart local v12       #data:Lcom/zhangdan/app/sms/BillData;
    .restart local v13       #id:J
    .restart local v16       #remark:Ljava/lang/String;
    .restart local v17       #repayDay:I
    .restart local v18       #repayMonth:I
    .restart local v20       #sb1:Ljava/lang/StringBuffer;
    .restart local v21       #time:J
    :cond_7
    :try_start_2
    const-string v3, ""

    goto :goto_1

    .line 405
    :cond_8
    const-string v3, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public static loadAllDiscountSms(Landroid/content/Context;J)Ljava/util/List;
    .locals 12
    .parameter "context"
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 756
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 758
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/sms/BillSmsField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bill_type=4 and sms_date > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sms_data desc"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 760
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 762
    :cond_0
    const-string v1, "sms_date"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 763
    .local v8, date:J
    const-string v1, "sms_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 764
    .local v11, sms:Ljava/lang/String;
    new-instance v7, Lcom/zhangdan/app/sms/BillData;

    invoke-direct {v7}, Lcom/zhangdan/app/sms/BillData;-><init>()V

    .line 765
    .local v7, data:Lcom/zhangdan/app/sms/BillData;
    invoke-virtual {v7, v8, v9}, Lcom/zhangdan/app/sms/BillData;->setDate(J)V

    .line 766
    invoke-virtual {v7, v11}, Lcom/zhangdan/app/sms/BillData;->setSms(Ljava/lang/String;)V

    .line 767
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 772
    .end local v7           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v8           #date:J
    .end local v11           #sms:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 773
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 775
    :cond_2
    const/4 v6, 0x0

    .line 778
    return-object v10

    .line 772
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 773
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 775
    :cond_3
    const/4 v6, 0x0

    throw v1
.end method

.method public static loadAllTradingData(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .locals 22
    .parameter "context"
    .parameter "bankId"
    .parameter "cardNo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 320
    .local v3, cr:Landroid/content/ContentResolver;
    invoke-static/range {p2 .. p2}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 321
    const-string p2, "a"

    .line 322
    :cond_0
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 323
    .local v18, sb:Ljava/lang/StringBuffer;
    const-string v4, "bank_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "card_last"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\' and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "bill_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " <> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 327
    sget-object v4, Lcom/zhangdan/app/sms/BillSmsField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "bill_type"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "amount"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "remark"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "sms_date"

    aput-object v7, v5, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "sms_date desc"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 329
    .local v12, c:Landroid/database/Cursor;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v16, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    if-eqz v12, :cond_2

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string v4, "dd\u65e5 HH:mm"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 334
    .local v19, sdf:Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v4, "_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 335
    .local v14, id:J
    const-string v4, "bill_type"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 336
    .local v11, billType:I
    const-string v4, "amount"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 337
    .local v9, amount:Ljava/lang/String;
    const-string v4, "remark"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 338
    .local v17, remark:Ljava/lang/String;
    const-string v4, "sms_date"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 339
    .local v20, time:J
    new-instance v13, Lcom/zhangdan/app/sms/BillData;

    invoke-direct {v13}, Lcom/zhangdan/app/sms/BillData;-><init>()V

    .line 340
    .local v13, data:Lcom/zhangdan/app/sms/BillData;
    invoke-virtual {v13, v14, v15}, Lcom/zhangdan/app/sms/BillData;->setId(J)V

    .line 341
    invoke-virtual {v13, v11}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 342
    invoke-virtual {v13, v9}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/zhangdan/app/sms/BillData;->setRemark(Ljava/lang/String;)V

    .line 344
    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Lcom/zhangdan/app/sms/BillData;->setDate(J)V

    .line 346
    invoke-static/range {v20 .. v21}, Lcom/zhangdan/app/util/DateUtils;->getYearMonthDay(J)[I

    move-result-object v10

    .line 347
    .local v10, arr:[I
    const/4 v4, 0x0

    aget v4, v10, v4

    invoke-virtual {v13, v4}, Lcom/zhangdan/app/sms/BillData;->setYear(I)V

    .line 348
    const/4 v4, 0x1

    aget v4, v10, v4

    invoke-virtual {v13, v4}, Lcom/zhangdan/app/sms/BillData;->setMonth(I)V

    .line 349
    const/4 v4, 0x2

    aget v4, v10, v4

    invoke-virtual {v13, v4}, Lcom/zhangdan/app/sms/BillData;->setDay(I)V

    .line 350
    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/util/DateUtils;->formatDate(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/zhangdan/app/sms/BillData;->setDateStr(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 356
    .end local v9           #amount:Ljava/lang/String;
    .end local v10           #arr:[I
    .end local v11           #billType:I
    .end local v13           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v14           #id:J
    .end local v17           #remark:Ljava/lang/String;
    .end local v19           #sdf:Ljava/text/SimpleDateFormat;
    .end local v20           #time:J
    :cond_2
    if-eqz v12, :cond_3

    .line 357
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_3
    return-object v16

    .line 356
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_4

    .line 357
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4
.end method

.method public static queryAllBillDataDistinct(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 467
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 469
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 470
    .local v9, buffer:Ljava/lang/StringBuffer;
    const-string v1, "select * from "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "bill_data"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " where "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "bill_type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " < 3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " group by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "bank_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    sget-object v1, Lcom/zhangdan/app/data/db/DataProvider;->CONTENT_RAW_QUERY_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 472
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    :cond_0
    const-string v1, "bill_type"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 475
    .local v8, billType:I
    const-string v1, "bank_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 476
    .local v6, bankId:I
    const-string v1, "card_last"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 477
    .local v11, cardNum:Ljava/lang/String;
    const-string v1, "bank_name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 478
    .local v7, bankName:Ljava/lang/String;
    const-string v1, "true_name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 479
    .local v14, trueName:Ljava/lang/String;
    new-instance v12, Lcom/zhangdan/app/sms/BillData;

    invoke-direct {v12}, Lcom/zhangdan/app/sms/BillData;-><init>()V

    .line 480
    .local v12, data:Lcom/zhangdan/app/sms/BillData;
    invoke-virtual {v12, v6}, Lcom/zhangdan/app/sms/BillData;->setBankId(I)V

    .line 481
    invoke-virtual {v12, v7}, Lcom/zhangdan/app/sms/BillData;->setBankName(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v12, v11}, Lcom/zhangdan/app/sms/BillData;->setCardLast(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v12, v8}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 484
    invoke-virtual {v12, v14}, Lcom/zhangdan/app/sms/BillData;->setTrueName(Ljava/lang/String;)V

    .line 485
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    .end local v6           #bankId:I
    .end local v7           #bankName:Ljava/lang/String;
    .end local v8           #billType:I
    .end local v11           #cardNum:Ljava/lang/String;
    .end local v12           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v14           #trueName:Ljava/lang/String;
    :cond_1
    if-eqz v10, :cond_2

    .line 489
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 490
    const/4 v10, 0x0

    .line 492
    :cond_2
    return-object v13
.end method

.method public static queryBankByPhone(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 169
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/sms/BillSmsNumField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "bank_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "bank_name"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms_number = \'"

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

    move-result-object v6

    .line 170
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public static queryBillDataById(Landroid/content/Context;J)Lcom/zhangdan/app/sms/BillData;
    .locals 17
    .parameter "context"
    .parameter "id"

    .prologue
    .line 420
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 421
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/zhangdan/app/sms/BillSmsField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "bill_type"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "bank_name"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "amount"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "remark"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "sms_data"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "sms_date"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 424
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 425
    const-string v3, "bill_type"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 426
    .local v10, billType:I
    const-string v3, "amount"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 427
    .local v8, amount:Ljava/lang/String;
    const-string v3, "remark"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 428
    .local v13, remark:Ljava/lang/String;
    const-string v3, "sms_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 429
    .local v14, sms:Ljava/lang/String;
    const-string v3, "sms_date"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 430
    .local v15, time:J
    const-string v3, "bank_name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 431
    .local v9, bankName:Ljava/lang/String;
    new-instance v12, Lcom/zhangdan/app/sms/BillData;

    invoke-direct {v12}, Lcom/zhangdan/app/sms/BillData;-><init>()V

    .line 432
    .local v12, data:Lcom/zhangdan/app/sms/BillData;
    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Lcom/zhangdan/app/sms/BillData;->setId(J)V

    .line 433
    invoke-virtual {v12, v9}, Lcom/zhangdan/app/sms/BillData;->setBankName(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v12, v10}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 435
    invoke-virtual {v12, v8}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v12, v13}, Lcom/zhangdan/app/sms/BillData;->setRemark(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v12, v14}, Lcom/zhangdan/app/sms/BillData;->setSms(Ljava/lang/String;)V

    .line 438
    move-wide v0, v15

    invoke-virtual {v12, v0, v1}, Lcom/zhangdan/app/sms/BillData;->setDate(J)V

    .line 439
    sget-object v3, Lcom/zhangdan/app/util/DateUtils;->sdf:Ljava/text/SimpleDateFormat;

    move-wide v0, v15

    invoke-static {v0, v1, v3}, Lcom/zhangdan/app/util/DateUtils;->formatDate(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/zhangdan/app/sms/BillData;->setDateStr(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    if-eqz v11, :cond_0

    .line 444
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 446
    .end local v8           #amount:Ljava/lang/String;
    .end local v9           #bankName:Ljava/lang/String;
    .end local v10           #billType:I
    .end local v12           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v13           #remark:Ljava/lang/String;
    .end local v14           #sms:Ljava/lang/String;
    .end local v15           #time:J
    :cond_0
    :goto_0
    return-object v12

    .line 443
    :cond_1
    if-eqz v11, :cond_2

    .line 444
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 446
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_3

    .line 444
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method public static queryBillDataWithSize(Landroid/content/Context;III)Ljava/util/List;
    .locals 24
    .parameter "context"
    .parameter "start"
    .parameter "size"
    .parameter "billId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v18, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 528
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 529
    .local v10, buffer:Ljava/lang/StringBuffer;
    const-string v3, "select * from "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "bill_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " where "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "bill_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " order by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "sms_date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " desc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " limit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 533
    sget-object v3, Lcom/zhangdan/app/data/db/DataProvider;->CONTENT_RAW_QUERY_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 534
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 536
    :cond_0
    const-string v3, "bill_type"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 537
    .local v9, billType:I
    const-string v3, "bank_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 538
    .local v8, bankId:I
    const-string v3, "repay_day"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 539
    .local v14, day:I
    const-string v3, "repay_month"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 540
    .local v20, month:I
    const-string v3, "amount"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 541
    .local v19, money:Ljava/lang/String;
    const-string v3, "sms_date"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 542
    .local v22, time:J
    const-string v3, "sms_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 543
    .local v21, sms:Ljava/lang/String;
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 544
    .local v16, id:J
    const-string v3, "is_remeber"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 545
    .local v15, feed:I
    const-string v3, "card_last"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 546
    .local v12, cardNum:Ljava/lang/String;
    new-instance v13, Lcom/zhangdan/app/sms/BillData;

    invoke-direct {v13}, Lcom/zhangdan/app/sms/BillData;-><init>()V

    .line 547
    .local v13, data:Lcom/zhangdan/app/sms/BillData;
    invoke-virtual {v13, v15}, Lcom/zhangdan/app/sms/BillData;->setIs_rember(I)V

    .line 548
    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lcom/zhangdan/app/sms/BillData;->setId(J)V

    .line 549
    invoke-virtual {v13, v8}, Lcom/zhangdan/app/sms/BillData;->setBankId(I)V

    .line 550
    invoke-virtual {v13, v9}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 551
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/zhangdan/app/sms/BillData;->setRepaymentMonth(I)V

    .line 552
    invoke-virtual {v13, v14}, Lcom/zhangdan/app/sms/BillData;->setRepaymentDay(I)V

    .line 553
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    .line 554
    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Lcom/zhangdan/app/sms/BillData;->setDate(J)V

    .line 555
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/zhangdan/app/sms/BillData;->setSms(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v13, v12}, Lcom/zhangdan/app/sms/BillData;->setCardLast(Ljava/lang/String;)V

    .line 557
    move/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/zhangdan/app/sms/BillData;->setBillId(I)V

    .line 558
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 562
    .end local v8           #bankId:I
    .end local v9           #billType:I
    .end local v12           #cardNum:Ljava/lang/String;
    .end local v13           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v14           #day:I
    .end local v15           #feed:I
    .end local v16           #id:J
    .end local v19           #money:Ljava/lang/String;
    .end local v20           #month:I
    .end local v21           #sms:Ljava/lang/String;
    .end local v22           #time:J
    :cond_1
    if-eqz v11, :cond_2

    .line 563
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 564
    const/4 v11, 0x0

    .line 566
    :cond_2
    return-object v18
.end method

.method public static queryBillDataWithSize(Landroid/content/Context;IIII)Ljava/util/List;
    .locals 19
    .parameter "context"
    .parameter "start"
    .parameter "size"
    .parameter "billId"
    .parameter "billType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII)",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 573
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 574
    .local v9, buffer:Ljava/lang/StringBuffer;
    const-string v3, "select * from "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "bill_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " where "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "bill_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "bill_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " order by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "sms_date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " desc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " limit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 579
    sget-object v3, Lcom/zhangdan/app/data/db/DataProvider;->CONTENT_RAW_QUERY_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 580
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 582
    :cond_0
    const-string v3, "bank_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 583
    .local v8, bankId:I
    const-string v3, "repay_day"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 584
    .local v12, day:I
    const-string v3, "repay_month"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 585
    .local v15, month:I
    const-string v3, "amount"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 586
    .local v14, money:Ljava/lang/String;
    const-string v3, "sms_date"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 587
    .local v17, time:J
    const-string v3, "sms_data"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 588
    .local v16, sms:Ljava/lang/String;
    new-instance v11, Lcom/zhangdan/app/sms/BillData;

    invoke-direct {v11}, Lcom/zhangdan/app/sms/BillData;-><init>()V

    .line 589
    .local v11, data:Lcom/zhangdan/app/sms/BillData;
    invoke-virtual {v11, v15}, Lcom/zhangdan/app/sms/BillData;->setRepaymentMonth(I)V

    .line 590
    invoke-virtual {v11, v8}, Lcom/zhangdan/app/sms/BillData;->setBankId(I)V

    .line 591
    move/from16 v0, p4

    invoke-virtual {v11, v0}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 592
    invoke-virtual {v11, v12}, Lcom/zhangdan/app/sms/BillData;->setRepaymentDay(I)V

    .line 593
    invoke-virtual {v11, v14}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    .line 594
    move-wide/from16 v0, v17

    invoke-virtual {v11, v0, v1}, Lcom/zhangdan/app/sms/BillData;->setDate(J)V

    .line 595
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/zhangdan/app/sms/BillData;->setSms(Ljava/lang/String;)V

    .line 596
    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/zhangdan/app/sms/BillData;->setBillId(I)V

    .line 597
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 601
    .end local v8           #bankId:I
    .end local v11           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v12           #day:I
    .end local v14           #money:Ljava/lang/String;
    .end local v15           #month:I
    .end local v16           #sms:Ljava/lang/String;
    .end local v17           #time:J
    :cond_1
    if-eqz v10, :cond_2

    .line 602
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 603
    const/4 v10, 0x0

    .line 605
    :cond_2
    return-object v13
.end method

.method public static queryBlankCard(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 496
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 498
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/sms/BillSmsField;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "card_last = \'\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 499
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    :cond_0
    const-string v1, "bill_type"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 502
    .local v8, billType:I
    const-string v1, "bank_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 503
    .local v6, bankId:I
    const-string v1, "bank_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 504
    .local v7, bankName:Ljava/lang/String;
    const-string v1, "repay_day"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 505
    .local v11, day:I
    const-string v1, "true_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 506
    .local v14, trueName:Ljava/lang/String;
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 507
    .local v12, id:I
    new-instance v10, Lcom/zhangdan/app/sms/BillData;

    invoke-direct {v10}, Lcom/zhangdan/app/sms/BillData;-><init>()V

    .line 508
    .local v10, data:Lcom/zhangdan/app/sms/BillData;
    int-to-long v1, v12

    invoke-virtual {v10, v1, v2}, Lcom/zhangdan/app/sms/BillData;->setId(J)V

    .line 509
    invoke-virtual {v10, v6}, Lcom/zhangdan/app/sms/BillData;->setBankId(I)V

    .line 510
    invoke-virtual {v10, v7}, Lcom/zhangdan/app/sms/BillData;->setBankName(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v10, v8}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 512
    invoke-virtual {v10, v11}, Lcom/zhangdan/app/sms/BillData;->setRepaymentDay(I)V

    .line 513
    invoke-virtual {v10, v14}, Lcom/zhangdan/app/sms/BillData;->setTrueName(Ljava/lang/String;)V

    .line 514
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 517
    .end local v6           #bankId:I
    .end local v7           #bankName:Ljava/lang/String;
    .end local v8           #billType:I
    .end local v10           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v11           #day:I
    .end local v12           #id:I
    .end local v14           #trueName:Ljava/lang/String;
    :cond_1
    if-eqz v9, :cond_2

    .line 518
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 519
    const/4 v9, 0x0

    .line 521
    :cond_2
    return-object v13
.end method

.method public static queryRegexByPhone(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "phone"
    .parameter "bankId"

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 182
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/sms/BillRegexField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bank_phone = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bank_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 183
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public static querySmsCountByBillType(Landroid/content/Context;ILjava/lang/String;I)I
    .locals 9
    .parameter "context"
    .parameter "bankId"
    .parameter "cardNo"
    .parameter "billType"

    .prologue
    const/4 v2, 0x0

    .line 291
    const/4 v6, 0x0

    .line 292
    .local v6, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 293
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 294
    .local v8, sb:Ljava/lang/StringBuffer;
    const-string v1, "select count(*) from "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "bill_data"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " where "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "bank_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "bill_type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 296
    const-string v1, " and "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "card_last"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " like \'%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    sget-object v1, Lcom/zhangdan/app/data/db/DataProvider;->CONTENT_RAW_QUERY_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 299
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 302
    :cond_0
    if-eqz v7, :cond_1

    .line 303
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_1
    const/4 v7, 0x0

    .line 306
    return v6

    .line 302
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    .line 303
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_2
    const/4 v7, 0x0

    throw v1
.end method

.method public static saveBillDataList(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .local v5, opsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 787
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 788
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/sms/BillData;

    .line 789
    .local v2, data:Lcom/zhangdan/app/sms/BillData;
    invoke-static {v2}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->fillValuesWithBillData(Lcom/zhangdan/app/sms/BillData;)Landroid/content/ContentValues;

    move-result-object v6

    .line 790
    .local v6, value:Landroid/content/ContentValues;
    sget-object v7, Lcom/zhangdan/app/sms/BillSmsField;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 791
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 794
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #data:Lcom/zhangdan/app/sms/BillData;
    .end local v6           #value:Landroid/content/ContentValues;
    :cond_2
    :try_start_0
    const-string v7, "com.zhangdan.app"

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 795
    :catch_0
    move-exception v3

    .line 796
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateBillCard(Landroid/content/Context;JLjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "card"

    .prologue
    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 610
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 611
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "card_last"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    sget-object v2, Lcom/zhangdan/app/sms/BillSmsField;->CONTENT_URI:Landroid/net/Uri;

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

    .line 613
    return-void
.end method

.method public static updateBillId(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "newbillId"
    .parameter "oldbillId"

    .prologue
    .line 802
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 803
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 804
    .local v1, value:Landroid/content/ContentValues;
    const-string v2, "bill_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 805
    sget-object v2, Lcom/zhangdan/app/sms/BillSmsField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bill_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 806
    return-void
.end method

.method public static updateBillRemark(Landroid/content/Context;JLjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "remark"

    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 226
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "remark"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v2, Lcom/zhangdan/app/sms/BillSmsField;->CONTENT_URI:Landroid/net/Uri;

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

    .line 229
    return-void
.end method

.method public static updateBillType(Landroid/content/Context;JILjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "billType"
    .parameter "amount"

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 251
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 252
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "bill_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    const-string v2, "amount"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v2, Lcom/zhangdan/app/sms/BillSmsField;->CONTENT_URI:Landroid/net/Uri;

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

    .line 255
    return-void
.end method

.method public static updateBilldata(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;)V
    .locals 6
    .parameter "context"
    .parameter "bill"

    .prologue
    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 645
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->fillValuesWithBillData(Lcom/zhangdan/app/sms/BillData;)Landroid/content/ContentValues;

    move-result-object v1

    .line 646
    .local v1, value:Landroid/content/ContentValues;
    sget-object v2, Lcom/zhangdan/app/sms/BillSmsField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/BillData;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 647
    return-void
.end method

.method public static updateFeed(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 636
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 637
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 638
    .local v1, value:Landroid/content/ContentValues;
    const-string v2, "is_remeber"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    sget-object v2, Lcom/zhangdan/app/sms/BillSmsField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 640
    return-void
.end method
