.class public Lcom/zhangdan/app/util/BillDateUtils;
.super Ljava/lang/Object;
.source "BillDateUtils.java"


# static fields
.field private static final MD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final YMD_DATE_FORMAT2:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT2:Ljava/text/SimpleDateFormat;

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/util/BillDateUtils;->MD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcBillDateByPaymentDueDate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "paymentDueDateStr"
    .parameter "maxFreeDays"

    .prologue
    .line 321
    if-nez p1, :cond_0

    .line 322
    const/16 p1, 0x14

    .line 323
    :cond_0
    :try_start_0
    sget-object v5, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 324
    .local v4, paymentDueDate:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 325
    .local v2, cal:Ljava/util/Calendar;
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 326
    const/4 v5, 0x5

    neg-int v6, p1

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 327
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 328
    .local v0, billDate:Ljava/util/Date;
    sget-object v5, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 333
    .end local v0           #billDate:Ljava/util/Date;
    .end local v2           #cal:Ljava/util/Calendar;
    .end local v4           #paymentDueDate:Ljava/util/Date;
    :goto_0
    return-object v1

    .line 330
    :catch_0
    move-exception v3

    .line 331
    .local v3, e:Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 333
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static calcBillStartDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "billDateStr"

    .prologue
    .line 222
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 224
    .local v0, cal:Ljava/util/Calendar;
    :try_start_0
    sget-object v4, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 225
    .local v1, d1:Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 226
    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 227
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 228
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 229
    .local v2, d2:Ljava/util/Date;
    sget-object v4, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 233
    .end local v1           #d1:Ljava/util/Date;
    .end local v2           #d2:Ljava/util/Date;
    :goto_0
    return-object v4

    .line 230
    :catch_0
    move-exception v3

    .line 231
    .local v3, e:Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 233
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static calcCurrBillDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "billStr"

    .prologue
    .line 244
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 246
    .local v1, cal:Ljava/util/Calendar;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 247
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 248
    .local v4, currYear:I
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 249
    .local v3, currMon:I
    add-int/lit8 v3, v3, 0x1

    .line 250
    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 251
    .local v2, currDay:I
    sget-object v7, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 252
    .local v5, date1:Ljava/util/Date;
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 253
    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 255
    .local v0, billDay:I
    if-gt v0, v2, :cond_0

    .line 256
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 268
    .end local v0           #billDay:I
    .end local v2           #currDay:I
    .end local v3           #currMon:I
    .end local v4           #currYear:I
    .end local v5           #date1:Ljava/util/Date;
    :goto_0
    return-object v7

    .line 258
    .restart local v0       #billDay:I
    .restart local v2       #currDay:I
    .restart local v3       #currMon:I
    .restart local v4       #currYear:I
    .restart local v5       #date1:Ljava/util/Date;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 259
    if-nez v3, :cond_1

    .line 260
    const/16 v3, 0xc

    .line 261
    add-int/lit8 v4, v4, -0x1

    .line 263
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 265
    .end local v0           #billDay:I
    .end local v2           #currDay:I
    .end local v3           #currMon:I
    .end local v4           #currYear:I
    .end local v5           #date1:Ljava/util/Date;
    :catch_0
    move-exception v6

    .line 266
    .local v6, e:Ljava/text/ParseException;
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V

    .line 268
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static calcCurrPaymentDueDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "paymentDueDateStr"
    .parameter "billDateStr"

    .prologue
    .line 346
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 347
    .local v4, cal:Ljava/util/Calendar;
    sget-object v8, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 348
    .local v7, paymentDate:Ljava/util/Date;
    sget-object v8, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 349
    .local v0, billDate:Ljava/util/Date;
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 350
    const/4 v8, 0x5

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 352
    .local v5, dueDay:I
    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 353
    const/4 v8, 0x5

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 354
    .local v1, billDay:I
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 355
    .local v3, billYear:I
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 357
    .local v2, billMonth:I
    invoke-virtual {v4, v3, v2, v5}, Ljava/util/Calendar;->set(III)V

    .line 358
    if-ge v5, v1, :cond_0

    .line 359
    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 362
    :cond_0
    sget-object v8, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 366
    .end local v0           #billDate:Ljava/util/Date;
    .end local v1           #billDay:I
    .end local v2           #billMonth:I
    .end local v3           #billYear:I
    .end local v4           #cal:Ljava/util/Calendar;
    .end local v5           #dueDay:I
    .end local v7           #paymentDate:Ljava/util/Date;
    :goto_0
    return-object v8

    .line 363
    :catch_0
    move-exception v6

    .line 364
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 366
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static converDateFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "dateStr"

    .prologue
    const/4 v2, 0x0

    .line 278
    if-nez p0, :cond_0

    .line 286
    :goto_0
    return-object v2

    .line 281
    :cond_0
    :try_start_0
    sget-object v3, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 282
    .local v0, d:Ljava/util/Date;
    sget-object v3, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 283
    .end local v0           #d:Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 284
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static formatBillCycle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "billStartDate"
    .parameter "billDate"

    .prologue
    const/4 v5, 0x0

    .line 297
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-object v5

    .line 300
    :cond_1
    :try_start_0
    sget-object v6, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 301
    .local v0, d1:Ljava/util/Date;
    sget-object v6, Lcom/zhangdan/app/util/BillDateUtils;->MD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, s1:Ljava/lang/String;
    sget-object v6, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 303
    .local v1, d2:Ljava/util/Date;
    sget-object v6, Lcom/zhangdan/app/util/BillDateUtils;->MD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, s2:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 305
    .end local v0           #d1:Ljava/util/Date;
    .end local v1           #d2:Ljava/util/Date;
    .end local v3           #s1:Ljava/lang/String;
    .end local v4           #s2:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 306
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBillDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "billDateStr"
    .parameter "dueDateStr"

    .prologue
    .line 31
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 33
    .local v6, cal:Ljava/util/Calendar;
    :try_start_0
    sget-object v15, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 34
    .local v1, billDate:Ljava/util/Date;
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 35
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 36
    .local v5, billYear:I
    const/4 v15, 0x5

    invoke-virtual {v6, v15}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 37
    .local v2, billDay:I
    const/16 v15, 0x7b2

    if-le v5, v15, :cond_0

    .line 59
    .end local v1           #billDate:Ljava/util/Date;
    .end local v2           #billDay:I
    .end local v5           #billYear:I
    .end local p0
    :goto_0
    return-object p0

    .line 39
    .restart local v1       #billDate:Ljava/util/Date;
    .restart local v2       #billDay:I
    .restart local v5       #billYear:I
    .restart local p0
    :cond_0
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 40
    .local v3, billTime:J
    sget-object v15, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 41
    .local v9, dueDate:Ljava/util/Date;
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 42
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 43
    .local v10, dueTime:J
    sub-long v15, v10, v3

    const-wide/32 v17, 0x5265c00

    div-long v15, v15, v17

    long-to-int v7, v15

    .line 45
    .local v7, d:I
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 46
    .local v14, year:I
    const/4 v15, 0x2

    invoke-virtual {v6, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/lit8 v13, v15, 0x1

    .line 47
    .local v13, month:I
    move v8, v2

    .line 49
    .local v8, day:I
    if-gez v7, :cond_1

    .line 50
    const/4 v15, 0x2

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/util/Calendar;->add(II)V

    .line 51
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 52
    const/4 v15, 0x2

    invoke-virtual {v6, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/lit8 v13, v15, 0x1

    .line 54
    :cond_1
    add-int/lit8 v15, v13, -0x1

    invoke-virtual {v6, v14, v15, v8}, Ljava/util/Calendar;->set(III)V

    .line 55
    sget-object v15, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 56
    .end local v1           #billDate:Ljava/util/Date;
    .end local v2           #billDay:I
    .end local v3           #billTime:J
    .end local v5           #billYear:I
    .end local v7           #d:I
    .end local v8           #day:I
    .end local v9           #dueDate:Ljava/util/Date;
    .end local v10           #dueTime:J
    .end local v13           #month:I
    .end local v14           #year:I
    :catch_0
    move-exception v12

    .line 57
    .local v12, e:Ljava/text/ParseException;
    invoke-virtual {v12}, Ljava/text/ParseException;->printStackTrace()V

    .line 59
    const/16 p0, 0x0

    goto :goto_0
.end method

.method private static getDateTimeFromFormat(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J
    .locals 5
    .parameter "dateStr"
    .parameter "dateFormat"

    .prologue
    .line 204
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 205
    .local v1, date:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 206
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 207
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 211
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #date:Ljava/util/Date;
    :goto_0
    return-wide v3

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 211
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method public static getFreeDays(Ljava/lang/String;Ljava/lang/String;)I
    .locals 25
    .parameter "billDateStr"
    .parameter "dueDateStr"

    .prologue
    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 125
    .local v2, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 126
    .local v21, now:J
    move-wide/from16 v0, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 127
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 128
    .local v3, year:I
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v20, v4, 0x1

    .line 129
    .local v20, month:I
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 130
    .local v5, day:I
    add-int/lit8 v4, v20, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 131
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v21

    .line 133
    invoke-static/range {p0 .. p0}, Lcom/zhangdan/app/util/BillDateUtils;->parseDay(Ljava/lang/String;)I

    move-result v10

    .line 134
    .local v10, curBillDay:I
    invoke-static/range {p1 .. p1}, Lcom/zhangdan/app/util/BillDateUtils;->parseDay(Ljava/lang/String;)I

    move-result v13

    .line 136
    .local v13, curDueDay:I
    move-wide/from16 v16, v21

    .line 137
    .local v16, curTodayTimes:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v6}, Lcom/zhangdan/app/util/BillDateUtils;->getDateTimeFromFormat(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    move-result-wide v11

    .line 138
    .local v11, curBillTimes:J
    const-wide/16 v14, 0x0

    .line 139
    .local v14, curDueTimes:J
    const/16 v4, 0x1c

    if-gt v13, v4, :cond_1

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v6}, Lcom/zhangdan/app/util/BillDateUtils;->getDateTimeFromFormat(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    move-result-wide v14

    .line 146
    :goto_0
    const-wide/16 v6, 0x3e8

    div-long v6, v11, v6

    const-wide/16 v23, 0x3e8

    div-long v23, v16, v23

    sub-long v6, v6, v23

    const-wide/32 v23, 0x15180

    div-long v6, v6, v23

    long-to-int v9, v6

    .line 147
    .local v9, billFreeDays:I
    if-gez v9, :cond_3

    .line 148
    const-wide/16 v6, 0x3e8

    div-long v6, v14, v6

    const-wide/16 v23, 0x3e8

    div-long v23, v11, v23

    sub-long v6, v6, v23

    const-wide/32 v23, 0x15180

    div-long v6, v6, v23

    long-to-int v4, v6

    const/4 v6, 0x5

    if-ge v4, v6, :cond_2

    .line 149
    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 150
    const/4 v4, 0x2

    const/4 v6, 0x2

    invoke-virtual {v2, v4, v6}, Ljava/util/Calendar;->add(II)V

    .line 151
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 173
    :cond_0
    :goto_1
    const-wide/16 v6, 0x3e8

    div-long v6, v14, v6

    const-wide/16 v23, 0x3e8

    div-long v23, v16, v23

    sub-long v6, v6, v23

    const-wide/32 v23, 0x15180

    div-long v6, v6, v23

    long-to-int v0, v6

    move/from16 v19, v0

    .line 174
    .local v19, freeDays:I
    return v19

    .line 142
    .end local v9           #billFreeDays:I
    .end local v19           #freeDays:I
    :cond_1
    sub-int v18, v13, v10

    .line 143
    .local v18, dueMuch:I
    move/from16 v0, v18

    int-to-long v6, v0

    const-wide/32 v23, 0x5265c00

    mul-long v6, v6, v23

    add-long v14, v11, v6

    goto :goto_0

    .line 156
    .end local v18           #dueMuch:I
    .restart local v9       #billFreeDays:I
    :cond_2
    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 157
    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Ljava/util/Calendar;->add(II)V

    .line 158
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    goto :goto_1

    .line 164
    :cond_3
    const-wide/16 v6, 0x3e8

    div-long v6, v14, v6

    const-wide/16 v23, 0x3e8

    div-long v23, v11, v23

    sub-long v6, v6, v23

    const-wide/32 v23, 0x15180

    div-long v6, v6, v23

    long-to-int v4, v6

    const/4 v6, 0x5

    if-ge v4, v6, :cond_0

    .line 165
    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 166
    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Ljava/util/Calendar;->add(II)V

    .line 167
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    goto :goto_1
.end method

.method public static getLeaveDays(Ljava/lang/String;)I
    .locals 17
    .parameter "dueDateStr"

    .prologue
    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 97
    .local v1, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 98
    .local v13, now:J
    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 99
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 100
    .local v2, year:I
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 101
    .local v3, month:I
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 102
    .local v4, day:I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 103
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 105
    :try_start_0
    sget-object v5, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 106
    .local v9, dueDate:Ljava/util/Date;
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 107
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 108
    .local v10, dueTime:J
    const-wide/16 v5, 0x3e8

    div-long v5, v10, v5

    const-wide/16 v15, 0x3e8

    div-long v15, v13, v15

    sub-long/2addr v5, v15

    const-wide/32 v15, 0x15180

    div-long/2addr v5, v15
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v8, v5

    .line 109
    .local v8, d:I
    const/16 v5, -0x1e

    if-ge v8, v5, :cond_0

    .line 110
    const/4 v8, 0x0

    .line 115
    .end local v8           #d:I
    .end local v9           #dueDate:Ljava/util/Date;
    .end local v10           #dueTime:J
    :cond_0
    :goto_0
    return v8

    .line 112
    :catch_0
    move-exception v12

    .line 113
    .local v12, e:Ljava/text/ParseException;
    invoke-virtual {v12}, Ljava/text/ParseException;->printStackTrace()V

    .line 115
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isCurrentIssueBill(Ljava/lang/String;)Z
    .locals 13
    .parameter "billDateStr"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 70
    if-nez p0, :cond_0

    .line 87
    :goto_0
    return v10

    .line 73
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 74
    .local v3, cal:Ljava/util/Calendar;
    sget-object v11, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v11, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 75
    .local v0, billDate:Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 76
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 77
    .local v1, billTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 79
    .local v5, now:J
    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Ljava/util/Calendar;->add(II)V

    .line 80
    const/4 v11, 0x5

    const/4 v12, 0x3

    invoke-virtual {v3, v11, v12}, Ljava/util/Calendar;->add(II)V

    .line 81
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 83
    .local v7, t2:J
    cmp-long v11, v1, v5

    if-gez v11, :cond_1

    cmp-long v11, v5, v7

    if-gez v11, :cond_1

    :goto_1
    move v10, v9

    goto :goto_0

    :cond_1
    move v9, v10

    goto :goto_1

    .line 84
    .end local v0           #billDate:Ljava/util/Date;
    .end local v1           #billTime:J
    .end local v3           #cal:Ljava/util/Calendar;
    .end local v5           #now:J
    .end local v7           #t2:J
    :catch_0
    move-exception v4

    .line 85
    .local v4, e:Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseDay(Ljava/lang/String;)I
    .locals 4
    .parameter "dateStr"

    .prologue
    .line 185
    :try_start_0
    sget-object v3, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 186
    .local v1, date:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 187
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 188
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 192
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #date:Ljava/util/Date;
    :goto_0
    return v3

    .line 189
    :catch_0
    move-exception v2

    .line 190
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 192
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parseTimestampToYMDFormat(J)Ljava/lang/String;
    .locals 3
    .parameter "time"

    .prologue
    .line 377
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 378
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 379
    sget-object v1, Lcom/zhangdan/app/util/BillDateUtils;->YMD_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
