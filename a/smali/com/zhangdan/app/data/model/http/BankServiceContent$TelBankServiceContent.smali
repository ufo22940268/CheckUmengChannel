.class public Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;
.super Ljava/lang/Object;
.source "BankServiceContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/data/model/http/BankServiceContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TelBankServiceContent"
.end annotation


# instance fields
.field private des:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field final synthetic this$0:Lcom/zhangdan/app/data/model/http/BankServiceContent;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/data/model/http/BankServiceContent;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;->this$0:Lcom/zhangdan/app/data/model/http/BankServiceContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;->des:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 0
    .parameter "des"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;->des:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .parameter "method"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;->method:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BankServiceContent$TelBankServiceContent;->title:Ljava/lang/String;

    .line 113
    return-void
.end method
