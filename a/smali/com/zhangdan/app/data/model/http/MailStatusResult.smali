.class public Lcom/zhangdan/app/data/model/http/MailStatusResult;
.super Ljava/lang/Object;
.source "MailStatusResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhangdan/app/data/model/http/MailStatusResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:I

.field private data:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private recentlyComplete:I

.field private statusMsg:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/zhangdan/app/data/model/http/MailStatusResult$1;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/http/MailStatusResult$1;-><init>()V

    sput-object v0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->code:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentlyComplete()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->recentlyComplete:I

    return v0
.end method

.method public getStatusMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->statusMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 26
    iput p1, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->code:I

    .line 27
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->data:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->msg:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setRecentlyComplete(I)V
    .locals 0
    .parameter "recentlyComplete"

    .prologue
    .line 45
    iput p1, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->recentlyComplete:I

    .line 46
    return-void
.end method

.method public setStatusMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "statusMsg"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->statusMsg:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->time:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 67
    iget v0, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->statusMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->recentlyComplete:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailStatusResult;->time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return-void
.end method
