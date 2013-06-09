.class public Lcom/zhangdan/app/service/ReadLocalDataService;
.super Landroid/app/IntentService;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ReadLocalDataService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/service/ReadLocalDataService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/zhangdan/app/service/ReadLocalDataService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->b()Lcom/zhangdan/app/c/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->c()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/zhangdan/app/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "com.zhangdan.app.mail_account_update"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zhangdan/app/service/ReadLocalDataService;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "new_user_bank"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.zhangdan.app.download_data_end"

    invoke-direct {p0, v1, v0}, Lcom/zhangdan/app/service/ReadLocalDataService;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
