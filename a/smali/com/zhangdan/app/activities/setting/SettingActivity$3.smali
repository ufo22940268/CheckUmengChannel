.class Lcom/zhangdan/app/activities/setting/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 206
    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$3;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 209
    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$3;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/setting/SettingActivity;->dismissDialog(I)V

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$3;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    const-class v2, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 212
    const-string v1, "login_flag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/SettingActivity$3;->this$0:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-virtual {v1, v0, v3}, Lcom/zhangdan/app/activities/setting/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 214
    return-void
.end method
