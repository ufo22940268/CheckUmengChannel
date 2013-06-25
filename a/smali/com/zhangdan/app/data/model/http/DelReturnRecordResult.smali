.class public Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;
.super Lcom/zhangdan/app/data/model/http/BaseHttpResult;
.source "DelReturnRecordResult.java"


# instance fields
.field private autoId:J

.field private returnAmount:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoId()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;->autoId:J

    return-wide v0
.end method

.method public getReturnAmount()D
    .locals 2

    .prologue
    .line 9
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;->returnAmount:D

    return-wide v0
.end method

.method public setAutoId(J)V
    .locals 0
    .parameter "autoId"

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;->autoId:J

    .line 22
    return-void
.end method

.method public setReturnAmount(D)V
    .locals 0
    .parameter "returnAmount"

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/DelReturnRecordResult;->returnAmount:D

    .line 14
    return-void
.end method
