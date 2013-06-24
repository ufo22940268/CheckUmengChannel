.class Lcom/zhangdan/app/activities/main/MainContentFragment$7;
.super Ljava/lang/Object;
.source "MainContentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 367
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$7;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v5, 0x7f0701a4

    const/4 v4, 0x1

    .line 371
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$7;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$7;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    .line 374
    .local v0, activity:Lcom/zhangdan/app/activities/MainFragmentActivity;
    if-nez p3, :cond_2

    .line 375
    const-string v3, "sd_bank_activity"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchToBankActivity()V

    goto :goto_0

    .line 377
    :cond_2
    if-ne p3, v4, :cond_3

    .line 378
    const-string v3, "sd_near_youhui"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchToNearYouhui()V

    goto :goto_0

    .line 380
    :cond_3
    const/4 v3, 0x2

    if-ne p3, v3, :cond_5

    .line 381
    const-string v3, "sd_bill_analyze"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$7;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #calls: Lcom/zhangdan/app/activities/main/MainContentFragment;->hasImportedEmailBillData()Z
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$900(Lcom/zhangdan/app/activities/main/MainContentFragment;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 383
    invoke-virtual {v0, v5}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_4
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchToBillAnalyze()V

    goto :goto_0

    .line 387
    :cond_5
    const/4 v3, 0x3

    if-ne p3, v3, :cond_6

    .line 388
    const-string v3, "sd_51banka"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 389
    invoke-static {v0}, Lcom/zhangdan/app/data/db/util/SysMasterDbUtil;->getCurrentUserInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, userInfo:Ljava/lang/String;
    const-string v3, "CurrentUserInfo"

    invoke-static {v0, v3, v2}, Lcom/zhangdan/banka/data/SharedPreferMgr;->setKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/zhangdan/banka/kh/BankaMainActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "from"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 394
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #userInfo:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x4

    if-ne p3, v3, :cond_8

    .line 395
    const-string v3, "sd_bill_list"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 396
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$7;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    #calls: Lcom/zhangdan/app/activities/main/MainContentFragment;->hasImportedEmailBillData()Z
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainContentFragment;->access$1000(Lcom/zhangdan/app/activities/main/MainContentFragment;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 397
    invoke-virtual {v0, v5}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_7
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchToBillList()V

    goto :goto_0

    .line 401
    :cond_8
    const/4 v3, 0x5

    if-ne p3, v3, :cond_9

    .line 402
    const-string v3, "sd_import_bill"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 403
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 404
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainContentFragment$7;->this$0:Lcom/zhangdan/app/activities/main/MainContentFragment;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/main/MainContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 405
    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 406
    .end local v1           #intent:Landroid/content/Intent;
    :cond_9
    const/4 v3, 0x6

    if-ne p3, v3, :cond_a

    .line 407
    const-string v3, "sd_bank_service"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchToBankService()V

    goto/16 :goto_0

    .line 409
    :cond_a
    const/4 v3, 0x7

    if-ne p3, v3, :cond_0

    .line 410
    const-string v3, "sd_my_favorite"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchToMyFavorite()V

    goto/16 :goto_0
.end method
