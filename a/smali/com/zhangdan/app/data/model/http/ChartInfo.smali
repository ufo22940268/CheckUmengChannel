.class public Lcom/zhangdan/app/data/model/http/ChartInfo;
.super Ljava/lang/Object;
.source "ChartInfo.java"


# instance fields
.field private userId:J

.field private value:Ljava/lang/String;

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserId()J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/ChartInfo;->userId:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/ChartInfo;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/zhangdan/app/data/model/http/ChartInfo;->year:I

    return v0
.end method

.method public setUserId(J)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/ChartInfo;->userId:J

    .line 19
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/ChartInfo;->value:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .parameter "year"

    .prologue
    .line 24
    iput p1, p0, Lcom/zhangdan/app/data/model/http/ChartInfo;->year:I

    .line 25
    return-void
.end method
