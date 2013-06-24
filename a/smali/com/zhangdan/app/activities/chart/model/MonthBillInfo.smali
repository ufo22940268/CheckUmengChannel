.class public Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;
.super Ljava/lang/Object;
.source "MonthBillInfo.java"


# instance fields
.field private amount:D

.field private cardHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field private month:Ljava/lang/String;

.field private monthDay:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->amount:D

    return-wide v0
.end method

.method public getCardHolderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->cardHolderList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->count:I

    return v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->month:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthDay()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->monthDay:I

    return v0
.end method

.method public setAmount(D)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->amount:D

    .line 38
    return-void
.end method

.method public setCardHolderList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, cardHolderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->cardHolderList:Ljava/util/List;

    .line 50
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 43
    iput p1, p0, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->count:I

    .line 44
    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 4
    .parameter "month"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->month:Ljava/lang/String;

    .line 25
    :try_start_0
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, arr:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 27
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->monthDay:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v0           #arr:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v1

    .line 30
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
