.class public Lcom/zhangdan/app/data/model/http/ChartList;
.super Lcom/zhangdan/app/data/model/http/BaseHttpResult;
.source "ChartList.java"


# instance fields
.field private chartList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/ChartInfo;",
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
.method public getChartList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/ChartInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/ChartList;->chartList:Ljava/util/List;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/ChartList;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setChartList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/ChartInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, chartList:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/ChartInfo;>;"
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/ChartList;->chartList:Ljava/util/List;

    .line 27
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/ChartList;->time:Ljava/lang/String;

    .line 21
    return-void
.end method
