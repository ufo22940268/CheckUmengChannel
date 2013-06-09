.class public Lcom/zhangdan/app/activities/WrappedActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;


# instance fields
.field protected a:Z

.field protected b:Z

.field private c:Lcom/zhangdan/app/activities/i;

.field private d:Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->c:Lcom/zhangdan/app/activities/i;

    iput-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->d:Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->b:Z

    return-void
.end method


# virtual methods
.method protected f()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->a:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/zhangdan/app/activities/WrappedActivity;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/zhangdan/app/ZhangdanApplication;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
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

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/WrappedActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f040003

    const v1, 0x7f040005

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/WrappedActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected g()V
    .locals 2

    invoke-static {p0}, Lcom/zhangdan/app/h/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/zhangdan/app/ZhangdanApplication;->a:J

    :cond_0
    return-void
.end method

.method protected h()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/WrappedActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected i()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/setting/AboutUsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/WrappedActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->d()V

    new-instance v0, Lcom/zhangdan/app/activities/i;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/i;-><init>(Lcom/zhangdan/app/activities/WrappedActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->c:Lcom/zhangdan/app/activities/i;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zhangdan.app.log_off"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/WrappedActivity;->c:Lcom/zhangdan/app/activities/i;

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/WrappedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f0e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->c:Lcom/zhangdan/app/activities/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->c:Lcom/zhangdan/app/activities/i;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/WrappedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/WrappedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->h()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->i()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f06033d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onRestart()V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->f()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->d:Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;-><init>(Lcom/zhangdan/app/activities/WrappedActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->d:Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/WrappedActivity;->d:Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/WrappedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onStop()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->d:Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->d:Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/WrappedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/WrappedActivity;->d:Lcom/zhangdan/app/activities/WrappedActivity$ScreenActionReceiver;

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->g()V

    return-void
.end method
