.class public Lcom/zhangdan/app/data/model/http/UserLoginInfo;
.super Ljava/lang/Object;
.source "UserLoginInfo.java"


# instance fields
.field private bbsApiUrl:Ljava/lang/String;

.field private code:I

.field private mailcount:I

.field private msg:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private ucCode:Ljava/lang/String;

.field private ucTime:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->code:I

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBbsApiUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->bbsApiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->code:I

    return v0
.end method

.method public getMailcount()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->mailcount:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUcCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->ucCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUcTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->ucTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setBbsApiUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "bbsApiUrl"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->bbsApiUrl:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 28
    iput p1, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->code:I

    .line 29
    return-void
.end method

.method public setMailcount(I)V
    .locals 0
    .parameter "mailcount"

    .prologue
    .line 52
    iput p1, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->mailcount:I

    .line 53
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->msg:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->time:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->token:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setUcCode(Ljava/lang/String;)V
    .locals 0
    .parameter "ucCode"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->ucCode:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setUcTime(Ljava/lang/String;)V
    .locals 0
    .parameter "ucTime"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->ucTime:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->userId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setUserInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "userInfo"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserLoginInfo;->userInfo:Ljava/lang/String;

    .line 47
    return-void
.end method
