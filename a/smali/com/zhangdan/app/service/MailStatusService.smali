.class public Lcom/zhangdan/app/service/MailStatusService;
.super Landroid/app/IntentService;
.source "MailStatusService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;
    }
.end annotation


# static fields
.field private static final CODE_COMPLETE:I = 0x3

.field private static final CODE_LOGGING:I = 0x4

.field private static final CODE_LOGIN_FAIL:I = 0x0

.field private static final CODE_LOGIN_SUCCESS:I = 0x1

.field private static final CODE_UNKNOWN:I = 0x5

.field private static final CODE_WORKING:I = 0x2

.field public static final EXTRA_KEY_DATA:Ljava/lang/String; = "data"

.field public static final EXTRA_KEY_SID:Ljava/lang/String; = "sid"

.field public static final EXTRA_KEY_TOKEN:Ljava/lang/String; = "token"

.field public static final EXTRA_KEY_USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field private mMailStatusTask:Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "MailStatusService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v0, "Bill"

    const-string v1, "MailStatusService constructor()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 57
    const-string v0, "Bill"

    const-string v1, "MailStatusService onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/zhangdan/app/service/MailStatusService;->mMailStatusTask:Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/zhangdan/app/service/MailStatusService;->mMailStatusTask:Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;

    invoke-virtual {v0}, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->stop()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/service/MailStatusService;->mMailStatusTask:Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;

    .line 62
    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 42
    const-string v3, "Bill"

    const-string v4, "MailStatusService onHandleIntent()..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v3, "token"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, token:Ljava/lang/String;
    const-string v3, "user_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, userId:Ljava/lang/String;
    const-string v3, "sid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, sid:Ljava/lang/String;
    iget-object v3, p0, Lcom/zhangdan/app/service/MailStatusService;->mMailStatusTask:Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;

    if-eqz v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/zhangdan/app/service/MailStatusService;->mMailStatusTask:Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;

    invoke-virtual {v3}, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->stop()V

    .line 50
    :cond_0
    new-instance v3, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;-><init>(Lcom/zhangdan/app/service/MailStatusService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/zhangdan/app/service/MailStatusService;->mMailStatusTask:Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;

    .line 51
    iget-object v3, p0, Lcom/zhangdan/app/service/MailStatusService;->mMailStatusTask:Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;

    invoke-virtual {v3}, Lcom/zhangdan/app/service/MailStatusService$MailStatusTask;->run()V

    .line 52
    return-void
.end method
