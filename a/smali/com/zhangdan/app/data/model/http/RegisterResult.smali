.class public Lcom/zhangdan/app/data/model/http/RegisterResult;
.super Ljava/lang/Object;
.source "RegisterResult.java"


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/zhangdan/app/data/model/http/RegisterResult;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/RegisterResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/RegisterResult;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/RegisterResult;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 20
    iput p1, p0, Lcom/zhangdan/app/data/model/http/RegisterResult;->code:I

    .line 21
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/RegisterResult;->msg:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/RegisterResult;->password:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/RegisterResult;->username:Ljava/lang/String;

    .line 33
    return-void
.end method
