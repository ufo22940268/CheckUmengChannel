.class public Lcom/zhangdan/app/service/MailStatusService;
.super Landroid/app/IntentService;


# instance fields
.field private a:Lcom/zhangdan/app/service/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "MailStatusService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/service/MailStatusService;->a:Lcom/zhangdan/app/service/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/service/MailStatusService;->a:Lcom/zhangdan/app/service/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zhangdan/app/service/c;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/service/MailStatusService;->a:Lcom/zhangdan/app/service/c;

    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/service/MailStatusService;->a:Lcom/zhangdan/app/service/c;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zhangdan/app/service/MailStatusService;->a:Lcom/zhangdan/app/service/c;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/zhangdan/app/service/c;->a:Z

    :cond_0
    new-instance v3, Lcom/zhangdan/app/service/c;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/zhangdan/app/service/c;-><init>(Lcom/zhangdan/app/service/MailStatusService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/zhangdan/app/service/MailStatusService;->a:Lcom/zhangdan/app/service/c;

    iget-object v0, p0, Lcom/zhangdan/app/service/MailStatusService;->a:Lcom/zhangdan/app/service/c;

    invoke-virtual {v0}, Lcom/zhangdan/app/service/c;->a()V

    return-void
.end method
