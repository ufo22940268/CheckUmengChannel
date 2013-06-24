.class public Lcom/zhangdan/app/data/model/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private figureUrl:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private lastLoginTime:Ljava/lang/String;

.field private loginTime:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private outId:Ljava/lang/String;

.field private qq:Ljava/lang/String;

.field private regTime:Ljava/lang/String;

.field private status:I

.field private token:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFigureUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserInfo;->figureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserInfo;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getLastLoginTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserInfo;->lastLoginTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserInfo;->loginTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserInfo;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getOutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserInfo;->outId:Ljava/lang/String;

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserInfo;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getRegTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserInfo;->regTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/zhangdan/app/data/model/UserInfo;->status:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setFigureUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "figureUrl"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserInfo;->figureUrl:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserInfo;->from:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setLastLoginTime(Ljava/lang/String;)V
    .locals 0
    .parameter "lastLoginTime"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserInfo;->lastLoginTime:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setLoginTime(Ljava/lang/String;)V
    .locals 0
    .parameter "loginTime"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserInfo;->loginTime:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "mobile"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserInfo;->mobile:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setOutId(Ljava/lang/String;)V
    .locals 0
    .parameter "outId"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserInfo;->outId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 0
    .parameter "qq"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserInfo;->qq:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setRegTime(Ljava/lang/String;)V
    .locals 0
    .parameter "regTime"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserInfo;->regTime:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 68
    iput p1, p0, Lcom/zhangdan/app/data/model/UserInfo;->status:I

    .line 69
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserInfo;->token:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserInfo;->userId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserInfo;->userName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 36
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "UserInfo:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/UserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/UserInfo;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "userName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/UserInfo;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "figureUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/UserInfo;->figureUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/data/model/UserInfo;->from:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
