.class public Lcom/zhangdan/preferential/data/model/MenuTag;
.super Lcom/zhangdan/preferential/data/model/Tag;
.source "MenuTag.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/zhangdan/preferential/data/model/Tag;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "typeId"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/zhangdan/preferential/data/model/Tag;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/zhangdan/preferential/data/model/MenuTag;->typeId:I

    .line 17
    return-void
.end method

.method public static getNearTag()Lcom/zhangdan/preferential/data/model/MenuTag;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/zhangdan/preferential/data/model/MenuTag;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/MenuTag;-><init>()V

    .line 37
    .local v0, tag:Lcom/zhangdan/preferential/data/model/MenuTag;
    const-string v1, "\u9644\u8fd1"

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    .line 38
    return-object v0
.end method

.method public static getTodayTag()Lcom/zhangdan/preferential/data/model/MenuTag;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/zhangdan/preferential/data/model/MenuTag;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/MenuTag;-><init>()V

    .line 30
    .local v0, tag:Lcom/zhangdan/preferential/data/model/MenuTag;
    const/4 v1, -0x8

    iput v1, v0, Lcom/zhangdan/preferential/data/model/MenuTag;->typeId:I

    .line 31
    const-string v1, "\u4eca\u65e5"

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    .line 32
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 47
    :cond_1
    instance-of v3, p1, Lcom/zhangdan/preferential/data/model/MenuTag;

    if-nez v3, :cond_2

    move v1, v2

    .line 48
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 51
    check-cast v0, Lcom/zhangdan/preferential/data/model/MenuTag;

    .line 53
    .local v0, lhs:Lcom/zhangdan/preferential/data/model/MenuTag;
    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isToday()Z
    .locals 2

    .prologue
    .line 25
    iget v0, p0, Lcom/zhangdan/preferential/data/model/MenuTag;->typeId:I

    const/4 v1, -0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zhangdan/preferential/data/model/MenuTag;->name:Ljava/lang/String;

    return-object v0
.end method
