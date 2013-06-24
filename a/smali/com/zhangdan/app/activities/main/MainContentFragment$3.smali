.class Lcom/zhangdan/app/activities/main/MainContentFragment$3;
.super Ljava/lang/Object;
.source "MainContentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/main/MainContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/MainContentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$3;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 331
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$3;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 332
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 334
    :cond_0
    const-string v2, "yuan_main_switch_bg"

    invoke-static {v0, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    const-string v2, "MenuTopView"

    const-string v3, "click head view"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/zhangdan/app/activities/main/SelectePicActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$3;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3}, Lcom/zhangdan/app/activities/main/MainContentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
