.class public Lcom/zhangdan/app/data/model/http/MailAccount;
.super Ljava/lang/Object;
.source "MailAccount.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoId:J

.field private id:J

.field private isDeleted:I

.field private lastPopMsg:Ljava/lang/String;

.field private lastPopTime:Ljava/lang/String;

.field private lastWebAccessMsg:Ljava/lang/String;

.field private lastWebAccessTime:Ljava/lang/String;

.field private mailAccount:Ljava/lang/String;

.field private popState:I

.field private transSettingState:I

.field private userId:I

.field private webLoginState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoId()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->autoId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->id:J

    return-wide v0
.end method

.method public getIsDeleted()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->isDeleted:I

    return v0
.end method

.method public getLastPopMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->lastPopMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPopTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->lastPopTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLastWebAccessMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->lastWebAccessMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getLastWebAccessTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->lastWebAccessTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMailAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->mailAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getPopState()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->popState:I

    return v0
.end method

.method public getTransSettingState()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->transSettingState:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->userId:I

    return v0
.end method

.method public getWebLoginState()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->webLoginState:I

    return v0
.end method

.method public setAutoId(J)V
    .locals 0
    .parameter "autoId"

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->autoId:J

    .line 35
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->id:J

    .line 101
    return-void
.end method

.method public setIsDeleted(I)V
    .locals 0
    .parameter "isDeleted"

    .prologue
    .line 94
    iput p1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->isDeleted:I

    .line 95
    return-void
.end method

.method public setLastPopMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "lastPopMsg"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->lastPopMsg:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setLastPopTime(Ljava/lang/String;)V
    .locals 0
    .parameter "lastPopTime"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->lastPopTime:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setLastWebAccessMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "lastWebAccessMsg"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->lastWebAccessMsg:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setLastWebAccessTime(Ljava/lang/String;)V
    .locals 0
    .parameter "lastWebAccessTime"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->lastWebAccessTime:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setMailAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "mailAccount"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->mailAccount:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setPopState(I)V
    .locals 0
    .parameter "popState"

    .prologue
    .line 52
    iput p1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->popState:I

    .line 53
    return-void
.end method

.method public setTransSettingState(I)V
    .locals 0
    .parameter "transSettingState"

    .prologue
    .line 88
    iput p1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->transSettingState:I

    .line 89
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 40
    iput p1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->userId:I

    .line 41
    return-void
.end method

.method public setWebLoginState(I)V
    .locals 0
    .parameter "webLoginState"

    .prologue
    .line 70
    iput p1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->webLoginState:I

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MailAccount [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->autoId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mailAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->mailAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", popState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->popState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastPopMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->lastPopMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastPopTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->lastPopTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", webLoginState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->webLoginState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastWebAccessMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->lastWebAccessMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastWebAccessTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->lastWebAccessTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transSettingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->transSettingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/MailAccount;->isDeleted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getAutoId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getAutoId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getUserId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getMailAccount()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getMailAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getPopState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getPopState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getLastPopMsg()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getLastPopMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getLastPopTime()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getLastPopTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getWebLoginState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getWebLoginState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getLastWebAccessMsg()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getLastWebAccessMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getLastWebAccessTime()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getLastWebAccessTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getTransSettingState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getTransSettingState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getIsDeleted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getIsDeleted()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhangdan/app/data/model/http/MailAccount;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getClass()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashCode()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toString()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
