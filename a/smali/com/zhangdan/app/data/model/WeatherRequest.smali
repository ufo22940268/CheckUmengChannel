.class public Lcom/zhangdan/app/data/model/WeatherRequest;
.super Ljava/lang/Object;
.source "WeatherRequest.java"


# instance fields
.field private city:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private id:J

.field private sentence:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zhangdan/app/data/model/WeatherRequest;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zhangdan/app/data/model/WeatherRequest;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/WeatherRequest;->id:J

    return-wide v0
.end method

.method public getSentence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zhangdan/app/data/model/WeatherRequest;->sentence:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/zhangdan/app/data/model/WeatherRequest;->city:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/zhangdan/app/data/model/WeatherRequest;->date:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/WeatherRequest;->id:J

    .line 38
    return-void
.end method

.method public setSentence(Ljava/lang/String;)V
    .locals 0
    .parameter "sentence"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/zhangdan/app/data/model/WeatherRequest;->sentence:Ljava/lang/String;

    .line 20
    return-void
.end method
