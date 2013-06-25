.class public Lcom/zhangdan/app/data/model/UserBankInfo;
.super Ljava/lang/Object;
.source "UserBankInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bankId:I

.field private billCycle:Ljava/lang/String;

.field private billDate:Ljava/lang/String;

.field private billStartDate:Ljava/lang/String;

.field private billState:I

.field private cardNo:Ljava/lang/String;

.field private cashLimit:F

.field private createTime:Ljava/lang/String;

.field private creditLimit:F

.field private currBillCycle:Ljava/lang/String;

.field private formatCreditLimit:Ljava/lang/String;

.field private hasForeignCurrency:Z

.field private iconResId:I

.field private integral:I

.field private isEmailUserBank:Z

.field private isNewWarn:Z

.field private lastBalance:F

.field private lastBillId:J

.field private lastPayment:F

.field private leaveDays:I

.field private mailSender:Ljava/lang/String;

.field private maxFreeInterestDays:I

.field private minPayment:F

.field private nameOnBill:Ljava/lang/String;

.field private newBalance:F

.field private newCharges:F

.field private paymentDueDate:Ljava/lang/String;

.field private returnAmount:F

.field private returnState:I

.field private simpleName:Ljava/lang/String;

.field private stageTotalAmount:D

.field private ubId:J

.field private unSettledSmsAmount:D

.field private usdMinPayment:F

.field private usdNewBalance:F

.field private usdNewCharges:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank:Z

    return-void
.end method


# virtual methods
.method public getBankId()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->bankId:I

    return v0
.end method

.method public getBillCycle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->billCycle:Ljava/lang/String;

    return-object v0
.end method

.method public getBillDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->billDate:Ljava/lang/String;

    return-object v0
.end method

.method public getBillStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->billStartDate:Ljava/lang/String;

    return-object v0
.end method

.method public getBillState()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->billState:I

    return v0
.end method

.method public getCardNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->cardNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCashLimit()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->cashLimit:F

    return v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditLimit()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->creditLimit:F

    return v0
.end method

.method public getCurrBillCycle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->currBillCycle:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatCreditLimit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->formatCreditLimit:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->iconResId:I

    return v0
.end method

.method public getIntegral()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->integral:I

    return v0
.end method

.method public getLastBalance()F
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->lastBalance:F

    return v0
.end method

.method public getLastBillId()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->lastBillId:J

    return-wide v0
.end method

.method public getLastPayment()F
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->lastPayment:F

    return v0
.end method

.method public getLeaveDays()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->leaveDays:I

    return v0
.end method

.method public getMailSender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->mailSender:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFreeInterestDays()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->maxFreeInterestDays:I

    return v0
.end method

.method public getMinPayment()F
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->minPayment:F

    return v0
.end method

.method public getNameOnBill()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->nameOnBill:Ljava/lang/String;

    return-object v0
.end method

.method public getNewBalance()F
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->newBalance:F

    return v0
.end method

.method public getNewCharges()F
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->newCharges:F

    return v0
.end method

.method public getPaymentDueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->paymentDueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnAmount()F
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->returnAmount:F

    return v0
.end method

.method public getReturnState()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->returnState:I

    return v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->simpleName:Ljava/lang/String;

    return-object v0
.end method

.method public getStageTotalAmount()D
    .locals 2

    .prologue
    .line 330
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->stageTotalAmount:D

    return-wide v0
.end method

.method public getUbId()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->ubId:J

    return-wide v0
.end method

.method public getUnSettledSmsAmount()D
    .locals 2

    .prologue
    .line 338
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->unSettledSmsAmount:D

    return-wide v0
.end method

.method public getUsdMinPayment()F
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->usdMinPayment:F

    return v0
.end method

.method public getUsdNewBalance()F
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->usdNewBalance:F

    return v0
.end method

.method public getUsdNewCharges()F
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->usdNewCharges:F

    return v0
.end method

.method public isEmailUserBank()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank:Z

    return v0
.end method

.method public isHasForeignCurrency()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->hasForeignCurrency:Z

    return v0
.end method

.method public isNewWarn()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->isNewWarn:Z

    return v0
.end method

.method public setBankId(I)V
    .locals 0
    .parameter "bankId"

    .prologue
    .line 105
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->bankId:I

    .line 106
    return-void
.end method

.method public setBillCycle(Ljava/lang/String;)V
    .locals 0
    .parameter "billCycle"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->billCycle:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setBillDate(Ljava/lang/String;)V
    .locals 0
    .parameter "billDate"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->billDate:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setBillStartDate(Ljava/lang/String;)V
    .locals 0
    .parameter "billStartDate"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->billStartDate:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setBillState(I)V
    .locals 0
    .parameter "billState"

    .prologue
    .line 234
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->billState:I

    .line 235
    return-void
.end method

