.class public Lcom/zhangdan/app/data/model/BillStageGroup;
.super Ljava/lang/Object;
.source "BillStageGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cardNo:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private stageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillStageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBillAmount()D
    .locals 6

    .prologue
    .line 45
    iget-object v4, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->stageList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 46
    const-wide/16 v2, 0x0

    .line 51
    :cond_0
    return-wide v2

    .line 47
    :cond_1
    const-wide/16 v2, 0x0

    .line 48
    .local v2, total:D
    iget-object v4, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->stageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/BillStageItem;

    .line 49
    .local v1, item:Lcom/zhangdan/app/data/model/BillStageItem;
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/BillStageItem;->getAmount()D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 50
    goto :goto_0
.end method

.method public getCardNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->cardNo:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstPeriodAmount()D
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->stageList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->stageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    const-wide/16 v0, 0x0

    .line 65
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->stageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/BillStageItem;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BillStageItem;->getAmount()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getFirstYearAndMonth()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->stageList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->stageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->stageList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/BillStageItem;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BillStageItem;->getYear()I

    move-result v0

    aput v0, v1, v3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->stageList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/BillStageItem;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/BillStageItem;->getMonth()I

    move-result v0

    aput v0, v1, v2

    move-object v0, v1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->stageList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->stageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStageItem(I)Lcom/zhangdan/app/data/model/BillStageItem;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->stageList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->stageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->stageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/BillStageItem;

    goto :goto_0
.end method

.method public getStageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillStageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->stageList:Ljava/util/List;

    return-object v0
.end method

.method public setCardNo(Ljava/lang/String;)V
    .locals 0
    .parameter "cardNo"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->cardNo:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->desc:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setStageList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/BillStageItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, stageList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/BillStageItem;>;"
    iput-object p1, p0, Lcom/zhangdan/app/data/model/BillStageGroup;->stageList:Ljava/util/List;

    .line 38
    return-void
.end method
