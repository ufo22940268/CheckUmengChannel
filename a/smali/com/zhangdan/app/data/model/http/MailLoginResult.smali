.class public Lcom/zhangdan/app/data/model/http/MailLoginResult;
.super Lcom/zhangdan/app/data/model/http/BaseHttpResult;
.source "MailLoginResult.java"


# instance fields
.field private autoId:J

.field private bulk:Z

.field private mailAccount:Ljava/lang/String;

.field private pop:Z

.field private sid:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoId()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/MailLoginResult;->autoId:J

    return-wide v0
.end method

.method public getMailAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailLoginResult;->mailAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailLoginResult;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailLoginResult;->time:Ljava/lang/String;

    return-object v0
.end method

.method public isBulk()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/zhangdan/app/data/model/http/MailLoginResult;->bulk:Z

    return v0
.end method

.method public isPop()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/zhangdan/app/data/model/http/MailLoginResult;->pop:Z

    return v0
.end method

.method public setAutoId(J)V
    .locals 0
    .parameter "autoId"

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/MailLoginResult;->autoId:J

    .line 22
    return-void
.end method

.method public setBulk(Z)V
    .locals 0
    .parameter "bulk"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/zhangdan/app/data/model/http/MailLoginResult;->bulk:Z

    .line 40
    return-void
.end method

.method public setMailAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "mailAccount"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailLoginResult;->mailAccount:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setPop(Z)V
    .locals 0
    .parameter "pop"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/zhangdan/app/data/model/http/MailLoginResult;->pop:Z

    .line 46
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0
    .parameter "sid"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailLoginResult;->sid:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailLoginResult;->time:Ljava/lang/String;

    .line 52
    return-void
.end method
