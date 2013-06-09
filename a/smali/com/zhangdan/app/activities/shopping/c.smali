.class public final Lcom/zhangdan/app/activities/shopping/c;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/c;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/shopping/c;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/shopping/c;->a:I

    return-void
.end method

.method public final a(Lcom/zhangdan/app/data/model/h;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/c;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/shopping/c;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/shopping/c;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/shopping/c;->b:I

    return-void
.end method

.method public final c(I)Lcom/zhangdan/app/data/model/h;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/c;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/h;

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/c;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
