.class public Lcom/zhangdan/app/data/model/http/MailBillResult;
.super Lcom/zhangdan/app/data/model/http/BaseHttpResult;
.source "MailBillResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private billList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zhangdan/app/data/model/http/MailBillInfo;",
            ">;"
        }
    .end annotation
.end field

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getBillList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/MailBillInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailBillResult;->billList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailBillResult;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setBillList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zhangdan/app/data/model/http/MailBillInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, billList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zhangdan/app/data/model/http/MailBillInfo;>;"
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailBillResult;->billList:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailBillResult;->time:Ljava/lang/String;

    .line 36
    return-void
.end method
