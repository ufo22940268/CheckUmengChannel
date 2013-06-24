.class public Lcom/zhangdan/preferential/utils/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToE6(D)I
    .locals 2
    .parameter "d"

    .prologue
    .line 26
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method

.method public static convertToGeoPoint(Lcom/baidu/location/BDLocation;)Lcom/baidu/mapapi/GeoPoint;
    .locals 3
    .parameter "location"

    .prologue
    .line 19
    new-instance v0, Lcom/zhangdan/preferential/data/model/Position;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Position;-><init>()V

    .line 20
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    .line 21
    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    .line 22
    invoke-static {v0}, Lcom/zhangdan/preferential/utils/MapUtils;->convertToGeoPoint(Lcom/zhangdan/preferential/data/model/Position;)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v1

    return-object v1
.end method

.method public static convertToGeoPoint(Lcom/zhangdan/preferential/data/model/Position;)Lcom/baidu/mapapi/GeoPoint;
    .locals 4
    .parameter "pos"

    .prologue
    .line 10
    if-nez p0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/GeoPoint;

    iget-wide v1, p0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    invoke-static {v1, v2}, Lcom/zhangdan/preferential/utils/MapUtils;->convertToE6(D)I

    move-result v1

    iget-wide v2, p0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    invoke-static {v2, v3}, Lcom/zhangdan/preferential/utils/MapUtils;->convertToE6(D)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    .line 14
    .local v0, gp:Lcom/baidu/mapapi/GeoPoint;
    goto :goto_0
.end method

.method private static convertToPos(I)D
    .locals 4
    .parameter "i"

    .prologue
    .line 30
    int-to-double v0, p0

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static convertToPosition(Lcom/baidu/mapapi/GeoPoint;)Lcom/zhangdan/preferential/data/model/Position;
    .locals 3
    .parameter "gp"

    .prologue
    .line 51
    new-instance v0, Lcom/zhangdan/preferential/data/model/Position;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Position;-><init>()V

    .line 52
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    invoke-virtual {p0}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-static {v1}, Lcom/zhangdan/preferential/utils/MapUtils;->convertToPos(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    .line 53
    invoke-virtual {p0}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-static {v1}, Lcom/zhangdan/preferential/utils/MapUtils;->convertToPos(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    .line 54
    return-object v0
.end method

.method public static getPointerRes(I)I
    .locals 1
    .parameter "category"

    .prologue
    .line 34
    sparse-switch p0, :sswitch_data_0

    .line 46
    const v0, 0x7f0202fb

    :goto_0
    return v0

    .line 36
    :sswitch_0
    const v0, 0x7f020214

    goto :goto_0

    .line 38
    :sswitch_1
    const v0, 0x7f02034e

    goto :goto_0

    .line 40
    :sswitch_2
    const v0, 0x7f020317

    goto :goto_0

    .line 42
    :sswitch_3
    const v0, 0x7f0200d4

    goto :goto_0

    .line 44
    :sswitch_4
    const v0, 0x7f02021c

    goto :goto_0

    .line 34
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x32 -> :sswitch_3
        0x3c -> :sswitch_4
    .end sparse-switch
.end method
