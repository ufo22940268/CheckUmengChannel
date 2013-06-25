.class public Lcom/zhangdan/app/data/model/http/RepaymentList;
.super Ljava/lang/Object;
.source "RepaymentList.java"


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;

.field private repaymentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Repayment;",
            ">;"
        }
    .end annotation
.end field

.field private time:Ljava/lang/String;

.field private totalResults:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/zhangdan/app/data/model/http/RepaymentList;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/RepaymentList;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRepaymentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Repayment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/RepaymentList;->repaymentList:Ljava/util/List;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/RepaymentList;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalResults()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/zhangdan/app/data/model/http/RepaymentList;->totalResults:I

    return v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 27
    iput p1, p0, Lcom/zhangdan/app/data/model/http/RepaymentList;->code:I

    .line 28
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/RepaymentList;->msg:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setRepaymentList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/Repayment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, repaymentList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Repayment;>;"
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/RepaymentList;->repaymentList:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/RepaymentList;->time:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTotalResults(I)V
    .locals 0
    .parameter "totalResults"

    .prologue
    .line 45
    iput p1, p0, Lcom/zhangdan/app/data/model/http/RepaymentList;->totalResults:I

    .line 46
    return-void
.end method
