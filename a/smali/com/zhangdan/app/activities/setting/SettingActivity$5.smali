.class Lcom/zhangdan/app/activities/setting/SettingActivity$5;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangdan/app/activities/setting/SettingActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$5;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 229
    if-nez p2, :cond_3

    .line 230
    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$5;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    const-string v3, "yuan_left_menu_lock"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 232
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$5;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    const-class v3, Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 233
    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$5;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-static {v2}, Lcom/zhangdan/app/data/sharedprefs/SharedPreferMgr;->getLocalPwd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, pwd:Ljava/lang/String;
    invoke-static {v1}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_2

    .line 235
    :cond_0
    const-string v2, "set_pwd"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    :goto_0
    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$5;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 246
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pwd:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 237
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #pwd:Ljava/lang/String;
    :cond_2
    const-string v2, "set_pwd"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 240
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pwd:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$5;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    const-string v3, "yuan_left_menu_about_us"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 243
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$5;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    const-class v3, Lcom/zhangdan/app/activities/setting/AboutUsActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 244
    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$5;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-virtual {v2, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
