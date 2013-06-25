.class public Lcom/zhangdan/app/data/model/http/Repayment;
.super Ljava/lang/Object;
.source "Repayment.java"


# instance fields
.field private autoId:J

.field private billId:J

.field private createTime:Ljava/lang/String;

.field private id:I

.field private localId:Ljava/lang/String;

.field private modifyTime:Ljava/lang/String;

.field private repaymentDate:Ljava/lang/String;

.field private returnAmount:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoId()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/Repayment;->autoId:J

    return-wide v0
.end method

.method public getBillId()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/Repayment;->billId:J

    return-wide v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/Repayment;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/zhangdan/app/data/model/http/Repayment;->id:I

    return v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/Repayment;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/Repayment;->modifyTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRepaymentDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/Repayment;->repaymentDate:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/Repayment;->returnAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/Repayment;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAutoId(J)V
    .locals 0
    .parameter "autoId"

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/Repayment;->autoId:J

    .line 36
    return-void
.end method

.method public setBillId(J)V
    .locals 0
    .parameter "billId"

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/Repayment;->billId:J

    .line 48
    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/Repayment;->createTime:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 28
    iput p1, p0, Lcom/zhangdan/app/data/model/http/Repayment;->id:I

    .line 29
    return-void
.end method

.method public setLocalId(Ljava/lang/String;)V
    .locals 0
    .parameter "localId"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/Repayment;->localId:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setModifyTime(Ljava/lang/String;)V
    .locals 0
    .parameter "modifyTime"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/Repayment;->modifyTime:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setRepaymentDate(Ljava/lang/String;)V
    .locals 0
    .parameter "repaymentDate"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/Repayment;->repaymentDate:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setReturnAmount(Ljava/lang/String;)V
    .locals 0
    .parameter "returnAmount"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/Repayment;->returnAmount:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/Repayment;->userId:Ljava/lang/String;

    .line 42
    return-void
.end method
