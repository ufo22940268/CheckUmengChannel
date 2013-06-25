.class public Lcom/zhangdan/app/activities/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;,
        Lcom/zhangdan/app/activities/BaseFragmentActivity$LogoffBroadcastReceiver;
    }
.end annotation


# instance fields
.field protected mIsActive:Z

.field private mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/BaseFragmentActivity$LogoffBroadcastReceiver;

.field private mScreenActionReceiver:Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity;->mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/BaseFragmentActivity$LogoffBroadcastReceiver;

    .line 36
    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity;->mIsActive:Z

    .line 187
    return-void
.end method


# virtual methods
.method public getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 128
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method public getDataManager()Lcom/zhangdan/app/global/DataManager;
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 133
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->getDataManager()Lcom/zhangdan/app/global/DataManager;

    move-result-object v1

    return-object v1
.end method

.method protected onAboutUsOptionSelected()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zhangdan/app/activities/setting/AboutUsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 44
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->reloadDataOnRestore()V

    .line 46
    new-instance v2, Lcom/zhangdan/app/activities/BaseFragmentActivity$LogoffBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity$LogoffBroadcastReceiver;-><init>(Lcom/zhangdan/app/activities/BaseFragmentActivity;)V

    iput-object v2, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity;->mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/BaseFragmentActivity$LogoffBroadcastReceiver;

    .line 47
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "com.zhangdan.app.log_off"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity;->mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/BaseFragmentActivity$LogoffBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 50
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 139
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f0e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 140
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 55
    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity;->mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/BaseFragmentActivity$LogoffBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity;->mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/BaseFragmentActivity$LogoffBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    :cond_0
    return-void
.end method

.method protected onHomeOptionSelected()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method protected onImportOptionSelectd()V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 147
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->onHomeOptionSelected()V

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->onImportOptionSelectd()V

    goto :goto_0

    .line 155
    :pswitch_2
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->onAboutUsOptionSelected()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x7f09034a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 100
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 63
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->onRestartFromBackground()V

    .line 64
    return-void
.end method

.method protected onRestartFromBackground()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 67
    iget-boolean v4, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity;->mIsActive:Z

    if-nez v4, :cond_0

    .line 69
    iput-boolean v8, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity;->mIsActive:Z

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 71
    .local v1, now:J
    sget-wide v4, Lcom/zhangdan/app/ZhangdanApplication;->RUN_TO_BACKGROUND_TIME:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 82
    .end local v1           #now:J
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local v1       #now:J
    :cond_1
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getLocalPwd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, pwd:Ljava/lang/String;
    invoke-static {v3}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v0, intent:Landroid/content/Intent;
    const-class v4, Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    const-string v4, "set_pwd"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    const v4, 0x7f040003

    const v5, 0x7f040005

    invoke-virtual {p0, v4, v5}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 87
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 88
    iget-object v1, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;-><init>(Lcom/zhangdan/app/activities/BaseFragmentActivity;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v0, screenfilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    .end local v0           #screenfilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onRunToBackground()V
    .locals 2

    .prologue
    .line 114
    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity;->mIsActive:Z

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/zhangdan/app/ZhangdanApplication;->RUN_TO_BACKGROUND_TIME:J

    .line 119
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 106
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->onRunToBackground()V

    .line 107
    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;

    .line 111
    :cond_0
    return-void
.end method

.method public setCurrUserInfo(Lcom/zhangdan/app/data/model/UserInfo;)V
    .locals 1
    .parameter "userInfo"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 123
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0, p1}, Lcom/zhangdan/app/ZhangdanApplication;->setCurrUserInfo(Lcom/zhangdan/app/data/model/UserInfo;)V

    .line 124
    return-void
.end method
