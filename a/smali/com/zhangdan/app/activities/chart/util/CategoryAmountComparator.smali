.class public Lcom/zhangdan/app/activities/chart/util/CategoryAmountComparator;
.super Ljava/lang/Object;
.source "CategoryAmountComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/zhangdan/app/activities/chart/model/CategoryInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zhangdan/app/activities/chart/model/CategoryInfo;Lcom/zhangdan/app/activities/chart/model/CategoryInfo;)I
    .locals 8
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const-wide/16 v6, 0x0

    .line 15
    invoke-virtual {p2}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->getAmount()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;->getAmount()D

    move-result-wide v4

    sub-double v0, v2, v4

    .line 16
    .local v0, d:D
    cmpl-double v2, v0, v6

    if-lez v2, :cond_0

    .line 17
    const/4 v2, 0x1

    .line 21
    :goto_0
    return v2

    .line 18
    :cond_0
    cmpg-double v2, v0, v6

    if-gez v2, :cond_1

    .line 19
    const/4 v2, -0x1

    goto :goto_0

    .line 21
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    check-cast p1, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;

    .end local p1
    check-cast p2, Lcom/zhangdan/app/activities/chart/model/CategoryInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/chart/util/CategoryAmountComparator;->compare(Lcom/zhangdan/app/activities/chart/model/CategoryInfo;Lcom/zhangdan/app/activities/chart/model/CategoryInfo;)I

    move-result v0

    return v0
.end method
