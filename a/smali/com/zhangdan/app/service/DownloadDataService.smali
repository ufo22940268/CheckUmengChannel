.class public Lcom/zhangdan/app/service/DownloadDataService;
.super Landroid/app/IntentService;
.source "DownloadDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;
    }
.end annotation


# static fields
.field public static DOWNLOAD_DATA_FLAG:I = 0x0

.field public static final EXTRA_KEY_HAS_NEW_USER_BANK:Ljava/lang/String; = "new_user_bank"

.field public static final EXTRA_KEY_MAX_PROGRESS:Ljava/lang/String; = "progress"

.field public static final EXTRA_KEY_MSG:Ljava/lang/String; = "msg"

.field private static final TAG:Ljava/lang/String; = "DownloadDataService"


# instance fields
.field private mDownloadTask:Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/zhangdan/app/service/DownloadDataService;->DOWNLOAD_DATA_FLAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "zhangdan"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v0, "DownloadDataService"

    const-string v1, "DownloadDataService constructor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/zhangdan/app/service/DownloadDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "action"
    .parameter "extras"

    .prologue
    .line 247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 248
    .local v0, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 249
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 250
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 252
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/zhangdan/app/service/DownloadDataService;->DOWNLOAD_DATA_FLAG:I

    .line 60
    iget-object v0, p0, Lcom/zhangdan/app/service/DownloadDataService;->mDownloadTask:Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/zhangdan/app/service/DownloadDataService;->mDownloadTask:Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;

    invoke-virtual {v0}, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->stop()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/service/DownloadDataService;->mDownloadTask:Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;

    .line 64
    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 42
    const-string v0, "DownloadDataService"

    const-string v1, "onHandleIntent..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/zhangdan/app/service/DownloadDataService;->DOWNLOAD_DATA_FLAG:I

    .line 45
    iget-object v0, p0, Lcom/zhangdan/app/service/DownloadDataService;->mDownloadTask:Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/zhangdan/app/service/DownloadDataService;->mDownloadTask:Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;

    invoke-virtual {v0}, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->stop()V

    .line 49
    :cond_0
    new-instance v0, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;-><init>(Lcom/zhangdan/app/service/DownloadDataService;)V

    iput-object v0, p0, Lcom/zhangdan/app/service/DownloadDataService;->mDownloadTask:Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;

    .line 50
    iget-object v0, p0, Lcom/zhangdan/app/service/DownloadDataService;->mDownloadTask:Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;

    invoke-virtual {v0}, Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;->run()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/service/DownloadDataService;->mDownloadTask:Lcom/zhangdan/app/service/DownloadDataService$DownloadTask;

    .line 53
    const-string v0, "DownloadDataService"

    const-string v1, "handle intent end..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method
