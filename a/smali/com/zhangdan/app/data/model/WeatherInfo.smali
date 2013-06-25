.class public Lcom/zhangdan/app/data/model/WeatherInfo;
.super Ljava/lang/Object;
.source "WeatherInfo.java"


# instance fields
.field private id:J

.field private image:Ljava/lang/String;

.field private maxTemperature:Ljava/lang/String;

.field private minTemperature:Ljava/lang/String;

.field private situation:Ljava/lang/String;

.field private windDirection:Ljava/lang/String;

.field private windForce:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/WeatherInfo;->id:J

    return-wide v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zhangdan/app/data/model/WeatherInfo;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxTemperature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zhangdan/app/data/model/WeatherInfo;->maxTemperature:Ljava/lang/String;

    return-object v0
.end method

.method public getMinTemperature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhangdan/app/data/model/WeatherInfo;->minTemperature:Ljava/lang/String;

    return-object v0
.end method

.method public getSituation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/app/data/model/WeatherInfo;->situation:Ljava/lang/String;

    return-object v0
.end method

.method public getWindDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zhangdan/app/data/model/WeatherInfo;->windDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getWindForce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhangdan/app/data/model/WeatherInfo;->windForce:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/WeatherInfo;->id:J

    .line 24
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zhangdan/app/data/model/WeatherInfo;->image:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setMaxTemperature(Ljava/lang/String;)V
    .locals 0
    .parameter "maxTemperature"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/zhangdan/app/data/model/WeatherInfo;->maxTemperature:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setMinTemperature(Ljava/lang/String;)V
    .locals 0
    .parameter "minTemperature"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zhangdan/app/data/model/WeatherInfo;->minTemperature:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setSituation(Ljava/lang/String;)V
    .locals 0
    .parameter "situation"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/zhangdan/app/data/model/WeatherInfo;->situation:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setWindDirection(Ljava/lang/String;)V
    .locals 0
    .parameter "windDirection"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zhangdan/app/data/model/WeatherInfo;->windDirection:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setWindForce(Ljava/lang/String;)V
    .locals 0
    .parameter "windForce"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/zhangdan/app/data/model/WeatherInfo;->windForce:Ljava/lang/String;

    .line 54
    return-void
.end method
