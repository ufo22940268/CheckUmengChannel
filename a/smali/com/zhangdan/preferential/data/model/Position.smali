.class public Lcom/zhangdan/preferential/data/model/Position;
.super Ljava/lang/Object;
.source "Position.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhangdan/preferential/data/model/Position;",
            ">;"
        }
    .end annotation
.end field

.field public static final FAKE_LAT:D = 30.313126

.field public static final FAKE_LAT_E6:I = 0x1ce8aa6

.field public static final FAKE_LNG:D = 120.121636

.field public static final FAKE_LNG_E6:I = 0x728e924


# instance fields
.field public lat:D

.field public lng:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/zhangdan/preferential/data/model/Position$1;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/Position$1;-><init>()V

    sput-object v0, Lcom/zhangdan/preferential/data/model/Position;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/zhangdan/preferential/data/model/Position$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/data/model/Position;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    if-ne p0, p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    instance-of v3, p1, Lcom/zhangdan/preferential/data/model/Position;

    if-nez v3, :cond_2

    move v1, v2

    .line 83
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 86
    check-cast v0, Lcom/zhangdan/preferential/data/model/Position;

    .line 87
    .local v0, p:Lcom/zhangdan/preferential/data/model/Position;
    iget-wide v3, p0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    iget-wide v5, v0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    iget-wide v5, v0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 65
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .local v1, obj:Lorg/json/JSONObject;
    const-string v2, "lat"

    iget-wide v3, p0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v2, "lng"

    iget-wide v3, p0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1           #obj:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tlat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tlng "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/zhangdan/preferential/data/model/Position;->lat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 47
    iget-wide v0, p0, Lcom/zhangdan/preferential/data/model/Position;->lng:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 48
    return-void
.end method
