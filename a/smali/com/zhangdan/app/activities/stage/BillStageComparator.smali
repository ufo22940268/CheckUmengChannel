.class public Lcom/zhangdan/app/activities/stage/BillStageComparator;
.super Ljava/lang/Object;
.source "BillStageComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/zhangdan/app/data/model/BillStageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zhangdan/app/data/model/BillStageInfo;Lcom/zhangdan/app/data/model/BillStageInfo;)I
    .locals 2
    .parameter "data1"
    .parameter "data2"

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BillStageInfo;->getMaxPeriodCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/BillStageInfo;->getMaxPeriodCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    check-cast p1, Lcom/zhangdan/app/data/model/BillStageInfo;

    .end local p1
    check-cast p2, Lcom/zhangdan/app/data/model/BillStageInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/stage/BillStageComparator;->compare(Lcom/zhangdan/app/data/model/BillStageInfo;Lcom/zhangdan/app/data/model/BillStageInfo;)I

    move-result v0

    return v0
.end method
