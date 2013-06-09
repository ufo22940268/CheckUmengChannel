.class final Lcom/zhangdan/app/activities/setting/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/k;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/k;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/setting/SettingActivity;->dismissDialog(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/k;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    const-class v2, Lcom/zhangdan/app/activities/account/OfficialLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "login_flag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/k;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-virtual {v1, v0, v3}, Lcom/zhangdan/app/activities/setting/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
