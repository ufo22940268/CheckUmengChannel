.class final Lcom/zhangdan/app/activities/main/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/main/p;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/p;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/s;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/s;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/s;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f060042

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/s;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "new_left_menu_top_account"

    invoke-static {v1, v2}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    goto :goto_0
.end method
