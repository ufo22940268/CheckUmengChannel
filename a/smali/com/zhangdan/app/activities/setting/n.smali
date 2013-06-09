.class final Lcom/zhangdan/app/activities/setting/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/n;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/n;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->a(Lcom/zhangdan/app/activities/setting/SettingActivity;)Lcom/zhangdan/app/e/c;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/n;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    new-instance v1, Lcom/zhangdan/app/e/c;

    iget-object v2, p0, Lcom/zhangdan/app/activities/setting/n;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-direct {v1, v2}, Lcom/zhangdan/app/e/c;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/setting/SettingActivity;->a(Lcom/zhangdan/app/activities/setting/SettingActivity;Lcom/zhangdan/app/e/c;)V

    :cond_0
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/n;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->a(Lcom/zhangdan/app/activities/setting/SettingActivity;)Lcom/zhangdan/app/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/e/c;->b()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/n;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->a(Lcom/zhangdan/app/activities/setting/SettingActivity;)Lcom/zhangdan/app/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/e/c;->a()V

    goto :goto_0
.end method
