.class public final Lcom/zhangdan/preferential/data/model/l;
.super Lcom/zhangdan/preferential/data/model/k;


# instance fields
.field public A:Ljava/util/List;

.field public B:Ljava/util/Map;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/util/List;

.field public w:Ljava/util/List;

.field public x:Ljava/util/List;

.field public y:Ljava/util/List;

.field public z:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/preferential/data/model/k;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/l;->v:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/l;->w:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/l;->x:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/l;->y:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/l;->z:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/l;->A:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/l;->B:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/zhangdan/preferential/data/model/l;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/zhangdan/preferential/data/model/l;

    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/l;->t:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/l;->t:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/l;->e:[Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/zhangdan/preferential/data/model/l;->e:[Ljava/lang/String;

    if-nez v3, :cond_4

    :goto_1
    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/l;->p:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/l;->p:Ljava/lang/String;

    if-nez v0, :cond_4

    :goto_2
    invoke-super {p0, p1}, Lcom/zhangdan/preferential/data/model/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/l;->t:Ljava/lang/String;

    iget-object v4, v0, Lcom/zhangdan/preferential/data/model/l;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/l;->e:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, v0, Lcom/zhangdan/preferential/data/model/l;->e:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/zhangdan/preferential/data/model/l;->p:Ljava/lang/String;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/l;->p:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lcom/zhangdan/preferential/data/model/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dianpingId :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zhangdan/preferential/data/model/l;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
