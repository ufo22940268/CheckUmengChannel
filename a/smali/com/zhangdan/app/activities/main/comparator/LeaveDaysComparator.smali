.class public Lcom/zhangdan/app/activities/main/comparator/LeaveDaysComparator;
.super Ljava/lang/Object;
.source "LeaveDaysComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/zhangdan/app/data/model/UserBankInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zhangdan/app/data/model/UserBankInfo;Lcom/zhangdan/app/data/model/UserBankInfo;)I
    .locals 6
    .parameter "data1"
    .parameter "data2"

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 19
    :cond_0
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLeaveDays()I

    move-result v0

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getLeaveDays()I

    move-result v1

    sub-int/2addr v0, v1

    .line 35
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v2

    .line 21
    goto :goto_0

    .line 23
    :cond_4
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    .line 24
    :cond_5
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    if-eq v3, v1, :cond_6

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v3

    if-ne v3, v5, :cond_7

    :cond_6
    move v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_7
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 27
    goto :goto_0

    .line 30
    :cond_8
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v2

    if-nez v2, :cond_2

    .line 31
    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/UserBankInfo;->getBillState()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 33
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    check-cast p1, Lcom/zhangdan/app/data/model/UserBankInfo;

    .end local p1
    check-cast p2, Lcom/zhangdan/app/data/model/UserBankInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/main/comparator/LeaveDaysComparator;->compare(Lcom/zhangdan/app/data/model/UserBankInfo;Lcom/zhangdan/app/data/model/UserBankInfo;)I

    move-result v0

    return v0
.end method
