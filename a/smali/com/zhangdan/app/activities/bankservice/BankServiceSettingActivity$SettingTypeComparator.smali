.class Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$SettingTypeComparator;
.super Ljava/lang/Object;
.source "BankServiceSettingActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingTypeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/zhangdan/app/data/ServiceSettingType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$SettingTypeComparator;->this$0:Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zhangdan/app/data/ServiceSettingType;Lcom/zhangdan/app/data/ServiceSettingType;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/zhangdan/app/data/ServiceSettingType;->getCode()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 243
    check-cast p1, Lcom/zhangdan/app/data/ServiceSettingType;

    .end local p1
    check-cast p2, Lcom/zhangdan/app/data/ServiceSettingType;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity$SettingTypeComparator;->compare(Lcom/zhangdan/app/data/ServiceSettingType;Lcom/zhangdan/app/data/ServiceSettingType;)I

    move-result v0

    return v0
.end method
