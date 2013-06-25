.class public Lcom/zhangdan/app/data/model/http/MailBillInfo;
.super Ljava/lang/Object;
.source "MailBillInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private analyseMsg:Ljava/lang/String;

.field private analyseState:I

.field private analyseTime:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private emailName:Ljava/lang/String;

.field private formatDislpayTime:Ljava/lang/String;

.field private fromType:I

.field private mailAccountId:J

.field private mailId:J

.field private mailSubject:Ljava/lang/String;

.field private mailType:I

.field private sendTime:Ljava/lang/String;

.field private stateMsg:Ljava/lang/String;

.field private status:I

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnalyseMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->analyseMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getAnalyseState()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->analyseState:I

    return v0
.end method

.method public getAnalyseTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->analyseTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->emailName:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatDislpayTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->formatDislpayTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFromType()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->fromType:I

    return v0
.end method

.method public getMailAccountId()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->mailAccountId:J

    return-wide v0
.end method

.method public getMailId()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->mailId:J

    return-wide v0
.end method

.method public getMailSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->mailSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getMailType()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->mailType:I

    return v0
.end method

.method public getSendTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->sendTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStateMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->stateMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->status:I

    return v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->userId:J

    return-wide v0
.end method

.method public setAnalyseMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "analyseMsg"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->analyseMsg:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setAnalyseState(I)V
    .locals 0
    .parameter "analyseState"

    .prologue
    .line 120
    iput p1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->analyseState:I

    .line 121
    return-void
.end method

.method public setAnalyseTime(Ljava/lang/String;)V
    .locals 0
    .parameter "analyseTime"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->analyseTime:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->createTime:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setEmailName(Ljava/lang/String;)V
    .locals 0
    .parameter "emailName"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->emailName:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setFormatDislpayTime(Ljava/lang/String;)V
    .locals 0
    .parameter "formatDislpayTime"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->formatDislpayTime:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setFromType(I)V
    .locals 0
    .parameter "fromType"

    .prologue
    .line 110
    iput p1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->fromType:I

    .line 111
    return-void
.end method

.method public setMailAccountId(J)V
    .locals 0
    .parameter "mailAccountId"

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->mailAccountId:J

    .line 81
    return-void
.end method

.method public setMailId(J)V
    .locals 0
    .parameter "mailId"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->mailId:J

    .line 61
    return-void
.end method

.method public setMailSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "mailSubject"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->mailSubject:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setMailType(I)V
    .locals 0
    .parameter "mailType"

    .prologue
    .line 100
    iput p1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->mailType:I

    .line 101
    return-void
.end method

.method public setSendTime(Ljava/lang/String;)V
    .locals 0
    .parameter "sendTime"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->sendTime:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setStateMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "stateMsg"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->stateMsg:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 140
    iput p1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->status:I

    .line 141
    return-void
.end method

.method public setUserId(J)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->userId:J

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MailBill [mailId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->mailId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mailSubject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->mailSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mailType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->mailType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->fromType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", analyseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->analyseState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", analyseMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->analyseMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stateMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->stateMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mailAccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->mailAccountId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", analyseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->analyseTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->createTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sendTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/data/model/http/MailBillInfo;->sendTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
