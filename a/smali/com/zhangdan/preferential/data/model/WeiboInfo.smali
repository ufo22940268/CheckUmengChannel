.class public Lcom/zhangdan/preferential/data/model/WeiboInfo;
.super Ljava/lang/Object;
.source "WeiboInfo.java"


# instance fields
.field public name:Ljava/lang/String;

.field public portraitUrl:Ljava/lang/String;

.field public youhuiUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/zhangdan/app/data/model/UserInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/WeiboInfo;->youhuiUid:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserInfo;->getFigureUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/WeiboInfo;->portraitUrl:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/WeiboInfo;->name:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p1, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 27
    check-cast v0, Lcom/zhangdan/preferential/data/model/WeiboInfo;

    .line 28
    .local v0, b:Lcom/zhangdan/preferential/data/model/WeiboInfo;
    iget-object v2, p0, Lcom/zhangdan/preferential/data/model/WeiboInfo;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/WeiboInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zhangdan/preferential/data/model/WeiboInfo;->portraitUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/WeiboInfo;->portraitUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/WeiboInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "portraitUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/WeiboInfo;->portraitUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "youhuiUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/WeiboInfo;->youhuiUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
