.class public Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;
.super Ljava/lang/Object;
.source "ChartYearInfo.java"


# instance fields
.field private amount:D

.field private count:I

.field private monthBillList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;",
            ">;"
        }
    .end annotation
.end field

.field private year:I


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
    .line 26
    iget-wide v0, p0, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->amount:D

    return-wide v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->count:I

    return v0
.end method

.method public getMonthBillList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->monthBillList:Ljava/util/List;

    return-object v0
.end method

.method public getMonthSize()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->monthBillList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->monthBillList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->year:I

    return v0
.end method

.method public setAmount(D)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->amount:D

    .line 30
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 35
    iput p1, p0, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->count:I

    .line 36
    return-void
.end method

.method public setMonthBillList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, monthBillList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->monthBillList:Ljava/util/List;

    .line 42
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .parameter "year"

    .prologue
    .line 22
    iput p1, p0, Lcom/zhangdan/app/activities/chart/model/ChartYearInfo;->year:I

    .line 23
    return-void
.end method
