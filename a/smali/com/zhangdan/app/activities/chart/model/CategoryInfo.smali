.class public Lcom/zhangdan/app/activities/chart/model/CategoryInfo;
.super Ljava/lang/Object;
.source "CategoryInfo.java"


# instance fields
.field private amount:D

.field private count:I

.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->amount:D

    return-wide v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->count:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(D)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->amount:D

    .line 31
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 36
    iput p1, p0, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->count:I

    .line 37
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 24
    iput p1, p0, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->id:I

    .line 25
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->name:Ljava/lang/String;

    .line 19
    return-void
.end method
