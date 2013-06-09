.class public Lcom/zhangdan/app/activities/mailimport/MailAddActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Lcom/zhangdan/app/activities/mailimport/f;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->d:I

    return-void
.end method

.method private j()V
    .locals 2

    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->finish()V

    const v0, 0x7f040005

    const v1, 0x7f040006

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->overridePendingTransition(II)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected final h()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->j()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060088

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->j()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->setContentView(I)V

    const v0, 0x7f060088

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f0600d8

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/app/activities/mailimport/f;

    invoke-direct {v1, p0, v0}, Lcom/zhangdan/app/activities/mailimport/f;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->c:Lcom/zhangdan/app/activities/mailimport/f;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "email_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->d:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->c:Lcom/zhangdan/app/activities/mailimport/f;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v0}, Lcom/zhangdan/app/activities/mailimport/f;->a(Ljava/util/List;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mail_status_result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/MailStatusResult;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->c:Lcom/zhangdan/app/activities/mailimport/f;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/mailimport/f;->a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    :cond_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "first_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->d:I

    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->d:I

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->c:Lcom/zhangdan/app/activities/mailimport/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->c:Lcom/zhangdan/app/activities/mailimport/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/f;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->c:Lcom/zhangdan/app/activities/mailimport/f;

    :cond_0
    return-void
.end method
