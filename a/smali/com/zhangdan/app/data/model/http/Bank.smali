.class public Lcom/zhangdan/app/data/model/http/Bank;
.super Ljava/lang/Object;
.source "Bank.java"


# instance fields
.field private bankId:I

.field private bankName:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private isDeleted:I

.field private logo:Ljava/lang/String;

.field private longTel:Ljava/lang/String;

.field private maxFreePeriod:I

.field private orderIndex:I

.field private pointMall:Ljava/lang/String;

.field private shortTel:Ljava/lang/String;

.field private simpleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/zhangdan/app/data/model/http/Bank;->bankId:I

    return v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/Bank;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/Bank;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDeleted()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/zhangdan/app/data/model/http/Bank;->isDeleted:I

    return v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/Bank;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getLongTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/Bank;->longTel:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFreePeriod()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/zhangdan/app/data/model/http/Bank;->maxFreePeriod:I

    return v0
.end method

.method public getOrderIndex()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/zhangdan/app/data/model/http/Bank;->orderIndex:I

    return v0
.end method

.method public getPointMall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/Bank;->pointMall:Ljava/lang/String;

    return-object v0
.end method

.method public getShortTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/Bank;->shortTel:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/Bank;->simpleName:Ljava/lang/String;

    return-object v0
.end method

.method public setBankId(I)V
    .locals 0
    .parameter "bankId"

    .prologue
    .line 29
    iput p1, p0, Lcom/zhangdan/app/data/model/http/Bank;->bankId:I

    .line 30
    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0
    .parameter "bankName"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/Bank;->bankName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0
    .parameter "fullName"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/Bank;->fullName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setIsDeleted(I)V
    .locals 0
    .parameter "isDeleted"

    .prologue
    .line 85
    iput p1, p0, Lcom/zhangdan/app/data/model/http/Bank;->isDeleted:I

    .line 86
    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0
    .parameter "logo"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/Bank;->logo:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setLongTel(Ljava/lang/String;)V
    .locals 0
    .parameter "longTel"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/Bank;->longTel:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setMaxFreePeriod(I)V
    .locals 0
    .parameter "maxFreePeriod"

    .prologue
    .line 93
    iput p1, p0, Lcom/zhangdan/app/data/model/http/Bank;->maxFreePeriod:I

    .line 94
    return-void
.end method

.method public setOrderIndex(I)V
    .locals 0
    .parameter "orderIndex"

    .prologue
    .line 109
    iput p1, p0, Lcom/zhangdan/app/data/model/http/Bank;->orderIndex:I

    .line 110
    return-void
.end method

.method public setPointMall(Ljava/lang/String;)V
    .locals 0
    .parameter "pointMall"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/Bank;->pointMall:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setShortTel(Ljava/lang/String;)V
    .locals 0
    .parameter "shortTel"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/Bank;->shortTel:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSimpleName(Ljava/lang/String;)V
    .locals 0
    .parameter "simpleName"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/Bank;->simpleName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BankInfo [bankId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/Bank;->bankId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bankName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/Bank;->bankName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", simpleName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/Bank;->simpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fullName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/Bank;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/Bank;->logo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shortTel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/Bank;->shortTel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longTel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/Bank;->longTel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/Bank;->isDeleted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxFreePeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/Bank;->maxFreePeriod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pointMall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/Bank;->pointMall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/Bank;->orderIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
