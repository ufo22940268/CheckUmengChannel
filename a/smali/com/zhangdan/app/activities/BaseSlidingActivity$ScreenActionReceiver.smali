.class public Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseSlidingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/BaseSlidingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenActionReceiver"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/zhangdan/app/activities/BaseSlidingActivity;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/BaseSlidingActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->this$0:Lcom/zhangdan/app/activities/BaseSlidingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 134
    const-string v0, "ScreenActionReceiver"

    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    iget-object v3, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->TAG:Ljava/lang/String;

    const-string v4, "\u5c4f\u5e55\u89e3\u9501\u5e7f\u64ad..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v3, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->this$0:Lcom/zhangdan/app/activities/BaseSlidingActivity;

    invoke-static {v3}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getLocalPwd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, pwd:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v1, i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->this$0:Lcom/zhangdan/app/activities/BaseSlidingActivity;

    const-class v4, Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 146
    const-string v3, "set_pwd"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    iget-object v3, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->this$0:Lcom/zhangdan/app/activities/BaseSlidingActivity;

    invoke-virtual {v3, v1}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->startActivity(Landroid/content/Intent;)V

    .line 148
    iget-object v3, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->this$0:Lcom/zhangdan/app/activities/BaseSlidingActivity;

    const v4, 0x7f040003

    const v5, 0x7f040005

    invoke-virtual {v3, v4, v5}, Lcom/zhangdan/app/activities/BaseSlidingActivity;->overridePendingTransition(II)V

    .line 155
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #pwd:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->TAG:Ljava/lang/String;

    const-string v4, "\u5c4f\u5e55\u52a0\u9501\u5e7f\u64ad..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v3, p0, Lcom/zhangdan/app/activities/BaseSlidingActivity$ScreenActionReceiver;->this$0:Lcom/zhangdan/app/activities/BaseSlidingActivity;

    iput-boolean v5, v3, Lcom/zhangdan/app/activities/BaseSlidingActivity;->mIsScreenOff:Z

    goto :goto_0
.end method
