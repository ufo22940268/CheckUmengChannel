.class public Lcom/zhangdan/app/data/model/http/AlipayOrderList;
.super Ljava/lang/Object;
.source "AlipayOrderList.java"


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;

.field private orderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/AlipayOrder;",
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
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/AlipayOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->orderList:Ljava/util/List;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalResults()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->totalResults:I

    return v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 19
    iput p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->code:I

    .line 20
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->msg:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setOrderList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/AlipayOrder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, orderList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/AlipayOrder;>;"
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->orderList:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->time:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTotalResults(I)V
    .locals 0
    .parameter "totalResults"

    .prologue
    .line 43
    iput p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderList;->totalResults:I

    .line 44
    return-void
.end method
