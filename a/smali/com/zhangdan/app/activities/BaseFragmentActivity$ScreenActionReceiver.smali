.class public Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/BaseFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenActionReceiver"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/zhangdan/app/activities/BaseFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/BaseFragmentActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;->this$0:Lcom/zhangdan/app/activities/BaseFragmentActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 189
    const-string v0, "ScreenActionReceiver"

    iput-object v0, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 193
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;->TAG:Ljava/lang/String;

    const-string v4, "\u5c4f\u5e55\u89e3\u9501\u5e7f\u64ad..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v3, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;->this$0:Lcom/zhangdan/app/activities/BaseFragmentActivity;

    invoke-static {v3}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getLocalPwd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, pwd:Ljava/lang/String;
    invoke-static {v2}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v1, i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;->this$0:Lcom/zhangdan/app/activities/BaseFragmentActivity;

    const-class v4, Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 201
    const-string v3, "set_pwd"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    iget-object v3, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;->this$0:Lcom/zhangdan/app/activities/BaseFragmentActivity;

    invoke-virtual {v3, v1}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    iget-object v3, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;->this$0:Lcom/zhangdan/app/activities/BaseFragmentActivity;

    const v4, 0x7f040003

    const v5, 0x7f040005

    invoke-virtual {v3, v4, v5}, Lcom/zhangdan/app/activities/BaseFragmentActivity;->overridePendingTransition(II)V

    .line 209
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #pwd:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/zhangdan/app/activities/BaseFragmentActivity$ScreenActionReceiver;->TAG:Ljava/lang/String;

    const-string v4, "\u5c4f\u5e55\u52a0\u9501\u5e7f\u64ad..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
