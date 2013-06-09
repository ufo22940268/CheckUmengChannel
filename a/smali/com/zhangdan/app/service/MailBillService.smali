.class public Lcom/zhangdan/app/service/MailBillService;
.super Landroid/app/IntentService;


# static fields
.field public static volatile a:Lcom/zhangdan/app/service/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "MailBillService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    sget-object v0, Lcom/zhangdan/app/service/MailBillService;->a:Lcom/zhangdan/app/service/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zhangdan/app/service/MailBillService;->a:Lcom/zhangdan/app/service/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/service/b;->a()V

    const/4 v0, 0x0

    sput-object v0, Lcom/zhangdan/app/service/MailBillService;->a:Lcom/zhangdan/app/service/b;

    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "mail_account_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "start_time"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/zhangdan/app/service/MailBillService;->a:Lcom/zhangdan/app/service/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zhangdan/app/service/MailBillService;->a:Lcom/zhangdan/app/service/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/service/b;->a()V

    :cond_0
    new-instance v0, Lcom/zhangdan/app/service/b;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zhangdan/app/service/b;-><init>(Lcom/zhangdan/app/service/MailBillService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/service/MailBillService;->a:Lcom/zhangdan/app/service/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/service/b;->b()V

    return-void
.end method
