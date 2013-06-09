.class public Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Landroid/view/View;

.field private d:Lcom/zhangdan/app/activities/mailimport/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0601f5

    if-ne v0, v1, :cond_0

    const-string v0, "yuan_import_send_sms_msg"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->c:Landroid/view/View;

    const v1, 0x7f0601f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/zhangdan/app/h/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->setContentView(I)V

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/e;

    const v1, 0x7f06003c

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/zhangdan/app/activities/mailimport/e;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->d:Lcom/zhangdan/app/activities/mailimport/e;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v1

    if-eqz v1, :cond_0

    const v0, 0x7f0600d9

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08016f

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->c:Landroid/view/View;

    const v1, 0x7f0601f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->c:Landroid/view/View;

    const v3, 0x7f0601f4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800e4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0601f5

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->d:Lcom/zhangdan/app/activities/mailimport/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->d:Lcom/zhangdan/app/activities/mailimport/e;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/e;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->d:Lcom/zhangdan/app/activities/mailimport/e;

    :cond_0
    return-void
.end method
