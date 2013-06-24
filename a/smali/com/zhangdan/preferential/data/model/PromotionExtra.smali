.class public Lcom/zhangdan/preferential/data/model/PromotionExtra;
.super Lcom/zhangdan/preferential/data/model/Promotion;
.source "PromotionExtra.java"


# instance fields
.field public shopList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Shop;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/zhangdan/preferential/data/model/Promotion;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/PromotionExtra;->shopList:Ljava/util/List;

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/zhangdan/preferential/data/model/Promotion;)V
    .locals 2
    .parameter "prom"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/zhangdan/preferential/data/model/Promotion;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/PromotionExtra;->shopList:Ljava/util/List;

    .line 12
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/PromotionExtra;->id:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->shopId:Ljava/lang/String;

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/PromotionExtra;->shopId:Ljava/lang/String;

    .line 14
    iget-wide v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->bankId:J

    iput-wide v0, p0, Lcom/zhangdan/preferential/data/model/PromotionExtra;->bankId:J

    .line 15
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->bankName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/PromotionExtra;->bankName:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->bankSimpleName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/PromotionExtra;->bankSimpleName:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->discountWeeks:Ljava/lang/String;

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/PromotionExtra;->discountWeeks:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->endTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/PromotionExtra;->endTime:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->imageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/PromotionExtra;->imageUrl:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->remark:Ljava/lang/String;

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/PromotionExtra;->remark:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->startTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/PromotionExtra;->startTime:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lcom/zhangdan/preferential/data/model/Promotion;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/PromotionExtra;->title:Ljava/lang/String;

    .line 23
    return-void
.end method
