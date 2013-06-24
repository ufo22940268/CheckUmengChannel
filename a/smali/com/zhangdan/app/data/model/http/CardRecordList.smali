.class public Lcom/zhangdan/app/data/model/http/CardRecordList;
.super Ljava/lang/Object;
.source "CardRecordList.java"


# instance fields
.field private categoryInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/CardRcord;",
            ">;"
        }
    .end annotation
.end field

.field private code:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private totalResult:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/CardRcord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/CardRecordList;->categoryInfos:Ljava/util/List;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/CardRecordList;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/CardRecordList;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/CardRecordList;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalResult()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/zhangdan/app/data/model/http/CardRecordList;->totalResult:I

    return v0
.end method

.method public setCategoryInfos(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/model/http/CardRcord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, categoryInfos:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/CardRcord;>;"
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/CardRecordList;->categoryInfos:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/CardRecordList;->code:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/CardRecordList;->msg:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/CardRecordList;->time:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setTotalResult(I)V
    .locals 0
    .parameter "totalResult"

    .prologue
    .line 53
    iput p1, p0, Lcom/zhangdan/app/data/model/http/CardRecordList;->totalResult:I

    .line 54
    return-void
.end method
