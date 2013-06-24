.class public Lcom/zhangdan/app/data/model/http/StoreInfo;
.super Ljava/lang/Object;
.source "StoreInfo.java"


# instance fields
.field private address:Ljava/lang/String;

.field private brandId:Ljava/lang/String;

.field private brandName:Ljava/lang/String;

.field private hasDiscount:I

.field private shopId:Ljava/lang/String;

.field private shopName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/StoreInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBrandId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/StoreInfo;->brandId:Ljava/lang/String;

    return-object v0
.end method

.method public getBrandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/StoreInfo;->brandName:Ljava/lang/String;

    return-object v0
.end method

.method public getHasDiscount()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/zhangdan/app/data/model/http/StoreInfo;->hasDiscount:I

    return v0
.end method

.method public getShopId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/StoreInfo;->shopId:Ljava/lang/String;

    return-object v0
.end method

.method public getShopName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/StoreInfo;->shopName:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/StoreInfo;->address:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setBrandId(Ljava/lang/String;)V
    .locals 0
    .parameter "brandId"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/StoreInfo;->brandId:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setBrandName(Ljava/lang/String;)V
    .locals 0
    .parameter "brandName"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/StoreInfo;->brandName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setHasDiscount(I)V
    .locals 0
    .parameter "hasDiscount"

    .prologue
    .line 46
    iput p1, p0, Lcom/zhangdan/app/data/model/http/StoreInfo;->hasDiscount:I

    .line 47
    return-void
.end method

.method public setShopId(Ljava/lang/String;)V
    .locals 0
    .parameter "shopId"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/StoreInfo;->shopId:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setShopName(Ljava/lang/String;)V
    .locals 0
    .parameter "shopName"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/StoreInfo;->shopName:Ljava/lang/String;

    .line 29
    return-void
.end method
