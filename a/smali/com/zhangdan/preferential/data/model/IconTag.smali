.class public Lcom/zhangdan/preferential/data/model/IconTag;
.super Lcom/zhangdan/preferential/data/model/Tag;
.source "IconTag.java"


# instance fields
.field public icon:Ljava/lang/String;

.field public subTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/preferential/data/model/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/zhangdan/preferential/data/model/Tag;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/IconTag;->subTags:Ljava/util/List;

    return-void
.end method

.method private parseIcon()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 11
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v0, v2

    .line 12
    .local v0, icons:[Ljava/lang/String;
    iget-object v2, p0, Lcom/zhangdan/preferential/data/model/IconTag;->icon:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 13
    .local v1, sp:[Ljava/lang/String;
    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 27
    if-ne p0, p1, :cond_0

    .line 37
    :goto_0
    return v2

    .line 31
    :cond_0
    instance-of v1, p1, Lcom/zhangdan/preferential/data/model/IconTag;

    if-nez v1, :cond_1

    move v2, v3

    .line 32
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 35
    check-cast v0, Lcom/zhangdan/preferential/data/model/IconTag;

    .line 37
    .local v0, os:Lcom/zhangdan/preferential/data/model/IconTag;
    invoke-super {p0, p1}, Lcom/zhangdan/preferential/data/model/Tag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/IconTag;->icon:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/zhangdan/preferential/data/model/IconTag;->icon:Ljava/lang/String;

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/IconTag;->subTags:Ljava/util/List;

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/zhangdan/preferential/data/model/IconTag;->subTags:Ljava/util/List;

    if-nez v1, :cond_4

    :goto_1
    move v1, v2

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/IconTag;->icon:Ljava/lang/String;

    iget-object v4, v0, Lcom/zhangdan/preferential/data/model/IconTag;->icon:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/IconTag;->subTags:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/Tag;

    iget-object v4, v0, Lcom/zhangdan/preferential/data/model/IconTag;->subTags:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/zhangdan/preferential/data/model/Tag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1
.end method

.method public getCheckedIcon()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/zhangdan/preferential/data/model/IconTag;->parseIcon()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/zhangdan/preferential/data/model/IconTag;->parseIcon()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/zhangdan/preferential/data/model/Tag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/IconTag;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
