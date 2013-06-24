.class public Lcom/zhangdan/app/data/model/BillInfo;
.super Ljava/lang/Object;
.source "BillInfo.java"


# instance fields
.field private bankId:I

.field private billDate:Ljava/lang/String;

.field private billId:J

.field private billStartDate:Ljava/lang/String;

.field private cardNums:Ljava/lang/String;

.field private cashLimit:F

.field private createTime:Ljava/lang/String;

.field private creditLimit:F

.field private integral:I

.field private lastBalance:F

.field private lastPayment:F

.field private mailId:J

.field private mailSender:Ljava/lang/String;

.field private minPayment:F

.field private newBalance:F

.field private newCharges:F

.field private paymentDueDate:Ljava/lang/String;

.field private returnAmount:F

.field private returnState:I

.field private ubId:J

.field private usdMinPayment:F

.field private usdNewBalance:F

.field private usdNewCharges:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankId()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->bankId:I

    return v0
.end method

.method public getBillDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->billDate:Ljava/lang/String;

    return-object v0
.end method

.method public getBillId()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->billId:J

    return-wide v0
.end method

.method public getBillStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->billStartDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNums()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->cardNums:Ljava/lang/String;

    return-object v0
.end method

.method public getCashLimit()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->cashLimit:F

    return v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditLimit()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->creditLimit:F

    return v0
.end method

.method public getIntegral()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->integral:I

    return v0
.end method

.method public getLastBalance()F
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->lastBalance:F

    return v0
.end method

.method public getLastPayment()F
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->lastPayment:F

    return v0
.end method

.method public getMailId()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->mailId:J

    return-wide v0
.end method

.method public getMailSender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->mailSender:Ljava/lang/String;

    return-object v0
.end method

.method public getMinPayment()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->minPayment:F

    return v0
.end method

.method public getNewBalance()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->newBalance:F

    return v0
.end method

.method public getNewCharges()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->newCharges:F

    return v0
.end method

.method public getPaymentDueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->paymentDueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnAmount()F
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->returnAmount:F

    return v0
.end method

.method public getReturnState()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->returnState:I

    return v0
.end method

.method public getUbId()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->ubId:J

    return-wide v0
.end method

.method public getUsdMinPayment()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->usdMinPayment:F

    return v0
.end method

.method public getUsdNewBalance()F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->usdNewBalance:F

    return v0
.end method

.method public getUsdNewCharges()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/zhangdan/app/data/model/BillInfo;->usdNewCharges:F

    return v0
.end method

.method public setBankId(I)V
    .locals 0
    .parameter "bankId"

    .prologue
    .line 66
    iput p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->bankId:I

    .line 67
    return-void
.end method

.method public setBillDate(Ljava/lang/String;)V
    .locals 0
    .parameter "billDate"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->billDate:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setBillId(J)V
    .locals 0
    .parameter "billId"

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->billId:J

    .line 51
    return-void
.end method

.method public setBillStartDate(Ljava/lang/String;)V
    .locals 0
    .parameter "billStartDate"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->billStartDate:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setCardNums(Ljava/lang/String;)V
    .locals 0
    .parameter "cardNums"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->cardNums:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setCashLimit(F)V
    .locals 0
    .parameter "cashLimit"

    .prologue
    .line 114
    iput p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->cashLimit:F

    .line 115
    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->createTime:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setCreditLimit(F)V
    .locals 0
    .parameter "creditLimit"

    .prologue
    .line 106
    iput p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->creditLimit:F

    .line 107
    return-void
.end method

.method public setIntegral(I)V
    .locals 0
    .parameter "integral"

    .prologue
    .line 228
    iput p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->integral:I

    .line 229
    return-void
.end method

.method public setLastBalance(F)V
    .locals 0
    .parameter "lastBalance"

    .prologue
    .line 170
    iput p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->lastBalance:F

    .line 171
    return-void
.end method

.method public setLastPayment(F)V
    .locals 0
    .parameter "lastPayment"

    .prologue
    .line 178
    iput p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->lastPayment:F

    .line 179
    return-void
.end method

.method public setMailId(J)V
    .locals 0
    .parameter "mailId"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->mailId:J

    .line 75
    return-void
.end method

.method public setMailSender(Ljava/lang/String;)V
    .locals 0
    .parameter "mailSender"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->mailSender:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setMinPayment(F)V
    .locals 0
    .parameter "minPayment"

    .prologue
    .line 138
    iput p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->minPayment:F

    .line 139
    return-void
.end method

.method public setNewBalance(F)V
    .locals 0
    .parameter "newBalance"

    .prologue
    .line 154
    iput p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->newBalance:F

    .line 155
    return-void
.end method

.method public setNewCharges(F)V
    .locals 0
    .parameter "newCharges"

    .prologue
    .line 122
    iput p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->newCharges:F

    .line 123
    return-void
.end method

.method public setPaymentDueDate(Ljava/lang/String;)V
    .locals 0
    .parameter "paymentDueDate"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->paymentDueDate:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setReturnAmount(F)V
    .locals 0
    .parameter "returnAmount"

    .prologue
    .line 212
    iput p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->returnAmount:F

    .line 213
    return-void
.end method

.method public setReturnState(I)V
    .locals 0
    .parameter "returnState"

    .prologue
    .line 196
    iput p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->returnState:I

    .line 197
    return-void
.end method

.method public setUbId(J)V
    .locals 0
    .parameter "ubId"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->ubId:J

    .line 59
    return-void
.end method

.method public setUsdMinPayment(F)V
    .locals 0
    .parameter "usdMinPayment"

    .prologue
    .line 146
    iput p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->usdMinPayment:F

    .line 147
    return-void
.end method

.method public setUsdNewBalance(F)V
    .locals 0
    .parameter "usdNewBalance"

    .prologue
    .line 162
    iput p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->usdNewBalance:F

    .line 163
    return-void
.end method

.method public setUsdNewCharges(F)V
    .locals 0
    .parameter "usdNewCharges"

    .prologue
    .line 130
    iput p1, p0, Lcom/zhangdan/app/data/model/BillInfo;->usdNewCharges:F

    .line 131
    return-void
.end method
