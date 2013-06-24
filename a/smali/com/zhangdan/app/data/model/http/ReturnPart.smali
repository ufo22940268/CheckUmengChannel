.class public Lcom/zhangdan/app/data/model/http/ReturnPart;
.super Ljava/lang/Object;
.source "ReturnPart.java"


# instance fields
.field private autoId:J

.field private code:I

.field private msg:Ljava/lang/String;

.field private returnAmount:D

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
.method public getAutoId()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/ReturnPart;->autoId:J

    return-wide v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/zhangdan/app/data/model/http/ReturnPart;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/ReturnPart;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnAmount()D
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/ReturnPart;->returnAmount:D

    return-wide v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/ReturnPart;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setAutoId(J)V
    .locals 0
    .parameter "autoId"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/ReturnPart;->autoId:J

    .line 34
    return-void
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 15
    iput p1, p0, Lcom/zhangdan/app/data/model/http/ReturnPart;->code:I

    .line 16
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/ReturnPart;->msg:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setReturnAmount(D)V
    .locals 0
    .parameter "returnAmount"

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/ReturnPart;->returnAmount:D

    .line 40
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/ReturnPart;->time:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "ReturnPart:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/zhangdan/app/data/model/http/ReturnPart;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/http/ReturnPart;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "autoId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/zhangdan/app/data/model/http/ReturnPart;->autoId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/zhangdan/app/data/model/http/ReturnPart;->returnAmount:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
