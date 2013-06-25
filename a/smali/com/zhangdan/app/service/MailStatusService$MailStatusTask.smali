.class Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;
.super Ljava/lang/Object;
.source "MailStatusService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/service/MailStatusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailStatusTask"
.end annotation


# instance fields
.field flag:Z

.field private mLoginCount:I

.field private mNetErrCount:I

.field private mUnknowCount:I

.field sid:Ljava/lang/String;

.field final synthetic this$0:Lcom/zhangdan/app/service/MailStatusService;

.field token:Ljava/lang/String;

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/service/MailStatusService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "token"
    .parameter "userId"
    .parameter "sid"

    .prologue
    const/4 v0, 0x0

    .line 79
    iput-object p1, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->this$0:Lcom/zhangdan/app/service/MailStatusService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->flag:Z

    .line 72
    iput v0, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->mNetErrCount:I

    .line 75
    iput v0, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->mLoginCount:I

    .line 77
    iput v0, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->mUnknowCount:I

    .line 80
    iput-object p2, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->token:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->userId:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->sid:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private checkLoginStatus(Lcom/zhangdan/app/data/model/http/MailStatusResult;)I
    .locals 3
    .parameter "result"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 273
    const/4 v0, 0x5

    :goto_0
    :sswitch_0
    return v0

    .line 190
    :sswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 197
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    move v0, v1

    .line 246
    goto :goto_0

    :sswitch_4
    move v0, v1

    .line 251
    goto :goto_0

    :sswitch_5
    move v0, v1

    .line 254
    goto :goto_0

    :sswitch_6
    move v0, v1

    .line 257
    goto :goto_0

    :sswitch_7
    move v0, v1

    .line 260
    goto :goto_0

    :sswitch_8
    move v0, v1

    .line 263
    goto :goto_0

    :sswitch_9
    move v0, v1

    .line 266
    goto :goto_0

    .line 269
    :sswitch_a
    const/4 v0, 0x3

    goto :goto_0

    .line 179
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_3
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0xc8 -> :sswitch_4
        0xc9 -> :sswitch_5
        0xca -> :sswitch_6
        0x12c -> :sswitch_7
        0x12d -> :sswitch_8
        0x12e -> :sswitch_9
        0x3e8 -> :sswitch_a
    .end sparse-switch
.end method

.method private sendMyBroadcast(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 90
    const-string v1, "Bill"

    const-string v2, "MailStatusService sendMyBroadcast...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v1, "Bill"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MailStatusService code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-boolean v1, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->flag:Z

    if-eqz v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    const-string v1, "com.zhangdan.app.mail_status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->this$0:Lcom/zhangdan/app/service/MailStatusService;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 102
    :cond_0
    iget-boolean v4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->flag:Z

    if-eqz v4, :cond_2

    .line 170
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    iget-object v4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->token:Ljava/lang/String;

    iget-object v5, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->userId:Ljava/lang/String;

    iget-object v6, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->sid:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/zhangdan/app/api/MailImportApi;->getMailStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailStatusResult;

    move-result-object v3

    .line 106
    .local v3, result:Lcom/zhangdan/app/data/model/http/MailStatusResult;
    iget-boolean v4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->flag:Z

    if-nez v4, :cond_1

    .line 109
    if-nez v3, :cond_3

    .line 110
    const-string v4, "Bill"

    const-string v5, "MailStatusService result is null..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget v4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->mNetErrCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->mNetErrCount:I

    .line 112
    iget v4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->mNetErrCount:I

    const/4 v5, 0x6

    if-lt v4, v5, :cond_0

    .line 113
    new-instance v1, Lcom/zhangdan/app/data/model/http/MailStatusResult;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;-><init>()V

    .line 114
    .local v1, data:Lcom/zhangdan/app/data/model/http/MailStatusResult;
    const/16 v4, -0x3e8

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->setCode(I)V

    .line 115
    const-string v4, "\u670d\u52a1\u5668\u8fde\u63a5\u4e0d\u4e0a\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5..."

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->setMsg(Ljava/lang/String;)V

    .line 116
    iget-boolean v4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->flag:Z

    if-nez v4, :cond_1

    .line 118
    invoke-direct {p0, v1}, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->sendMyBroadcast(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    .line 124
    .end local v1           #data:Lcom/zhangdan/app/data/model/http/MailStatusResult;
    :cond_3
    iput v7, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->mNetErrCount:I

    .line 126
    invoke-direct {p0, v3}, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->checkLoginStatus(Lcom/zhangdan/app/data/model/http/MailStatusResult;)I

    move-result v0

    .line 127
    .local v0, code:I
    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    .line 128
    iget v4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->mLoginCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->mLoginCount:I

    .line 129
    iget v4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->mLoginCount:I

    const/16 v5, 0xf

    if-lt v4, v5, :cond_5

    .line 130
    new-instance v1, Lcom/zhangdan/app/data/model/http/MailStatusResult;

    invoke-direct {v1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;-><init>()V

    .line 131
    .restart local v1       #data:Lcom/zhangdan/app/data/model/http/MailStatusResult;
    const/16 v4, -0x3e9

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->setCode(I)V

    .line 132
    const-string v4, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5..."

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->setMsg(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, v1}, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->sendMyBroadcast(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    .line 137
    .end local v1           #data:Lcom/zhangdan/app/data/model/http/MailStatusResult;
    :cond_4
    iput v7, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->mLoginCount:I

    .line 140
    :cond_5
    if-ne v0, v8, :cond_6

    .line 141
    iget v4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->mUnknowCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->mUnknowCount:I

    .line 142
    iget v4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->mUnknowCount:I

    if-ge v4, v8, :cond_1

    .line 149
    :goto_1
    iget-boolean v4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->flag:Z

    if-nez v4, :cond_1

    .line 152
    invoke-direct {p0, v3}, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->sendMyBroadcast(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    .line 153
    if-eqz v0, :cond_1

    .line 157
    iget-boolean v4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->flag:Z

    if-nez v4, :cond_1

    .line 161
    const-wide/16 v4, 0xbb8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_2
    iget-boolean v4, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->flag:Z

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 146
    :cond_6
    iput v7, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->mUnknowCount:I

    goto :goto_1

    .line 162
    :catch_0
    move-exception v2

    .line 163
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->flag:Z

    .line 87
    return-void
.end method
