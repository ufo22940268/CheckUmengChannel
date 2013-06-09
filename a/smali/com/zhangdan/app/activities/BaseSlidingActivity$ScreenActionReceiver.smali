.class public Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/BaseSlidingActivity;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/BaseSlidingActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->a:Lcom/zhangdan/app/activities/BaseSlidingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "ScreenActionReceiver"

    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->a:Lcom/zhangdan/app/activities/BaseSlidingActivity;

    invoke-static {v0}, Lcom/zhangdan/app/data/a/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->a:Lcom/zhangdan/app/activities/BaseSlidingActivity;

    const-class v2, Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "set_pwd"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->a:Lcom/zhangdan/app/activities/BaseSlidingActivity;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->a:Lcom/zhangdan/app/activities/BaseSlidingActivity;

    const v1, 0x7f040003

    const v2, 0x7f040005

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->overridePendingTransition(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->a:Lcom/zhangdan/app/activities/BaseSlidingActivity;

    iput-boolean v3, v0, Lcom/zhangdan/app/activities/BaseSlidingActivity;->b:Z

    goto :goto_0
.end method
