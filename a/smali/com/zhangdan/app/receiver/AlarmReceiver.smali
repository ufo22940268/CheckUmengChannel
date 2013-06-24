.class public Lcom/zhangdan/app/receiver/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 25
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v1

    .line 27
    .local v1, dataMgr:Lcom/zhangdan/app/global/DataManager;
    invoke-virtual {v1}, Lcom/zhangdan/app/global/DataManager;->isLoadDataDone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 28
    const-string v4, "AlarmReceiver"

    const-string v5, "not need set alarm again..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const-string v4, "AlarmReceiver"

    const-string v5, "set alarm again..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p1}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->getCurrentUserInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, userInfo:Ljava/lang/String;
    invoke-static {v3}, Lcom/zhangdan/app/api/AccountApi;->parseUserSuiInfo(Ljava/lang/String;)Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v2

    .line 35
    .local v2, loginInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {v0, v2}, Lcom/zhangdan/app/ZhangdanApplication;->setCurrUserInfo(Lcom/zhangdan/app/data/model/UserInfo;)V

    .line 37
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/zhangdan/app/global/DataManager;->initData(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
