.class public Lcom/zhangdan/app/sms/SmsBillData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zhangdan/app/sms/i;

    invoke-direct {v0}, Lcom/zhangdan/app/sms/i;-><init>()V

    sput-object v0, Lcom/zhangdan/app/sms/SmsBillData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->l:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/app/sms/SmsBillData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->k:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->l:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->k:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->i:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->i:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->j:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->c:Ljava/lang/String;

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->j:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->a:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->d:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->a:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->f:I

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->e:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->g:I

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->h:I

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->f:I

    return v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->g:I

    return v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->h:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
