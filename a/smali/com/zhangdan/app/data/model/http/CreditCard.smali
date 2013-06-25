.class public Lcom/zhangdan/app/data/model/http/CreditCard;
.super Ljava/lang/Object;
.source "CreditCard.java"


# instance fields
.field private autoId:J

.field private bankId:I

.field private carFee:Ljava/lang/String;

.field private cardNum:I

.field private feeMonth:Ljava/lang/String;

.field private fullCardNum:Ljava/lang/String;

.field private idNo:Ljava/lang/String;

.field private nameOnCard:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private trueName:Ljava/lang/String;

.field private ubId:Ljava/lang/String;

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoId()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->autoId:J

    return-wide v0
.end method

.method public getBankId()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->bankId:I

    return v0
.end method

.method public getCarFee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->carFee:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNum()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->cardNum:I

    return v0
.end method

.method public getFeeMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->feeMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getFullCardNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->fullCardNum:Ljava/lang/String;

    return-object v0
.end method

.method public getIdNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->idNo:Ljava/lang/String;

    return-object v0
.end method

.method public getNameOnCard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->nameOnCard:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTrueName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->trueName:Ljava/lang/String;

    return-object v0
.end method

.method public getUbId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->ubId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->userId:I

    return v0
.end method

.method public setAutoId(J)V
    .locals 0
    .parameter "autoId"

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->autoId:J

    .line 44
    return-void
.end method

.method public setBankId(I)V
    .locals 0
    .parameter "bankId"

    .prologue
    .line 67
    iput p1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->bankId:I

    .line 68
    return-void
.end method

.method public setCarFee(Ljava/lang/String;)V
    .locals 0
    .parameter "carFee"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->carFee:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setCardNum(I)V
    .locals 0
    .parameter "cardNum"

    .prologue
    .line 75
    iput p1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->cardNum:I

    .line 76
    return-void
.end method

.method public setFeeMonth(Ljava/lang/String;)V
    .locals 0
    .parameter "feeMonth"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->feeMonth:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setFullCardNum(Ljava/lang/String;)V
    .locals 0
    .parameter "fullCardNum"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->fullCardNum:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setIdNo(Ljava/lang/String;)V
    .locals 0
    .parameter "idNo"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->idNo:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setNameOnCard(Ljava/lang/String;)V
    .locals 0
    .parameter "nameOnCard"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->nameOnCard:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->status:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setTrueName(Ljava/lang/String;)V
    .locals 0
    .parameter "trueName"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->trueName:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setUbId(Ljava/lang/String;)V
    .locals 0
    .parameter "ubId"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->ubId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 51
    iput p1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->userId:I

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreditCard [autoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->autoId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->ubId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bankId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->bankId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->cardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->carFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", feeMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->feeMonth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nameOnCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->nameOnCard:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fullCardNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->fullCardNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->idNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trueName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/CreditCard;->trueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
