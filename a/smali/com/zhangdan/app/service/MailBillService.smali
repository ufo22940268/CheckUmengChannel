.class public Lcom/zhangdan/app/service/MailBillService;
.super Landroid/app/IntentService;
.source "MailBillService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/service/MailBillService$ParseBillTask;
    }
.end annotation


# static fields
.field public static final EXTRA_KEY_BILL:Ljava/lang/String; = "bill"

.field public static final EXTRA_KEY_START_TIME:Ljava/lang/String; = "start_time"

.field public static final EXTRA_KEY_TOKEN:Ljava/lang/String; = "token"

.field public static final EXTRA_KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static volatile mParseBillTask:Lcom/zhangdan/app/service/MailBillService$ParseBillTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "MailBillService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 30
    const-string v0, "Bill"

    const-string v1, "MailBillService constructor()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 36
    const-string v0, "Bill"

    const-string v1, "MailBillService onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 59
    const-string v0, "Bill"

    const-string v1, "MailBillService onDestroy()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Lcom/zhangdan/app/service/MailBillService;->mParseBillTask:Lcom/zhangdan/app/service/MailBillService$ParseBillTask;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/zhangdan/app/service/MailBillService;->mParseBillTask:Lcom/zhangdan/app/service/MailBillService$ParseBillTask;

    invoke-virtual {v0}, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->stop()V

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/zhangdan/app/service/MailBillService;->mParseBillTask:Lcom/zhangdan/app/service/MailBillService$ParseBillTask;

    .line 64
    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 41
    const-string v0, "Bill"

    const-string v1, "MailBillService onHandleIntent()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v0, "mail_account_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, mailAccountId:Ljava/lang/String;
    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, token:Ljava/lang/String;
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, userId:Ljava/lang/String;
    const-string v0, "start_time"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, startModifyTime:Ljava/lang/String;
    sget-object v0, Lcom/zhangdan/app/service/MailBillService;->mParseBillTask:Lcom/zhangdan/app/service/MailBillService$ParseBillTask;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/zhangdan/app/service/MailBillService;->mParseBillTask:Lcom/zhangdan/app/service/MailBillService$ParseBillTask;

    invoke-virtual {v0}, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->stop()V

    .line 52
    :cond_0
    new-instance v0, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;-><init>(Lcom/zhangdan/app/service/MailBillService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/service/MailBillService;->mParseBillTask:Lcom/zhangdan/app/service/MailBillService$ParseBillTask;

    .line 53
    sget-object v0, Lcom/zhangdan/app/service/MailBillService;->mParseBillTask:Lcom/zhangdan/app/service/MailBillService$ParseBillTask;

    invoke-virtual {v0}, Lcom/zhangdan/app/service/MailBillService$ParseBillTask;->run()V

    .line 54
    return-void
.end method
