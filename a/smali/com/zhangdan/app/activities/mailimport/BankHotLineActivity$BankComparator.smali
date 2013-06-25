.class Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankComparator;
.super Ljava/lang/Object;
.source "BankHotLineActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BankComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/zhangdan/app/data/model/BankInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankComparator;->this$0:Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zhangdan/app/data/model/BankInfo;Lcom/zhangdan/app/data/model/BankInfo;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/BankInfo;->getOrderIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/zhangdan/app/data/model/BankInfo;->getOrderIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    check-cast p1, Lcom/zhangdan/app/data/model/BankInfo;

    .end local p1
    check-cast p2, Lcom/zhangdan/app/data/model/BankInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity$BankComparator;->compare(Lcom/zhangdan/app/data/model/BankInfo;Lcom/zhangdan/app/data/model/BankInfo;)I

    move-result v0

    return v0
.end method
