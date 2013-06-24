.class public Lcom/zhangdan/app/data/model/MailAccountInfo;
.super Ljava/lang/Object;
.source "MailAccountInfo.java"


# instance fields
.field private autoId:J

.field private lastWebAccessTime:Ljava/lang/String;

.field private localPwd:Ljava/lang/String;

.field private localSpecialPwd:Ljava/lang/String;

.field private localTimes:Ljava/lang/String;

.field private mailAccount:Ljava/lang/String;

.field private userId:Ljava/lang/String;


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
    .line 20
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/MailAccountInfo;->autoId:J

    return-wide v0
.end method

.method public getLastWebAccessTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhangdan/app/data/model/MailAccountInfo;->lastWebAccessTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhangdan/app/data/model/MailAccountInfo;->localPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalSpecialPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/app/data/model/MailAccountInfo;->localSpecialPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalTimes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zhangdan/app/data/model/MailAccountInfo;->localTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getMailAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zhangdan/app/data/model/MailAccountInfo;->mailAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/zhangdan/app/data/model/MailAccountInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAutoId(J)V
    .locals 0
    .parameter "autoId"

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/MailAccountInfo;->autoId:J

    .line 24
    return-void
.end method

.method public setLastWebAccessTime(Ljava/lang/String;)V
    .locals 0
    .parameter "lastWebAccessTime"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/zhangdan/app/data/model/MailAccountInfo;->lastWebAccessTime:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setLocalPwd(Ljava/lang/String;)V
    .locals 0
    .parameter "localPwd"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zhangdan/app/data/model/MailAccountInfo;->localPwd:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setLocalSpecialPwd(Ljava/lang/String;)V
    .locals 0
    .parameter "localSpecialPwd"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/zhangdan/app/data/model/MailAccountInfo;->localSpecialPwd:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setLocalTimes(Ljava/lang/String;)V
    .locals 0
    .parameter "localTimes"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zhangdan/app/data/model/MailAccountInfo;->localTimes:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setMailAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "mailAccount"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/zhangdan/app/data/model/MailAccountInfo;->mailAccount:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/zhangdan/app/data/model/MailAccountInfo;->userId:Ljava/lang/String;

    .line 18
    return-void
.end method
