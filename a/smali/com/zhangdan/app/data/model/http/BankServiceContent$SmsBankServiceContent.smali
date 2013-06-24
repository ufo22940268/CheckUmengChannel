.class public Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;
.super Ljava/lang/Object;
.source "BankServiceContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/data/model/http/BankServiceContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsBankServiceContent"
.end annotation


# instance fields
.field private des:Ljava/lang/String;

.field private isp:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field final synthetic this$0:Lcom/zhangdan/app/data/model/http/BankServiceContent;

.field private title:Ljava/lang/String;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/data/model/http/BankServiceContent;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;->this$0:Lcom/zhangdan/app/data/model/http/BankServiceContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;->des:Ljava/lang/String;

    return-object v0
.end method

.method public getIsp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;->isp:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;->to:Ljava/lang/String;

    return-object v0
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 0
    .parameter "des"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;->des:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setIsp(Ljava/lang/String;)V
    .locals 0
    .parameter "isp"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;->isp:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .parameter "method"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;->method:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;->title:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .parameter "to"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$SmsBankServiceContent;->to:Ljava/lang/String;

    .line 78
    return-void
.end method
