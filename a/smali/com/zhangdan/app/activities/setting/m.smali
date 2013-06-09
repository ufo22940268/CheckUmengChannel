.class final Lcom/zhangdan/app/activities/setting/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/m;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/m;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    const-string v1, "yuan_left_menu_lock"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/m;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    const-class v2, Lcom/zhangdan/app/activities/setting/LockActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/m;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-static {v1}, Lcom/zhangdan/app/data/a/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    :cond_0
    const-string v1, "set_pwd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/m;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v1, "set_pwd"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/m;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    const-string v1, "yuan_left_menu_about_us"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/m;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    const-class v2, Lcom/zhangdan/app/activities/setting/AboutUsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/m;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
