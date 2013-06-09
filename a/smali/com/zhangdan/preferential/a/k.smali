.class public final Lcom/zhangdan/preferential/a/k;
.super Ljava/lang/Object;


# direct methods
.method private static a(D)D
    .locals 4

    const-wide v0, 0x400921fb54442d18L

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(Lcom/zhangdan/preferential/data/model/Position;Lcom/zhangdan/preferential/data/model/Position;)D
    .locals 12

    const-wide/high16 v10, 0x4000

    iget-wide v0, p0, Lcom/zhangdan/preferential/data/model/Position;->a:D

    iget-wide v2, p0, Lcom/zhangdan/preferential/data/model/Position;->b:D

    iget-wide v4, p1, Lcom/zhangdan/preferential/data/model/Position;->a:D

    iget-wide v6, p1, Lcom/zhangdan/preferential/data/model/Position;->b:D

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/a/k;->a(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Lcom/zhangdan/preferential/a/k;->a(D)D

    move-result-wide v4

    sub-double v8, v0, v4

    invoke-static {v2, v3}, Lcom/zhangdan/preferential/a/k;->a(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Lcom/zhangdan/preferential/a/k;->a(D)D

    move-result-wide v6

    sub-double/2addr v2, v6

    div-double v6, v8, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    mul-double/2addr v0, v10

    const-wide v2, 0x415854a640000000L

    mul-double/2addr v0, v2

    const-wide v2, 0x40c3880000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0
.end method
