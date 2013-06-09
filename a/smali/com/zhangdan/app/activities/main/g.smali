.class final Lcom/zhangdan/app/activities/main/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/main/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/g;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/g;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/main/g;->a:Lcom/zhangdan/app/activities/main/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/g;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->p(Lcom/zhangdan/app/activities/main/a;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/activities/main/a;->a(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/g;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "menu_import_bill"

    invoke-static {v1, v2}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/g;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/main/g;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/g;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "menu_import_sms"

    invoke-static {v1, v2}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/g;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/zhangdan/app/activities/sms/SmsBillActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/g;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "menu_import_transfer"

    invoke-static {v1, v2}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/g;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    if-ne p3, v1, :cond_1

    goto :goto_0
.end method
