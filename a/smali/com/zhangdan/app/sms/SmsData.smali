.class public Lcom/zhangdan/app/sms/SmsData;
.super Ljava/lang/Object;
.source "SmsData.java"


# instance fields
.field date:J

.field id:J

.field name:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field smsbody:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseSmsCursor(Landroid/database/Cursor;Lcom/zhangdan/app/sms/SmsData;)Lcom/zhangdan/app/sms/SmsData;
    .locals 12
    .parameter "cursor"
    .parameter "data"

    .prologue
    .line 69
    const-string v11, "person"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 70
    .local v4, nameColumn:I
    const-string v11, "address"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 71
    .local v6, phoneNumberColumn:I
    const-string v11, "body"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 72
    .local v8, smsbodyColumn:I
    const-string v11, "date"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 73
    .local v2, dateColumn:I
    const-string v11, "type"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 75
    .local v9, typeColumn:I
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, name:Ljava/lang/String;
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, phoneNumber:Ljava/lang/String;
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, smsbody:Ljava/lang/String;
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 79
    .local v0, date:J
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 81
    .local v10, typeId:I
    if-nez p1, :cond_0

    .line 82
    new-instance p1, Lcom/zhangdan/app/sms/SmsData;

    .end local p1
    invoke-direct {p1}, Lcom/zhangdan/app/sms/SmsData;-><init>()V

    .line 83
    .restart local p1
    :cond_0
    invoke-virtual {p1, v3}, Lcom/zhangdan/app/sms/SmsData;->setName(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1, v5}, Lcom/zhangdan/app/sms/SmsData;->setPhoneNumber(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1, v7}, Lcom/zhangdan/app/sms/SmsData;->setSmsbody(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1, v0, v1}, Lcom/zhangdan/app/sms/SmsData;->setDate(J)V

    .line 87
    invoke-virtual {p1, v10}, Lcom/zhangdan/app/sms/SmsData;->setType(I)V

    .line 89
    return-object p1
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/zhangdan/app/sms/SmsData;->date:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/zhangdan/app/sms/SmsData;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsData;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsbody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zhangdan/app/sms/SmsData;->smsbody:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/zhangdan/app/sms/SmsData;->type:I

    return v0
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/zhangdan/app/sms/SmsData;->date:J

    .line 54
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/zhangdan/app/sms/SmsData;->id:J

    .line 30
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zhangdan/app/sms/SmsData;->name:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNumber"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/zhangdan/app/sms/SmsData;->phoneNumber:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setSmsbody(Ljava/lang/String;)V
    .locals 0
    .parameter "smsbody"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zhangdan/app/sms/SmsData;->smsbody:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 59
    iput p1, p0, Lcom/zhangdan/app/sms/SmsData;->type:I

    .line 60
    return-void
.end method
