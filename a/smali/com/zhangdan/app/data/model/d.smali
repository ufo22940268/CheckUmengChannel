.class public final Lcom/zhangdan/app/data/model/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/d;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/d;->c:Ljava/util/List;

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/d;->c:Ljava/util/List;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/d;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/d;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/data/model/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()D
    .locals 6

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/zhangdan/app/data/model/d;->c:Ljava/util/List;

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/zhangdan/app/data/model/d;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-wide v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/f;->c()D

    move-result-wide v4

    add-double v0, v1, v4

    move-wide v1, v0

    goto :goto_1
.end method

.method public final e()D
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/data/model/d;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/data/model/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/data/model/d;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/f;->c()D

    move-result-wide v0

    goto :goto_0
.end method

.method public final f()[I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/data/model/d;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/data/model/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/zhangdan/app/data/model/d;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/f;->a()I

    move-result v0

    aput v0, v1, v3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/d;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/f;->b()I

    move-result v0

    aput v0, v1, v2

    move-object v0, v1

    goto :goto_0
.end method
