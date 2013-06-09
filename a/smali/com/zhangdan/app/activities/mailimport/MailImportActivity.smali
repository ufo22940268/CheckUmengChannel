.class public Lcom/zhangdan/app/activities/mailimport/MailImportActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;


# instance fields
.field private c:Lcom/zhangdan/app/activities/mailimport/f;

.field private d:Landroid/view/View;

.field private e:Lcom/zhangdan/app/activities/mailimport/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->setContentView(I)V

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/e;

    const v1, 0x7f06003c

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/zhangdan/app/activities/mailimport/e;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->e:Lcom/zhangdan/app/activities/mailimport/e;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/data/db/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const v0, 0x7f0600d8

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->d:Landroid/view/View;

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/f;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->d:Landroid/view/View;

    invoke-direct {v0, p0, v2}, Lcom/zhangdan/app/activities/mailimport/f;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->c:Lcom/zhangdan/app/activities/mailimport/f;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->c:Lcom/zhangdan/app/activities/mailimport/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/zhangdan/app/activities/mailimport/f;->a(Ljava/util/List;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->e:Lcom/zhangdan/app/activities/mailimport/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->e:Lcom/zhangdan/app/activities/mailimport/e;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/e;->a()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->e:Lcom/zhangdan/app/activities/mailimport/e;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->c:Lcom/zhangdan/app/activities/mailimport/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->c:Lcom/zhangdan/app/activities/mailimport/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/f;->a()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailImportActivity;->c:Lcom/zhangdan/app/activities/mailimport/f;

    :cond_1
    return-void
.end method
