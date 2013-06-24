.class public Lcom/zhangdan/app/data/model/http/MailAccountList;
.super Ljava/lang/Object;
.source "MailAccountList.java"


# instance fields
.field private code:I

.field private mailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/MailAccount;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private totalResults:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/zhangdan/app/data/model/http/MailAccountList;->code:I

    return v0
.end method

.method public getMailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/MailAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailAccountList;->mailList:Ljava/util/List;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailAccountList;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailAccountList;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalResults()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/zhangdan/app/data/model/http/MailAccountList;->totalResults:I

    return v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 23
    iput p1, p0, Lcom/zhangdan/app/data/model/http/MailAccountList;->code:I

    .line 24
    return-void
.end method

.method public setMailList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/MailAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, mailList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/MailAccount;>;"
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailAccountList;->mailList:Ljava/util/List;

    .line 48
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailAccountList;->msg:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailAccountList;->time:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTotalResults(I)V
    .locals 0
    .parameter "totalResults"

    .prologue
    .line 41
    iput p1, p0, Lcom/zhangdan/app/data/model/http/MailAccountList;->totalResults:I

    .line 42
    return-void
.end method
