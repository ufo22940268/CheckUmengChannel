.class public Lcom/zhangdan/app/sms/BillData;
.super Ljava/lang/Object;
.source "BillData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_BILL:I = 0x0

.field public static final TYPE_DISCOUNT:I = 0x4

.field public static final TYPE_EXPEND:I = 0x1

.field public static final TYPE_INCOME:I = 0x2

.field public static final TYPE_MAYBE_BILL:I = 0x3

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private amount:Ljava/lang/String;

.field private bankId:I

.field private bankName:Ljava/lang/String;

.field private billId:I

.field private billType:I

.field private cardLast:Ljava/lang/String;

.field private currencyType:I

.field private date:J

.field private dateStr:Ljava/lang/String;

.field private day:I

.field private id:J

.field private isDel:Z

.field private is_CreaditCard:I

.field private is_rember:I

.field private month:I

.field private phone:Ljava/lang/String;

.field private remark:Ljava/lang/String;

.field private repaymentDay:I

.field private repaymentMonth:I

.field private repaymentYear:I

.field private sms:Ljava/lang/String;

.field private trueName:Ljava/lang/String;

.field private usAmount:Ljava/lang/String;

.field private weekDay:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/sms/BillData;->billType:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/sms/BillData;->currencyType:I

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/zhangdan/app/sms/BillData;->is_CreaditCard:I

    return-void
.end method

