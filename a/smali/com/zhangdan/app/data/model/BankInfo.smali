.class public Lcom/zhangdan/app/data/model/BankInfo;
.super Ljava/lang/Object;
.source "BankInfo.java"


# instance fields
.field private bankIconResId:I

.field private bankId:I

.field private bankName:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private isInUse:Z

.field private maxFreePeriod:I

.field private orderIndex:I

.field private pointMall:Ljava/lang/String;

.field private simpleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankIconResId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/zhangdan/app/data/model/BankInfo;->bankIconResId:I

    return v0
.end method

.method public getBankId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/zhangdan/app/data/model/BankInfo;->bankId:I

    return v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BankInfo;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BankInfo;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFreePeriod()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/zhangdan/app/data/model/BankInfo;->maxFreePeriod:I

    return v0
.end method

.method public getOrderIndex()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/zhangdan/app/data/model/BankInfo;->orderIndex:I

    return v0
.end method

.method public getPointMall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BankInfo;->pointMall:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BankInfo;->simpleName:Ljava/lang/String;

    return-object v0
.end method

.method public isInUse()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/zhangdan/app/data/model/BankInfo;->isInUse:Z

    return v0
.end method

.method public setBankIconResId(I)V
    .locals 0
    .parameter "bankIconResId"

    .prologue
    .line 79
    iput p1, p0, Lcom/zhangdan/app/data/model/BankInfo;->bankIconResId:I

    .line 80
    return-void
.end method

.method public setBankId(I)V
    .locals 0
    .parameter "bankId"

    .prologue
    .line 33
    iput p1, p0, Lcom/zhangdan/app/data/model/BankInfo;->bankId:I

    .line 34
    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0
    .parameter "bankName"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BankInfo;->bankName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0
    .parameter "fullName"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BankInfo;->fullName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setInUse(Z)V
    .locals 0
    .parameter "isInUse"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/zhangdan/app/data/model/BankInfo;->isInUse:Z

    .line 28
    return-void
.end method

.method public setMaxFreePeriod(I)V
    .locals 0
    .parameter "maxFreePeriod"

    .prologue
    .line 57
    iput p1, p0, Lcom/zhangdan/app/data/model/BankInfo;->maxFreePeriod:I

    .line 58
    return-void
.end method

.method public setOrderIndex(I)V
    .locals 0
    .parameter "orderIndex"

    .prologue
    .line 71
    iput p1, p0, Lcom/zhangdan/app/data/model/BankInfo;->orderIndex:I

    .line 72
    return-void
.end method

.method public setPointMall(Ljava/lang/String;)V
    .locals 0
    .parameter "pointMall"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BankInfo;->pointMall:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSimpleName(Ljava/lang/String;)V
    .locals 0
    .parameter "simpleName"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BankInfo;->simpleName:Ljava/lang/String;

    .line 46
    return-void
.end method
