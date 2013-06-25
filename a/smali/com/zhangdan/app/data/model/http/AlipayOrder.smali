.class public Lcom/zhangdan/app/data/model/http/AlipayOrder;
.super Ljava/lang/Object;
.source "AlipayOrder.java"


# instance fields
.field private aliStatus:I

.field private aliTradeId:Ljava/lang/String;

.field private amount:Ljava/lang/String;

.field private bankId:I

.field private bankMark:Ljava/lang/String;

.field private billId:J

.field private cardNo:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private lastModifyTime:Ljava/lang/String;

.field private status:I

.field private tradeNo:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAliStatus()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->aliStatus:I

    return v0
.end method

.method public getAliTradeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->aliTradeId:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getBankId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->bankId:I

    return v0
.end method

.method public getBankMark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->bankMark:Ljava/lang/String;

    return-object v0
.end method

.method public getBillId()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->billId:J

    return-wide v0
.end method

.method public getCardNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->cardNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifyTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->lastModifyTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->status:I

    return v0
.end method

.method public getTradeNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->tradeNo:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAliStatus(I)V
    .locals 0
    .parameter "aliStatus"

    .prologue
    .line 70
    iput p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->aliStatus:I

    .line 71
    return-void
.end method

.method public setAliTradeId(Ljava/lang/String;)V
    .locals 0
    .parameter "aliTradeId"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->aliTradeId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->amount:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setBankId(I)V
    .locals 0
    .parameter "bankId"

    .prologue
    .line 28
    iput p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->bankId:I

    .line 29
    return-void
.end method

.method public setBankMark(Ljava/lang/String;)V
    .locals 0
    .parameter "bankMark"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->bankMark:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setBillId(J)V
    .locals 0
    .parameter "billId"

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->billId:J

    .line 53
    return-void
.end method

.method public setCardNo(Ljava/lang/String;)V
    .locals 0
    .parameter "cardNo"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->cardNo:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->createTime:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setLastModifyTime(Ljava/lang/String;)V
    .locals 0
    .parameter "lastModifyTime"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->lastModifyTime:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 94
    iput p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->status:I

    .line 95
    return-void
.end method

.method public setTradeNo(Ljava/lang/String;)V
    .locals 0
    .parameter "tradeNo"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->tradeNo:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->userId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->userName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "AlipayOrder:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "bankId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->bankId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "userName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "tradeNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->tradeNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "cardNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->cardNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "billId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->billId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "bankMark="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->bankMark:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "amount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->amount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "aliStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->aliStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "aliTradeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->aliTradeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lastModifyTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->lastModifyTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "createTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->createTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrder;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
