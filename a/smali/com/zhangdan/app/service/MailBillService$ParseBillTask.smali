.class public Lcom/zhangdan/app/service/MailBillService$ParseBillTask;
.super Ljava/lang/Object;
.source "MailBillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/service/MailBillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParseBillTask"
.end annotation


# instance fields
.field private flag:Z

.field private mErrCount:I

.field private mZeroRescultCount:I

.field private mailAccountId:Ljava/lang/String;

.field private startModifyTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/zhangdan/app/service/MailBillService;

.field private token:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/service/MailBillService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "mailAccId"
    .parameter "token"
    .parameter "userId"
    .parameter "startTime"

    .prologue
    const/4 v0, 0x0

    .line 81
    iput-object p1, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->this$0:Lcom/zhangdan/app/service/MailBillService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->flag:Z

    .line 76
    iput v0, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->mErrCount:I

    .line 79
    iput v0, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->mZeroRescultCount:I

    .line 82
    iput-object p2, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->mailAccountId:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->token:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->userId:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->startModifyTime:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private sendMyBroadcast(Lcom/zhangdan/app/data/model/http/MailBillResult;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 93
    iget-boolean v1, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->flag:Z

    if-eqz v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bill"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 97
    const-string v1, "com.zhangdan.app.parse_bill"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->this$0:Lcom/zhangdan/app/service/MailBillService;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 103
    :cond_0
    const-string v2, "Bill"

    const-string v3, "mail task run..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-boolean v2, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->flag:Z

    if-eqz v2, :cond_2

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->token:Ljava/lang/String;

    iget-object v3, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->mailAccountId:Ljava/lang/String;

    iget-object v5, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->startModifyTime:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/zhangdan/app/api/MailImportApi;->getBillMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailBillResult;

    move-result-object v1

    .line 108
    .local v1, result:Lcom/zhangdan/app/data/model/http/MailBillResult;
    iget-boolean v2, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->flag:Z

    if-nez v2, :cond_1

    .line 110
    if-nez v1, :cond_3

    .line 111
    iget v2, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->mErrCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->mErrCount:I

    .line 112
    iget v2, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->mErrCount:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    goto :goto_0

    .line 118
    :cond_3
    iput v6, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->mErrCount:I

    .line 120
    invoke-direct {p0, v1}, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->sendMyBroadcast(Lcom/zhangdan/app/data/model/http/MailBillResult;)V

    .line 121
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/MailBillResult;->getBillList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/MailBillResult;->getBillList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    :cond_4
    iget v2, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->mZeroRescultCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->mZeroRescultCount:I

    .line 124
    iget v2, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->mZeroRescultCount:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    .line 130
    :goto_1
    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/http/MailBillResult;->getTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->startModifyTime:Ljava/lang/String;

    .line 132
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_2
    iget-boolean v2, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->flag:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 127
    :cond_5
    iput v6, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->mZeroRescultCount:I

    goto :goto_1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->flag:Z

    .line 90
    return-void
.end method
