.class public Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;
.super Ljava/lang/Object;
.source "ChartSumInfo.java"


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

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;->amount:D

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
    .line 43
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;->cardHolderList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;->count:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;->year:I

    return v0
.end method

.method public setAmount(D)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;->amount:D

    .line 40
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
    .line 47
    .local p1, cardHolderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;->cardHolderList:Ljava/util/List;

    .line 48
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 31
    iput p1, p0, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;->count:I

    .line 32
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .parameter "year"

    .prologue
    .line 23
    iput p1, p0, Lcom/zhangdan/app/activities/chart/model/ChartSumInfo;->year:I

    .line 24
    return-void
.end method
