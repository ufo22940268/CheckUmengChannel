.class public final Lcom/zhangdan/app/data/model/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/data/model/e;->c:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/data/model/e;->c:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zhangdan/app/data/model/e;->a:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/e;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/e;->f:Ljava/util/List;

    return-void
.end method

.method public final b(I)D
    .locals 6

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/zhangdan/app/data/model/e;->f:Ljava/util/List;

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/zhangdan/app/data/model/e;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-wide v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/d;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, p1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/f;->c()D

    move-result-wide v4

    add-double v0, v1, v4

    move-wide v1, v0

    goto :goto_1
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/e;->f:Ljava/util/List;

    return-object v0
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zhangdan/app/data/model/e;->b:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/e;->g:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zhangdan/app/data/model/e;->d:J

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/e;->h:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/data/model/e;->i:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/e;->f:Ljava/util/List;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/data/model/e;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/d;->c()I

    move-result v0

    if-le v0, v1, :cond_1

    move v1, v0

    goto :goto_1
.end method

.method public final g()D
    .locals 6

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/zhangdan/app/data/model/e;->f:Ljava/util/List;

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/zhangdan/app/data/model/e;->f:Ljava/util/List;

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

    check-cast v0, Lcom/zhangdan/app/data/model/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/d;->d()D

    move-result-wide v4

    add-double v0, v1, v4

    move-wide v1, v0

    goto :goto_1
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/model/e;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/data/model/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
