.class public Lcom/zhangdan/app/data/model/http/SmsInfo;
.super Ljava/lang/Object;
.source "SmsInfo.java"


# instance fields
.field private content:Ljava/lang/String;

.field private mark:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private smdId:J

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/SmsInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/SmsInfo;->mark:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/SmsInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getSmdId()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/SmsInfo;->smdId:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/SmsInfo;->time:J

    return-wide v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/SmsInfo;->content:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setMark(Ljava/lang/String;)V
    .locals 0
    .parameter "mark"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/SmsInfo;->mark:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/SmsInfo;->phone:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setSmdId(J)V
    .locals 0
    .parameter "smdId"

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/SmsInfo;->smdId:J

    .line 21
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/SmsInfo;->time:J

    .line 29
    return-void
.end method
