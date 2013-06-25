.class public Lcom/zhangdan/app/data/model/UserHisInfo;
.super Ljava/lang/Object;
.source "UserHisInfo.java"


# instance fields
.field private account:Ljava/lang/String;

.field private pwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserHisInfo;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zhangdan/app/data/model/UserHisInfo;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserHisInfo;->account:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0
    .parameter "pwd"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/zhangdan/app/data/model/UserHisInfo;->pwd:Ljava/lang/String;

    .line 23
    return-void
.end method
