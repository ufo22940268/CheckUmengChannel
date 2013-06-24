.class public Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "MailImportManualActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

.field private mLayoutManualImport:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->mLayoutManualImport:Landroid/view/View;

    return-void
.end method

.method private initManualImportViews()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 47
    new-instance v4, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    const v5, 0x7f09003c

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v4, p0, v5, v6}, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    .line 49
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v3

    .line 50
    .local v3, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-nez v3, :cond_0

    .line 60
    :goto_0
    return-void

    .line 52
    :cond_0
    const v4, 0x7f0900dd

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->mLayoutManualImport:Landroid/view/View;

    .line 53
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->mLayoutManualImport:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 54
    const v4, 0x7f070176

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, mail51:Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->mLayoutManualImport:Landroid/view/View;

    const v5, 0x7f0901fc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    .local v1, tvMailAccont:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->mLayoutManualImport:Landroid/view/View;

    const v5, 0x7f0901fd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    .local v2, tvSmsMsg:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v4, 0x7f0700e9

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v4, 0x7f0901fe

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0901fe

    if-ne v1, v2, :cond_0

    .line 65
    const-string v1, "yuan_import_send_sms_msg"

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->mLayoutManualImport:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->mLayoutManualImport:Landroid/view/View;

    const v2, 0x7f0901fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, sms:Ljava/lang/String;
    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/zhangdan/app/util/CommonMethod;->launchSendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v0           #sms:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->initManualImportViews()V

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 37
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;->onDestroy()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailImportManualActivity;->mImportTitleManager:Lcom/zhangdan/app/activities/mailimport/ImportTitleManager;

    .line 41
    :cond_0
    return-void
.end method
