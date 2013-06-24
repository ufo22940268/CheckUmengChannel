.class public Lcom/zhangdan/app/activities/setting/LogoutTask;
.super Lcom/novoda/imageloader/core/loader/util/AsyncTask;
.source "LogoutTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/novoda/imageloader/core/loader/util/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    .line 39
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/setting/LogoutTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    .line 51
    iget-object v6, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 53
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v5

    .line 54
    .local v5, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-eqz v5, :cond_0

    .line 55
    iget-object v6, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserInfo;->getFrom()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setAccountType(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    :cond_0
    invoke-static {}, Lcom/igexin/slavesdk/MessageManager;->getInstance()Lcom/igexin/slavesdk/MessageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/igexin/slavesdk/MessageManager;->stopService(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v2

    .line 60
    .local v2, dataMgr:Lcom/zhangdan/app/global/DataManager;
    invoke-virtual {v2}, Lcom/zhangdan/app/global/DataManager;->getUserBankInfoList()Ljava/util/List;

    move-result-object v4

    .line 61
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/UserBankInfo;>;"
    iget-object v6, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v4}, Lcom/zhangdan/app/alarm/AlarmUtil;->cancelAllAlarm(Landroid/content/Context;Ljava/util/List;)V

    .line 63
    iget-object v6, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getAvatarUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, avatar:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 65
    iget-object v6, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_avatar"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    iget-object v6, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setAvatarUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    iget-object v6, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setLocalPwd(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    iget-object v6, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setQueryWeatherTime(Landroid/content/Context;J)V

    .line 71
    iget-object v6, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->setGexinPushValue(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    iget-object v6, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/zhangdan/app/data/sharedprefs/BankServiceSharedPreferMgr;->clear(Landroid/content/Context;)V

    .line 73
    iget-object v6, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/zhangdan/app/util/SharedPreferencesUtil;->clear(Landroid/content/Context;)V

    .line 75
    iget-object v6, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/zhangdan/app/data/db/util/CommDbUtil;->clearDatabase(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->clearDataCache()V

    .line 78
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v3, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    const-class v7, Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 80
    iget-object v6, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v3}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 82
    const/4 v6, 0x0

    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/setting/LogoutTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 89
    :try_start_0
    iget-object v3, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->dialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 96
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/zhangdan/app/activities/SplashActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 98
    iget-object v3, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 100
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v2, intentService:Landroid/content/Intent;
    const-string v3, "com.zhangdan.app.log_off"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v3, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 104
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intentService:Landroid/content/Intent;
    :cond_1
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 43
    invoke-super {p0}, Lcom/novoda/imageloader/core/loader/util/AsyncTask;->onPreExecute()V

    .line 44
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, "\u6b63\u5728\u6ce8\u9500\uff0c\u8bf7\u7a0d\u540e..."

    invoke-static {v0, v1, v2}, Lcom/zhangdan/app/util/CommonMethod;->buildeProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->dialog:Landroid/app/Dialog;

    .line 45
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 46
    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/LogoutTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 47
    return-void
.end method
