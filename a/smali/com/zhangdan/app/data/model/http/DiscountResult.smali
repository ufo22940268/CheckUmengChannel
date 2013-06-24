.class public Lcom/zhangdan/app/data/model/http/DiscountResult;
.super Ljava/lang/Object;
.source "DiscountResult.java"


# instance fields
.field private discount:I

.field private id:J

.field private input:Ljava/lang/String;

.field private words:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiscount()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/zhangdan/app/data/model/http/DiscountResult;->discount:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/DiscountResult;->id:J

    return-wide v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/DiscountResult;->input:Ljava/lang/String;

    return-object v0
.end method

.method public getWords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/DiscountResult;->words:Ljava/lang/String;

    return-object v0
.end method

.method public setDiscount(I)V
    .locals 0
    .parameter "discount"

    .prologue
    .line 33
    iput p1, p0, Lcom/zhangdan/app/data/model/http/DiscountResult;->discount:I

    .line 34
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/DiscountResult;->id:J

    .line 22
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/DiscountResult;->input:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setWords(Ljava/lang/String;)V
    .locals 0
    .parameter "words"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/DiscountResult;->words:Ljava/lang/String;

    .line 40
    return-void
.end method
