.class public Lcom/zhangdan/app/data/model/BankServiceContent;
.super Ljava/lang/Object;
.source "BankServiceContent.java"


# instance fields
.field private desc:Ljava/lang/String;

.field private flag:I

.field private isp:I

.field private method:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BankServiceContent;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/zhangdan/app/data/model/BankServiceContent;->flag:I

    return v0
.end method

.method public getIsp()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/zhangdan/app/data/model/BankServiceContent;->isp:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BankServiceContent;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BankServiceContent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BankServiceContent;->to:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BankServiceContent;->desc:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 67
    iput p1, p0, Lcom/zhangdan/app/data/model/BankServiceContent;->flag:I

    .line 68
    return-void
.end method

.method public setIsp(I)V
    .locals 0
    .parameter "isp"

    .prologue
    .line 44
    iput p1, p0, Lcom/zhangdan/app/data/model/BankServiceContent;->isp:I

    .line 45
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .parameter "method"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BankServiceContent;->method:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BankServiceContent;->title:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .parameter "to"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BankServiceContent;->to:Ljava/lang/String;

    .line 51
    return-void
.end method
