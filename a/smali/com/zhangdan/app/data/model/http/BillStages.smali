.class public Lcom/zhangdan/app/data/model/http/BillStages;
.super Ljava/lang/Object;
.source "BillStages.java"


# instance fields
.field private bankId:I

.field private billDate:Ljava/lang/String;

.field private billId:J

.field private stages:Ljava/lang/String;

.field private ubId:J

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/zhangdan/app/data/model/http/BillStages;->bankId:I

    return v0
.end method

.method public getBillDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BillStages;->billDate:Ljava/lang/String;

    return-object v0
.end method

.method public getBillId()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/BillStages;->billId:J

    return-wide v0
.end method

.method public getStages()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BillStages;->stages:Ljava/lang/String;

    return-object v0
.end method

.method public getUbId()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/BillStages;->ubId:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/BillStages;->userId:J

    return-wide v0
.end method

.method public setBankId(I)V
    .locals 0
    .parameter "bankId"

    .prologue
    .line 28
    iput p1, p0, Lcom/zhangdan/app/data/model/http/BillStages;->bankId:I

    .line 29
    return-void
.end method

.method public setBillDate(Ljava/lang/String;)V
    .locals 0
    .parameter "billDate"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BillStages;->billDate:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setBillId(J)V
    .locals 0
    .parameter "billId"

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/BillStages;->billId:J

    .line 23
    return-void
.end method

.method public setStages(Ljava/lang/String;)V
    .locals 0
    .parameter "stages"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BillStages;->stages:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setUbId(J)V
    .locals 0
    .parameter "ubId"

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/BillStages;->ubId:J

    .line 35
    return-void
.end method

.method public setUserId(J)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/BillStages;->userId:J

    .line 17
    return-void
.end method
