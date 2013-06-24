.class public Lcom/zhangdan/app/data/model/http/BankService;
.super Ljava/lang/Object;
.source "BankService.java"


# instance fields
.field private auto_id:J

.field private bankServiceContent:Lcom/zhangdan/app/data/model/http/BankServiceContent;

.field private bank_id:I

.field private ord:I

.field private serviceContent:Ljava/lang/String;

.field private serviceType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankService;->serviceContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/api/BankServiceApi;->parseBanckServiceContent(Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/BankServiceContent;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/data/model/http/BankService;->bankServiceContent:Lcom/zhangdan/app/data/model/http/BankServiceContent;

    .line 38
    return-void
.end method

.method public getAuto_id()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/BankService;->auto_id:J

    return-wide v0
.end method

.method public getBankServiceContent()Lcom/zhangdan/app/data/model/http/BankServiceContent;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankService;->bankServiceContent:Lcom/zhangdan/app/data/model/http/BankServiceContent;

    return-object v0
.end method

.method public getBank_id()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/zhangdan/app/data/model/http/BankService;->bank_id:I

    return v0
.end method

.method public getOrd()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/zhangdan/app/data/model/http/BankService;->ord:I

    return v0
.end method

.method public getServiceContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankService;->serviceContent:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/zhangdan/app/data/model/http/BankService;->serviceType:I

    return v0
.end method

.method public setAuto_id(J)V
    .locals 0
    .parameter "auto_id"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/BankService;->auto_id:J

    .line 46
    return-void
.end method

.method public setBankServiceContent(Lcom/zhangdan/app/data/model/http/BankServiceContent;)V
    .locals 0
    .parameter "bankServiceContent"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankService;->bankServiceContent:Lcom/zhangdan/app/data/model/http/BankServiceContent;

    .line 34
    return-void
.end method

.method public setBank_id(I)V
    .locals 0
    .parameter "bank_id"

    .prologue
    .line 53
    iput p1, p0, Lcom/zhangdan/app/data/model/http/BankService;->bank_id:I

    .line 54
    return-void
.end method

.method public setOrd(I)V
    .locals 0
    .parameter "ord"

    .prologue
    .line 77
    iput p1, p0, Lcom/zhangdan/app/data/model/http/BankService;->ord:I

    .line 78
    return-void
.end method

.method public setServiceContent(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceContent"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankService;->serviceContent:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setServiceType(I)V
    .locals 0
    .parameter "serviceType"

    .prologue
    .line 69
    iput p1, p0, Lcom/zhangdan/app/data/model/http/BankService;->serviceType:I

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BankService [auto_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zhangdan/app/data/model/http/BankService;->auto_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bank_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/BankService;->bank_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/BankService;->serviceContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/BankService;->serviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/BankService;->ord:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
