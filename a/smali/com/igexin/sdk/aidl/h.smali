.class final Lcom/igexin/sdk/aidl/h;
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
.method public a(Landroid/os/Parcel;)Lcom/igexin/sdk/aidl/Tag;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/igexin/sdk/aidl/Tag;

    return-object v0
.end method

.method public a(I)[Lcom/igexin/sdk/aidl/Tag;
    .locals 1

    new-array v0, p1, [Lcom/igexin/sdk/aidl/Tag;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/igexin/sdk/aidl/h;->a(Landroid/os/Parcel;)Lcom/igexin/sdk/aidl/Tag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/igexin/sdk/aidl/h;->a(I)[Lcom/igexin/sdk/aidl/Tag;

    move-result-object v0

    return-object v0
.end method
