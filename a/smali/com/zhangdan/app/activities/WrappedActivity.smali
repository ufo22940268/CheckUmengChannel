.class public Lcom/zhangdan/app/activities/WrappedActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;
.source "WrappedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;,
        Lcom/zhangdan/app/activities/WrappedActivity$LogoffBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_LOG_OFF:Ljava/lang/String; = "com.zhangdan.app.log_off"


# instance fields
.field protected mIsActive:Z

.field protected mIsScreenOff:Z

.field private mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/WrappedActivity$LogoffBroadcastReceiver;

.field private mScreenActionReceiver:Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/WrappedActivity$LogoffBroadcastReceiver;

    .line 32
    iput-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mIsActive:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mIsScreenOff:Z

    .line 162
    return-void
.end method


# virtual methods
.method protected onAboutUsOptionSelected()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zhangdan/app/activities/setting/AboutUsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/WrappedActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    .line 41
    .local v0, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->reloadDataOnRestore()V

    .line 43
    new-instance v2, Lcom/zhangdan/app/activities/WrappedActivity$LogoffBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/WrappedActivity$LogoffBroadcastReceiver;-><init>(Lcom/zhangdan/app/activities/WrappedActivity;)V

    iput-object v2, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/WrappedActivity$LogoffBroadcastReceiver;

    .line 44
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "com.zhangdan.app.log_off"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/WrappedActivity$LogoffBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 114
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f0e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 115
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/WrappedActivity$LogoffBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/WrappedActivity$LogoffBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    :cond_0
    return-void
.end method

.method protected onHomeOptionSelected()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/WrappedActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method protected onImportOptionSelectd()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/WrappedActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 122
    :pswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onHomeOptionSelected()V

    goto :goto_0

    .line 126
    :pswitch_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onImportOptionSelectd()V

    goto :goto_0

    .line 130
    :pswitch_2
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onAboutUsOptionSelected()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x7f09034a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onRestart()V

    .line 64
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onRestartFromBackground()V

    .line 65
    return-void
.end method

.method protected onRestartFromBackground()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 68
    iget-boolean v4, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mIsActive:Z

    if-nez v4, :cond_0

    .line 70
    iput-boolean v8, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mIsActive:Z

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 72
    .local v1, now:J
    sget-wide v4, Lcom/zhangdan/app/ZhangdanApplication;->RUN_TO_BACKGROUND_TIME:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x3a98

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 83
    .end local v1           #now:J
    :cond_0
    :goto_0
    return-void

    .line 74
    .restart local v1       #now:J
    :cond_1
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getLocalPwd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, pwd:Ljava/lang/String;
    invoke-static {v3}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    const-class v4, Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    const-string v4, "set_pwd"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/WrappedActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    const v4, 0x7f040003

    const v5, 0x7f040005

    invoke-virtual {p0, v4, v5}, Lcom/zhangdan/app/activities/WrappedActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onResume()V

    .line 52
    iget-object v1, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;-><init>(Lcom/zhangdan/app/activities/WrappedActivity;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v0, screenfilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/WrappedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    .end local v0           #screenfilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onRunToBackground()V
    .locals 2

    .prologue
    .line 96
    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mIsActive:Z

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/zhangdan/app/ZhangdanApplication;->RUN_TO_BACKGROUND_TIME:J

    .line 101
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onStop()V

    .line 88
    iget-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/WrappedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onRunToBackground()V

    .line 93
    return-void
.end method
