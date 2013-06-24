.class public Lcom/zhangdan/preferential/data/model/Card;
.super Ljava/lang/Object;
.source "Card.java"


# static fields
.field public static final DO_BANK_IDS:[J


# instance fields
.field public bankId:J

.field public bankName:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public discount:I

.field public endTime:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0xb

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zhangdan/preferential/data/model/Card;->DO_BANK_IDS:[J

    return-void

    :array_0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/Card;->bankName:Ljava/lang/String;

    return-void
.end method

.method public static allowDoBank(J)Z
    .locals 6
    .parameter "bankId"

    .prologue
    .line 81
    sget-object v0, Lcom/zhangdan/preferential/data/model/Card;->DO_BANK_IDS:[J

    .local v0, arr$:[J
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-wide v2, v0, v1

    .line 82
    .local v2, id:J
    cmp-long v5, v2, p0

    if-nez v5, :cond_0

    .line 83
    const/4 v5, 0x1

    .line 87
    .end local v2           #id:J
    :goto_1
    return v5

    .line 81
    .restart local v2       #id:J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v2           #id:J
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public composeLogoUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/zhangdan/preferential/data/model/Card;->bankId:J

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/utils/NetUtils;->composeBankIconUrl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    instance-of v3, p1, Lcom/zhangdan/preferential/data/model/Card;

    if-nez v3, :cond_2

    move v1, v2

    .line 55
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 58
    check-cast v0, Lcom/zhangdan/preferential/data/model/Card;

    .line 60
    .local v0, os:Lcom/zhangdan/preferential/data/model/Card;
    iget-wide v3, p0, Lcom/zhangdan/preferential/data/model/Card;->bankId:J

    iget-wide v5, v0, Lcom/zhangdan/preferential/data/model/Card;->bankId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/zhangdan/preferential/data/model/Card;->discount:I

    iget v4, v0, Lcom/zhangdan/preferential/data/model/Card;->discount:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/Card;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/Card;->id:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/Card;->endTime:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/Card;->endTime:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/Card;->title:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/Card;->title:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/Card;->bankName:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/Card;->bankName:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/Card;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/zhangdan/preferential/data/model/Card;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/Card;->endTime:Ljava/lang/String;

    iget-object v4, v0, Lcom/zhangdan/preferential/data/model/Card;->endTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/Card;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/zhangdan/preferential/data/model/Card;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/Card;->bankName:Ljava/lang/String;

    iget-object v4, v0, Lcom/zhangdan/preferential/data/model/Card;->bankName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getBothDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/Card;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/Card;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiscount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lcom/zhangdan/preferential/data/model/Card;->discount:I

    if-nez v0, :cond_0

    .line 42
    const-string v0, "*"

    .line 44
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/zhangdan/preferential/data/model/Card;->discount:I

    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhangdan/preferential/data/model/Card;->endTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "null"

    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/Card;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    const-string v0, ""

    .line 28
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/preferential/data/model/Card;->endTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/data/model/Card;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bankId  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/zhangdan/preferential/data/model/Card;->bankId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zhangdan/preferential/data/model/Card;->discount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/data/model/Card;->endTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/data/model/Card;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bankName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/data/model/Card;->bankName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
