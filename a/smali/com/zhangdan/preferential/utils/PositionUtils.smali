.class public Lcom/zhangdan/preferential/utils/PositionUtils;
.super Ljava/lang/Object;
.source "PositionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/utils/PositionUtils$GaussSphere;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method private static Rad(D)D
    .locals 4
    .parameter "d"

    .prologue
    .line 14
    const-wide v0, 0x400921fb54442d18L

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static calcDistance(Lcom/zhangdan/preferential/data/model/Position;Lcom/zhangdan/preferential/data/model/Position;)D
    .locals 30
    .parameter "pos1"
    .parameter "pos2"

    .prologue
    .line 17
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    .line 18
    .local v6, lat1:D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    .line 19
    .local v10, lng1:D
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    .line 20
    .local v8, lat2:D
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    .line 21
    .local v12, lng2:D
    invoke-static {v6, v7}, Lcom/zhangdan/preferential/utils/PositionUtils;->Rad(D)D

    move-result-wide v14

    .line 22
    .local v14, radLat1:D
    invoke-static {v8, v9}, Lcom/zhangdan/preferential/utils/PositionUtils;->Rad(D)D

    move-result-wide v16

    .line 23
    .local v16, radLat2:D
    sub-double v2, v14, v16

    .line 24
    .local v2, a:D
    invoke-static {v10, v11}, Lcom/zhangdan/preferential/utils/PositionUtils;->Rad(D)D

    move-result-wide v20

    invoke-static {v12, v13}, Lcom/zhangdan/preferential/utils/PositionUtils;->Rad(D)D

    move-result-wide v22

    sub-double v4, v20, v22

    .line 25
    .local v4, b:D
    const-wide/high16 v20, 0x4000

    const-wide/high16 v22, 0x4000

    div-double v22, v2, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    const-wide/high16 v24, 0x4000

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4000

    div-double v26, v4, v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    const-wide/high16 v28, 0x4000

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->asin(D)D

    move-result-wide v22

    mul-double v18, v20, v22

    .line 27
    .local v18, s:D
    const-wide v20, 0x415854a640000000L

    mul-double v18, v18, v20

    .line 28
    const-wide v20, 0x40c3880000000000L

    mul-double v20, v20, v18

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    const-wide/16 v22, 0x2710

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v18, v0

    .line 29
    return-wide v18
.end method

.method public static setLocationOption(Lcom/baidu/location/LocationClient;)V
    .locals 3
    .parameter "client"

    .prologue
    const/4 v2, 0x1

    .line 33
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 34
    .local v0, option:Lcom/baidu/location/LocationClientOption;
    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    .line 35
    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 36
    const-string v1, "com.baidu.location.service_v2.9"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setServiceName(Ljava/lang/String;)V

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setPoiExtraInfo(Z)V

    .line 38
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setPriority(I)V

    .line 39
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setPoiNumber(I)V

    .line 40
    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->disableCache(Z)V

    .line 41
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 43
    return-void
.end method
