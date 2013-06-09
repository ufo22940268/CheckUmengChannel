.class public final Lcom/zhangdan/app/activities/chart/b/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:D

.field private c:I

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/chart/b/d;->a:I

    return v0
.end method

.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/zhangdan/app/activities/chart/b/d;->b:D

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/chart/b/d;->a:I

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/b/d;->d:Ljava/util/List;

    return-void
.end method

.method public final b()D
    .locals 2

    iget-wide v0, p0, Lcom/zhangdan/app/activities/chart/b/d;->b:D

    return-wide v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/chart/b/d;->c:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/chart/b/d;->c:I

    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b/d;->d:Ljava/util/List;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b/d;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
