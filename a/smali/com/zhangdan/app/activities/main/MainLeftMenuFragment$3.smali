.class Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$3;
.super Ljava/lang/Object;
.source "MainLeftMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$3;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 336
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$3;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$3;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    .line 339
    .local v0, activity:Lcom/zhangdan/app/activities/MainFragmentActivity;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090043

    if-ne v2, v3, :cond_2

    .line 340
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$3;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "new_left_menu_top_account"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 341
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 342
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 343
    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 344
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f09003b

    if-ne v2, v3, :cond_0

    goto :goto_0
.end method
