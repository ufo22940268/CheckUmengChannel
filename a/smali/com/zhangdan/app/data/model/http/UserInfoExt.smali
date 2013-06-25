.class public Lcom/zhangdan/app/data/model/http/UserInfoExt;
.super Ljava/lang/Object;
.source "UserInfoExt.java"


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;

.field private noPushInNight:I

.field private privateInfo:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private userId:I


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
    .line 37
    iget v0, p0, Lcom/zhangdan/app/data/model/http/UserInfoExt;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserInfoExt;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getNoPushInNight()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/zhangdan/app/data/model/http/UserInfoExt;->noPushInNight:I

    return v0
.end method

.method public getPrivateInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserInfoExt;->privateInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/UserInfoExt;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/zhangdan/app/data/model/http/UserInfoExt;->userId:I

    return v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 40
    iput p1, p0, Lcom/zhangdan/app/data/model/http/UserInfoExt;->code:I

    .line 41
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserInfoExt;->msg:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setNoPushInNight(I)V
    .locals 0
    .parameter "noPushInNight"

    .prologue
    .line 28
    iput p1, p0, Lcom/zhangdan/app/data/model/http/UserInfoExt;->noPushInNight:I

    .line 29
    return-void
.end method

.method public setPrivateInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "privateInfo"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserInfoExt;->privateInfo:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/UserInfoExt;->time:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 22
    iput p1, p0, Lcom/zhangdan/app/data/model/http/UserInfoExt;->userId:I

    .line 23
    return-void
.end method
