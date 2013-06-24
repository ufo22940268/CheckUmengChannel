.class final Lcom/zhangdan/app/data/model/http/MailStatusResult$1;
.super Ljava/lang/Object;
.source "MailStatusResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/data/model/http/MailStatusResult;
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
        "Lcom/zhangdan/app/data/model/http/MailStatusResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zhangdan/app/data/model/http/MailStatusResult;
    .locals 2
    .parameter "source"

    .prologue
    .line 78
    new-instance v0, Lcom/zhangdan/app/data/model/http/MailStatusResult;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/http/MailStatusResult;-><init>()V

    .line 79
    .local v0, data:Lcom/zhangdan/app/data/model/http/MailStatusResult;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->setCode(I)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->setMsg(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->setStatusMsg(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->setRecentlyComplete(I)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->setData(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->setTime(Ljava/lang/String;)V

    .line 85
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zhangdan/app/data/model/http/MailStatusResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zhangdan/app/data/model/http/MailStatusResult;
    .locals 1
    .parameter "size"

    .prologue
    .line 90
    new-array v0, p1, [Lcom/zhangdan/app/data/model/http/MailStatusResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult$1;->newArray(I)[Lcom/zhangdan/app/data/model/http/MailStatusResult;

    move-result-object v0

    return-object v0
.end method
