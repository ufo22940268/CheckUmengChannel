.class public Lcom/zhangdan/app/activities/BaseSlidingActivity;
.super Lcom/slidingmenu/lib/app/SlidingFragmentActivity;


# instance fields
.field protected a:Z

.field protected b:Z

.field private c:Lcom/zhangdan/app/activities/c;

.field private d:Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->c:Lcom/zhangdan/app/activities/c;

    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->d:Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->b:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->d()V

    new-instance v0, Lcom/zhangdan/app/activities/c;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/c;-><init>(Lcom/zhangdan/app/activities/BaseSlidingActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->c:Lcom/zhangdan/app/activities/c;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zhangdan.app.log_off"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->c:Lcom/zhangdan/app/activities/c;

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->c()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->j()V

    const v1, 0x7f020345

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->b(I)V

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->i()V

    const v1, 0x3eb33333

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->a(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->a(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->f()V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02038b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f030055

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setCustomView(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->c:Lcom/zhangdan/app/activities/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->c:Lcom/zhangdan/app/activities/c;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onPause()V

    invoke-static {p0}, Lcom/umeng/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onRestart()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onRestart()V

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->a:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/zhangdan/app/ZhangdanApplication;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {p0}, Lcom/zhangdan/app/data/a/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "set_pwd"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f040003

    const v1, 0x7f040005

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->d:Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;-><init>(Lcom/zhangdan/app/activities/BaseSlidingActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->d:Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->d:Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    invoke-static {p0}, Lcom/umeng/a/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onStop()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->d:Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->d:Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->d:Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;

    :cond_0
    invoke-static {p0}, Lcom/zhangdan/app/h/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/zhangdan/app/ZhangdanApplication;->a:J

    :cond_1
    return-void
.end method