.method public static getBillTypeStr(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter "billType"
    .parameter "res"

    .prologue
    .line 269
    if-nez p0, :cond_0

    .line 270
    const-string v0, "\u8d26\u5355"

    .line 275
    :goto_0
    return-object v0

    .line 271
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 272
    const-string v0, "\u6536\u5165"

    goto :goto_0

    .line 273
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 274
    const-string v0, "\u652f\u51fa"

    goto :goto_0

    .line 275
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/zhangdan/app/sms/BillData;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getBankId()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/zhangdan/app/sms/BillData;->bankId:I

    return v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/zhangdan/app/sms/BillData;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getBillId()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/zhangdan/app/sms/BillData;->billId:I

    return v0
.end method

.method public getBillType()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/zhangdan/app/sms/BillData;->billType:I

    return v0
.end method

.method public getCardLast()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/zhangdan/app/sms/BillData;->cardLast:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyType()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/zhangdan/app/sms/BillData;->currencyType:I

    return v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/zhangdan/app/sms/BillData;->date:J

    return-wide v0
.end method

.method public getDateStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/zhangdan/app/sms/BillData;->dateStr:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/zhangdan/app/sms/BillData;->day:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/zhangdan/app/sms/BillData;->id:J

    return-wide v0
.end method

.method public getIs_CreaditCard()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/zhangdan/app/sms/BillData;->is_CreaditCard:I

    return v0
.end method

.method public getIs_rember()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/zhangdan/app/sms/BillData;->is_rember:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/zhangdan/app/sms/BillData;->month:I

    return v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zhangdan/app/sms/BillData;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/zhangdan/app/sms/BillData;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getRepaymentDay()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/zhangdan/app/sms/BillData;->repaymentDay:I

    return v0
.end method

.method public getRepaymentMonth()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/zhangdan/app/sms/BillData;->repaymentMonth:I

    return v0
.end method

.method public getRepaymentYear()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/zhangdan/app/sms/BillData;->repaymentYear:I

    return v0
.end method

.method public getSms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/zhangdan/app/sms/BillData;->sms:Ljava/lang/String;

    return-object v0
.end method

.method public getTrueName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/zhangdan/app/sms/BillData;->trueName:Ljava/lang/String;

    return-object v0
.end method

.method public getUsAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/zhangdan/app/sms/BillData;->usAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekDay()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/zhangdan/app/sms/BillData;->weekDay:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/zhangdan/app/sms/BillData;->year:I

    return v0
.end method

.method public isDel()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/zhangdan/app/sms/BillData;->isDel:Z

    return v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/zhangdan/app/sms/BillData;->amount:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setBankId(I)V
    .locals 0
    .parameter "bankId"

    .prologue
    .line 162
    iput p1, p0, Lcom/zhangdan/app/sms/BillData;->bankId:I

    .line 163
    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0
    .parameter "bankName"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/zhangdan/app/sms/BillData;->bankName:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setBillId(I)V
    .locals 0
    .parameter "billId"

    .prologue
    .line 120
    iput p1, p0, Lcom/zhangdan/app/sms/BillData;->billId:I

    .line 121
    return-void
.end method

.method public setBillType(I)V
    .locals 0
    .parameter "billType"

    .prologue
    .line 156
    iput p1, p0, Lcom/zhangdan/app/sms/BillData;->billType:I

    .line 157
    return-void
.end method

.method public setCardLast(Ljava/lang/String;)V
    .locals 0
    .parameter "cardLast"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/zhangdan/app/sms/BillData;->cardLast:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setCurrencyType(I)V
    .locals 0
    .parameter "currencyType"

    .prologue
    .line 186
    iput p1, p0, Lcom/zhangdan/app/sms/BillData;->currencyType:I

    .line 187
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .parameter "date"

    .prologue
    .line 210
    iput-wide p1, p0, Lcom/zhangdan/app/sms/BillData;->date:J

    .line 211
    invoke-static {p1, p2}, Lcom/zhangdan/app/util/DateUtils;->calWeekDay(J)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/sms/BillData;->weekDay:I

    .line 212
    return-void
.end method

.method public setDateStr(Ljava/lang/String;)V
    .locals 0
    .parameter "dateStr"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/zhangdan/app/sms/BillData;->dateStr:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setDay(I)V
    .locals 0
    .parameter "day"

    .prologue
    .line 248
    iput p1, p0, Lcom/zhangdan/app/sms/BillData;->day:I

    .line 249
    return-void
.end method

.method public setDel(Z)V
    .locals 0
    .parameter "isDel"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/zhangdan/app/sms/BillData;->isDel:Z

    .line 97
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/zhangdan/app/sms/BillData;->id:J

    .line 151
    return-void
.end method

.method public setIs_CreaditCard(I)V
    .locals 0
    .parameter "is_CreaditCard"

    .prologue
    .line 104
    iput p1, p0, Lcom/zhangdan/app/sms/BillData;->is_CreaditCard:I

    .line 105
    return-void
.end method

.method public setIs_rember(I)V
    .locals 0
    .parameter "is_rember"

    .prologue
    .line 112
    iput p1, p0, Lcom/zhangdan/app/sms/BillData;->is_rember:I

    .line 113
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .parameter "month"

    .prologue
    .line 242
    iput p1, p0, Lcom/zhangdan/app/sms/BillData;->month:I

    .line 243
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/zhangdan/app/sms/BillData;->phone:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .parameter "remark"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/zhangdan/app/sms/BillData;->remark:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setRepaymentDay(I)V
    .locals 0
    .parameter "repaymentDay"

    .prologue
    .line 224
    iput p1, p0, Lcom/zhangdan/app/sms/BillData;->repaymentDay:I

    .line 225
    return-void
.end method

.method public setRepaymentMonth(I)V
    .locals 0
    .parameter "repaymentMonth"

    .prologue
    .line 230
    iput p1, p0, Lcom/zhangdan/app/sms/BillData;->repaymentMonth:I

    .line 231
    return-void
.end method

.method public setRepaymentYear(I)V
    .locals 0
    .parameter "repaymentYear"

    .prologue
    .line 265
    iput p1, p0, Lcom/zhangdan/app/sms/BillData;->repaymentYear:I

    .line 266
    return-void
.end method

.method public setSms(Ljava/lang/String;)V
    .locals 0
    .parameter "sms"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/zhangdan/app/sms/BillData;->sms:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setTrueName(Ljava/lang/String;)V
    .locals 0
    .parameter "trueName"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/zhangdan/app/sms/BillData;->trueName:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setUsAmount(Ljava/lang/String;)V
    .locals 0
    .parameter "usAmount"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/zhangdan/app/sms/BillData;->usAmount:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setWeekDay(I)V
    .locals 0
    .parameter "weekDay"

    .prologue
    .line 256
    iput p1, p0, Lcom/zhangdan/app/sms/BillData;->weekDay:I

    .line 257
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .parameter "year"

    .prologue
    .line 236
    iput p1, p0, Lcom/zhangdan/app/sms/BillData;->year:I

    .line 237
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 281
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, ""

    .line 282
    .local v1, type:Ljava/lang/String;
    iget v2, p0, Lcom/zhangdan/app/sms/BillData;->billType:I

    if-nez v2, :cond_1

    .line 283
    const-string v1, "\u8d26\u5355"

    .line 292
    :cond_0
    :goto_0
    const-string v2, "BillData:["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\u77ed\u4fe1\u7c7b\u578b:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\u94f6\u884cid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/zhangdan/app/sms/BillData;->bankId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\u94f6\u884c\u540d\u79f0:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/sms/BillData;->bankName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\u5361\u53f7:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/sms/BillData;->cardLast:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\u91d1\u989d:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/sms/BillData;->amount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\u8fd8\u6b3e\u65e5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/zhangdan/app/sms/BillData;->repaymentDay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 284
    :cond_1
    iget v2, p0, Lcom/zhangdan/app/sms/BillData;->billType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 285
    const-string v1, "\u6d88\u8d39"

    goto :goto_0

    .line 286
    :cond_2
    iget v2, p0, Lcom/zhangdan/app/sms/BillData;->billType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 287
    const-string v1, "\u8fd8\u6b3e"

    goto/16 :goto_0

    .line 288
    :cond_3
    iget v2, p0, Lcom/zhangdan/app/sms/BillData;->billType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 289
    const-string v1, "\u5176\u4ed6"

    goto/16 :goto_0

    .line 290
    :cond_4
    iget v2, p0, Lcom/zhangdan/app/sms/BillData;->billType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 291
    const-string v1, "\u4f18\u60e0"

    goto/16 :goto_0
.end method
