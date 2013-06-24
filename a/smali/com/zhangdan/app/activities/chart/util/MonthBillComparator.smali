.class public Lcom/zhangdan/app/activities/chart/util/MonthBillComparator;
.super Ljava/lang/Object;
.source "MonthBillComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;",
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
.method public compare(Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;)I
    .locals 6
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getMonth()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 17
    .local v1, l:I
    invoke-virtual {p2}, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;->getMonth()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 18
    .local v2, r:I
    sub-int v3, v2, v1

    .line 22
    .end local v1           #l:I
    .end local v2           #r:I
    :goto_0
    return v3

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 22
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    check-cast p1, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;

    .end local p1
    check-cast p2, Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/chart/util/MonthBillComparator;->compare(Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;Lcom/zhangdan/app/activities/chart/model/MonthBillInfo;)I

    move-result v0

    return v0
.end method
