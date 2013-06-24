.class public Lcom/zhangdan/app/data/model/http/BankServiceList;
.super Ljava/lang/Object;
.source "BankServiceList.java"


# instance fields
.field private bankServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankService;",
            ">;"
        }
    .end annotation
.end field

.field private code:I

.field private msg:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private totalResults:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceList;->bankServices:Ljava/util/List;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceList;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceList;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceList;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalResults()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceList;->totalResults:I

    return v0
.end method

.method public setBankServices(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, bankServices:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankService;>;"
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceList;->bankServices:Ljava/util/List;

    .line 55
    return-void
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 30
    iput p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceList;->code:I

    .line 31
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceList;->msg:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceList;->time:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setTotalResults(I)V
    .locals 0
    .parameter "totalResults"

    .prologue
    .line 62
    iput p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceList;->totalResults:I

    .line 63
    return-void
.end method
