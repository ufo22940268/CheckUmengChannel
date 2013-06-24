.class public Lcom/zhangdan/preferential/data/model/RecommendInfo;
.super Ljava/lang/Object;
.source "RecommendInfo.java"


# instance fields
.field private groupInfo:[Ljava/lang/String;

.field private merchantDiscount:Ljava/lang/String;

.field private merchantName:Ljava/lang/String;

.field private merchantTime:Ljava/lang/String;

.field private recommendImgUrl:Ljava/lang/String;

.field private recommendType:I

.field private remainTime:Ljava/lang/String;

.field private weiboIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupInfo()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zhangdan/preferential/data/model/RecommendInfo;->groupInfo:[Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantDiscount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zhangdan/preferential/data/model/RecommendInfo;->merchantDiscount:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zhangdan/preferential/data/model/RecommendInfo;->merchantName:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zhangdan/preferential/data/model/RecommendInfo;->merchantTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zhangdan/preferential/data/model/RecommendInfo;->recommendImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendType()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/zhangdan/preferential/data/model/RecommendInfo;->recommendType:I

    return v0
.end method

.method public getRemainTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zhangdan/preferential/data/model/RecommendInfo;->remainTime:Ljava/lang/String;

    return-object v0
.end method

.method public getWeiboIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhangdan/preferential/data/model/RecommendInfo;->weiboIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setGroupInfo([Ljava/lang/String;)V
    .locals 0
    .parameter "groupInfo"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/zhangdan/preferential/data/model/RecommendInfo;->groupInfo:[Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setMerchantDiscount(Ljava/lang/String;)V
    .locals 0
    .parameter "merchantDiscount"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/zhangdan/preferential/data/model/RecommendInfo;->merchantDiscount:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setMerchantName(Ljava/lang/String;)V
    .locals 0
    .parameter "merchantName"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/zhangdan/preferential/data/model/RecommendInfo;->merchantName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setMerchantTime(Ljava/lang/String;)V
    .locals 0
    .parameter "merchantTime"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/zhangdan/preferential/data/model/RecommendInfo;->merchantTime:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setRecommendImgUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "recommendImgUrl"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/zhangdan/preferential/data/model/RecommendInfo;->recommendImgUrl:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setRecommendType(I)V
    .locals 0
    .parameter "recommendType"

    .prologue
    .line 26
    iput p1, p0, Lcom/zhangdan/preferential/data/model/RecommendInfo;->recommendType:I

    .line 27
    return-void
.end method

.method public setRemainTime(Ljava/lang/String;)V
    .locals 0
    .parameter "remainTime"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zhangdan/preferential/data/model/RecommendInfo;->remainTime:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setWeiboIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "weiboIconUrl"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zhangdan/preferential/data/model/RecommendInfo;->weiboIconUrl:Ljava/lang/String;

    .line 33
    return-void
.end method
