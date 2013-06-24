.class public Lcom/zhangdan/app/data/model/http/SyncShoppingRemarkResult;
.super Lcom/zhangdan/app/data/model/http/BaseHttpResult;
.source "SyncShoppingRemarkResult.java"


# instance fields
.field private shoppingSheetRemark:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/zhangdan/app/data/model/http/BaseHttpResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getShoppingSheetRemark()Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/SyncShoppingRemarkResult;->shoppingSheetRemark:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;

    return-object v0
.end method

.method public setShoppingSheetRemark(Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;)V
    .locals 0
    .parameter "shoppingSheetRemark"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/SyncShoppingRemarkResult;->shoppingSheetRemark:Lcom/zhangdan/app/data/model/http/ShoppingSheetRemark;

    .line 13
    return-void
.end method
