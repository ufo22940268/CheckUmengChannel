.class public Lcom/zhangdan/app/activities/mailimport/MailAddActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;
.source "MailAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRAK_KEY_MAIL_STATUS_RESULT:Ljava/lang/String; = "mail_status_result"

.field public static final EXTRA_KEY_FIRST_LOGIN:Ljava/lang/String; = "first_login"


# instance fields
.field private mAutoImportManager:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

.field private mFirstLogin:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->mFirstLogin:I

    return-void
.end method

.method private initViews()V
    .locals 7

    .prologue
    .line 58
    const v5, 0x7f09008c

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v5, 0x7f090042

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->getCurrUserInfo()Lcom/zhangdan/app/data/model/UserInfo;

    move-result-object v4

    .line 61
    .local v4, userInfo:Lcom/zhangdan/app/data/model/UserInfo;
    if-nez v4, :cond_0

    .line 76
    :goto_0
    return-void

    .line 63
    :cond_0
    const v5, 0x7f0900dc

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    .line 64
    .local v3, layoutAutoImport:Landroid/view/View;
    new-instance v5, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    invoke-direct {v5, p0, v3}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->mAutoImportManager:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    .line 65
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "email_name"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, email:Ljava/lang/String;
    const/4 v2, 0x0

    .line 67
    .local v2, flag:I
    iget v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->mFirstLogin:I

    if-nez v5, :cond_1

    .line 68
    const/4 v2, 0x1

    .line 72
    :goto_1
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->mAutoImportManager:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1, v2}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->init(Ljava/util/List;Ljava/lang/String;I)V

    .line 74
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "mail_status_result"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/MailStatusResult;

    .line 75
    .local v0, data:Lcom/zhangdan/app/data/model/http/MailStatusResult;
    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->mAutoImportManager:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    invoke-virtual {v5, v0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->initMailStatusResult(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    .line 70
    .end local v0           #data:Lcom/zhangdan/app/data/model/http/MailStatusResult;
    :cond_1
    const/4 v2, 0x3

    goto :goto_1
.end method

.method private onPressBack()V
    .locals 3

    .prologue
    .line 96
    iget v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->mFirstLogin:I

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->finish()V

    .line 98
    const v1, 0x7f040005

    const v2, 0x7f040006

    invoke-virtual {p0, v1, v2}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->overridePendingTransition(II)V

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->onPressBack()V

    .line 81
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09008c

    if-ne v1, v2, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->onPressBack()V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090042

    if-ne v1, v2, :cond_0

    .line 88
    const-string v1, "mail_help"

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/zhangdan/app/activities/mailimport/MailHelpActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v1, 0x7f030036

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->initViews()V

    .line 39
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "first_login"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->mFirstLogin:I

    .line 40
    iget v1, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->mFirstLogin:I

    if-eqz v1, :cond_0

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v0, loadDataIntent:Landroid/content/Intent;
    const-class v1, Lcom/zhangdan/app/service/DownloadDataService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    .end local v0           #loadDataIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    .line 51
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->mAutoImportManager:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->mAutoImportManager:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;->onDestroy()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;->mAutoImportManager:Lcom/zhangdan/app/activities/mailimport/MailAutoImportManager;

    .line 55
    :cond_0
    return-void
.end method

.method protected onImportOptionSelectd()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
