.class final Lcom/zhangdan/app/activities/main/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/main/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/l;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const v2, 0x7f08019d

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/l;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/l;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/MainFragmentActivity;

    if-nez p3, :cond_2

    const-string v1, "sd_import_bill"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/zhangdan/app/activities/main/l;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p3, v1, :cond_4

    const-string v1, "sd_bill_list"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/l;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a;->i(Lcom/zhangdan/app/activities/main/a;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->h()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne p3, v1, :cond_6

    const-string v1, "sd_bill_analyze"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/l;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v1}, Lcom/zhangdan/app/activities/main/a;->i(Lcom/zhangdan/app/activities/main/a;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/MainFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->i()V

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    if-ne p3, v1, :cond_7

    const-string v1, "sd_bank_service"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->j()V

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    if-ne p3, v1, :cond_8

    const-string v1, "sd_near_youhui"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->k()V

    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    if-ne p3, v1, :cond_9

    const-string v1, "sd_bank_activity"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->l()V

    goto :goto_0

    :cond_9
    const/4 v1, 0x6

    if-ne p3, v1, :cond_a

    const-string v1, "sd_shop_search"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->m()V

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x7

    if-ne p3, v1, :cond_0

    const-string v1, "sd_my_favorite"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->n()V

    goto/16 :goto_0
.end method
