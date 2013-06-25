.class public Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;
.super Ljava/lang/Object;
.source "ShoppingSectionInfo.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private month:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addShoppingSheetInfo(Lcom/zhangdan/app/data/model/ShoppingSheetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->list:Ljava/util/List;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public getItem(I)Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    goto :goto_0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->list:Ljava/util/List;

    return-object v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->month:I

    return v0
.end method

.method public getShoppingSheetSize()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->year:I

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/ShoppingSheetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/ShoppingSheetInfo;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->list:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .parameter "month"

    .prologue
    .line 34
    iput p1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->month:I

    .line 35
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .parameter "year"

    .prologue
    .line 26
    iput p1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSectionInfo;->year:I

    .line 27
    return-void
.end method
