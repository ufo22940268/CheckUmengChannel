.class final Lcom/zhangdan/app/sms/SmsBillData$1;
.super Ljava/lang/Object;
.source "SmsBillData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/sms/SmsBillData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/zhangdan/app/sms/SmsBillData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zhangdan/app/sms/SmsBillData;
    .locals 2
    .parameter "in"

    .prologue
    .line 123
    new-instance v0, Lcom/zhangdan/app/sms/SmsBillData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/zhangdan/app/sms/SmsBillData;-><init>(Landroid/os/Parcel;Lcom/zhangdan/app/sms/SmsBillData$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/sms/SmsBillData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zhangdan/app/sms/SmsBillData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zhangdan/app/sms/SmsBillData;
    .locals 1
    .parameter "size"

    .prologue
    .line 127
    new-array v0, p1, [Lcom/zhangdan/app/sms/SmsBillData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/sms/SmsBillData$1;->newArray(I)[Lcom/zhangdan/app/sms/SmsBillData;

    move-result-object v0

    return-object v0
.end method
