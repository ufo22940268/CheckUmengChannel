.class public Lcom/zhangdan/app/activities/BaseSlidingActivity;
.super Lcom/slidingmenu/lib/app/SlidingFragmentActivity;
.source "BaseSlidingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;,
        Lcom/zhangdan/app/activities/BaseSlidingActivity$LogoffBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_LOG_OFF:Ljava/lang/String; = "com.zhangdan.app.log_off"


# instance fields
.field protected mIsActive:Z

.field protected mIsScreenOff:Z

.field private mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/BaseSlidingActivity$LogoffBroadcastReceiver;

.field private mScreenActionReceiver:Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/BaseSlidingActivity$LogoffBroadcastReceiver;

    .line 26
    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mIsActive:Z

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mIsScreenOff:Z

    .line 132
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/ZhangdanApplication;

    .line 35
    .local v1, app:Lcom/zhangdan/app/ZhangdanApplication;
    invoke-virtual {v1}, Lcom/zhangdan/app/ZhangdanApplication;->reloadDataOnRestore()V

    .line 37
    new-instance v4, Lcom/zhangdan/app/activities/BaseSlidingActivity$LogoffBroadcastReceiver;

    invoke-direct {v4, p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity$LogoffBroadcastReceiver;-><init>(Lcom/zhangdan/app/activities/BaseSlidingActivity;)V

    iput-object v4, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/BaseSlidingActivity$LogoffBroadcastReceiver;

    .line 38
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "com.zhangdan.app.log_off"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/BaseSlidingActivity$LogoffBroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 42
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v3

    .line 43
    .local v3, slidingMenu:Lcom/slidingmenu/lib/SlidingMenu;
    const v4, 0x7f0a0020

    invoke-virtual {v3, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    .line 44
    const v4, 0x7f02034a

    invoke-virtual {v3, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 45
    const v4, 0x7f0a001f

    invoke-virtual {v3, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffsetRes(I)V

    .line 46
    const v4, 0x3eb33333

    invoke-virtual {v3, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 47
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 49
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->setSlidingActionBarEnabled(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 51
    .local v0, actionBar:Lcom/actionbarsherlock/app/ActionBar;
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayOptions(I)V

    .line 52
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020390

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    const v4, 0x7f03005a

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setCustomView(I)V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/BaseSlidingActivity$LogoffBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mLogoffBoradcastReceiver:Lcom/zhangdan/app/activities/BaseSlidingActivity$LogoffBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onPause()V

    .line 96
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onRestart()V

    .line 72
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->onRestartFromBackground()V

    .line 73
    return-void
.end method

.method protected onRestartFromBackground()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 76
    iget-boolean v4, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mIsActive:Z

    if-nez v4, :cond_0

    .line 78
    iput-boolean v8, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mIsActive:Z

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 80
    .local v1, now:J
    sget-wide v4, Lcom/zhangdan/app/ZhangdanApplication;->RUN_TO_BACKGROUND_TIME:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x3a98

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 91
    .end local v1           #now:J
    :cond_0
    :goto_0
    return-void

    .line 82
    .restart local v1       #now:J
    :cond_1
    invoke-static {p0}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getLocalPwd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, pwd:Ljava/lang/String;
    invoke-static {v3}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v0, intent:Landroid/content/Intent;
    const-class v4, Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 86
    const-string v4, "set_pwd"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    const v4, 0x7f040003

    const v5, 0x7f040005

    invoke-virtual {p0, v4, v5}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onResume()V

    .line 59
    iget-object v1, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;-><init>(Lcom/zhangdan/app/activities/BaseSlidingActivity;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v0, screenfilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    .end local v0           #screenfilter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method protected onRunToBackground()V
    .locals 2

    .prologue
    .line 110
    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mIsActive:Z

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/zhangdan/app/ZhangdanApplication;->RUN_TO_BACKGROUND_TIME:J

    .line 115
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onStop()V

    .line 102
    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mScreenActionReceiver:Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->onRunToBackground()V

    .line 107
    return-void
.end method
