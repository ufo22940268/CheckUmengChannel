.class public Lcom/zhangdan/app/sms/ParseSms;
.super Ljava/lang/Object;
.source "ParseSms.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateSmsUserBank(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Ljava/util/List;)Z
    .locals 2
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
            "Lcom/zhangdan/app/sms/SmsBillData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, smsBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/SmsBillData;>;"
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/BillData;->getIs_CreaditCard()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 97
    invoke-static {p0, p1, p2}, Lcom/zhangdan/app/sms/ParseSms;->inserSmsUsrBank(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Ljava/util/List;)Z

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCardNum(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)V
    .locals 9
    .parameter "content"
    .parameter "billData"

    .prologue
    .line 359
    const-string v4, "(\u8d35\u5361|\u60a8\u7684|\u5c3e\u53f7|\u5361\u672b|\u5361\u53f7|\u5c3e\u6570|\u672b\u56db\u4f4d|\u540e4\u4f4d|\u672b5\u4f4d|\u5e10\u6237|\u8d26\u6237|\u8d26\u53f7|\u5e10\u53f7|\u5361\uff08|\u5361\\(|\u5c3e\u53f7\u662f|[\u4e00-\u9fa5]{2,5}\u5361)(\uff1a)?(\u4e3a)?(\\*){0,3}\\d{3,}"

    .line 360
    .local v4, numModel:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 361
    .local v5, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 362
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 363
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, group:Ljava/lang/String;
    move-object v7, v0

    .line 365
    .local v7, temp:Ljava/lang/String;
    const-string v8, "\\d{3,}"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 366
    .local v6, pattern2:Ljava/util/regex/Pattern;
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 367
    .local v3, matcher2:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 368
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, group2:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/zhangdan/app/sms/BillData;->setCardLast(Ljava/lang/String;)V

    .line 372
    .end local v0           #group:Ljava/lang/String;
    .end local v1           #group2:Ljava/lang/String;
    .end local v3           #matcher2:Ljava/util/regex/Matcher;
    .end local v6           #pattern2:Ljava/util/regex/Pattern;
    .end local v7           #temp:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static getDate(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)V
    .locals 11
    .parameter "content"
    .parameter "billData"

    .prologue
    .line 375
    const-string v6, ""

    .line 376
    .local v6, month:Ljava/lang/String;
    const-string v0, ""

    .line 377
    .local v0, day:Ljava/lang/String;
    const-string v10, "(\\d{1,2})\u6708"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 378
    .local v9, patternMonth:Ljava/util/regex/Pattern;
    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 379
    .local v5, matcherMonth:Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 380
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    .line 381
    const-string v10, "\\d{1,2}"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 382
    .local v7, pattern2:Ljava/util/regex/Pattern;
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 383
    .local v3, matcher2:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 384
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, group2:Ljava/lang/String;
    move-object v6, v2

    .line 388
    .end local v2           #group2:Ljava/lang/String;
    .end local v3           #matcher2:Ljava/util/regex/Matcher;
    .end local v7           #pattern2:Ljava/util/regex/Pattern;
    :cond_0
    const-string v10, "(\\d{1,2})(\u65e5|\u53f7)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 389
    .local v8, patternDay:Ljava/util/regex/Pattern;
    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 390
    .local v4, matcherDay:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 391
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 392
    const-string v10, "\\d{1,2}"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 393
    .restart local v7       #pattern2:Ljava/util/regex/Pattern;
    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 394
    .restart local v3       #matcher2:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 395
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 396
    .restart local v2       #group2:Ljava/lang/String;
    move-object v0, v2

    .line 400
    .end local v2           #group2:Ljava/lang/String;
    .end local v3           #matcher2:Ljava/util/regex/Matcher;
    .end local v7           #pattern2:Ljava/util/regex/Pattern;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 401
    const-string v10, "\u8fd8\u6b3e\u65e5"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "\u5230\u671f\u8fd8\u6b3e"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "\u8bf7\u4e8e"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "\u8fd8\u6b3e\u5230\u671f"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 403
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/zhangdan/app/sms/BillData;->setRepaymentDay(I)V

    .line 404
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/zhangdan/app/sms/BillData;->setRepaymentMonth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :cond_3
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getMoney(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)V
    .locals 7
    .parameter "content"
    .parameter "billData"

    .prologue
    .line 414
    sget-object v6, Lcom/zhangdan/app/sms/BillMgr;->DEFAULT_REGEX:Lcom/zhangdan/app/sms/BillMgr$BillRegex;

    iget-object v6, v6, Lcom/zhangdan/app/sms/BillMgr$BillRegex;->expendPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 415
    .local v0, costMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 416
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, group:Ljava/lang/String;
    sget-object v6, Lcom/zhangdan/app/sms/BillMgr;->AmountPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 418
    .local v5, tempMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 419
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, group1:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 421
    invoke-virtual {p1, v2}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    .line 449
    .end local v1           #group:Ljava/lang/String;
    .end local v2           #group1:Ljava/lang/String;
    .end local v5           #tempMatcher:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    sget-object v6, Lcom/zhangdan/app/sms/BillMgr;->DEFAULT_REGEX:Lcom/zhangdan/app/sms/BillMgr$BillRegex;

    iget-object v6, v6, Lcom/zhangdan/app/sms/BillMgr$BillRegex;->incomePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 427
    .local v3, incomeMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 428
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 429
    .restart local v1       #group:Ljava/lang/String;
    sget-object v6, Lcom/zhangdan/app/sms/BillMgr;->AmountPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 430
    .restart local v5       #tempMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 431
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 432
    .restart local v2       #group1:Ljava/lang/String;
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 433
    invoke-virtual {p1, v2}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    goto :goto_0

    .line 438
    .end local v1           #group:Ljava/lang/String;
    .end local v2           #group1:Ljava/lang/String;
    .end local v5           #tempMatcher:Ljava/util/regex/Matcher;
    :cond_2
    sget-object v6, Lcom/zhangdan/app/sms/BillMgr;->DEFAULT_REGEX:Lcom/zhangdan/app/sms/BillMgr$BillRegex;

    iget-object v6, v6, Lcom/zhangdan/app/sms/BillMgr$BillRegex;->amountPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 439
    .local v4, payMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 440
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 441
    .restart local v1       #group:Ljava/lang/String;
    sget-object v6, Lcom/zhangdan/app/sms/BillMgr;->AmountPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 442
    .restart local v5       #tempMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 443
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 444
    .restart local v2       #group1:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 445
    invoke-virtual {p1, v2}, Lcom/zhangdan/app/sms/BillData;->setAmount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSmsUserBankCount(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 345
    const/4 v7, 0x0

    .line 346
    .local v7, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 347
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zhangdan/app/data/db/table/SmsUserBankField;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "bank_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 348
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 349
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 350
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 351
    const/4 v6, 0x0

    .line 354
    :cond_0
    return v7
.end method

.method private static increaseSmsSum(Lcom/zhangdan/app/sms/SmsBillData;I)V
    .locals 1
    .parameter "sms"
    .parameter "billType"

    .prologue
    .line 239
    if-nez p1, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/zhangdan/app/sms/SmsBillData;->getBillNum()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/sms/SmsBillData;->setBillNum(I)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/zhangdan/app/sms/SmsBillData;->getDiscountNum()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/sms/SmsBillData;->setDiscountNum(I)V

    goto :goto_0

    .line 243
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/zhangdan/app/sms/SmsBillData;->getCostNum()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/sms/SmsBillData;->setCostNum(I)V

    goto :goto_0

    .line 245
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 246
    invoke-virtual {p0}, Lcom/zhangdan/app/sms/SmsBillData;->getIncomeNum()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/sms/SmsBillData;->setIncomeNum(I)V

    goto :goto_0

    .line 247
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/zhangdan/app/sms/SmsBillData;->getOtherNum()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/sms/SmsBillData;->setOtherNum(I)V

    goto :goto_0
.end method

.method private static inserBillData(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .parameter "context"
    .parameter "data"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zhangdan/app/sms/BillData;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/SmsBillData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, billList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    .local p3, smsBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/SmsBillData;>;"
    const/4 v3, 0x1

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, result:Z
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/BillData;->getIs_CreaditCard()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "scan_process"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v2, "sum_num"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v2, "sms_phone_number"

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/BillData;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 89
    invoke-static {p0, p1, p3}, Lcom/zhangdan/app/sms/ParseSms;->generateSmsUserBank(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Ljava/util/List;)Z

    move-result v1

    .line 90
    invoke-static {p0, p1, p2}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->addBillData(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Ljava/util/List;)V

    .line 92
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return v1
.end method

.method private static inserSmsUsrBank(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Ljava/util/List;)Z
    .locals 17
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
            "Lcom/zhangdan/app/sms/SmsBillData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, smsBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/SmsBillData;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getBankId()I

    move-result v2

    .line 104
    .local v2, bankId:I
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getCardLast()Ljava/lang/String;

    move-result-object v12

    .line 105
    .local v12, smsCardNum:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getTrueName()Ljava/lang/String;

    move-result-object v14

    .line 106
    .local v14, smsTrueName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getPhone()Ljava/lang/String;

    move-result-object v13

    .line 107
    .local v13, smsPhone:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v4

    .line 108
    .local v4, billType:I
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    if-eqz v4, :cond_0

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getUsAmount()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v4, v0, :cond_0

    .line 110
    const/16 v16, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 111
    const/4 v4, 0x3

    .line 114
    :cond_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v15, tempSmsList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/SmsBillData;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_2

    .line 116
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/sms/SmsBillData;

    .line 117
    .local v11, sms:Lcom/zhangdan/app/sms/SmsBillData;
    invoke-virtual {v11}, Lcom/zhangdan/app/sms/SmsBillData;->getBankId()I

    move-result v16

    move/from16 v0, v16

    if-ne v2, v0, :cond_1

    .line 118
    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 121
    .end local v11           #sms:Lcom/zhangdan/app/sms/SmsBillData;
    :cond_2
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 122
    invoke-static/range {p0 .. p2}, Lcom/zhangdan/app/sms/ParseSms;->insert(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Ljava/util/List;)V

    .line 123
    const/16 v16, 0x1

    .line 234
    :goto_1
    return v16

    .line 125
    :cond_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v10

    .line 126
    .local v10, size:I
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 127
    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v4, v0, :cond_4

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v4, v0, :cond_5

    .line 128
    :cond_4
    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/sms/SmsBillData;

    .line 129
    .restart local v11       #sms:Lcom/zhangdan/app/sms/SmsBillData;
    invoke-virtual {v11}, Lcom/zhangdan/app/sms/SmsBillData;->getBillId()I

    move-result v3

    .line 130
    .local v3, billId:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/sms/BillData;->setBillId(I)V

    .line 131
    invoke-static {v11, v4}, Lcom/zhangdan/app/sms/ParseSms;->increaseSmsSum(Lcom/zhangdan/app/sms/SmsBillData;I)V

    .line 132
    const/16 v16, 0x0

    goto :goto_1

    .line 134
    .end local v3           #billId:I
    .end local v11           #sms:Lcom/zhangdan/app/sms/SmsBillData;
    :cond_5
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2
    if-ge v8, v10, :cond_16

    .line 135
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/sms/SmsBillData;

    .line 136
    .restart local v11       #sms:Lcom/zhangdan/app/sms/SmsBillData;
    invoke-virtual {v11}, Lcom/zhangdan/app/sms/SmsBillData;->getPhone()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 137
    invoke-virtual {v11}, Lcom/zhangdan/app/sms/SmsBillData;->getBillId()I

    move-result v3

    .line 138
    .restart local v3       #billId:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/sms/BillData;->setBillId(I)V

    .line 139
    if-nez v4, :cond_6

    .line 140
    invoke-static {v11, v4}, Lcom/zhangdan/app/sms/ParseSms;->increaseSmsSum(Lcom/zhangdan/app/sms/SmsBillData;I)V

    .line 141
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lcom/zhangdan/app/sms/ParseSms;->updateSmsBillData(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Lcom/zhangdan/app/sms/SmsBillData;)V

    .line 142
    const/16 v16, 0x1

    goto :goto_1

    .line 144
    :cond_6
    invoke-static {v11, v4}, Lcom/zhangdan/app/sms/ParseSms;->increaseSmsSum(Lcom/zhangdan/app/sms/SmsBillData;I)V

    .line 145
    const/16 v16, 0x0

    goto :goto_1

    .line 134
    .end local v3           #billId:I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 151
    .end local v8           #j:I
    .end local v11           #sms:Lcom/zhangdan/app/sms/SmsBillData;
    :cond_8
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_f

    .line 152
    const/4 v7, 0x0

    .line 153
    .local v7, isFind:Z
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_3
    if-ge v8, v10, :cond_b

    .line 154
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/sms/SmsBillData;

    .line 155
    .restart local v11       #sms:Lcom/zhangdan/app/sms/SmsBillData;
    invoke-virtual {v11}, Lcom/zhangdan/app/sms/SmsBillData;->getCardNum()Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, card:Ljava/lang/String;
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 157
    invoke-virtual {v11}, Lcom/zhangdan/app/sms/SmsBillData;->getBillId()I

    move-result v3

    .line 158
    .restart local v3       #billId:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/sms/BillData;->setBillId(I)V

    .line 159
    if-nez v4, :cond_9

    .line 160
    invoke-static {v11, v4}, Lcom/zhangdan/app/sms/ParseSms;->increaseSmsSum(Lcom/zhangdan/app/sms/SmsBillData;I)V

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lcom/zhangdan/app/sms/ParseSms;->updateSmsBillData(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Lcom/zhangdan/app/sms/SmsBillData;)V

    .line 162
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 164
    :cond_9
    invoke-static {v11, v4}, Lcom/zhangdan/app/sms/ParseSms;->increaseSmsSum(Lcom/zhangdan/app/sms/SmsBillData;I)V

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lcom/zhangdan/app/sms/ParseSms;->updateSmsBillData(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Lcom/zhangdan/app/sms/SmsBillData;)V

    .line 166
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 153
    .end local v3           #billId:I
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 170
    .end local v5           #card:Ljava/lang/String;
    .end local v11           #sms:Lcom/zhangdan/app/sms/SmsBillData;
    :cond_b
    if-nez v7, :cond_e

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v10, v0, :cond_e

    .line 171
    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/sms/SmsBillData;

    .line 172
    .restart local v11       #sms:Lcom/zhangdan/app/sms/SmsBillData;
    invoke-virtual {v11}, Lcom/zhangdan/app/sms/SmsBillData;->getCardNum()Ljava/lang/String;

    move-result-object v5

    .line 173
    .restart local v5       #card:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 174
    invoke-static/range {p0 .. p2}, Lcom/zhangdan/app/sms/ParseSms;->insert(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Ljava/util/List;)V

    .line 175
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 177
    :cond_c
    invoke-virtual {v11}, Lcom/zhangdan/app/sms/SmsBillData;->getBillId()I

    move-result v3

    .line 178
    .restart local v3       #billId:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/sms/BillData;->setBillId(I)V

    .line 179
    if-nez v4, :cond_d

    .line 180
    invoke-static {v11, v4}, Lcom/zhangdan/app/sms/ParseSms;->increaseSmsSum(Lcom/zhangdan/app/sms/SmsBillData;I)V

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lcom/zhangdan/app/sms/ParseSms;->updateSmsBillData(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Lcom/zhangdan/app/sms/SmsBillData;)V

    .line 182
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 184
    :cond_d
    invoke-static {v11, v4}, Lcom/zhangdan/app/sms/ParseSms;->increaseSmsSum(Lcom/zhangdan/app/sms/SmsBillData;I)V

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lcom/zhangdan/app/sms/ParseSms;->updateSmsBillData(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Lcom/zhangdan/app/sms/SmsBillData;)V

    .line 186
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 189
    .end local v3           #billId:I
    .end local v5           #card:Ljava/lang/String;
    .end local v11           #sms:Lcom/zhangdan/app/sms/SmsBillData;
    :cond_e
    invoke-static/range {p0 .. p2}, Lcom/zhangdan/app/sms/ParseSms;->insert(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Ljava/util/List;)V

    .line 190
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 191
    .end local v7           #isFind:Z
    .end local v8           #j:I
    :cond_f
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_16

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_16

    .line 192
    const/4 v7, 0x0

    .line 193
    .restart local v7       #isFind:Z
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_4
    if-ge v8, v10, :cond_12

    .line 194
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/sms/SmsBillData;

    .line 195
    .restart local v11       #sms:Lcom/zhangdan/app/sms/SmsBillData;
    invoke-virtual {v11}, Lcom/zhangdan/app/sms/SmsBillData;->getTruename()Ljava/lang/String;

    move-result-object v9

    .line 196
    .local v9, name:Ljava/lang/String;
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 197
    invoke-virtual {v11}, Lcom/zhangdan/app/sms/SmsBillData;->getBillId()I

    move-result v3

    .line 198
    .restart local v3       #billId:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/sms/BillData;->setBillId(I)V

    .line 199
    if-nez v4, :cond_10

    .line 200
    invoke-static {v11, v4}, Lcom/zhangdan/app/sms/ParseSms;->increaseSmsSum(Lcom/zhangdan/app/sms/SmsBillData;I)V

    .line 201
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lcom/zhangdan/app/sms/ParseSms;->updateSmsBillData(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Lcom/zhangdan/app/sms/SmsBillData;)V

    .line 202
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 204
    :cond_10
    invoke-static {v11, v4}, Lcom/zhangdan/app/sms/ParseSms;->increaseSmsSum(Lcom/zhangdan/app/sms/SmsBillData;I)V

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lcom/zhangdan/app/sms/ParseSms;->updateSmsBillData(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Lcom/zhangdan/app/sms/SmsBillData;)V

    .line 206
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 193
    .end local v3           #billId:I
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 210
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #sms:Lcom/zhangdan/app/sms/SmsBillData;
    :cond_12
    if-nez v7, :cond_15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v10, v0, :cond_15

    .line 211
    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zhangdan/app/sms/SmsBillData;

    .line 212
    .restart local v11       #sms:Lcom/zhangdan/app/sms/SmsBillData;
    invoke-virtual {v11}, Lcom/zhangdan/app/sms/SmsBillData;->getTruename()Ljava/lang/String;

    move-result-object v9

    .line 213
    .restart local v9       #name:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_13

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_13

    .line 214
    invoke-static/range {p0 .. p2}, Lcom/zhangdan/app/sms/ParseSms;->insert(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Ljava/util/List;)V

    .line 215
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 217
    :cond_13
    invoke-virtual {v11}, Lcom/zhangdan/app/sms/SmsBillData;->getBillId()I

    move-result v3

    .line 218
    .restart local v3       #billId:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/sms/BillData;->setBillId(I)V

    .line 219
    if-nez v4, :cond_14

    .line 220
    invoke-static {v11, v4}, Lcom/zhangdan/app/sms/ParseSms;->increaseSmsSum(Lcom/zhangdan/app/sms/SmsBillData;I)V

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lcom/zhangdan/app/sms/ParseSms;->updateSmsBillData(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Lcom/zhangdan/app/sms/SmsBillData;)V

    .line 222
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 224
    :cond_14
    invoke-static {v11, v4}, Lcom/zhangdan/app/sms/ParseSms;->increaseSmsSum(Lcom/zhangdan/app/sms/SmsBillData;I)V

    .line 225
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lcom/zhangdan/app/sms/ParseSms;->updateSmsBillData(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Lcom/zhangdan/app/sms/SmsBillData;)V

    .line 226
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 229
    .end local v3           #billId:I
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #sms:Lcom/zhangdan/app/sms/SmsBillData;
    :cond_15
    invoke-static/range {p0 .. p2}, Lcom/zhangdan/app/sms/ParseSms;->insert(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Ljava/util/List;)V

    .line 230
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 234
    .end local v7           #isFind:Z
    .end local v8           #j:I
    :cond_16
    const/16 v16, 0x0

    goto/16 :goto_1
.end method

.method private static insert(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Ljava/util/List;)V
    .locals 15
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
            "Lcom/zhangdan/app/sms/SmsBillData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p2, smsBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/SmsBillData;>;"
    new-instance v8, Lcom/zhangdan/app/sms/SmsBillData;

    invoke-direct {v8}, Lcom/zhangdan/app/sms/SmsBillData;-><init>()V

    .line 299
    .local v8, sms:Lcom/zhangdan/app/sms/SmsBillData;
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getBankId()I

    move-result v1

    .line 300
    .local v1, bankId:I
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getBankName()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, bankName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getTrueName()Ljava/lang/String;

    move-result-object v9

    .line 302
    .local v9, trueName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getCardLast()Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, card:Ljava/lang/String;
    invoke-virtual {v8, v1}, Lcom/zhangdan/app/sms/SmsBillData;->setBankId(I)V

    .line 304
    invoke-virtual {v8, v2}, Lcom/zhangdan/app/sms/SmsBillData;->setBankName(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v8, v9}, Lcom/zhangdan/app/sms/SmsBillData;->setTruename(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v8, v4}, Lcom/zhangdan/app/sms/SmsBillData;->setCardNum(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getPhone()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/zhangdan/app/sms/SmsBillData;->setPhone(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 309
    .local v5, cr:Landroid/content/ContentResolver;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 310
    .local v11, value:Landroid/content/ContentValues;
    const-string v12, "bank_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    const-string v12, "bank_name"

    invoke-virtual {v11, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v12, "name_on_sms"

    invoke-virtual {v11, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v12, "card_no"

    invoke-virtual {v11, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v12

    if-nez v12, :cond_0

    .line 315
    const-string v12, "new_balance"

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v12, "usd_new_balance"

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getUsAmount()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getDate()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/zhangdan/app/util/DateUtils;->getYearMonthDay(J)[I

    move-result-object v6

    .line 318
    .local v6, dateArray:[I
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getRepaymentMonth()I

    move-result v12

    const/4 v13, 0x1

    aget v13, v6, v13

    if-ge v12, v13, :cond_1

    .line 319
    const/4 v12, 0x0

    aget v12, v6, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/zhangdan/app/sms/BillData;->setRepaymentYear(I)V

    .line 323
    :goto_0
    const-string v12, "payment_due_date"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getRepaymentYear()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getRepaymentMonth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getRepaymentDay()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v6           #dateArray:[I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v12

    invoke-static {v8, v12}, Lcom/zhangdan/app/sms/ParseSms;->increaseSmsSum(Lcom/zhangdan/app/sms/SmsBillData;I)V

    .line 326
    const-string v12, "is_creaditcard"

    invoke-virtual/range {p1 .. p1}, Lcom/zhangdan/app/sms/BillData;->getIs_CreaditCard()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    sget-object v12, Lcom/zhangdan/app/data/db/table/SmsUserBankField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v12, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 329
    .local v10, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    long-to-int v3, v12

    .line 330
    .local v3, billId:I
    invoke-virtual {v8, v3}, Lcom/zhangdan/app/sms/SmsBillData;->setBillId(I)V

    .line 331
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/sms/BillData;->setBillId(I)V

    .line 332
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v3           #billId:I
    :goto_1
    return-void

    .line 321
    .end local v10           #uri:Landroid/net/Uri;
    .restart local v6       #dateArray:[I
    :cond_1
    const/4 v12, 0x0

    aget v12, v6, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/zhangdan/app/sms/BillData;->setRepaymentYear(I)V

    goto :goto_0

    .line 333
    .end local v6           #dateArray:[I
    .restart local v10       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 334
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static isBankSms(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)Z
    .locals 1
    .parameter "content"
    .parameter "billData"

    .prologue
    .line 339
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 340
    invoke-virtual {p1, p0}, Lcom/zhangdan/app/sms/BillData;->setSms(Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method private static parseName(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)V
    .locals 6
    .parameter "content"
    .parameter "billData"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 452
    const-string v2, "\u5148\u751f"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 453
    const-string v2, "\u5148\u751f"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 454
    .local v0, index:I
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, str:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 458
    :cond_0
    const-string v2, "\u5c0a\u656c\u7684"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    const-string v2, "\u5c0a\u656c\u7684"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 461
    :cond_1
    const-string v2, "\u5973\u58eb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 462
    const-string v2, "\u5973\u58eb"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 464
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 465
    invoke-virtual {p1, v1}, Lcom/zhangdan/app/sms/BillData;->setTrueName(Ljava/lang/String;)V

    .line 487
    .end local v0           #index:I
    .end local v1           #str:Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 470
    :cond_4
    const-string v2, "\u5973\u58eb"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 471
    const-string v2, "\u5973\u58eb"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 472
    .restart local v0       #index:I
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 473
    .restart local v1       #str:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 474
    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 476
    :cond_5
    const-string v2, "\u5c0a\u656c\u7684"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 477
    const-string v2, "\u5c0a\u656c\u7684"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 479
    :cond_6
    const-string v2, "\u5148\u751f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 480
    const-string v2, "\u5148\u751f"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 482
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v5, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 483
    invoke-virtual {p1, v1}, Lcom/zhangdan/app/sms/BillData;->setTrueName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parseSms(Landroid/content/Context;Lcom/zhangdan/app/sms/SmsData;Ljava/util/List;Ljava/util/List;)Z
    .locals 9
    .parameter "context"
    .parameter "data"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zhangdan/app/sms/SmsData;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/BillData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/sms/SmsBillData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, billList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/BillData;>;"
    .local p3, smsBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/sms/SmsBillData;>;"
    const/4 v6, 0x0

    .line 32
    new-instance v5, Lcom/zhangdan/app/sms/BillMgr;

    invoke-direct {v5, p0}, Lcom/zhangdan/app/sms/BillMgr;-><init>(Landroid/content/Context;)V

    .line 33
    .local v5, mg:Lcom/zhangdan/app/sms/BillMgr;
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/SmsData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->isMobileNO(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/SmsData;->getSmsbody()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v6

    .line 36
    :cond_1
    const/4 v4, 0x0

    .line 37
    .local v4, isOfBank:Z
    invoke-virtual {v5, p0, p1}, Lcom/zhangdan/app/sms/BillMgr;->parseSms(Landroid/content/Context;Lcom/zhangdan/app/sms/SmsData;)Lcom/zhangdan/app/sms/BillData;

    move-result-object v2

    .line 38
    .local v2, billData:Lcom/zhangdan/app/sms/BillData;
    if-nez v2, :cond_7

    .line 39
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/SmsData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->queryBankByPhone(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 40
    .local v3, c:Landroid/database/Cursor;
    if-eqz v3, :cond_3

    .line 41
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 42
    const/4 v4, 0x1

    .line 43
    new-instance v2, Lcom/zhangdan/app/sms/BillData;

    .end local v2           #billData:Lcom/zhangdan/app/sms/BillData;
    invoke-direct {v2}, Lcom/zhangdan/app/sms/BillData;-><init>()V

    .line 44
    .restart local v2       #billData:Lcom/zhangdan/app/sms/BillData;
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 45
    const-string v7, "bank_name"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, bankName:Ljava/lang/String;
    const-string v7, "bank_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 47
    .local v0, bankId:I
    invoke-virtual {v2, v0}, Lcom/zhangdan/app/sms/BillData;->setBankId(I)V

    .line 48
    invoke-virtual {v2, v1}, Lcom/zhangdan/app/sms/BillData;->setBankName(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/SmsData;->getSmsbody()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/zhangdan/app/sms/ParseSms;->getCardNum(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)V

    .line 50
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/SmsData;->getSmsbody()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/zhangdan/app/sms/ParseSms;->getDate(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)V

    .line 51
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/SmsData;->getSmsbody()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/zhangdan/app/sms/ParseSms;->getMoney(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)V

    .line 52
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/SmsData;->getSmsbody()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/zhangdan/app/sms/ParseSms;->parseName(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)V

    .line 53
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/SmsData;->getSmsbody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/zhangdan/app/sms/BillData;->setSms(Ljava/lang/String;)V

    .line 55
    .end local v0           #bankId:I
    .end local v1           #bankName:Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 61
    .end local v3           #c:Landroid/database/Cursor;
    :cond_3
    :goto_1
    if-eqz v4, :cond_6

    .line 62
    if-nez v2, :cond_4

    .line 63
    new-instance v2, Lcom/zhangdan/app/sms/BillData;

    .end local v2           #billData:Lcom/zhangdan/app/sms/BillData;
    invoke-direct {v2}, Lcom/zhangdan/app/sms/BillData;-><init>()V

    .line 64
    .restart local v2       #billData:Lcom/zhangdan/app/sms/BillData;
    :cond_4
    invoke-virtual {v2}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    .line 65
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/SmsData;->getSmsbody()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/zhangdan/app/sms/ParseSms;->isBankSms(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)Z

    .line 67
    :cond_5
    invoke-virtual {v2}, Lcom/zhangdan/app/sms/BillData;->getRepaymentMonth()I

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v2}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v7

    if-nez v7, :cond_6

    .line 68
    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Lcom/zhangdan/app/sms/BillData;->setBillType(I)V

    .line 69
    const-string v7, ""

    invoke-virtual {v2, v7}, Lcom/zhangdan/app/sms/BillData;->setCardLast(Ljava/lang/String;)V

    .line 72
    :cond_6
    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/SmsData;->getDate()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/zhangdan/app/sms/BillData;->setDate(J)V

    .line 74
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/SmsData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/zhangdan/app/sms/BillData;->setPhone(Ljava/lang/String;)V

    .line 75
    invoke-static {p0, v2, p2, p3}, Lcom/zhangdan/app/sms/ParseSms;->inserBillData(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Ljava/util/List;Ljava/util/List;)Z

    move-result v6

    goto/16 :goto_0

    .line 58
    :cond_7
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/SmsData;->getSmsbody()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/zhangdan/app/sms/ParseSms;->parseName(Ljava/lang/String;Lcom/zhangdan/app/sms/BillData;)V

    .line 59
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static updateSmsBillData(Landroid/content/Context;Lcom/zhangdan/app/sms/BillData;Lcom/zhangdan/app/sms/SmsBillData;)V
    .locals 13
    .parameter "context"
    .parameter "data"
    .parameter "sms"

    .prologue
    const/4 v12, 0x0

    .line 253
    const/4 v4, 0x0

    .line 254
    .local v4, isUpdate:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 255
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 256
    .local v9, value:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/BillData;->getCardLast()Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, smsCardNum:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/BillData;->getTrueName()Ljava/lang/String;

    move-result-object v8

    .line 258
    .local v8, smsTrueName:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/zhangdan/app/sms/SmsBillData;->getCardNum()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, card:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/zhangdan/app/sms/SmsBillData;->getTruename()Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, name:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 261
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 262
    invoke-virtual {p2, v8}, Lcom/zhangdan/app/sms/SmsBillData;->setTruename(Ljava/lang/String;)V

    .line 263
    const/4 v4, 0x1

    .line 264
    const-string v10, "name_on_sms"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 269
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 270
    invoke-virtual {p2, v7}, Lcom/zhangdan/app/sms/SmsBillData;->setCardNum(Ljava/lang/String;)V

    .line 271
    const/4 v4, 0x1

    .line 272
    const-string v10, "card_no"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_1
    invoke-virtual {p2}, Lcom/zhangdan/app/sms/SmsBillData;->getBillId()I

    move-result v0

    .line 276
    .local v0, billId:I
    invoke-virtual {p1, v0}, Lcom/zhangdan/app/sms/BillData;->setBillId(I)V

    .line 278
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/BillData;->getBillType()I

    move-result v10

    if-nez v10, :cond_2

    .line 279
    const-string v10, "new_balance"

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/BillData;->getAmount()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v10, "usd_new_balance"

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/BillData;->getUsAmount()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/BillData;->getDate()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/zhangdan/app/util/DateUtils;->getYearMonthDay(J)[I

    move-result-object v3

    .line 282
    .local v3, dateArray:[I
    invoke-virtual {p1}, Lcom/zhangdan/app/sms/BillData;->getRepaymentMonth()I

    move-result v10

    const/4 v11, 0x1

    aget v11, v3, v11

    if-ge v10, v11, :cond_4

    .line 283
    aget v10, v3, v12

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p1, v10}, Lcom/zhangdan/app/sms/BillData;->setRepaymentYear(I)V

    .line 287
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/BillData;->getRepaymentYear()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/BillData;->getRepaymentMonth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/BillData;->getRepaymentDay()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, paymentDueDate:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/zhangdan/app/sms/BillData;->getRepaymentDay()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Lcom/zhangdan/app/sms/SmsBillData;->setPayDate(Ljava/lang/String;)V

    .line 289
    const-string v10, "payment_due_date"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v4, 0x1

    .line 292
    .end local v3           #dateArray:[I
    .end local v6           #paymentDueDate:Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    .line 293
    sget-object v10, Lcom/zhangdan/app/data/db/table/SmsUserBankField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v2, v10, v9, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    :cond_3
    return-void

    .line 285
    .restart local v3       #dateArray:[I
    :cond_4
    aget v10, v3, v12

    invoke-virtual {p1, v10}, Lcom/zhangdan/app/sms/BillData;->setRepaymentYear(I)V

    goto :goto_0
.end method
