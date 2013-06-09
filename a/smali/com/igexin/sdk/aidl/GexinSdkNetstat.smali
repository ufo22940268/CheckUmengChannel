.class public Lcom/igexin/sdk/aidl/GexinSdkNetstat;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static a:J

.field public static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/igexin/sdk/aidl/GexinSdkNetstat;->a:J

    sput-wide v0, Lcom/igexin/sdk/aidl/GexinSdkNetstat;->b:J

    new-instance v0, Lcom/igexin/sdk/aidl/c;

    invoke-direct {v0}, Lcom/igexin/sdk/aidl/c;-><init>()V

    sput-object v0, Lcom/igexin/sdk/aidl/GexinSdkNetstat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/sdk/aidl/GexinSdkNetstat;->a:J

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/sdk/aidl/GexinSdkNetstat;->b:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    sget-wide v0, Lcom/igexin/sdk/aidl/GexinSdkNetstat;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    sget-wide v0, Lcom/igexin/sdk/aidl/GexinSdkNetstat;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
