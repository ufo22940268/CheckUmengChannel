.class public Lcom/zhangdan/preferential/utils/PositionProvider;
.super Ljava/lang/Object;
.source "PositionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;
    }
.end annotation


# static fields
.field public static final INITAL_VALUE:D = -1.0

.field private static lat:D

.field private static lng:D

.field private static mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/high16 v0, -0x4010

    .line 30
    sput-wide v0, Lcom/zhangdan/preferential/utils/PositionProvider;->lat:D

    .line 31
    sput-wide v0, Lcom/zhangdan/preferential/utils/PositionProvider;->lng:D

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/zhangdan/preferential/utils/PositionProvider;->mListeners:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method

.method public static getFakePosition()Lcom/zhangdan/preferential/data/model/Position;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/zhangdan/preferential/data/model/Position;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Position;-><init>()V

    .line 80
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    const-wide v1, 0x403e5029068986fdL

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    .line 81
    const-wide v1, 0x405e07c8e25c810aL

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    .line 82
    return-object v0
.end method

.method public static getMapFakePosition()Lcom/zhangdan/preferential/data/model/Position;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/zhangdan/preferential/data/model/Position;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Position;-><init>()V

    .line 87
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    const-wide v1, 0x403e492dfd694ccbL

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    .line 88
    const-wide v1, 0x405e081569f49060L

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    .line 89
    return-object v0
.end method

.method private notifyAndRemoveAllListeners()V
    .locals 2

    .prologue
    .line 133
    sget-object v1, Lcom/zhangdan/preferential/utils/PositionProvider;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 134
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;

    invoke-interface {v1}, Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;->onPositionUpdated()V

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public getDistanceToShop(Lcom/zhangdan/preferential/data/model/Shop;)I
    .locals 3
    .parameter "shop"

    .prologue
    .line 97
    new-instance v0, Lcom/zhangdan/preferential/data/model/Position;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Position;-><init>()V

    .line 98
    .local v0, cur:Lcom/zhangdan/preferential/data/model/Position;
    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/utils/PositionProvider;->inflateCurPosition(Lcom/zhangdan/preferential/data/model/Position;)Z

    .line 99
    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/Shop;->pos:Lcom/zhangdan/preferential/data/model/Position;

    invoke-static {v0, v1}, Lcom/zhangdan/preferential/utils/PositionUtils;->calcDistance(Lcom/zhangdan/preferential/data/model/Position;Lcom/zhangdan/preferential/data/model/Position;)D

    move-result-wide v1

    double-to-int v1, v1

    return v1
.end method

.method public getGeoPoint()Lcom/baidu/mapapi/GeoPoint;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/zhangdan/preferential/utils/PositionProvider;->hasLoadedPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/zhangdan/preferential/utils/PositionProvider;->getPosition()Lcom/zhangdan/preferential/data/model/Position;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/utils/MapUtils;->convertToGeoPoint(Lcom/zhangdan/preferential/data/model/Position;)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition()Lcom/zhangdan/preferential/data/model/Position;
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/zhangdan/preferential/utils/PositionProvider;->hasLoadedPosition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Lcom/zhangdan/preferential/data/model/Position;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Position;-><init>()V

    .line 61
    .local v0, pos:Lcom/zhangdan/preferential/data/model/Position;
    sget-wide v1, Lcom/zhangdan/preferential/utils/PositionProvider;->lat:D

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    .line 62
    sget-wide v1, Lcom/zhangdan/preferential/utils/PositionProvider;->lng:D

    iput-wide v1, v0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    .line 65
    .end local v0           #pos:Lcom/zhangdan/preferential/data/model/Position;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReadableDistance(Lcom/zhangdan/preferential/data/model/Shop;)Ljava/lang/String;
    .locals 7
    .parameter "shop"

    .prologue
    .line 103
    new-instance v0, Lcom/zhangdan/preferential/data/model/Position;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Position;-><init>()V

    .line 104
    .local v0, cur:Lcom/zhangdan/preferential/data/model/Position;
    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/utils/PositionProvider;->inflateCurPosition(Lcom/zhangdan/preferential/data/model/Position;)Z

    .line 105
    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/Shop;->pos:Lcom/zhangdan/preferential/data/model/Position;

    invoke-static {v0, v2}, Lcom/zhangdan/preferential/utils/PositionUtils;->calcDistance(Lcom/zhangdan/preferential/data/model/Position;Lcom/zhangdan/preferential/data/model/Position;)D

    move-result-wide v2

    double-to-int v1, v2

    .line 106
    .local v1, meter:I
    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v3, v1

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v3, v5

    double-to-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " km"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public hasLoadedPosition()Z
    .locals 4

    .prologue
    const-wide/high16 v2, -0x4010

    .line 93
    sget-wide v0, Lcom/zhangdan/preferential/utils/PositionProvider;->lat:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/zhangdan/preferential/utils/PositionProvider;->lng:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflateCurPosition(Lcom/zhangdan/preferential/data/model/Position;)Z
    .locals 4
    .parameter "pos"

    .prologue
    const-wide/high16 v2, -0x4010

    .line 43
    sget-wide v0, Lcom/zhangdan/preferential/utils/PositionProvider;->lat:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/zhangdan/preferential/utils/PositionProvider;->lng:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    .line 46
    :cond_1
    sget-wide v0, Lcom/zhangdan/preferential/utils/PositionProvider;->lat:D

    iput-wide v0, p1, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    .line 47
    sget-wide v0, Lcom/zhangdan/preferential/utils/PositionProvider;->lng:D

    iput-wide v0, p1, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    .line 48
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBDLocation(Lcom/baidu/location/BDLocation;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lcom/zhangdan/preferential/utils/PositionProvider;->lat:D

    .line 115
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/zhangdan/preferential/utils/PositionProvider;->lng:D

    .line 116
    invoke-direct {p0}, Lcom/zhangdan/preferential/utils/PositionProvider;->notifyAndRemoveAllListeners()V

    .line 117
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lcom/zhangdan/preferential/utils/PositionProvider;->lat:D

    .line 121
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/zhangdan/preferential/utils/PositionProvider;->lng:D

    .line 122
    invoke-direct {p0}, Lcom/zhangdan/preferential/utils/PositionProvider;->notifyAndRemoveAllListeners()V

    .line 123
    return-void
.end method

.method public setPosition(Lcom/zhangdan/preferential/data/model/Position;)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 37
    iget-wide v0, p1, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    sput-wide v0, Lcom/zhangdan/preferential/utils/PositionProvider;->lat:D

    .line 38
    iget-wide v0, p1, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    sput-wide v0, Lcom/zhangdan/preferential/utils/PositionProvider;->lng:D

    .line 39
    invoke-direct {p0}, Lcom/zhangdan/preferential/utils/PositionProvider;->notifyAndRemoveAllListeners()V

    .line 40
    return-void
.end method

.method public setPositionListener(Lcom/zhangdan/preferential/utils/PositionProvider$PositionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 141
    sget-object v0, Lcom/zhangdan/preferential/utils/PositionProvider;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method
