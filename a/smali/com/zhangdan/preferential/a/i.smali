.class public final Lcom/zhangdan/preferential/a/i;
.super Ljava/lang/Object;


# static fields
.field private static a:D

.field private static b:D

.field private static c:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, -0x4010

    sput-wide v0, Lcom/zhangdan/preferential/a/i;->a:D

    sput-wide v0, Lcom/zhangdan/preferential/a/i;->b:D

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/zhangdan/preferential/a/i;->c:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/zhangdan/preferential/data/model/Position;
    .locals 3

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zhangdan/preferential/data/model/Position;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Position;-><init>()V

    sget-wide v1, Lcom/zhangdan/preferential/a/i;->a:D

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->a:D

    sget-wide v1, Lcom/zhangdan/preferential/a/i;->b:D

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->b:D

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/zhangdan/preferential/data/model/k;)Ljava/lang/String;
    .locals 6

    const-wide/high16 v3, -0x4010

    new-instance v0, Lcom/zhangdan/preferential/data/model/Position;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Position;-><init>()V

    sget-wide v1, Lcom/zhangdan/preferential/a/i;->a:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    sget-wide v1, Lcom/zhangdan/preferential/a/i;->b:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/k;->s:Lcom/zhangdan/preferential/data/model/Position;

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/a/k;->a(Lcom/zhangdan/preferential/data/model/Position;Lcom/zhangdan/preferential/data/model/Position;)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " m"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    sget-wide v1, Lcom/zhangdan/preferential/a/i;->a:D

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->a:D

    sget-wide v1, Lcom/zhangdan/preferential/a/i;->b:D

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->b:D

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    int-to-float v0, v0

    const/high16 v2, 0x42c8

    div-float/2addr v0, v2

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x4120

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " km"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/location/Location;)V
    .locals 2

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lcom/zhangdan/preferential/a/i;->a:D

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/zhangdan/preferential/a/i;->b:D

    sget-object v0, Lcom/zhangdan/preferential/a/i;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/a/j;

    invoke-interface {v0}, Lcom/zhangdan/preferential/a/j;->e_()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static a(Lcom/zhangdan/preferential/a/j;)V
    .locals 1

    sget-object v0, Lcom/zhangdan/preferential/a/i;->c:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b()Lcom/baidu/mapapi/GeoPoint;
    .locals 1

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zhangdan/preferential/a/i;->a()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/g;->a(Lcom/zhangdan/preferential/data/model/Position;)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 4

    const-wide/high16 v2, -0x4010

    sget-wide v0, Lcom/zhangdan/preferential/a/i;->a:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/zhangdan/preferential/a/i;->b:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
