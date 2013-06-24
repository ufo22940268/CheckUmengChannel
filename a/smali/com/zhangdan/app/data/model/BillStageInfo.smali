.class public Lcom/zhangdan/app/data/model/BillStageInfo;
.super Ljava/lang/Object;
.source "BillStageInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bankId:I

.field private bankName:Ljava/lang/String;

.field private billDate:Ljava/lang/String;

.field private billId:J

.field private cardNo:Ljava/lang/String;

.field private nameOnBill:Ljava/lang/String;

.field private stageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillStageGroup;",
            ">;"
        }
    .end annotation
.end field

.field private ubId:J

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountPerPeriod(I)D
    .locals 7
    .parameter "i"

    .prologue
    .line 117
    iget-object v5, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->stageList:Ljava/util/List;

    if-nez v5, :cond_1

    .line 118
    const-wide/16 v0, 0x0

    .line 125
    :cond_0
    return-wide v0

    .line 119
    :cond_1
    const-wide/16 v0, 0x0

    .line 120
    .local v0, amount:D
    iget-object v5, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->stageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/BillStageGroup;

    .line 121
    .local v2, group:Lcom/zhangdan/app/data/model/BillStageGroup;
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/BillStageGroup;->getStageList()Ljava/util/List;

    move-result-object v4

    .line 122
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BillStageItem;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, p1, :cond_2

    .line 123
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhangdan/app/data/model/BillStageItem;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/BillStageItem;->getAmount()D

    move-result-wide v5

    add-double/2addr v0, v5

    goto :goto_0
.end method

.method public getBankId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->bankId:I

    return v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getBillDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->billDate:Ljava/lang/String;

    return-object v0
.end method

.method public getBillId()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->billId:J

    return-wide v0
.end method

.method public getCardNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->cardNo:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->stageList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->stageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getMaxPeriodCount()I
    .locals 5

    .prologue
    .line 85
    iget-object v4, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->stageList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 86
    const/4 v3, 0x0

    .line 93
    :cond_0
    return v3

    .line 87
    :cond_1
    const/4 v3, 0x0

    .line 88
    .local v3, max:I
    iget-object v4, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->stageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/BillStageGroup;

    .line 89
    .local v1, group:Lcom/zhangdan/app/data/model/BillStageGroup;
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/BillStageGroup;->getItemCount()I

    move-result v0

    .line 90
    .local v0, c:I
    if-le v0, v3, :cond_2

    .line 91
    move v3, v0

    goto :goto_0
.end method

.method public getNameOnBill()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->nameOnBill:Ljava/lang/String;

    return-object v0
.end method

.method public getStageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillStageGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->stageList:Ljava/util/List;

    return-object v0
.end method

.method public getTotalBillAmount()D
    .locals 6

    .prologue
    .line 102
    iget-object v4, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->stageList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 103
    const-wide/16 v2, 0x0

    .line 108
    :cond_0
    return-wide v2

    .line 104
    :cond_1
    const-wide/16 v2, 0x0

    .line 105
    .local v2, total:D
    iget-object v4, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->stageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/BillStageGroup;

    .line 106
    .local v0, group:Lcom/zhangdan/app/data/model/BillStageGroup;
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BillStageGroup;->getBillAmount()D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 107
    goto :goto_0
.end method

.method public getUbId()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->ubId:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->userId:J

    return-wide v0
.end method

.method public setBankId(I)V
    .locals 0
    .parameter "bankId"

    .prologue
    .line 40
    iput p1, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->bankId:I

    .line 41
    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0
    .parameter "bankName"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->bankName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setBillDate(Ljava/lang/String;)V
    .locals 0
    .parameter "billDate"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->billDate:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setBillId(J)V
    .locals 0
    .parameter "billId"

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->billId:J

    .line 35
    return-void
.end method

.method public setCardNo(Ljava/lang/String;)V
    .locals 0
    .parameter "cardNo"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->cardNo:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setNameOnBill(Ljava/lang/String;)V
    .locals 0
    .parameter "nameOnBill"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->nameOnBill:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setStageList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillStageGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, stageList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BillStageGroup;>;"
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->stageList:Ljava/util/List;

    .line 59
    return-void
.end method

.method public setUbId(J)V
    .locals 0
    .parameter "ubId"

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->ubId:J

    .line 47
    return-void
.end method

.method public setUserId(J)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/BillStageInfo;->userId:J

    .line 29
    return-void
.end method
