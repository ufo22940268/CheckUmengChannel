.class public Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/BaseFragmentActivity;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/BaseFragmentActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;->a:Lcom/zhangdan/app/activities/BaseFragmentActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "ScreenActionReceiver"

    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;->a:Lcom/zhangdan/app/activities/BaseFragmentActivity;

    invoke-static {v0}, Lcom/zhangdan/app/data/a/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;->a:Lcom/zhangdan/app/activities/BaseFragmentActivity;

    const-class v2, Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "set_pwd"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;->a:Lcom/zhangdan/app/activities/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;->a:Lcom/zhangdan/app/activities/BaseFragmentActivity;

    const v1, 0x7f040003

    const v2, 0x7f040005

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->overridePendingTransition(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;->b:Ljava/lang/String;

    goto :goto_0
.end method
