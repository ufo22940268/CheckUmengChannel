.class final Lcom/igexin/sdk/aidl/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/igexin/sdk/aidl/GexinSdkNetstat;
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/sdk/aidl/GexinSdkNetstat;->inboundBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/sdk/aidl/GexinSdkNetstat;->outboundBytes:J

    new-instance v0, Lcom/igexin/sdk/aidl/GexinSdkNetstat;

    invoke-direct {v0}, Lcom/igexin/sdk/aidl/GexinSdkNetstat;-><init>()V

    return-object v0
.end method

.method public a(I)[Lcom/igexin/sdk/aidl/GexinSdkNetstat;
    .locals 1

    new-array v0, p1, [Lcom/igexin/sdk/aidl/GexinSdkNetstat;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/igexin/sdk/aidl/a;->a(Landroid/os/Parcel;)Lcom/igexin/sdk/aidl/GexinSdkNetstat;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/igexin/sdk/aidl/a;->a(I)[Lcom/igexin/sdk/aidl/GexinSdkNetstat;

    move-result-object v0

    return-object v0
.end method
