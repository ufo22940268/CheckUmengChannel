.class public Lcom/zhangdan/app/service/ReadLocalDataService;
.super Landroid/app/IntentService;
.source "ReadLocalDataService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "ReadLocalDataService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method private sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "action"
    .parameter "extras"

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 51
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 53
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/zhangdan/app/service/ReadLocalDataService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 27
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v2

    .line 28
    .local v2, dataMgr:Lcom/zhangdan/app/global/DataManager;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v3

    .line 29
    .local v3, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Lcom/zhangdan/app/global/DataManager;->initData(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    const-string v4, "com.zhangdan.app.mail_account_update"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/zhangdan/app/service/ReadLocalDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v1, data:Landroid/os/Bundle;
    const-string v4, "new_user_bank"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    const-string v4, "com.zhangdan.app.download_data_end"

    invoke-direct {p0, v4, v1}, Lcom/zhangdan/app/service/ReadLocalDataService;->sendMyBroadcard(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 39
    .end local v1           #data:Landroid/os/Bundle;
    :cond_0
    return-void
.end method
