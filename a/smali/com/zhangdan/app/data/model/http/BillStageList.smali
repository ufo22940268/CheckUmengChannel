.class public Lcom/zhangdan/app/data/model/http/BillStageList;
.super Lcom/zhangdan/app/data/model/http/BaseHttpResult;
.source "BillStageList.java"


# instance fields
.field private stageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BillStages;",
            ">;"
        }
    .end annotation
.end field

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getStageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BillStages;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BillStageList;->stageList:Ljava/util/List;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/BillStageList;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setStageList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/BillStages;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, stageList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/BillStages;>;"
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BillStageList;->stageList:Ljava/util/List;

    .line 30
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/BillStageList;->time:Ljava/lang/String;

    .line 22
    return-void
.end method
