.class public Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;
.super Ljava/lang/Object;
.source "AlipayOrderCreate.java"


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;

.field private order:Lcom/zhangdan/app/data/model/http/AlipayOrder;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Lcom/zhangdan/app/data/model/http/AlipayOrder;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->order:Lcom/zhangdan/app/data/model/http/AlipayOrder;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 15
    iput p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->code:I

    .line 16
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->msg:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setOrder(Lcom/zhangdan/app/data/model/http/AlipayOrder;)V
    .locals 0
    .parameter "order"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->order:Lcom/zhangdan/app/data/model/http/AlipayOrder;

    .line 40
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->time:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "AlipayOrderCreate:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string v1, "code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    const-string v1, ",time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",tradeOrder:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/http/AlipayOrderCreate;->order:Lcom/zhangdan/app/data/model/http/AlipayOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
