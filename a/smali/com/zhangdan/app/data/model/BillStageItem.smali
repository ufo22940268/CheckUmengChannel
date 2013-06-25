.class public Lcom/zhangdan/app/data/model/BillStageItem;
.super Ljava/lang/Object;
.source "BillStageItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private amount:D

.field private month:I

.field private sn:I

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
    .line 34
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/BillStageItem;->amount:D

    return-wide v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/zhangdan/app/data/model/BillStageItem;->month:I

    return v0
.end method

.method public getSn()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/zhangdan/app/data/model/BillStageItem;->sn:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/zhangdan/app/data/model/BillStageItem;->year:I

    return v0
.end method

.method public setAmount(D)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/BillStageItem;->amount:D

    .line 38
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .parameter "month"

    .prologue
    .line 31
    iput p1, p0, Lcom/zhangdan/app/data/model/BillStageItem;->month:I

    .line 32
    return-void
.end method

.method public setSn(I)V
    .locals 0
    .parameter "sn"

    .prologue
    .line 43
    iput p1, p0, Lcom/zhangdan/app/data/model/BillStageItem;->sn:I

    .line 44
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .parameter "year"

    .prologue
    .line 25
    iput p1, p0, Lcom/zhangdan/app/data/model/BillStageItem;->year:I

    .line 26
    return-void
.end method
