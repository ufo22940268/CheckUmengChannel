.class final Lcom/zhangdan/app/activities/main/q;
.super Lza/co/immedia/pinnedheaderlistview/a;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/main/p;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/p;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-direct {p0}, Lza/co/immedia/pinnedheaderlistview/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSectionClick "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final a(Landroid/view/View;II)V
    .locals 8

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onItemClick "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/zhangdan/app/activities/main/p;->a(Lcom/zhangdan/app/activities/main/p;I)V

    goto :goto_0

    :pswitch_1
    const-string v2, "new_left_menu_main_page"

    invoke-static {v1, v2}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->a(Lcom/zhangdan/app/activities/main/p;)Lcom/zhangdan/app/activities/main/a/d;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/main/a/d;->b(I)V

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->g()V

    goto :goto_1

    :pswitch_2
    const-string v0, "new_left_menu_email_bill"

    invoke-static {v1, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "new_left_menu_sms_bill"

    invoke-static {v1, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "new_left_menu_hand_transfer"

    invoke-static {v1, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v2, "new_left_menu_bill_list"

    invoke-static {v1, v2}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->b(Lcom/zhangdan/app/activities/main/p;)Z

    move-result v2

    if-nez v2, :cond_2

    const v0, 0x7f08019d

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->a(Lcom/zhangdan/app/activities/main/p;)Lcom/zhangdan/app/activities/main/a/d;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/main/a/d;->b(I)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->c(Lcom/zhangdan/app/activities/main/p;)I

    move-result v2

    if-eq v2, v3, :cond_3

    new-instance v2, Lcom/zhangdan/app/activities/shopping/h;

    invoke-direct {v2}, Lcom/zhangdan/app/activities/shopping/h;-><init>()V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->d()V

    goto/16 :goto_1

    :pswitch_6
    const-string v2, "new_left_menu_bill_analyze"

    invoke-static {v1, v2}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->b(Lcom/zhangdan/app/activities/main/p;)Z

    move-result v2

    if-nez v2, :cond_4

    const v0, 0x7f08019d

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->a(Lcom/zhangdan/app/activities/main/p;)Lcom/zhangdan/app/activities/main/a/d;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/zhangdan/app/activities/main/a/d;->b(I)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->c(Lcom/zhangdan/app/activities/main/p;)I

    move-result v2

    if-eq v2, v4, :cond_5

    new-instance v2, Lcom/zhangdan/app/activities/chart/b;

    invoke-direct {v2}, Lcom/zhangdan/app/activities/chart/b;-><init>()V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->d()V

    goto/16 :goto_1

    :pswitch_7
    const-string v2, "new_left_menu_unsettled_bill"

    invoke-static {v1, v2}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->a(Lcom/zhangdan/app/activities/main/p;)Lcom/zhangdan/app/activities/main/a/d;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/zhangdan/app/activities/main/a/d;->b(I)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->c(Lcom/zhangdan/app/activities/main/p;)I

    move-result v2

    if-eq v2, v6, :cond_6

    new-instance v2, Lcom/zhangdan/app/activities/stage/f;

    invoke-direct {v2}, Lcom/zhangdan/app/activities/stage/f;-><init>()V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->d()V

    goto/16 :goto_1

    :pswitch_8
    const-string v2, "new_left_menu_bank_service"

    invoke-static {v1, v2}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->a(Lcom/zhangdan/app/activities/main/p;)Lcom/zhangdan/app/activities/main/a/d;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/zhangdan/app/activities/main/a/d;->b(I)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->c(Lcom/zhangdan/app/activities/main/p;)I

    move-result v2

    if-eq v2, v5, :cond_7

    new-instance v2, Lcom/zhangdan/app/activities/bankservice/a;

    invoke-direct {v2}, Lcom/zhangdan/app/activities/bankservice/a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->d()V

    goto/16 :goto_1

    :pswitch_9
    const-string v2, "new_left_menu_near_youhui"

    invoke-static {v1, v2}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->a(Lcom/zhangdan/app/activities/main/p;)Lcom/zhangdan/app/activities/main/a/d;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/zhangdan/app/activities/main/a/d;->b(I)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->c(Lcom/zhangdan/app/activities/main/p;)I

    move-result v2

    if-eq v2, v7, :cond_8

    new-instance v2, Lcom/zhangdan/preferential/as;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/zhangdan/preferential/as;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->d()V

    goto/16 :goto_1

    :pswitch_a
    const-string v2, "new_left_menu_bank_activity"

    invoke-static {v1, v2}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->a(Lcom/zhangdan/app/activities/main/p;)Lcom/zhangdan/app/activities/main/a/d;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/main/a/d;->b(I)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->c(Lcom/zhangdan/app/activities/main/p;)I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_9

    new-instance v2, Lcom/zhangdan/preferential/ab;

    invoke-direct {v2}, Lcom/zhangdan/preferential/ab;-><init>()V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->d()V

    goto/16 :goto_1

    :pswitch_b
    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->a(Lcom/zhangdan/app/activities/main/p;)Lcom/zhangdan/app/activities/main/a/d;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/main/a/d;->b(I)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->c(Lcom/zhangdan/app/activities/main/p;)I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    new-instance v2, Lcom/zhangdan/preferential/e;

    invoke-direct {v2}, Lcom/zhangdan/preferential/e;-><init>()V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->d()V

    goto/16 :goto_1

    :pswitch_c
    const-string v2, "new_left_menu_shop_search"

    invoke-static {v1, v2}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->a(Lcom/zhangdan/app/activities/main/p;)Lcom/zhangdan/app/activities/main/a/d;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/main/a/d;->b(I)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->c(Lcom/zhangdan/app/activities/main/p;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_b

    new-instance v2, Lcom/zhangdan/preferential/an;

    invoke-direct {v2}, Lcom/zhangdan/preferential/an;-><init>()V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->d()V

    goto/16 :goto_1

    :pswitch_d
    const-string v2, "new_left_menu_my_favorite"

    invoke-static {v1, v2}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->a(Lcom/zhangdan/app/activities/main/p;)Lcom/zhangdan/app/activities/main/a/d;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/activities/main/a/d;->b(I)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/q;->a:Lcom/zhangdan/app/activities/main/p;

    invoke-static {v2}, Lcom/zhangdan/app/activities/main/p;->c(Lcom/zhangdan/app/activities/main/p;)I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_c

    new-instance v2, Lcom/zhangdan/preferential/h;

    invoke-direct {v2}, Lcom/zhangdan/preferential/h;-><init>()V

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/a;)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->d()V

    goto/16 :goto_1

    :pswitch_e
    const-string v0, "new_left_menu_talk"

    invoke-static {v1, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/zhangdan/app/activities/setting/TalkActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_f
    const-string v0, "new_left_menu_account"

    invoke-static {v1, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
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
