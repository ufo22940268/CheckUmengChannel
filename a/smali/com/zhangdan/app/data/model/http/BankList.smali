.class public Lcom/zhangdan/app/data/model/http/BankList;
.super Ljava/lang/Object;
.source "BankList.java"


# instance fields
.field bankInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Bank;",
            ">;"
        }
    .end annotation
.end field

.field private code:I

.field private msg:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private total_results:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Bank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankList;->bankInfos:Ljava/util/List;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/zhangdan/app/data/model/http/BankList;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankList;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankList;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_results()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/zhangdan/app/data/model/http/BankList;->total_results:I

    return v0
.end method

.method public setBankInfos(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Bank;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, bankInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Bank;>;"
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankList;->bankInfos:Ljava/util/List;

    .line 65
    return-void
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 40
    iput p1, p0, Lcom/zhangdan/app/data/model/http/BankList;->code:I

    .line 41
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankList;->msg:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankList;->time:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setTotal_results(I)V
    .locals 0
    .parameter "total_results"

    .prologue
    .line 72
    iput p1, p0, Lcom/zhangdan/app/data/model/http/BankList;->total_results:I

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BankListInfo [code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/BankList;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/BankList;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/BankList;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bankInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/BankList;->bankInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", total_results="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/BankList;->total_results:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
