.class public Lcom/zhangdan/app/global/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# instance fields
.field private mBankList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/zhangdan/app/data/model/BankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheTime:J

.field private mIsFakeData:Z

.field private mLoadDataDone:Z

.field private mUserBankList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/zhangdan/app/global/DataManager;->mLoadDataDone:Z

    .line 51
    iput-object v1, p0, Lcom/zhangdan/app/global/DataManager;->mBankList:Ljava/util/Map;

    .line 56
    iput-object v1, p0, Lcom/zhangdan/app/global/DataManager;->mUserBankList:Ljava/util/List;

    .line 59
    iput-boolean v0, p0, Lcom/zhangdan/app/global/DataManager;->mIsFakeData:Z

    .line 65
    iput-boolean v0, p0, Lcom/zhangdan/app/global/DataManager;->mLoadDataDone:Z

    .line 66
    return-void
.end method

.method public static generateFakeData()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    new-instance v6, Lcom/zhangdan/app/data/model/UserBankInfo;

    invoke-direct {v6}, Lcom/zhangdan/app/data/model/UserBankInfo;-><init>()V

    .line 502
    .local v6, data1:Lcom/zhangdan/app/data/model/UserBankInfo;
    const-wide/16 v12, -0x1

    invoke-virtual {v6, v12, v13}, Lcom/zhangdan/app/data/model/UserBankInfo;->setUbId(J)V

    .line 503
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBankId(I)V

    .line 504
    const-string v12, "\u62db\u884c"

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setSimpleName(Ljava/lang/String;)V

    .line 505
    const v12, 0x7f0200c8

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setIconResId(I)V

    .line 506
    const-string v12, "\u9ec4\u5c0f\u5f3a"

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNameOnBill(Ljava/lang/String;)V

    .line 507
    const-string v12, "1234"

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCardNo(Ljava/lang/String;)V

    .line 509
    const v12, 0x469c4000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCreditLimit(F)V

    .line 510
    const v12, 0x461c4000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCashLimit(F)V

    .line 511
    const-string v12, "2.00\u4e07"

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setFormatCreditLimit(Ljava/lang/String;)V

    .line 512
    const v12, 0x451c4000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNewBalance(F)V

    .line 513
    const/high16 v12, 0x437a

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setMinPayment(F)V

    .line 514
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setReturnState(I)V

    .line 516
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 517
    .local v5, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 518
    const/4 v12, 0x5

    const/4 v13, 0x5

    invoke-virtual {v5, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 519
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 520
    .local v9, dueYear:I
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/lit8 v8, v12, 0x1

    .line 521
    .local v8, dueMon:I
    const/4 v12, 0x5

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 522
    .local v7, dueDay:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 523
    .local v11, paymentDueDate:Ljava/lang/String;
    invoke-virtual {v6, v11}, Lcom/zhangdan/app/data/model/UserBankInfo;->setPaymentDueDate(Ljava/lang/String;)V

    .line 524
    const/4 v12, 0x5

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setLeaveDays(I)V

    .line 526
    const v12, 0x44bb8000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNewCharges(F)V

    .line 527
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setUsdNewCharges(F)V

    .line 528
    const v12, 0x455ac000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setLastPayment(F)V

    .line 529
    const v12, 0x453b8000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setLastBalance(F)V

    .line 531
    const/4 v12, 0x5

    const/16 v13, -0x12

    invoke-virtual {v5, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 532
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 533
    .local v4, billYear:I
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/lit8 v2, v12, 0x1

    .line 534
    .local v2, billMon:I
    const/4 v12, 0x5

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 535
    .local v1, billDay:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, billDate:Ljava/lang/String;
    invoke-static {v0}, Lcom/zhangdan/app/util/BillDateUtils;->calcBillStartDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, billStartDate:Ljava/lang/String;
    invoke-virtual {v6, v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillStartDate(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v6, v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillDate(Ljava/lang/String;)V

    .line 539
    invoke-static {v3, v0}, Lcom/zhangdan/app/util/BillDateUtils;->formatBillCycle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillCycle(Ljava/lang/String;)V

    .line 541
    invoke-static {v0, v11}, Lcom/zhangdan/app/util/BillDateUtils;->getFreeDays(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setMaxFreeInterestDays(I)V

    .line 542
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    .line 543
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    new-instance v6, Lcom/zhangdan/app/data/model/UserBankInfo;

    .end local v6           #data1:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-direct {v6}, Lcom/zhangdan/app/data/model/UserBankInfo;-><init>()V

    .line 549
    .restart local v6       #data1:Lcom/zhangdan/app/data/model/UserBankInfo;
    const-wide/16 v12, -0x1

    invoke-virtual {v6, v12, v13}, Lcom/zhangdan/app/data/model/UserBankInfo;->setUbId(J)V

    .line 550
    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBankId(I)V

    .line 551
    const-string v12, "\u5e7f\u53d1"

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setSimpleName(Ljava/lang/String;)V

    .line 552
    const v12, 0x7f0200af

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setIconResId(I)V

    .line 553
    const-string v12, "\u9ec4\u5c0f\u5f3a"

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNameOnBill(Ljava/lang/String;)V

    .line 554
    const-string v12, "2134"

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCardNo(Ljava/lang/String;)V

    .line 556
    const v12, 0x46ea6000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCreditLimit(F)V

    .line 557
    const v12, 0x459c4000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCashLimit(F)V

    .line 558
    const-string v12, "3.00\u4e07"

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setFormatCreditLimit(Ljava/lang/String;)V

    .line 559
    const v12, 0x458ca000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNewBalance(F)V

    .line 560
    const v12, 0x44098000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setMinPayment(F)V

    .line 561
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setReturnState(I)V

    .line 563
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 565
    const/4 v12, 0x5

    const/4 v13, 0x2

    invoke-virtual {v5, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 566
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 567
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/lit8 v8, v12, 0x1

    .line 568
    const/4 v12, 0x5

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 569
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 570
    invoke-virtual {v6, v11}, Lcom/zhangdan/app/data/model/UserBankInfo;->setPaymentDueDate(Ljava/lang/String;)V

    .line 571
    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setLeaveDays(I)V

    .line 573
    const v12, 0x44bb8000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNewCharges(F)V

    .line 574
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setUsdNewCharges(F)V

    .line 575
    const v12, 0x455ac000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setLastPayment(F)V

    .line 576
    const v12, 0x453b8000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setLastBalance(F)V

    .line 578
    const/4 v12, 0x5

    const/16 v13, -0x14

    invoke-virtual {v5, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 579
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 580
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/lit8 v2, v12, 0x1

    .line 581
    const/4 v12, 0x5

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 582
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-static {v0}, Lcom/zhangdan/app/util/BillDateUtils;->calcBillStartDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 584
    invoke-virtual {v6, v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillStartDate(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v6, v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillDate(Ljava/lang/String;)V

    .line 586
    invoke-static {v3, v0}, Lcom/zhangdan/app/util/BillDateUtils;->formatBillCycle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillCycle(Ljava/lang/String;)V

    .line 588
    invoke-static {v0, v11}, Lcom/zhangdan/app/util/BillDateUtils;->getFreeDays(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setMaxFreeInterestDays(I)V

    .line 589
    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    .line 590
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v6, Lcom/zhangdan/app/data/model/UserBankInfo;

    .end local v6           #data1:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-direct {v6}, Lcom/zhangdan/app/data/model/UserBankInfo;-><init>()V

    .line 596
    .restart local v6       #data1:Lcom/zhangdan/app/data/model/UserBankInfo;
    const-wide/16 v12, -0x1

    invoke-virtual {v6, v12, v13}, Lcom/zhangdan/app/data/model/UserBankInfo;->setUbId(J)V

    .line 597
    const/4 v12, 0x3

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBankId(I)V

    .line 598
    const-string v12, "\u5149\u5927"

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setSimpleName(Ljava/lang/String;)V

    .line 599
    const v12, 0x7f0200ae

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setIconResId(I)V

    .line 600
    const-string v12, "\u9ec4\u5c0f\u5f3a"

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNameOnBill(Ljava/lang/String;)V

    .line 601
    const-string v12, "4133"

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCardNo(Ljava/lang/String;)V

    .line 603
    const v12, 0x47435000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCreditLimit(F)V

    .line 604
    const v12, 0x46c35000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCashLimit(F)V

    .line 605
    const-string v12, "5.00\u4e07"

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setFormatCreditLimit(Ljava/lang/String;)V

    .line 606
    const v12, 0x46629000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNewBalance(F)V

    .line 607
    const v12, 0x44b54000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setMinPayment(F)V

    .line 608
    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setReturnState(I)V

    .line 610
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 612
    const/4 v12, 0x5

    const/16 v13, 0xa

    invoke-virtual {v5, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 613
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 614
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/lit8 v8, v12, 0x1

    .line 615
    const/4 v12, 0x5

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 616
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 617
    invoke-virtual {v6, v11}, Lcom/zhangdan/app/data/model/UserBankInfo;->setPaymentDueDate(Ljava/lang/String;)V

    .line 618
    const/16 v12, 0xa

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setLeaveDays(I)V

    .line 620
    const v12, 0x44bb8000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNewCharges(F)V

    .line 621
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setUsdNewCharges(F)V

    .line 622
    const v12, 0x455ac000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setLastPayment(F)V

    .line 623
    const v12, 0x453b8000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setLastBalance(F)V

    .line 624
    const v12, 0x459c4000

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setReturnAmount(F)V

    .line 626
    const/4 v12, 0x5

    const/16 v13, -0x13

    invoke-virtual {v5, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 627
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 628
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/lit8 v2, v12, 0x1

    .line 629
    const/4 v12, 0x5

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 630
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-static {v0}, Lcom/zhangdan/app/util/BillDateUtils;->calcBillStartDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 632
    invoke-virtual {v6, v3}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillStartDate(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v6, v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillDate(Ljava/lang/String;)V

    .line 634
    invoke-static {v3, v0}, Lcom/zhangdan/app/util/BillDateUtils;->formatBillCycle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillCycle(Ljava/lang/String;)V

    .line 636
    invoke-static {v0, v11}, Lcom/zhangdan/app/util/BillDateUtils;->getFreeDays(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setMaxFreeInterestDays(I)V

    .line 637
    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    .line 638
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    return-object v10
.end method

.method private loadBankList(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/zhangdan/app/data/model/BankInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p1}, Lcom/zhangdan/app/data/db/util/BankDbUtil;->loadAllBankInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 98
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BankInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v2, bankList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/zhangdan/app/data/model/BankInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/BankInfo;

    .line 100
    .local v0, bank:Lcom/zhangdan/app/data/model/BankInfo;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankInfo;->getBankId()I

    move-result v1

    .line 101
    .local v1, bankId:I
    invoke-static {v1}, Lcom/zhangdan/app/data/BankIconRes;->getBankIconResId(I)I

    move-result v4

    .line 102
    .local v4, iconResId:I
    invoke-virtual {v0, v4}, Lcom/zhangdan/app/data/model/BankInfo;->setBankIconResId(I)V

    .line 103
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankInfo;->getBankId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    .end local v0           #bank:Lcom/zhangdan/app/data/model/BankInfo;
    .end local v1           #bankId:I
    .end local v4           #iconResId:I
    :cond_0
    return-object v2
.end method

.method private loadSmsUserBanks(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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
    .line 342
    const-string v3, "SMS"

    const-string v4, "readSmsUserBank()..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {p1}, Lcom/zhangdan/app/data/db/util/SmsUserBankDbUtil;->loadAllSmsUserBankInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 344
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 345
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 346
    .local v0, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    const-string v3, "SMS"

    const-string v4, "read data..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 348
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/global/DataManager;->readSmsUserBank(Lcom/zhangdan/app/data/model/UserBankInfo;)V

    goto :goto_0

    .line 351
    .end local v0           #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method private loadUserBank(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 27
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
    .line 116
    invoke-static/range {p1 .. p2}, Lcom/zhangdan/app/data/db/util/UserBankDbUtil;->loadAllUserBankInfos(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    .line 118
    .local v22, userBankList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    invoke-static/range {p1 .. p2}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->getNewWarnKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 119
    .local v15, newWarnUbIds:Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v21, ubIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_0

    .line 121
    const-string v23, ","

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, arr:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 123
    move-object v4, v3

    .local v4, arr$:[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v14, :cond_0

    aget-object v20, v4, v12

    .line 124
    .local v20, ubId:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 128
    .end local v3           #arr:[Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v20           #ubId:Ljava/lang/String;
    :cond_0
    if-eqz v22, :cond_1

    .line 129
    const-string v23, "DataManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "size = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 131
    .local v7, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    const-string v23, "DataManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ubId"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v7, v2}, Lcom/zhangdan/app/global/DataManager;->readUserBankBillInfo(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;Ljava/util/List;)V

    goto :goto_1

    .line 137
    .end local v7           #data:Lcom/zhangdan/app/data/model/UserBankInfo;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/zhangdan/app/global/DataManager;->loadSmsUserBanks(Landroid/content/Context;)Ljava/util/List;

    move-result-object v16

    .line 138
    .local v16, smsList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    if-nez v22, :cond_2

    .line 139
    new-instance v22, Ljava/util/ArrayList;

    .end local v22           #userBankList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .restart local v22       #userBankList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    :cond_2
    if-eqz v16, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_b

    .line 141
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v19, tmpList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 143
    .local v17, smsUserBank:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual/range {v17 .. v17}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v5

    .line 144
    .local v5, bankId:I
    invoke-virtual/range {v17 .. v17}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, cardNo:Ljava/lang/String;
    const/4 v10, 0x0

    .line 146
    .local v10, flag:Z
    invoke-static {v6}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 147
    const/4 v10, 0x1

    .line 148
    goto :goto_2

    .line 150
    :cond_4
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 151
    .local v9, emailUserBank:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v9}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v23

    move/from16 v0, v23

    if-ne v5, v0, :cond_5

    .line 152
    invoke-virtual {v9}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zhangdan/app/util/CommonMethod;->getUnnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 153
    .local v8, emailCardNo:Ljava/lang/String;
    const-string v23, ","

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 154
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 155
    const/4 v10, 0x1

    .line 174
    .end local v8           #emailCardNo:Ljava/lang/String;
    .end local v9           #emailUserBank:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_6
    :goto_3
    if-nez v10, :cond_3

    .line 175
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 159
    .restart local v8       #emailCardNo:Ljava/lang/String;
    .restart local v9       #emailUserBank:Lcom/zhangdan/app/data/model/UserBankInfo;
    :cond_7
    const-string v23, ","

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 160
    .restart local v3       #arr:[Ljava/lang/String;
    const/16 v18, 0x0

    .line 161
    .local v18, tmp:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4
    array-length v0, v3

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_8

    .line 162
    aget-object v23, v3, v11

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 163
    const/16 v18, 0x1

    .line 167
    :cond_8
    if-eqz v18, :cond_5

    .line 168
    const/4 v10, 0x1

    .line 169
    goto :goto_3

    .line 161
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 177
    .end local v3           #arr:[Ljava/lang/String;
    .end local v5           #bankId:I
    .end local v6           #cardNo:Ljava/lang/String;
    .end local v8           #emailCardNo:Ljava/lang/String;
    .end local v9           #emailUserBank:Lcom/zhangdan/app/data/model/UserBankInfo;
    .end local v10           #flag:Z
    .end local v11           #i:I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #smsUserBank:Lcom/zhangdan/app/data/model/UserBankInfo;
    .end local v18           #tmp:Z
    :cond_a
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    .end local v19           #tmpList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    :cond_b
    if-eqz v22, :cond_c

    .line 182
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/zhangdan/app/alarm/AlarmUtil;->getLasetNeedPay(Landroid/content/Context;Ljava/util/List;)V

    .line 184
    :cond_c
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zhangdan/app/global/DataManager;->mIsFakeData:Z

    .line 186
    if-eqz v22, :cond_d

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_e

    .line 187
    :cond_d
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zhangdan/app/global/DataManager;->mIsFakeData:Z

    .line 188
    invoke-static {}, Lcom/zhangdan/app/global/DataManager;->generateFakeData()Ljava/util/List;

    move-result-object v22

    .line 191
    :cond_e
    return-object v22
.end method

.method private queryTotalBillStageByUbId(Landroid/content/Context;J)D
    .locals 11
    .parameter "context"
    .parameter "ubId"

    .prologue
    .line 315
    invoke-static {p1, p2, p3}, Lcom/zhangdan/app/data/db/util/BillStageDbUtil;->queryBillStageByUbId(Landroid/content/Context;J)Lcom/zhangdan/app/data/model/http/BillStages;

    move-result-object v2

    .line 316
    .local v2, data:Lcom/zhangdan/app/data/model/http/BillStages;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/BillStages;->getStages()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 318
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/http/BillStages;->getStages()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, cardArr:Lorg/json/JSONArray;
    const-wide/16 v7, 0x0

    .line 320
    .local v7, totalAmout:D
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 321
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 322
    .local v1, cardObj:Lorg/json/JSONObject;
    const-string v9, "BillStageList"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 323
    .local v6, stageArr:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_0

    .line 324
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "Amount"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    add-double/2addr v7, v9

    .line 323
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 320
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 328
    .end local v0           #cardArr:Lorg/json/JSONArray;
    .end local v1           #cardObj:Lorg/json/JSONObject;
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v6           #stageArr:Lorg/json/JSONArray;
    .end local v7           #totalAmout:D
    :catch_0
    move-exception v3

    .line 329
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    const-wide/16 v7, 0x0

    :cond_2
    return-wide v7
.end method


# virtual methods
.method public calcUnBilledAmount(Landroid/content/Context;Ljava/util/List;)V
    .locals 16
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 445
    :cond_0
    return-void

    .line 423
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zhangdan/app/data/model/UserBankInfo;

    .line 424
    .local v7, data:Lcom/zhangdan/app/data/model/UserBankInfo;
    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v4

    .line 425
    .local v4, bankId:I
    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCardNo()Ljava/lang/String;

    move-result-object v6

    .line 426
    .local v6, cardNo:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillDate()Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, billDateStr:Ljava/lang/String;
    invoke-static {v5}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 428
    invoke-static {v5}, Lcom/zhangdan/app/util/DateUtils;->convertDateStrToTime(Ljava/lang/String;)J

    move-result-wide v10

    .line 429
    .local v10, time:J
    const-wide/16 v12, 0x0

    .line 430
    .local v12, unknowAmount:D
    const-string v14, ","

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4

    .line 431
    move-object/from16 v0, p1

    invoke-static {v0, v4, v6, v10, v11}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->getUnknowBillAmount(Landroid/content/Context;ILjava/lang/String;J)D

    move-result-wide v1

    .line 432
    .local v1, amount:D
    add-double/2addr v12, v1

    .line 442
    .end local v1           #amount:D
    :cond_3
    invoke-virtual {v7, v12, v13}, Lcom/zhangdan/app/data/model/UserBankInfo;->setUnSettledSmsAmount(D)V

    goto :goto_0

    .line 434
    :cond_4
    const-string v14, ","

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, arr:[Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 436
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v14, v3

    if-ge v8, v14, :cond_3

    .line 437
    aget-object v14, v3, v8

    move-object/from16 v0, p1

    invoke-static {v0, v4, v14, v10, v11}, Lcom/zhangdan/app/sms/BillRegexDbUtil;->getUnknowBillAmount(Landroid/content/Context;ILjava/lang/String;J)D

    move-result-wide v1

    .line 438
    .restart local v1       #amount:D
    add-double/2addr v12, v1

    .line 436
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/zhangdan/app/global/DataManager;->mBankList:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/zhangdan/app/global/DataManager;->mBankList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/global/DataManager;->mUserBankList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/zhangdan/app/global/DataManager;->mUserBankList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 476
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/global/DataManager;->mLoadDataDone:Z

    .line 477
    return-void
.end method

.method public getBankList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/zhangdan/app/data/model/BankInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/zhangdan/app/global/DataManager;->mBankList:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/global/DataManager;->mBankList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBankMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/zhangdan/app/data/model/BankInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/zhangdan/app/global/DataManager;->mBankList:Ljava/util/Map;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .prologue
    .line 489
    iget-wide v0, p0, Lcom/zhangdan/app/global/DataManager;->mCacheTime:J

    return-wide v0
.end method

.method public getUserBankInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/zhangdan/app/global/DataManager;->mUserBankList:Ljava/util/List;

    return-object v0
.end method

.method public initData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "userId"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/zhangdan/app/global/DataManager;->loadBankList(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 83
    .local v0, bankList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/zhangdan/app/data/model/BankInfo;>;"
    iput-object v0, p0, Lcom/zhangdan/app/global/DataManager;->mBankList:Ljava/util/Map;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/app/global/DataManager;->loadUserBank(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 85
    .local v1, userBankList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    iput-object v1, p0, Lcom/zhangdan/app/global/DataManager;->mUserBankList:Ljava/util/List;

    .line 86
    invoke-virtual {p0, p1, v1}, Lcom/zhangdan/app/global/DataManager;->calcUnBilledAmount(Landroid/content/Context;Ljava/util/List;)V

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zhangdan/app/global/DataManager;->mCacheTime:J

    .line 88
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zhangdan/app/global/DataManager;->mLoadDataDone:Z

    .line 89
    return-void
.end method

.method public isFakeData()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/zhangdan/app/global/DataManager;->mIsFakeData:Z

    return v0
.end method

.method public isLoadDataDone()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/zhangdan/app/global/DataManager;->mLoadDataDone:Z

    return v0
.end method

.method public readSmsUserBank(Lcom/zhangdan/app/data/model/UserBankInfo;)V
    .locals 13
    .parameter "data"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 360
    iget-object v9, p0, Lcom/zhangdan/app/global/DataManager;->mBankList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/BankInfo;

    .line 361
    .local v0, bank:Lcom/zhangdan/app/data/model/BankInfo;
    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankInfo;->getBankIconResId()I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/zhangdan/app/data/model/UserBankInfo;->setIconResId(I)V

    .line 365
    :goto_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, paymentDueDate:Ljava/lang/String;
    invoke-static {v6}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 367
    invoke-virtual {p1, v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    .line 411
    :cond_0
    :goto_1
    return-void

    .line 364
    .end local v6           #paymentDueDate:Ljava/lang/String;
    :cond_1
    const v9, 0x7f0200a9

    invoke-virtual {p1, v9}, Lcom/zhangdan/app/data/model/UserBankInfo;->setIconResId(I)V

    goto :goto_0

    .line 369
    .restart local v6       #paymentDueDate:Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BankInfo;->getMaxFreePeriod()I

    move-result v5

    .line 372
    .local v5, maxFreeDays:I
    :goto_2
    invoke-static {v6, v5}, Lcom/zhangdan/app/util/BillDateUtils;->calcBillDateByPaymentDueDate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, billDateStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/util/BillDateUtils;->isCurrentIssueBill(Ljava/lang/String;)Z

    move-result v3

    .line 376
    .local v3, isCurrIssueBill:Z
    invoke-virtual {p1, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillDate(Ljava/lang/String;)V

    .line 378
    invoke-static {v6}, Lcom/zhangdan/app/util/BillDateUtils;->converDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/zhangdan/app/data/model/UserBankInfo;->setPaymentDueDate(Ljava/lang/String;)V

    .line 379
    invoke-static {v1, v6}, Lcom/zhangdan/app/util/BillDateUtils;->getFreeDays(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/zhangdan/app/data/model/UserBankInfo;->setMaxFreeInterestDays(I)V

    .line 381
    invoke-static {v6}, Lcom/zhangdan/app/util/BillDateUtils;->getLeaveDays(Ljava/lang/String;)I

    move-result v4

    .line 382
    .local v4, leaveDays:I
    invoke-virtual {p1, v4}, Lcom/zhangdan/app/data/model/UserBankInfo;->setLeaveDays(I)V

    .line 384
    if-eqz v3, :cond_7

    .line 385
    invoke-static {v1}, Lcom/zhangdan/app/util/BillDateUtils;->calcBillStartDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, billStartDateStr:Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillStartDate(Ljava/lang/String;)V

    .line 388
    invoke-static {v2, v1}, Lcom/zhangdan/app/util/BillDateUtils;->formatBillCycle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillCycle(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getNewBalance()F

    move-result v9

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_4

    .line 391
    invoke-virtual {p1, v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    goto :goto_1

    .end local v1           #billDateStr:Ljava/lang/String;
    .end local v2           #billStartDateStr:Ljava/lang/String;
    .end local v3           #isCurrIssueBill:Z
    .end local v4           #leaveDays:I
    .end local v5           #maxFreeDays:I
    :cond_3
    move v5, v8

    .line 369
    goto :goto_2

    .line 393
    .restart local v1       #billDateStr:Ljava/lang/String;
    .restart local v2       #billStartDateStr:Ljava/lang/String;
    .restart local v3       #isCurrIssueBill:Z
    .restart local v4       #leaveDays:I
    .restart local v5       #maxFreeDays:I
    :cond_4
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getReturnState()I

    move-result v7

    .line 394
    .local v7, returnState:I
    if-ne v7, v11, :cond_5

    .line 395
    invoke-virtual {p1, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    goto :goto_1

    .line 396
    :cond_5
    if-nez v7, :cond_6

    .line 397
    invoke-virtual {p1, v11}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    goto :goto_1

    .line 398
    :cond_6
    if-ne v7, v12, :cond_0

    .line 399
    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    goto :goto_1

    .line 403
    .end local v2           #billStartDateStr:Ljava/lang/String;
    .end local v7           #returnState:I
    :cond_7
    invoke-static {v1}, Lcom/zhangdan/app/util/BillDateUtils;->calcCurrBillDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {v1}, Lcom/zhangdan/app/util/BillDateUtils;->calcBillStartDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    .restart local v2       #billStartDateStr:Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillStartDate(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p1, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillDate(Ljava/lang/String;)V

    .line 407
    invoke-static {v2, v1}, Lcom/zhangdan/app/util/BillDateUtils;->formatBillCycle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillCycle(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1, v8}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    goto :goto_1
.end method

.method public readUserBankBillInfo(Landroid/content/Context;Lcom/zhangdan/app/data/model/UserBankInfo;Ljava/util/List;)V
    .locals 21
    .parameter "context"
    .parameter "data"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zhangdan/app/data/model/UserBankInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p3, ubIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/text/DecimalFormat;

    const-string v18, "#0.00"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 204
    .local v9, decimalFormat:Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangdan/app/global/DataManager;->mBankList:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBankId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/data/model/BankInfo;

    .line 205
    .local v4, bank:Lcom/zhangdan/app/data/model/BankInfo;
    if-eqz v4, :cond_4

    .line 206
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/BankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setSimpleName(Ljava/lang/String;)V

    .line 207
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/zhangdan/app/data/model/BankInfo;->setInUse(Z)V

    .line 208
    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/BankInfo;->getBankIconResId()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setIconResId(I)V

    .line 213
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 214
    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x2

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setSimpleName(Ljava/lang/String;)V

    .line 217
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getCreditLimit()F

    move-result v18

    const v19, 0x461c4000

    div-float v8, v18, v19

    .line 218
    .local v8, creditLimit:F
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v0, v8

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v9, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u4e07"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setFormatCreditLimit(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLastBillId()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/data/db/util/BillDbUtil;->queryBillInfoByBillId(Landroid/content/Context;J)Lcom/zhangdan/app/data/model/BillInfo;

    move-result-object v6

    .line 221
    .local v6, billInfo:Lcom/zhangdan/app/data/model/BillInfo;
    if-eqz v6, :cond_b

    .line 223
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getCardNums()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCardNo(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getNewBalance()F

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNewBalance(F)V

    .line 228
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getUsdNewBalance()F

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setUsdNewBalance(F)V

    .line 230
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getBillDate()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/zhangdan/app/util/BillDateUtils;->getBillDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, billDateStr:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getBillStartDate()Ljava/lang/String;

    move-result-object v7

    .line 233
    .local v7, billStartDateStr:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getMinPayment()F

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setMinPayment(F)V

    .line 234
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getUsdMinPayment()F

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setUsdMinPayment(F)V

    .line 235
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getNewCharges()F

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNewCharges(F)V

    .line 236
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getUsdNewCharges()F

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setUsdNewCharges(F)V

    .line 237
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getReturnAmount()F

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setReturnAmount(F)V

    .line 239
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getLastBalance()F

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setLastBalance(F)V

    .line 240
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getLastPayment()F

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setLastPayment(F)V

    .line 241
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getIntegral()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setIntegral(I)V

    .line 242
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getMailSender()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setMailSender(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setCreateTime(Ljava/lang/String;)V

    .line 245
    invoke-static {v5}, Lcom/zhangdan/app/util/BillDateUtils;->isCurrentIssueBill(Ljava/lang/String;)Z

    move-result v11

    .line 247
    .local v11, isCurrIssueBill:Z
    if-eqz v11, :cond_9

    .line 248
    if-eqz p3, :cond_2

    .line 249
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 250
    .local v17, ubId:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getUbId()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 251
    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setNewWarn(Z)V

    .line 256
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v17           #ubId:Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    if-eqz v7, :cond_3

    .line 258
    const-string v18, "1900"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 259
    invoke-static {v5}, Lcom/zhangdan/app/util/BillDateUtils;->calcBillStartDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 263
    :cond_3
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getReturnState()I

    move-result v14

    .line 264
    .local v14, returnState:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/zhangdan/app/data/model/UserBankInfo;->setReturnState(I)V

    .line 266
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getNewBalance()F

    move-result v18

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_5

    .line 268
    const/16 v18, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    .line 284
    :goto_1
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/zhangdan/app/util/BillDateUtils;->converDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setPaymentDueDate(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Lcom/zhangdan/app/util/BillDateUtils;->getFreeDays(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setMaxFreeInterestDays(I)V

    .line 295
    .end local v14           #returnState:I
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillDate(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillStartDate(Ljava/lang/String;)V

    .line 297
    invoke-static {v7, v5}, Lcom/zhangdan/app/util/BillDateUtils;->formatBillCycle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillCycle(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getUsdNewBalance()F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_a

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setHasForeignCurrency(Z)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getUbId()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/zhangdan/app/global/DataManager;->queryTotalBillStageByUbId(Landroid/content/Context;J)D

    move-result-wide v15

    .line 302
    .local v15, stageAmount:D
    move-object/from16 v0, p2

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/data/model/UserBankInfo;->setStageTotalAmount(D)V

    .line 306
    .end local v5           #billDateStr:Ljava/lang/String;
    .end local v7           #billStartDateStr:Ljava/lang/String;
    .end local v11           #isCurrIssueBill:Z
    .end local v15           #stageAmount:D
    :goto_4
    return-void

    .line 210
    .end local v6           #billInfo:Lcom/zhangdan/app/data/model/BillInfo;
    .end local v8           #creditLimit:F
    :cond_4
    const v18, 0x7f0200a9

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setIconResId(I)V

    goto/16 :goto_0

    .line 270
    .restart local v5       #billDateStr:Ljava/lang/String;
    .restart local v6       #billInfo:Lcom/zhangdan/app/data/model/BillInfo;
    .restart local v7       #billStartDateStr:Ljava/lang/String;
    .restart local v8       #creditLimit:F
    .restart local v11       #isCurrIssueBill:Z
    .restart local v14       #returnState:I
    :cond_5
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_7

    .line 272
    const/16 v18, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    .line 281
    :cond_6
    :goto_5
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/zhangdan/app/util/BillDateUtils;->getLeaveDays(Ljava/lang/String;)I

    move-result v12

    .line 282
    .local v12, leaveDays:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/zhangdan/app/data/model/UserBankInfo;->setLeaveDays(I)V

    goto/16 :goto_1

    .line 273
    .end local v12           #leaveDays:I
    :cond_7
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v14, v0, :cond_8

    .line 275
    const/16 v18, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    goto :goto_5

    .line 276
    :cond_8
    if-nez v14, :cond_6

    .line 278
    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    goto :goto_5

    .line 288
    .end local v14           #returnState:I
    :cond_9
    invoke-static {v5}, Lcom/zhangdan/app/util/BillDateUtils;->calcCurrBillDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 289
    invoke-static {v5}, Lcom/zhangdan/app/util/BillDateUtils;->calcBillStartDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 290
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    .line 291
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Lcom/zhangdan/app/util/BillDateUtils;->getFreeDays(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 292
    .local v13, maxFreeDays:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/zhangdan/app/data/model/UserBankInfo;->setMaxFreeInterestDays(I)V

    .line 293
    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/BillInfo;->getPaymentDueDate()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/zhangdan/app/util/BillDateUtils;->calcCurrPaymentDueDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setPaymentDueDate(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 298
    .end local v13           #maxFreeDays:I
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 304
    .end local v5           #billDateStr:Ljava/lang/String;
    .end local v7           #billStartDateStr:Ljava/lang/String;
    .end local v11           #isCurrIssueBill:Z
    :cond_b
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/UserBankInfo;->setBillState(I)V

    goto/16 :goto_4
.end method

.method public setLoadDataDone(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/zhangdan/app/global/DataManager;->mLoadDataDone:Z

    .line 74
    return-void
.end method
