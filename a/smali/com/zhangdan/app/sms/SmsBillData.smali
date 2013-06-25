.class public Lcom/zhangdan/app/sms/SmsBillData;
.super Ljava/lang/Object;
.source "SmsBillData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhangdan/app/sms/SmsBillData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bankId:I

.field private bankName:Ljava/lang/String;

.field private billId:I

.field private billNum:I

.field private cardNum:Ljava/lang/String;

.field private costNum:I

.field private discountNum:I

.field private incomeNum:I

.field private otherNum:I

.field private payDate:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private truename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/zhangdan/app/sms/SmsBillData$1;

    invoke-direct {v0}, Lcom/zhangdan/app/sms/SmsBillData$1;-><init>()V

    sput-object v0, Lcom/zhangdan/app/sms/SmsBillData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->bankId:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->billId:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->billNum:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->costNum:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->incomeNum:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->discountNum:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->otherNum:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->bankName:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->cardNum:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->payDate:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->truename:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->phone:Ljava/lang/String;

    .line 148
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/zhangdan/app/sms/SmsBillData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/zhangdan/app/sms/SmsBillData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getBankId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->bankId:I

    return v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getBillId()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->billId:I

    return v0
.end method

.method public getBillNum()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->billNum:I

    return v0
.end method

.method public getCardNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->cardNum:Ljava/lang/String;

    return-object v0
.end method

.method public getCostNum()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->costNum:I

    return v0
.end method

.method public getDiscountNum()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->discountNum:I

    return v0
.end method

.method public getIncomeNum()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->incomeNum:I

    return v0
.end method

.method public getOtherNum()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->otherNum:I

    return v0
.end method

.method public getPayDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->payDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getTruename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->truename:Ljava/lang/String;

    return-object v0
.end method

.method public setBankId(I)V
    .locals 0
    .parameter "bankId"

    .prologue
    .line 53
    iput p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->bankId:I

    .line 54
    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0
    .parameter "bankName"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->bankName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setBillId(I)V
    .locals 0
    .parameter "billId"

    .prologue
    .line 35
    iput p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->billId:I

    .line 36
    return-void
.end method

.method public setBillNum(I)V
    .locals 0
    .parameter "billNum"

    .prologue
    .line 95
    iput p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->billNum:I

    .line 96
    return-void
.end method

.method public setCardNum(Ljava/lang/String;)V
    .locals 0
    .parameter "cardNum"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->cardNum:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setCostNum(I)V
    .locals 0
    .parameter "costNum"

    .prologue
    .line 83
    iput p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->costNum:I

    .line 84
    return-void
.end method

.method public setDiscountNum(I)V
    .locals 0
    .parameter "discountNum"

    .prologue
    .line 41
    iput p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->discountNum:I

    .line 42
    return-void
.end method

.method public setIncomeNum(I)V
    .locals 0
    .parameter "incomeNum"

    .prologue
    .line 89
    iput p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->incomeNum:I

    .line 90
    return-void
.end method

.method public setOtherNum(I)V
    .locals 0
    .parameter "otherNum"

    .prologue
    .line 47
    iput p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->otherNum:I

    .line 48
    return-void
.end method

.method public setPayDate(Ljava/lang/String;)V
    .locals 0
    .parameter "payDate"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->payDate:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->phone:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setTruename(Ljava/lang/String;)V
    .locals 0
    .parameter "truename"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/zhangdan/app/sms/SmsBillData;->truename:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 107
    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->bankId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->billId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->billNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->costNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->incomeNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->discountNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->otherNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->bankName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->cardNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->payDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->truename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsBillData;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return-void
.end method
