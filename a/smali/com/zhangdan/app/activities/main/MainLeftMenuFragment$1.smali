.class Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;
.super Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$OnItemClickListener;
.source "MainLeftMenuFragment.java"


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
    .line 98
    iput-object p1, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/PinnedHeaderListView$OnItemClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IIJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "section"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IIJ)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v3, "MainLeftMenuFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 113
    .local v1, flag:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 115
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    .line 116
    .local v0, activity:Lcom/zhangdan/app/activities/MainFragmentActivity;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 263
    :goto_1
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #setter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mSelectedFlag:I
    invoke-static {v3, v4}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$202(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;I)I

    goto :goto_0

    .line 118
    :pswitch_0
    const-string v3, "new_left_menu_main_page"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$000(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->setSelectedItemFlag(I)V

    .line 120
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchToHomePage()V

    goto :goto_1

    .line 124
    :pswitch_1
    const-string v3, "new_left_menu_email_bill"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 127
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_2
    const-string v3, "new_left_menu_sms_bill"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 133
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 134
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 138
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_3
    const-string v3, "new_left_menu_hand_transfer"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 140
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 145
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_4
    const-string v3, "new_left_menu_hand_input_bill"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 147
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/zhangdan/app/activities/handinput/HandInputBillActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 148
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 152
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_5
    const-string v3, "new_left_menu_bill_list"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #calls: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->hasImportedEmailBillData()Z
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$100(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 154
    const v3, 0x7f0701a4

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$000(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->setSelectedItemFlag(I)V

    .line 158
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mSelectedFlag:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$200(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    .line 159
    new-instance v3, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;

    invoke-direct {v3}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetFragment;-><init>()V

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchFragment(Lcom/zhangdan/app/activities/BaseFragment;)V

    goto/16 :goto_1

    .line 161
    :cond_3
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->showContent()V

    goto/16 :goto_1

    .line 166
    :pswitch_6
    const-string v3, "new_left_menu_bill_analyze"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #calls: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->hasImportedEmailBillData()Z
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$300(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 168
    const v3, 0x7f0701a4

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zhangdan/app/util/CommonMethod;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :cond_4
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$000(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->setSelectedItemFlag(I)V

    .line 172
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mSelectedFlag:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$200(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_5

    .line 173
    new-instance v3, Lcom/zhangdan/app/activities/chart/ChartFragment;

    invoke-direct {v3}, Lcom/zhangdan/app/activities/chart/ChartFragment;-><init>()V

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchFragment(Lcom/zhangdan/app/activities/BaseFragment;)V

    goto/16 :goto_1

    .line 175
    :cond_5
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->showContent()V

    goto/16 :goto_1

    .line 180
    :pswitch_7
    const-string v3, "new_left_menu_unsettled_bill"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$000(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->setSelectedItemFlag(I)V

    .line 182
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mSelectedFlag:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$200(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_6

    .line 183
    new-instance v3, Lcom/zhangdan/app/activities/stage/StageSummaryFragment;

    invoke-direct {v3}, Lcom/zhangdan/app/activities/stage/StageSummaryFragment;-><init>()V

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchFragment(Lcom/zhangdan/app/activities/BaseFragment;)V

    goto/16 :goto_1

    .line 185
    :cond_6
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->showContent()V

    goto/16 :goto_1

    .line 190
    :pswitch_8
    const-string v3, "new_left_menu_bank_service"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$000(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->setSelectedItemFlag(I)V

    .line 192
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mSelectedFlag:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$200(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_7

    .line 193
    new-instance v3, Lcom/zhangdan/app/activities/bankservice/BankListFragment;

    invoke-direct {v3}, Lcom/zhangdan/app/activities/bankservice/BankListFragment;-><init>()V

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchFragment(Lcom/zhangdan/app/activities/BaseFragment;)V

    goto/16 :goto_1

    .line 195
    :cond_7
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->showContent()V

    goto/16 :goto_1

    .line 200
    :pswitch_9
    const-string v3, "new_left_menu_near_youhui"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$000(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->setSelectedItemFlag(I)V

    .line 202
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mSelectedFlag:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$200(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_8

    .line 203
    new-instance v3, Lcom/zhangdan/preferential/ShopListFragment;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/zhangdan/preferential/ShopListFragment;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchFragment(Lcom/zhangdan/app/activities/BaseFragment;)V

    goto/16 :goto_1

    .line 205
    :cond_8
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->showContent()V

    goto/16 :goto_1

    .line 210
    :pswitch_a
    const-string v3, "new_left_menu_bank_activity"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 211
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$000(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->setSelectedItemFlag(I)V

    .line 212
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mSelectedFlag:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$200(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_9

    .line 213
    new-instance v3, Lcom/zhangdan/preferential/RecommendFragment;

    invoke-direct {v3}, Lcom/zhangdan/preferential/RecommendFragment;-><init>()V

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchFragment(Lcom/zhangdan/app/activities/BaseFragment;)V

    goto/16 :goto_1

    .line 215
    :cond_9
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->showContent()V

    goto/16 :goto_1

    .line 220
    :pswitch_b
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$000(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->setSelectedItemFlag(I)V

    .line 221
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mSelectedFlag:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$200(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_a

    .line 222
    new-instance v3, Lcom/zhangdan/preferential/BrandWallFragment;

    invoke-direct {v3}, Lcom/zhangdan/preferential/BrandWallFragment;-><init>()V

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchFragment(Lcom/zhangdan/app/activities/BaseFragment;)V

    goto/16 :goto_1

    .line 224
    :cond_a
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->showContent()V

    goto/16 :goto_1

    .line 229
    :pswitch_c
    const-string v3, "new_left_menu_shop_search"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$000(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->setSelectedItemFlag(I)V

    .line 231
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mSelectedFlag:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$200(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_b

    .line 232
    new-instance v3, Lcom/zhangdan/preferential/SearchFragment;

    invoke-direct {v3}, Lcom/zhangdan/preferential/SearchFragment;-><init>()V

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchFragment(Lcom/zhangdan/app/activities/BaseFragment;)V

    goto/16 :goto_1

    .line 234
    :cond_b
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->showContent()V

    goto/16 :goto_1

    .line 239
    :pswitch_d
    const-string v3, "new_left_menu_my_favorite"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mMenuAdapter:Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$000(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/main/adapter/LeftMenuAdapter;->setSelectedItemFlag(I)V

    .line 241
    iget-object v3, p0, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment$1;->this$0:Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;

    #getter for: Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->mSelectedFlag:I
    invoke-static {v3}, Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;->access$200(Lcom/zhangdan/app/activities/main/MainLeftMenuFragment;)I

    move-result v3

    const/16 v4, 0xe

    if-eq v3, v4, :cond_c

    .line 242
    new-instance v3, Lcom/zhangdan/preferential/FavoriteFragment;

    invoke-direct {v3}, Lcom/zhangdan/preferential/FavoriteFragment;-><init>()V

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/MainFragmentActivity;->switchFragment(Lcom/zhangdan/app/activities/BaseFragment;)V

    goto/16 :goto_1

    .line 244
    :cond_c
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->showContent()V

    goto/16 :goto_1

    .line 249
    :pswitch_e
    const-string v3, "new_left_menu_talk"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 251
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v3, Lcom/zhangdan/app/activities/setting/TalkActivity;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 252
    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 256
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_f
    const-string v3, "new_left_menu_account"

    invoke-static {v0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 258
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v3, Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 259
    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public onSectionClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "section"
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
    .line 103
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "MainLeftMenuFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSectionClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method