.method public setCardNo(Ljava/lang/String;)V
    .locals 0
    .parameter "cardNo"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->cardNo:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setCashLimit(F)V
    .locals 0
    .parameter "cashLimit"

    .prologue
    .line 135
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->cashLimit:F

    .line 136
    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->createTime:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setCreditLimit(F)V
    .locals 0
    .parameter "creditLimit"

    .prologue
    .line 129
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->creditLimit:F

    .line 130
    return-void
.end method

.method public setCurrBillCycle(Ljava/lang/String;)V
    .locals 0
    .parameter "currBillCycle"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->currBillCycle:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setEmailUserBank(Z)V
    .locals 0
    .parameter "isEmailUserBank"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->isEmailUserBank:Z

    .line 82
    return-void
.end method

.method public setFormatCreditLimit(Ljava/lang/String;)V
    .locals 0
    .parameter "formatCreditLimit"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->formatCreditLimit:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setHasForeignCurrency(Z)V
    .locals 0
    .parameter "hasForeignCurrency"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->hasForeignCurrency:Z

    .line 154
    return-void
.end method

.method public setIconResId(I)V
    .locals 0
    .parameter "iconResId"

    .prologue
    .line 318
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->iconResId:I

    .line 319
    return-void
.end method

.method public setIntegral(I)V
    .locals 0
    .parameter "integral"

    .prologue
    .line 294
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->integral:I

    .line 295
    return-void
.end method

.method public setLastBalance(F)V
    .locals 0
    .parameter "lastBalance"

    .prologue
    .line 288
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->lastBalance:F

    .line 289
    return-void
.end method

.method public setLastBillId(J)V
    .locals 0
    .parameter "lastBillId"

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->lastBillId:J

    .line 100
    return-void
.end method

.method public setLastPayment(F)V
    .locals 0
    .parameter "lastPayment"

    .prologue
    .line 282
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->lastPayment:F

    .line 283
    return-void
.end method

.method public setLeaveDays(I)V
    .locals 0
    .parameter "leaveDays"

    .prologue
    .line 240
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->leaveDays:I

    .line 241
    return-void
.end method

.method public setMailSender(Ljava/lang/String;)V
    .locals 0
    .parameter "mailSender"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->mailSender:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setMaxFreeInterestDays(I)V
    .locals 0
    .parameter "maxFreeInterestDays"

    .prologue
    .line 202
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->maxFreeInterestDays:I

    .line 203
    return-void
.end method

.method public setMinPayment(F)V
    .locals 0
    .parameter "minPayment"

    .prologue
    .line 147
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->minPayment:F

    .line 148
    return-void
.end method

.method public setNameOnBill(Ljava/lang/String;)V
    .locals 0
    .parameter "nameOnBill"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->nameOnBill:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setNewBalance(F)V
    .locals 0
    .parameter "newBalance"

    .prologue
    .line 141
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->newBalance:F

    .line 142
    return-void
.end method

.method public setNewCharges(F)V
    .locals 0
    .parameter "newCharges"

    .prologue
    .line 184
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->newCharges:F

    .line 185
    return-void
.end method

.method public setNewWarn(Z)V
    .locals 0
    .parameter "isNewWarn"

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->isNewWarn:Z

    .line 271
    return-void
.end method

.method public setPaymentDueDate(Ljava/lang/String;)V
    .locals 0
    .parameter "paymentDueDate"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->paymentDueDate:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setReturnAmount(F)V
    .locals 0
    .parameter "returnAmount"

    .prologue
    .line 276
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->returnAmount:F

    .line 277
    return-void
.end method

.method public setReturnState(I)V
    .locals 0
    .parameter "returnState"

    .prologue
    .line 159
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->returnState:I

    .line 160
    return-void
.end method

.method public setSimpleName(Ljava/lang/String;)V
    .locals 0
    .parameter "simpleName"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->simpleName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setStageTotalAmount(D)V
    .locals 0
    .parameter "stageTotalAmount"

    .prologue
    .line 334
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->stageTotalAmount:D

    .line 335
    return-void
.end method

.method public setUbId(J)V
    .locals 0
    .parameter "ubId"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->ubId:J

    .line 94
    return-void
.end method

.method public setUnSettledSmsAmount(D)V
    .locals 0
    .parameter "unSettledSmsAmount"

    .prologue
    .line 342
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->unSettledSmsAmount:D

    .line 343
    return-void
.end method

.method public setUsdMinPayment(F)V
    .locals 0
    .parameter "usdMinPayment"

    .prologue
    .line 252
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->usdMinPayment:F

    .line 253
    return-void
.end method

.method public setUsdNewBalance(F)V
    .locals 0
    .parameter "usdNewBalance"

    .prologue
    .line 246
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->usdNewBalance:F

    .line 247
    return-void
.end method

.method public setUsdNewCharges(F)V
    .locals 0
    .parameter "usdNewCharges"

    .prologue
    .line 258
    iput p1, p0, Lcom/zhangdan/app/data/model/UserBankInfo;->usdNewCharges:F

    .line 259
    return-void
.end method
