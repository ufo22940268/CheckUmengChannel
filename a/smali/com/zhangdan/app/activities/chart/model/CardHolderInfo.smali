.class public Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;
.super Ljava/lang/Object;
.source "CardHolderInfo.java"


# instance fields
.field private amount:D

.field private categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/CategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->amount:D

    return-wide v0
.end method

.method public getCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/CategoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->categoryList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->count:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(D)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->amount:D

    .line 35
    return-void
.end method

.method public setCategoryList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/chart/model/CategoryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, categoryList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/chart/model/CategoryInfo;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->categoryList:Ljava/util/List;

    .line 41
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 28
    iput p1, p0, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->count:I

    .line 29
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/model/CardHolderInfo;->name:Ljava/lang/String;

    .line 23
    return-void
.end method
