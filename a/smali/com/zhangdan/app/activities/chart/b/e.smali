.class public final Lcom/zhangdan/app/activities/chart/b/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:D

.field private d:I

.field private e:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/zhangdan/app/activities/chart/b/e;->c:D

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/chart/b/e;->d:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/b/e;->a:Ljava/lang/String;

    :try_start_0
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/chart/b/e;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/b/e;->e:Ljava/util/List;

    return-void
.end method

.method public final b()D
    .locals 2

    iget-wide v0, p0, Lcom/zhangdan/app/activities/chart/b/e;->c:D

    return-wide v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/chart/b/e;->d:I

    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/b/e;->e:Ljava/util/List;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/activities/chart/b/e;->b:I

    return v0
.end method
