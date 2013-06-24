.class public Lcom/zhangdan/app/data/model/http/BankServiceContent;
.super Ljava/lang/Object;
.source "BankServiceContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;,
        Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;
    }
.end annotation


# instance fields
.field private smsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;",
            ">;"
        }
    .end annotation
.end field

.field private telList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method


# virtual methods
.method public getSmsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent;->smsList:Ljava/util/List;

    return-object v0
.end method

.method public getTelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent;->telList:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setSmsList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, smsList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;>;"
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent;->smsList:Ljava/util/List;

    .line 31
    return-void
.end method

.method public setTelList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, telList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;>;"
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent;->telList:Ljava/util/List;

    .line 47
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent;->title:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent;->type:Ljava/lang/String;

    .line 39
    return-void
.end method
