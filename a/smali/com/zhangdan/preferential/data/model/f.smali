.class public final Lcom/zhangdan/preferential/data/model/f;
.super Lcom/zhangdan/preferential/data/model/m;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/preferential/data/model/m;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/data/model/f;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/zhangdan/preferential/data/model/f;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/zhangdan/preferential/data/model/f;

    invoke-super {p0, p1}, Lcom/zhangdan/preferential/data/model/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/f;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/zhangdan/preferential/data/model/f;->a:Ljava/lang/String;

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/f;->b:Ljava/util/List;

    if-nez v1, :cond_5

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/f;->b:Ljava/util/List;

    if-nez v0, :cond_4

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/f;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/zhangdan/preferential/data/model/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/f;->b:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/data/model/m;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/f;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/data/model/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/zhangdan/preferential/data/model/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\nicon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
